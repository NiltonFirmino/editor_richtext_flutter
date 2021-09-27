import 'package:editor_richtext_flutter/app/database/db.dart';
import 'package:sqflite/sqflite.dart';

class DbRepository {
  late Database db;
  List<ArqText> listSaved = [];
  String titledoc = '';

  DbRepository() {
    initDbRepository();
  }
  initDbRepository() async {
    await getTextTitle();
  }

  getTextTitle() async {
    db = await DB.instace.database;
    List textTitle = await db.query('savedtext', limit: 1);
    titledoc = textTitle.first('title');
  }
}

class ArqText {
  int id;
  String title;

  ArqText({required this.id, required this.title});
}
