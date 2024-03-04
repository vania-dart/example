import 'package:vania/vania.dart';
import 'package:example/app/providers/route_service_povider.dart';

import 'auth.dart';
import 'cros.dart';
import 'database.dart';

Map<String, dynamic> config = {
  'name': 'example',
  'key': 'C1-Gir9lOK8ImV4QaTf7MKVleZCxK0j-bpRf0oROBPw=',
  'port': 8000,
  'host': '0.0.0.0',
  'debug': true,
  'url': '',
  'timezone': '',
  'websocket': false,
  'cors': cors,
  'database': databaseConfig,
  'cache': CacheConfig(),
  'auth': authConfig,
  'storage': FileStorageConfig(),
  'providers': <ServiceProvider>[
    RouteServiceProvider(),
  ],
};
