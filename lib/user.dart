import 'package:hive/hive.dart';

part 'user.g.dart'; 

@HiveType(typeId: 0)
class User {
  @HiveField(0)
  late String username;

  @HiveField(1)
  late String password;

  @HiveField(2)
  late String hostelName;

  User({
    required this.username,
    required this.password,
    required this.hostelName,
  });
}
