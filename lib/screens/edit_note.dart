import 'package:flutter/material.dart';
import 'package:note_app/screens/widget/edit_view_body.dart';

import '../model/note_model.dart';

class EditNoteScreen extends StatelessWidget {
  const EditNoteScreen({Key? key, required this.noteModel}) : super(key: key);
final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: EditViewBody(
        note: noteModel,
      ),
    );
  }
}
