import 'package:vania/vania.dart';

import 'vesion/version1.dart';

class ApiRoute implements Route {
  @override
  void register() {
    Version1().register();

    Router.get('/', (){
      return Response.html('<b>Hello World, welcome to Fullstack development with Vania</b>');
    });

  }
}
