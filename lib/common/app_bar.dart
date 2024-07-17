import 'package:blossom_house_hosatel/theme/colors.dart';
import 'package:blossom_house_hosatel/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar buildAppBar(BuildContext context, String? title) {
  return AppBar(
    backgroundColor: AppColors.kGreenColor,
    elevation: 0,
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(
        CupertinoIcons.back,
        color: Colors.white,
      ),
    ),
    title: Text(
      title ?? "Registration",
      style: AppTextTheme.kLabelStyle.copyWith(
          fontSize: 24.sp, fontWeight: FontWeight.bold, color: Colors.white),
    ),
  );
}