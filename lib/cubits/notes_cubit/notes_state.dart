import 'package:flutter/material.dart';
import 'package:note_app/model/note_model.dart';

@immutable
abstract class NotesStates {}

class NotesInitial extends NotesStates {}

class NotesLoading extends NotesStates {}

class NotesSuccess extends NotesStates {}
