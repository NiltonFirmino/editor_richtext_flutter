import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DB {
  //construtor de acesso privado
  DB._();
  // Instancia do Banco de Dados
  static final DB instace = DB._();
  //Instancia SQLite
  static Database? _database;

  //verificando se exite database
  get database async {
    if (_database != null) {
      return _database;
    }
    return await _initialDatabase();
  }

  _initialDatabase() async {
    return await openDatabase(
      join(await getDatabasesPath(), "salvedrichtext.db"),
      version: 1,
      onCreate: _onCreate,
    );
  }

  _onCreate(db, version) async {
    await db.execute(_salvedtext);
  }

  String get _salvedtext => '''
    CREATE TABLE salvedtext(
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      title TEXT,
      textedit TEXT,
    )
  ''';
}
