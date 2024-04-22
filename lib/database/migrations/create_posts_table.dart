import 'package:vania/vania.dart';

class CreatePostsTable extends Migration {
  @override
  Future<void> up() async {
    super.up();
    await createTable('posts', () {
      id();
      bigInt('user_id', unsigned: true);
      longText('text', nullable: true);
      timeStamp('created_at', nullable: true);
      timeStamp('updated_at', nullable: true);
      timeStamp('deleted_at', nullable: true);
      foreign('user_id', 'users', 'id', constrained: true, onDelete: 'CASCADE');
    });
  }
}
