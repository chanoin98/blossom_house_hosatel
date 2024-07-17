import 'package:blossom_house_hosatel/features/auth/interfaces/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



void main(){
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

@override
  Widget build(BuildContext context){
    return const ScreenUtilInit(
      useInheritedMediaQuery: true,
      splitScreenMode: true,
      designSize: Size(375,825),
      child:  MaterialApp(
       debugShowCheckedModeBanner:false,
        title:'Blossom House',
        home:Login(),
      ),
    );
  }
}