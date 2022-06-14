import 'package:best_flutter_ui_templates/get/notes/add_note.dart';
import 'package:best_flutter_ui_templates/get/notes/controllers/notes_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Notes extends StatelessWidget {
  Notes({Key? key}) : super(key: key);
  final NotesController notesController = Get.put(NotesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(
          () => Column(
            children: [
              ...notesController.getNotes
                  .map((e) => Text(e.toString()))
                  .toList(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(AddNote());
        },
        child: Icon(
          Icons.add_rounded,
          size: 30,
        ),
      ),
    );
  }
}
