import 'package:flutter/material.dart';

@immutable
abstract class AddNotesStates {}

class NotesInitial extends AddNotesStates {}

class AddNotesLoading extends AddNotesStates {}

class AddNotesSuccess extends AddNotesStates {}

class AddNotesFailure extends AddNotesStates {
  final String errorMessages;

  AddNotesFailure({required this.errorMessages});
}
