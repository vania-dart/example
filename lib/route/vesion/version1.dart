import 'package:example/app/http/controllers/post/post_controller.dart';
import 'package:example/app/http/middleware/authenticate.dart';
import 'package:vania/vania.dart';

import '../../app/http/controllers/auth/auth_controller.dart';
import '../../app/http/controllers/user/user_controller.dart';

class Version1 extends Route {
  @override
  void register() {


    Router.basePrefix('api/v1');

    /// Authentication Routes
    Router.post('login', authController.login);
    Router.post('sign-up', authController.signUp);
    Router.post('refresh-token', authController.refreshToken);

    Router.group(
      [
        GroupRouter.get('details', userController.index),
        GroupRouter.patch('update', userController.update),
      ],
      prefix: 'user',
      middleware: [AuthenticateMiddleware()],
    );

    Router.group(
      [
        GroupRouter.get('all', postController.index),
        GroupRouter.post('create', postController.create),
      ],
      prefix: 'post',
      middleware: [AuthenticateMiddleware()],
    );
  }
}
