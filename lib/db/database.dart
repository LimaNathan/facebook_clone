import 'dart:async';

import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

import 'package:facebook_clone/entitys/entity_base.dart';
import 'package:facebook_clone/repositories/interfaces/facebook_repository_dao.dart';

part 'database.g.dart';

@Database(version: 1, entities: [EntityBase])
abstract class AppDatabase extends FloorDatabase {
  FacebookRepositoryDao get facebookRepositoryDao;
}
