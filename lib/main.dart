import 'package:blossom_house_hosatel/hostel.dart';
import 'package:blossom_house_hosatel/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:blossom_house_hosatel/features/auth/interfaces/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  print('Initializing Hive...');
  await Hive.initFlutter();
  print('Hive initialized');

  Hive.registerAdapter(UserAdapter());
  Hive.registerAdapter(HostelAdapter());
  print('Adapters registered');


//await Hive.deleteBoxFromDisk('users');
  //await Hive.deleteBoxFromDisk('hostels');


  await Hive.openBox<User>('users');
  await Hive.openBox<Hostel>('hostels');
  print('Boxes opened');

  runApp(MyApp());
  print('RunApp called');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
          home: const Login(),
        );
      },
    );
  }
}

/*
class Login extends StatelessWidget {
  const Login({super.key});
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Login"),
      ),
    );
  }
//}
