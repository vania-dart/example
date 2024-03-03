import 'package:vania/vania.dart';

DatabaseConfig databaseConfig = DatabaseConfig(
  driver: MysqlDriver(),
  host: '127.0.0.1',
  database: 'MyDb',
  username: 'root',
  password: 'Password',
  port: 3306,
  sslmode: false,
);
