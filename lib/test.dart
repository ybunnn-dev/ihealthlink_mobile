import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

void main() async {
  // Required for async operations before runApp
  WidgetsFlutterBinding.ensureInitialized();

  // 1️⃣ Get the database path
  final dbPath = await getDatabasesPath();
  final path = join(dbPath, 'test.db');
  print('Database file path: $path');

  // 2️⃣ Open the database (create if it doesn't exist)
  final db = await openDatabase(
    path,
    version: 1,
    onCreate: (db, version) async {
      await db.execute('''
        CREATE TABLE items(
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          name TEXT NOT NULL
        )
      ''');
      print('Database created and table "items" initialized.');
    },
  );

  // 3️⃣ Insert a test item
  await db.insert('items', {'name': 'Test Item'});

  // 4️⃣ Query all items
  final items = await db.query('items');
  print('Database contents: $items'); // Should print your inserted item

  await db.close();
  print('Database connection closed.');
}
