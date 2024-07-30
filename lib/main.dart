import 'package:blossom_house_hosatel/features/home/interfaces/home.dart';
import 'package:blossom_house_hosatel/hostel.dart';
import 'package:blossom_house_hosatel/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:blossom_house_hosatel/features/auth/interfaces/login.dart';
import 'package:blossom_house_hosatel/features/auth/interfaces/register.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  Hive.registerAdapter(HostelAdapter());

  await Hive.openBox<User>('users');
  await Hive.openBox<Hostel>('hostels');
  var settingsBox = await Hive.openBox('settings');

  String? hostelName = settingsBox.get('hostelName');

  runApp(MyApp(hostelName: hostelName));
}

class MyApp extends StatelessWidget {
  final String? hostelName;

  const MyApp({super.key, this.hostelName});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      useInheritedMediaQuery: true,
      splitScreenMode: true,
      designSize: const Size(375, 825),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Student Hostel',
          home: hostelName == null ? const Login() : Login(),
        );
      },
    );
  }
}
