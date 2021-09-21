import 'package:facebook_clone/entitys/entity_base.dart';
import 'package:facebook_clone/repositories/interfaces/repository_dao_interface.dart';
import 'package:floor/floor.dart';

@dao
abstract class FacebookRepositoryDao
    extends IRepositoryDaoInterface<EntityBase> {
  @Query('SELECT * FROM Email WHERE id = :id')
  Future<EntityBase?> getById(int id);
}
