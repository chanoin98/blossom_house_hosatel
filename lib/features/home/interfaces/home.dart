import 'package:blossom_house_hosatel/common/constants.dart';
import 'package:blossom_house_hosatel/common/spacing.dart';
import 'package:blossom_house_hosatel/features/admin/interfaces/create_staff.dart';
import 'package:blossom_house_hosatel/features/admin/interfaces/issue.dart';
import 'package:blossom_house_hosatel/features/admin/interfaces/room_change_request.dart';
import 'package:blossom_house_hosatel/features/admin/interfaces/staff_display.dart';
import 'package:blossom_house_hosatel/features/auth/interfaces/login.dart';
import 'package:blossom_house_hosatel/features/home/interfaces/widgets/category_card.dart';
import 'package:blossom_house_hosatel/features/student/interfaces/create_issue.dart';
import 'package:blossom_house_hosatel/features/student/interfaces/room_availability.dart';
import 'package:blossom_house_hosatel/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';



class Home extends StatefulWidget {
  const Home({super.key});

  

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
   Future<void> _logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('hostelName');
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const Login()),
    );
  }
  
  Future<void> _clearLoginInfo() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('hostelName');
    await prefs.remove('username');
    await prefs.remove('password');
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Login information cleared')),
    );
  }
  
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

             /*     widthSpacer(10),
                    IconButton(
                      icon: ImageIcon(
                        AssetImage('assets/create_issue.jpg'),
                      ),
                      iconSize: 165.0, 
                      onPressed: () {
                      },
                    ),
                    */
                    widthSpacer(10),
                    Column(
                      children: [
                        InkWell(
                          onTap:(){
                          Navigator.push(
                            context, 
                            CupertinoPageRoute(
                              builder:(context)=>
                              const StudentCreateIssue(),
                              ),
                              );
                        },

                        
                       child: SvgPicture.asset(AppConstants.createIssue),
                       ),
                         Text(
                          "Create issue",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
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
                     heightSpacer(15),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceAround,
                    children: [
                      CategoryCard(
                        category: 'Room\nAvailability',
                        
                        onTap: () {
                          Navigator.push(
                            context, 
                            CupertinoPageRoute(
                              builder:(context)=>
                              const RoomAvailability(),
                              ),
                              );
                        },
                        image: AppConstants.roomAvailability,
                      ),
                       CategoryCard(
                        category: 'All\nIssues',
                        onTap: () {
                          Navigator.push(
                            context, 
                            CupertinoPageRoute(
                              builder:(context)=>
                              const Issue(),
                              ),
                              );
                        },
                        image: AppConstants.roomAvailability,
                      ),
                       CategoryCard(
                        category: 'Staff\nMembers',
                        onTap: () {
                           Navigator.push(
                            context, 
                            CupertinoPageRoute(
                              builder:(context)=>
                              const StaffDisplay(),
                              ),
                              );
                        },
                        image: AppConstants.staffMember,
                      ),
                    ],
                  ),
                  heightSpacer(20),
                   Row(
                    mainAxisAlignment:MainAxisAlignment.spaceAround,
                    children: [
                      CategoryCard(
                        category: 'Create\nStaff',
                        onTap: () {
                           Navigator.push(
                            context, 
                            CupertinoPageRoute(
                              builder:(context)=>
                              const CreateStaff(),
                              ),
                              );
                        },
                        
                        image: AppConstants.roomAvailability,
                      ),
                       CategoryCard(
                        category: 'Hostel\nFee',
                        onTap: () {},
                        image: AppConstants.roomAvailability,
                      ),
                       CategoryCard(
                        category: 'Change\nRequests',
                        onTap: () {
                          Navigator.push(
                            context, 
                            CupertinoPageRoute(
                              builder:(context)=>
                              const RoomChangeRequest(),
                              ),
                              );
                        },
                        image: AppConstants.staffMember,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            heightSpacer(30),
            ElevatedButton(
              onPressed: _clearLoginInfo,
              child: Text('Clear Login Information'),
            ),
          ],
        ),
      ),
    );
  }
}