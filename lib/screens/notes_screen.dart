import 'package:flutter/material.dart';
import 'package:note_app/screens/widget/add_notes.dart';
import 'package:note_app/screens/widget/note_body.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                context: context,
                builder: (context) {
                  return const AddNotes();
                });
          },
          child: const Icon(Icons.add)),
      body: const NotesBody(),
    );
  }
}
