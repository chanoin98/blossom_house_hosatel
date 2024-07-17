import 'package:blossom_house_hosatel/common/constants.dart';
import 'package:blossom_house_hosatel/common/spacing.dart';
import 'package:blossom_house_hosatel/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';



class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("Dashboard",style:AppTextTheme.kLabelStyle.copyWith(fontSize:22.sp),
        ),
        actions:[
          Padding(
            padding: const EdgeInsets.only(right:15),
            child:InkWell(
              onTap:() {},
              child:SvgPicture.asset(AppConstants.profile),
              ),
          ),
              ],
            ),
            body: Padding(
              padding:EdgeInsets.symmetric(
                horizontal:15.w,
                vertical: 10.h,
              ),
              child:Column(
              children: [heightSpacer(20),
              Container(
                height:140.h,
                width : double.maxFinite,
                decoration: const ShapeDecoration(
                  color:Colors.white,
                  shape:RoundedRectangleBorder(
                    side:BorderSide(
                       width:2,
                      color:Color(0xff007b3b),
                    ),
                    borderRadius: 
                    BorderRadius.only(
                      topLeft:Radius.circular(30),
                      topRight:Radius.circular(30),
                      bottomLeft:Radius.circular(30),
                      bottomRight:Radius.circular(2),

                      ),
                  ),
                  shadows: [
                    BoxShadow(
                      color:Color(0x332e8b57),
                      blurRadius:8,
                      offset:Offset(2,4),
                      spreadRadius:0
                    ),
                  ],

                ),
                child:Padding(
                  padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children :[
                        Text("Student",
                      style:TextStyle(
                        fontWeight:FontWeight.w700,
                        color:const Color(0xff333333),
                        fontSize:24.sp
                      ),
                      ),
                      
                      heightSpacer(15),
                      Text("Room No.",
                      style:TextStyle(
                        color:const Color(0xff333333),
                        fontSize:15.sp
                      ),
                      ),
                      Text("Block No :",
                      style:TextStyle(
                        color:const Color(0xff333333),
                        fontSize:15.sp,
                      ),
                      ),
                      ],
                    ),
                    widthSpacer(10),
                    Column(
                      children:[
                        SvgPicture.asset(AppConstants.createIssue),
                        const Text(
                          "Create issue",
                          style:TextStyle(fontSize:16,
                          fontWeight:FontWeight.w700,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                ),

              ),
              heightSpacer(30),
              Container(
                width:double.maxFinite,
                color:const Color(0xff262e8b57),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    heightSpacer(20),
                    Padding(
                      padding:const EdgeInsets.only(left:10.0),
                 child:  Text (
                    "Categories",
                    style:TextStyle(
                        color:const Color(0xff333333),
                        fontSize:20,
                        fontWeight: FontWeight.w700,

                      ),
                      ),
                    
                    ),
                  ],
                ),
              )
              ],
            ),
            ),
    );
  }
}