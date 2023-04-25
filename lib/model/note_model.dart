import 'package:hive/hive.dart';

part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
    String title;
  @HiveField(1)
   String supTitle;
  @HiveField(2)
   String data;
  @HiveField(3)
   int color;

  NoteModel(
      {required this.title,
      required this.supTitle,
      required this.data,
      required this.color});
}

// ( generate model hive)==> flutter packages pub run build_runner build
