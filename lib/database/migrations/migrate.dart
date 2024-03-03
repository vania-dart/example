import 'dart:io';
import 'package:vania/vania.dart';
import '../../config/database.dart';
import 'create_user_table.dart';
import 'create_posts_table.dart';

void main() async {
  await Migrate().registry();
  await MigrationConnection().closeConnection();
  exit(0);
}

class Migrate {
  registry() async {
    await MigrationConnection().setup(databaseConfig);
    await CreateUserTable().up();
    await CreatePostsTable().up();
  }
}
