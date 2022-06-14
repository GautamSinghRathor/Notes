import 'package:best_flutter_ui_templates/get/notes/controllers/notes_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddNote extends StatelessWidget {
  AddNote({Key? key}) : super(key: key);
  final NotesController notesController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: Get.size.height,
          width: Get.size.width,
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Form(
            key: notesController.getFormKey,
            child: Column(
              children: [
                SizedBox(height: 20),
                TextFormField(
                  controller: notesController.titleController,
                  validator: (value) {
                    if (value!.isEmpty || value.length <= 3) {
                      return "Enter title";
                    }
                    return null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10),
                    hintText: "Title",
                    hintStyle: TextStyle(
                      fontSize: 24,
                      color: Color.fromARGB(255, 22, 21, 21),
                      fontWeight: FontWeight.w500,
                    ),
                    border: InputBorder.none,
                  ),
                  style: TextStyle(
                    fontSize: 24,
                    color: Color.fromARGB(255, 22, 21, 21),
                    fontWeight: FontWeight.w500,
                    decorationColor: Colors.white,
                  ),
                  maxLines: 1,
                ),
                TextFormField(
                  controller: notesController.subtitleController,
                  validator: (value) {
                    if (value!.isEmpty || value.length <= 3) {
                      return "Enter subtitle";
                    }
                    return null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10),
                    hintText: "Write something here",
                    hintStyle: TextStyle(
                      fontSize: 19,
                      color: Color.fromARGB(255, 79, 78, 78),
                    ),
                    border: InputBorder.none,
                  ),
                  style: TextStyle(
                    fontSize: 19,
                    color: Color.fromARGB(255, 79, 78, 78),
                    decorationColor: Colors.white,
                  ),
                  cursorRadius: Radius.circular(10),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.back(canPop: true);
          notesController.addNote(context: context);
        },
        child: Icon(
          Icons.check_rounded,
          size: 30,
        ),
      ),
    );
  }
}
