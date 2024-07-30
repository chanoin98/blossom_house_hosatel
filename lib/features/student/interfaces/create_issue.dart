import 'dart:core';

import 'package:blossom_house_hosatel/common/app_bar.dart';
import 'package:blossom_house_hosatel/common/custom_text_field.dart';
import 'package:blossom_house_hosatel/common/spacing.dart';
import 'package:blossom_house_hosatel/features/auth/interfaces/widgets/custom_button.dart';
import 'package:blossom_house_hosatel/theme/text_theme.dart';
import 'package:flutter/material.dart';

class StudentCreateIssue extends StatefulWidget {
  const StudentCreateIssue({super.key});

  @override
  State<StudentCreateIssue> createState() => _StudentCreateIssueState();
}

class _StudentCreateIssueState extends State<StudentCreateIssue> {
  TextEditingController studentComment = TextEditingController();



  String? selectedIssue;
  List<String> issues=[
    "Bathroom",
    "Bedroom",
    "Water",
    "Furniture",
    "Kitchen"
  ];
  @override
  void dispose() {
    studentComment.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: buildAppBar(context,'Create Issue'),
    body:SingleChildScrollView(
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal:15, vertical:10,),
        child: Form(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
          heightSpacer(15),
      
          Text("Room Number",
          style:AppTextTheme.kLabelStyle,
          ),
          Container(
            padding:const EdgeInsets.all(12),
            width:double.maxFinite,
          decoration :ShapeDecoration(
            shape:RoundedRectangleBorder(
              side: const BorderSide(width: 1,color: Color(0xff2e8b57)),
              borderRadius:BorderRadius.circular(14),
               ),
               ),
               child:  Padding(
                 padding:  const EdgeInsets.only(left: 10.0),
                 child:  Text("201",
                 style:TextStyle(fontSize: 17),
                 ),
                 
               ),
          ),
          heightSpacer(15),
           Text("Block Number",
          style:AppTextTheme.kLabelStyle,
          ),
          Container(
            padding:const EdgeInsets.all(12),
            width:double.maxFinite,
          decoration :ShapeDecoration(
            shape:RoundedRectangleBorder(
              side: const BorderSide(width: 1,color: Color(0xff2e8b57)),
              borderRadius:BorderRadius.circular(14),
               ),
               ),
               child:  Padding(
                 padding:  const EdgeInsets.only(left: 10.0),
                 child:  Text("B",
                 style:TextStyle(fontSize: 17),
                 ),
                 
               ),
          ),
           heightSpacer(15),
           Text("Yoyr Email Address",
          style:AppTextTheme.kLabelStyle,
          ),
          Container(
            padding:const EdgeInsets.all(12),
            width:double.maxFinite,
          decoration :ShapeDecoration(
            shape:RoundedRectangleBorder(
              side: const BorderSide(width: 1,color: Color(0xff2e8b57)),
              borderRadius:BorderRadius.circular(14),
               ),
               ),
               child:  Padding(
                 padding:  const EdgeInsets.only(left: 10.0),
                 child:  Text("student@gmail.com",
                 style:TextStyle(fontSize: 17),
                 ),
                 
               ),
          ),
           heightSpacer(15),
           Text("Phone Number",
          style:AppTextTheme.kLabelStyle,
          ),
          Container(
            padding:const EdgeInsets.all(12),
            width:double.maxFinite,
          decoration :ShapeDecoration(
            shape:RoundedRectangleBorder(
              side: const BorderSide(width: 1,color: Color(0xff2e8b57)),
              borderRadius:BorderRadius.circular(14),
               ),
               ),
               child:  Padding(
                 padding:  const EdgeInsets.only(left: 10.0),
                 child:  Text("0756889884",
                 style:TextStyle(fontSize: 17),
                 ),
                 
               ),
          ),
           heightSpacer(15),
           Text("Issue you are facing",
          style:AppTextTheme.kLabelStyle,
          ),
          heightSpacer(15),
          Container(
            padding: EdgeInsets.symmetric(horizontal:10),
            width:double.maxFinite,
          decoration :ShapeDecoration(
            shape:RoundedRectangleBorder(
              side: const BorderSide(width: 1,color: Color(0xff2e8b57),),
              borderRadius:BorderRadius.circular(14),
               ),
               ),
               
               child:  DropdownButton( 
                underline: const SizedBox(),
                isExpanded: true,
                value:selectedIssue,
      
                onChanged: (String? newValue) {
                  setState((){
                    selectedIssue = newValue;
                  }
                  );
                },
                items: issues.map(
                  (String issue){
                  return DropdownMenuItem(
                    value:issue,
                    child:Text(issue),
                    );
                    
                },
                ). toList(),
               ),
               ),
          
          heightSpacer(15),
           Text(
            "Comment",
          style:AppTextTheme.kLabelStyle,
          ),
          heightSpacer(15),
          CustomTextField(controller:studentComment,
          validator: (value){
            if(value!.isEmpty){
      return "Comment is required";
            }
            return null;
          },
          enabledBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide(color: Color(0xffd1d8ff)),
                  ),
                ),
                CustomButton(
                  buttonText: "Submit", 
                  onTap: () {},
                  buttonColor: Colors.blue,
                  size: 50.0,
                  ),
                heightSpacer(10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}