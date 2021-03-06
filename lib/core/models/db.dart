import 'package:hive/hive.dart';

// annotation dart
///Access the database with [db] name.Generic Type must have HiveType annotations
abstract class Db<E> {
  final String name;
  Box<E>? _db;

  ///use this after calling [init] or this will give u error
  Box<E> get db {
    if (_db == null) throw NullThrownError();
    return _db!;
  }

  Db({
    required this.name,
  });

  ///open the database and init [db]  to box value
  Future<void> init() async {
    _db = await Hive.openBox<E>(name);
  }

  ///close the database and clean [db] to null
  Future<void> dispose() async {
    await _db?.close();
    _db = null;
  }

  ///Automatically open and close database.Use [init] and [dispose] for manual opening and closing.
  Future<A> autoAsync<A>(Future<A> Function() fun) async {
    await init();
    final A val = await fun();
    await dispose();
    return val;
  }

  ///Automatically open and close database.Use [init] and [dispose] for manual opening and closing.
  A autoSync<A>(A Function() fun) {
    A? val;
    init().then((_) {
      val = fun();
      dispose();
    });
    return val!;
  }
}
