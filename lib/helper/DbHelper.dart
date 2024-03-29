// initializer and repository
// create database and table + CRUD operations

import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import '../models/Utilisateur.dart';

class DbHelper {
  // private builder, builder injection when class called
  // private  == static
  DbHelper._privateConstructor();

  // init privateConstructor in instance variable
  // static to be called in or out file
  static final DbHelper instance = DbHelper._privateConstructor();

  // define propreties
  // _db == static ( form of norm )
  static Database? _db;
  static const String TABLERECETTE = "recette";
  static const String TABLEUSER = "utilisateur";
  // file name
  static const String DB_NAME = "recette.db";

  // vu que ca attend un resultat, on fait une promise
  // LAMBDA FUNCTION
  // initDb == Function i will create in next step
  Future<Database?> get db async => _db ??= await initDb();

  initDb() async {
    // init db create the text file
    print("init db");
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    // we are creating the path + specify the name
    String path = join(documentsDirectory.path, DB_NAME);
    // print for finding the path in console
    print (path); // /data/user/0/com.skyblyvion.good_meal/app_flutter/recette.db
    // create the db function
    Database db = await openDatabase(path, version: 1, onCreate: _onCreate);
    // return the created db
    // verification // await afterDbCreate(db);
    return db;
  }

  // create the db in async to avoid errors
  _onCreate(Database db, int version) async {
    print("onCreate");
    try {
      // create tables here
      await db.execute(
          """CREATE TABLE IF NOT EXISTS $TABLERECETTE (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            titre TEXT, description TEXT, duree INTEGER, 
            ingredients TEXT, image TEXT);
          """
      );
      await db.execute(
          """CREATE TABLE IF NOT EXISTS $TABLEUSER (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            nom TEXT, prenom TEXT, login TEXT,pass TEXT);
          """
      );
    } catch (e){
      print("error creating TABLES");
      print(e);
    }
    print('db was created');
  }

  Future<int> insertUser(Utilisateur user) async {
    Database? db = await DbHelper.instance.db;
    return await db!.insert(TABLEUSER, user.toMap(),
        conflictAlgorithm: ConflictAlgorithm.abort);
  }

  Future<List<Utilisateur>> getUsers() async {
    Database? db = await DbHelper.instance.db;
    List<Map<String, dynamic>> maps = await db!.query(TABLEUSER, orderBy: 'nom');
    return List.generate(maps.length, (i) {
      return Utilisateur(
          id: maps[i]['id'],
          nom: maps[i]['nom'],
          prenom: maps[i]['prenom'],
          login: maps[i]['login'],
          pass: maps[i]['pass']);
    });

  }

}