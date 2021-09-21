import 'package:facebook_clone/entitys/entity_base.dart';
import 'package:floor/floor.dart';

abstract class IRepositoryDaoInterface<Table extends EntityBase> {
  @insert
  Future<int> insertItem(Table item);

  @update
  Future<int> updateItem(Table item);

  @delete
  Future<int> deleteItem(Table item);
}
