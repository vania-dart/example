# Vania Example Project

## Getting Started

Clone this repository:

```shell
git clone https://github.com/vania-dart/example.git
```

### Configure Your Database

In `config/database.dart`, replace your database credentials:

```dart
DatabaseConfig databaseConfig = DatabaseConfig(
  driver: MysqlDriver(),
  host: '127.0.0.1', // Your server address
  database: 'MyDb', // Database name
  username: 'root', // Username
  password: 'Password', // Password
  port: 3306,
  sslmode: false,
);
```

## Migrate Your Tables

Run `vania migrate`.

## Serve

Run `vania serve`.

Enjoy!
