library my_lib;

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/constant/constant.dart';
import 'package:note_app/model/note_model.dart';

import 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesStates> {
  AddNotesCubit() : super(NotesInitial());
  bool isLoading = false;

  addNote(NoteModel note) async {
    emit(AddNotesLoading());
    isLoading = true;
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      isLoading = false;

      await noteBox.add(note);
      emit(AddNotesSuccess());
    } catch (e) {
      isLoading = false;

      emit(AddNotesFailure(errorMessages: e.toString()));
    }
  }
}
