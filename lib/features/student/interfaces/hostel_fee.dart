import 'package:blossom_house_hosatel/common/app_bar.dart';
import 'package:blossom_house_hosatel/common/constants.dart';
import 'package:blossom_house_hosatel/common/spacing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class HostelFee extends StatefulWidget {
  const HostelFee({super.key});

  @override
  State<HostelFee> createState() => _HostelFeeState();
}

class _HostelFeeState extends State<HostelFee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:buildAppBar(context,'Hostel fee',
      ),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            heightSpacer(20),
            Image.asset(
              AppConstants.hostel,
            ),
            heightSpacer(40),
            Container(
              width:double.maxFinite,
              decoration: ShapeDecoration(
        
                shape: RoundedRectangleBorder(
                  side:const BorderSide(
                    width:4,
                    color:Colors.black,
                    
                  ),
                  borderRadius:BorderRadius.circular(30),
        
                   ),
        
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    heightSpacer(20),
                    Text("Hostel Details",
                  style:TextStyle(
                    fontSize:20,
                    fontWeight:FontWeight.w700,
                  ),
                  ),
                  heightSpacer(20),                
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Row(
                    children: [
                      Text(
                        "Block No.",
                        style:TextStyle(
                          fontSize:16,
                          ),
                      ),
                       Text(
                        "B",
                        style:TextStyle(
                          fontSize:16,
                          ),
                      ),
                    ],
                     ),
                      Row(
                        children: [
                          Text(
                        "Room No.",
                        style:TextStyle(
                          fontSize:16,
                          fontWeight: FontWeight.w700,
                          ),
                      ),
                       Text(
                        "201",
                        style:TextStyle(
                          fontSize:16,
                          fontWeight: FontWeight.w700,
                          ),
                      ),
                        ],
                       ),
                    ],
                    ),
                    heightSpacer(20),
                    Text("Payment Details",
                  style:TextStyle(
                    fontSize:20,
                    fontWeight:FontWeight.w700,
                  ),
                  ),
                  heightSpacer(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                        "Maintanance Charge : ",
                        style:TextStyle(
                          fontSize:16,
                          fontWeight: FontWeight.w700,
                          ),
                      ),
                       Text(
                        "3000 LKR ",
                        style:TextStyle(
                          fontSize:16,
                          fontWeight: FontWeight.w700,
                          ),
                      ),
                        ],
                       ),
                     heightSpacer(20),
        
                       Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                        "Meal Charge : ",
                        style:TextStyle(
                          fontSize:16,
                          fontWeight: FontWeight.w700,
                          ),
                      ),
                       Text(
                        "3000 LKR ",
                        style:TextStyle(
                          fontSize:16,
                          fontWeight: FontWeight.w700,
                          ),
                      ),
                        ],
                       ),
                      heightSpacer(20),
        
                       Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                        "Electricity/Water Charge : ",
                        style:TextStyle(
                          fontSize:16,
                          fontWeight: FontWeight.w700,
                          ),
                      ),
                       Text(
                        "3000 LKR ",
                        style:TextStyle(
                          fontSize:16,
                          fontWeight: FontWeight.w700,
                          ),
                      ),
                        ],
                       ),
                       heightSpacer(20),
                       Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                        "Room Charge : ",
                        style:TextStyle(
                          fontSize:16,
                          fontWeight: FontWeight.w700,
                          ),
                      ),
                       Text(
                        "3000 LKR ",
                        style:TextStyle(
                          fontSize:16,
                          fontWeight: FontWeight.w700,
                          ),
                      ),
                        ],
                       ),
                       heightSpacer(20),
                       const Divider(
                        color: Colors.black,
                        ),
                        heightSpacer(20),
                        Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                        "Total Charge : ",
                        style:TextStyle(
                          fontSize:16,
                          fontWeight: FontWeight.w700,
                          ),
                      ),
                       Text(
                        "3000 LKR ",
                        style:TextStyle(
                          fontSize:16,
                          fontWeight: FontWeight.w700,
                          ),
                      ),
                        ],
                       ),
                       heightSpacer(20),
                      
                  ],
                  ),
                  
                  ),
              ),
            
          ],
          ),
      ),

    );
  }
}