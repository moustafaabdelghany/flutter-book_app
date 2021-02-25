//import 'package:book_app/screens/selected_book_screen.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper{
  static final DbHelper _instance = DbHelper.internal();
  factory DbHelper() => _instance;
  DbHelper.internal();
  static Database _db;

  Future<Database> createDatabase() async{
    if(_db != null){
      return _db;
    }
    String path = join(await getDatabasesPath(), 'library.db');
    _db = await openDatabase(path,version: 1,onCreate: (Database db, int v){

      db.execute("create table courses(id integer primary key autoincrement, name varchar(50), copies varchar(255), price integer)");
    });
    return _db;
  }

  Future<int> createBooks(books) async{
    Database db = await createDatabase();
    //db.rawInsert('insert into books');
    return db.insert('Books', books.toMap());
  }

  Future<List> allBooks() async{
    Database db = await createDatabase();
    //db.rawQuery("select * from books");
    return db.query('Books');
  }

  Future<int> deleteBook(int id) async{
    Database db = await createDatabase();
    return db.delete('Books',where: 'id = ?',whereArgs:[id] );
  }

}