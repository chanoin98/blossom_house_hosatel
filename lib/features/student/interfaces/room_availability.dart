import 'package:blossom_house_hosatel/common/app_bar.dart';
import 'package:blossom_house_hosatel/common/constants.dart';
import 'package:blossom_house_hosatel/common/spacing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class RoomAvailability extends StatefulWidget {
  const RoomAvailability({super.key});

  @override
  State<RoomAvailability> createState() => _RoomAvailabilityState();
}

class _RoomAvailabilityState extends State<RoomAvailability> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:buildAppBar(context,"Room Availability"),
      body:Column(
        children: [
          ListView.builder(
            padding:EdgeInsets.all(10),
            itemCount:2,
            shrinkWrap: true,
            itemBuilder: (context,index){
              return  Padding(
            padding:EdgeInsets.symmetric(vertical: 10),
                child:  RoomCard(),
              );
          
          }),
        ],
      ),
      );
    
  }
}

class RoomCard extends StatelessWidget {
  const RoomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding : const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius:BorderRadius.only(
          topLeft:Radius.circular(30),
          topRight:Radius.circular(30),
          bottomLeft:Radius.circular(30),
          

          ) ,
          border:Border.all(color: Colors.black,
          width:2,),
          
          ),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Image.asset(
                    AppConstants.bed,
                    height:70,
                    width:70,
                  
                  ),
                  const Text("Room No. : 202",
                  style:TextStyle(fontWeight:FontWeight.bold,
                  ),
                  ),
                ],
                ),
                widthSpacer(15),
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                
                  children: [
                    Text("Block",
                style:TextStyle(fontSize:16),
          ),
          heightSpacer(5),
          Text("Capacity",
                style:TextStyle(fontSize:16),
          ),
          heightSpacer(5),
          Text("Current Capacity",
                style:TextStyle(fontSize:16),
          ),
          heightSpacer(5),
          Text("Room Type",
                style:TextStyle(fontSize:16),
          ),
          heightSpacer(5),
          Row(children: [
            Text("Status",
            style:TextStyle( fontSize:16),
          ),
          widthSpacer(10),
          Container(
            height:30,
            padding:EdgeInsets.only(
            left:5,right:5,bottom: 5,top:2),
          decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(10) ,
            color:Colors.green,

            ),
            child:Text("Availabile",
            textAlign:TextAlign.center,
            style:TextStyle(fontSize: 16,
            color:Colors.white,),
            ),
            ),
          ],
          )
                  ],
                  
                  )

            ],)
    );
  }
}