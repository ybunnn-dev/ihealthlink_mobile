import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';


class DBHelper {
  static final DBHelper instance = DBHelper._init();
  static Database? _database;

  DBHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('app.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE items (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL
      )
    ''');
  }

  Future<int> insertItem(String name) async {
    final db = await instance.database;
    return await db.insert('items', {'name': name});
  }

  Future<List<Map<String, dynamic>>> getItems() async {
    final db = await instance.database;
    return await db.query('items');
  }

  Future close() async {
    final db = await instance.database;
    db.close();
  }
}
