import 'package:hive/hive.dart';

part 'hostel.g.dart'; 

@HiveType(typeId: 1)
class Hostel {
  @HiveField(0)
  late String name;

  @HiveField(1)
  late String location;

  Hostel({
    required this.name,
    required this.location,
  });
}
