import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/model/note_model.dart';
import 'package:note_app/screens/widget/text_fild.dart';

import 'custom_app_bar.dart';

class EditViewBody extends StatefulWidget {
  const EditViewBody({Key? key, required this.note}) : super(key: key);
final NoteModel note;

  @override
  State<EditViewBody> createState() => _EditViewBodyState();
}

class _EditViewBodyState extends State<EditViewBody> {
  String? title,content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children:   [
          const SizedBox(
            height: 50,
          ),
           CustomAppBar(
            onPressed: (){
              widget.note.title=title ?? widget.note.title;
              widget.note.supTitle=content ?? widget.note.supTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);

            },
            title: 'Edit Note',
            icon: Icons.check,
          ),
          TextFieldWidget(hint: widget.note.title,
          onChanged: (value){
            title=value;
          },
          ),
          const SizedBox(
            height: 16,
          ),
           TextFieldWidget(
            hint: widget.note.supTitle,
            maxLines: 5,
          onChanged: (value){
              content=value;
          },
          ),
        ],
      ),
    );
  }
}
