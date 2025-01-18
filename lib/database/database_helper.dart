import 'package:pomodoro_list/models/memo_data.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static Database? _database;
  // static const String dbName = 'advanced_pomodoro_typehoon.db';
  static const String dbName = 'memos.db';

  Future<void> initDatabase() async {
    if (_database == null) {
      var databasesPath = await getDatabasesPath();
      String path = '$databasesPath/$dbName';
      _database = await openDatabase(
        path,
        version: 1,
        onCreate: _createMemos,
      );
    }
  }

  /// 이건 내가 다른 파일에서 호출할 게 아님.
  /// 그냥 initDatabase 에 onCreate를 하려고 적은거지
  Future<void> _createMemos(Database db, int version) async {
    await db.execute('''
      CREATE TABLE memos(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        content TEXT,
        createAt TEXT
      )
    ''');
  }

  Future<List<MemoData>> getMemos() async {
    await initDatabase();

    List<Map<String, dynamic>> maps =
        await _database!.query('memos'); // 테이블 전체 가져옴

    return List.generate(
      maps.length,
      (index) {
        return MemoData(
          id: maps[index]['id'],
          content: maps[index]['content'],
          createAt: DateTime.parse(maps[index]['createAt']),
        );
      },
    );
  }

  Future<void> insertMemo(MemoData memo) async {
    await initDatabase();
    await _database!.insert('memos', memo.toMap());
  }
}
