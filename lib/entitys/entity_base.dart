import 'package:floor/floor.dart';

@Entity(tableName: 'Users')
class EntityBase {
  EntityBase({
    this.id,
    required this.name,
    required this.email,
    required this.password,
  });
  @PrimaryKey(autoGenerate: true)
  final int? id;

  final String name;
  final String email;
  final String password;
}
