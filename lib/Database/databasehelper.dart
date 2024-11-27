import 'package:sqflite/sqflite.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart';

class DatabaseHelper {
  static Future<Database> initializeDB() async {
    final path = await getDatabasesPath();
    return openDatabase(
      join(path, 'food_ordering.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE food_items(id INTEGER PRIMARY KEY, name TEXT, cost REAL);',
        );
      },
      version: 1,
    );
  }
}
