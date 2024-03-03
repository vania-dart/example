import 'package:vania/vania.dart';

import 'vesion/v1.dart';

class ApiRoute implements Route {
  @override
  void register() {
    Router().basePrefix('api');

    V1().register();
  }
}
