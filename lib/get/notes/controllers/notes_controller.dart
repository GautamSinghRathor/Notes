import 'dart:developer';

import 'package:best_flutter_ui_templates/get/notes/models/note.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class NotesController extends GetxController {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  GlobalKey<FormState> get getFormKey => _formKey;

  TextEditingController titleController = TextEditingController(),
      subtitleController = TextEditingController();

  var _noteList = RxList<Note>().obs;
  List<Note> get getNotes => _noteList.value;

  void addNote({required BuildContext context}) {
    FocusScope.of(context).unfocus();
    if (!_formKey.currentState!.validate()) {
      Get.snackbar("Can't be added", "Please fill valid input",
          snackPosition: SnackPosition.BOTTOM);
      return;
    }
    _noteList.value.add(Note(
      title: titleController.text,
      subtitle: subtitleController.text,
    ));
    Get.snackbar("Saved successfully", "", snackPosition: SnackPosition.BOTTOM);
    logNotes();
  }

  logNotes() {
    _noteList.value.every((element) {
      log("${element.toString()}");
      return true;
    });
  }

  clear() {
    titleController.clear();
    subtitleController.clear();
  }

  @override
  void dispose() {
    log('Dispose');
    super.dispose();
  }
}
