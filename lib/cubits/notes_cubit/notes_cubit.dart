import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/cubits/notes_cubit/notes_state.dart';

import '../../constant/constant.dart';
import '../../model/note_model.dart';

class NotesCubit extends Cubit<NotesStates> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notes;
  fetchAllNotes() async {

      var noteBox = Hive.box<NoteModel>(kNotesBox);

     notes = noteBox.values.toList();

      emit(NotesSuccess());

  }
}
