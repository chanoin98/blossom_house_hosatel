import 'package:blossom_house_hosatel/common/app_bar.dart';
import 'package:blossom_house_hosatel/common/constants.dart';
import 'package:blossom_house_hosatel/common/spacing.dart';
import 'package:blossom_house_hosatel/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StaffDisplay extends StatefulWidget {
  const StaffDisplay({super.key});

  @override
  State<StaffDisplay> createState() => _StaffDisplayState();
}

class _StaffDisplayState extends State<StaffDisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:buildAppBar(context, "Staffs'"),
      body:Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1, 
          childAspectRatio: 2/1.2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16,
        ),
        itemCount: 1,
          itemBuilder: (context,index){
        return Container(
          padding: EdgeInsets.all(16),
          decoration: ShapeDecoration(shape: RoundedRectangleBorder(
            side:BorderSide(color:Color(0xff007b38),
            width :2,
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
              bottomLeft: Radius.circular(30),

            ),
             ),),
             child:Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Column(
                        children: [Image.asset(AppConstants.profile,
                        width:90,
                        height:90,
                        ),
                        heightSpacer(20),
                        Text("Hostel Wrden",
                        style:AppTextTheme.kLabelStyle
                        ),
                  
                        ],
                        ), 
                        widthSpacer(10),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              heightSpacer(10),
                               Text(
                                "Name : Warden",
                              style:TextStyle(fontSize:14),
                          ),
                          heightSpacer(8),
                           Text(
                                "Email : Warden",
                              style:TextStyle(fontSize:14),
                          ),
                          heightSpacer(8),
                           Text(
                                "Contact : Warden",
                              style:TextStyle(fontSize:14),
                          ),
                          heightSpacer(8),
                            ],),
                        ),
                    ],),
                ),
                InkWell(
                  onTap:() {},
                  child: Container(
                    padding : const EdgeInsets.symmetric(
                      horizontal: 10, 
                      vertical: 8,
                      
                      ),
                    width:double.maxFinite,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius:BorderRadius.circular(12) ,
                    ),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [Text("Delete",style:TextStyle(
                        fontSize: 16,color:Colors.white,
                      ),),
                      ],
                      )
                    ),
                )
              ],)
        );
          }),
      ),
    
    );
  }
}