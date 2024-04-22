import 'package:vania/vania.dart';

class ErrorResponseMiddleware extends Middleware {
  @override
  handle(Request req) async {
    if(req.header('content-type') != 'application/json') {
      throw HttpException(message: 'Your request is not valid', code: 400);
    }
    next?.handle(req);
  }
}
