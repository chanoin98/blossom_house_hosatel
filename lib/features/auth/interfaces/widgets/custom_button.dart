
import 'package:blossom_house_hosatel/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Color? buttonColor;
  final VoidCallback onTap;
  final double? size;
  const CustomButton({
  Key? key,
  required this.buttonText,
  required this.buttonColor,
  required this.onTap,
  required this.size,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child:Container(
      
    width:double.maxFinite,
    height:50.h,
    decoration:BoxDecoration(
      color: Colors.blue[900],
    borderRadius:BorderRadius.circular(14.r),
    ),
    child:Center(
      child:Text(
       buttonText,
    style:AppTextTheme.kLabelStyle.copyWith(
      color:buttonColor ?? Color.fromARGB(255, 102, 84, 201), fontSize: size ?? 16),
      )
      ),
      ));
  }
}