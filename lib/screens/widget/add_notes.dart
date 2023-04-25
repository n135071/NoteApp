import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_notes_cubit/add_notes_state.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';

import '../../cubits/add_notes_cubit/add_notes.dart';
import 'add_notes_form.dart';

class AddNotes extends StatelessWidget {
  const AddNotes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddNotesCubit, AddNotesStates>(
        builder: (context, state) {
      return AbsorbPointer(
        absorbing: state is AddNotesLoading ? true : false,
        child:  Padding(
          padding: EdgeInsets.only(left: 16,right: 16,bottom: MediaQuery.of(context).viewInsets.bottom),
          child: const SingleChildScrollView(child: AddNoteForm()),
        ),
      );
    }, listener: (context, state) {
      if (state is AddNotesFailure) {}
      if (state is AddNotesSuccess) {
        BlocProvider.of<NotesCubit>(context).fetchAllNotes();
        Navigator.pop(context);
      }
    });
  }
}
