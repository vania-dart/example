import 'package:example/app/models/post.dart';
import 'package:vania/vania.dart';

class PostController extends Controller {
  // Fetch all posts
  Future<Response> index() async {
    List<Map<String, dynamic>> posts = await Post()
        .query()
        .select([
          'users.first_name',
          'users.last_name',
          'posts.text',
          'posts.id',
        ])
        .join('users', 'users.id', '=', 'posts.user_id')
        .get();

    return Response.json({'data': posts});
  }

  /// Create new post
  Future<Response> create(Request request) async {
    request.validate({
      'text': 'required',
    }, {
      'text.required': 'The text is required',
    });

    await Post().query().insert({
      'text': request.input('text'),
      'user_id': Auth().id(),
    });

    return Response.json({'message': 'Post created successfully'});
  }
}

final PostController postController = PostController();
