import 'package:blossom_house_hosatel/common/app_bar.dart';
import 'package:blossom_house_hosatel/common/constants.dart';
import 'package:blossom_house_hosatel/common/spacing.dart';
import 'package:blossom_house_hosatel/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoomChangeRequest extends StatefulWidget {
  const RoomChangeRequest({super.key});

  @override
  State<RoomChangeRequest> createState() => _RoomChangeRequestState();
}

class _RoomChangeRequestState extends State<RoomChangeRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:buildAppBar(context, "Room Change Request",
      ),
      body:ListView.builder(
        itemCount:2,
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, index){
        return const RequestCard();
      }),
    );
  }
}

class RequestCard extends StatelessWidget {
  const RequestCard({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.maxFinite,
      child: Column(
        children:[
        heightSpacer(20),
        Container(
          decoration: ShapeDecoration(
            gradient: LinearGradient(
              begin: const Alignment(0.00,-1.00),    
              end:const Alignment(0,1),          
              colors:[
                const Color(0xff2e8b57).withOpacity(0.5),
                const Color(0x00e8857)
              ],
              ),
              shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft:Radius.circular(30),
                  topRight:Radius.circular(30),

                ),
                ),
           ),
           child: Row(
            children: [
              Column(
                children: [
              heightSpacer(20),
              Image.asset(AppConstants.person,
              height:70,
              width :70,
              ),
              heightSpacer(10),
              const Text("Student",
              style:TextStyle(fontSize:16,
              fontWeight:FontWeight.w700
              ),
              )
           ],
           ),
           widthSpacer(20),
           Column(
          crossAxisAlignment: CrossAxisAlignment.start,

            children: [
            heightSpacer(10),
            Text("Username: Student",
              style:TextStyle(fontSize:16,
              ),
              ),
              heightSpacer(10),
              Text("Current Block.: B",
              style:TextStyle(fontSize:16,
              ),
              ),
              heightSpacer(10),
               heightSpacer(10),
              Text("Current Room.: 201",
              style:TextStyle(fontSize:16,
              ),
              ),
              heightSpacer(10),
              Text("Email: gmail",
              style:TextStyle(fontSize:16,
              ),
              ),
              heightSpacer(10),
              Text("Phone number: 56554",
              style:TextStyle(fontSize:16,
              ),
              ),
              heightSpacer(10),
           ],
           ),
              
            ],
            
        ),

        
      
        ),
        Container(
          width:double.maxFinite,
          height: 150,
          padding:const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  width:double.maxFinite,
                  padding:EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column( 
                        mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                           
                            children: [
                              Text("Asked For :",
                              style: AppTextTheme.kLabelStyle.copyWith(
                                fontSize:16,
                                fontWeight:FontWeight.w700),
                              ),
                
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Block : A ",
                                  style: TextStyle(
                                    fontSize:16,
                                    color:Colors.pink,
                                    fontWeight:FontWeight.w400
                                  ),
                                  ),
                                  widthSpacer(20),
                                   Text("Room No. : 201 ",
                                  style: TextStyle(
                                    fontSize:16,
                                    color:Colors.pink,
                                    fontWeight:FontWeight.w400
                                  ),
                                  ),
                                ],
                              ),
                              
                            ],
                            ),
                            heightSpacer(12),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Reason:",
                              style: AppTextTheme.kLabelStyle.copyWith(
                                fontSize:16,
                                fontWeight:FontWeight.w700),
                              ),
                
                              Text("'Tap leakage' ",
                              style: TextStyle(
                                fontSize:16,
                                fontWeight:FontWeight.w400
                              ),
                              ),
                              
                            ],
                            ),
                            heightSpacer(20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                InkWell(
                                                  onTap:() {},
                                                  child: Container(
                                                    padding : const EdgeInsets.symmetric(
                                                      horizontal: 10, 
                                                      vertical: 8,
                                                      
                                                      ),
                                                    width:140,
                                                  decoration: BoxDecoration(
                                                    color: Colors.red,
                                                    borderRadius:BorderRadius.circular(12) ,
                                                    ),
                                                    child:  Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [Text("Reject",style:TextStyle(
                                                        fontSize: 16,color:Colors.white,
                                                      ),),
                                                      ],
                                                      )
                                                    ),
                                                ),
                                                 InkWell(
                                                  onTap:() {},
                                                  child: Container(
                                                    padding : const EdgeInsets.symmetric(
                                                      horizontal: 10, 
                                                      vertical: 8,
                                                      
                                                      ),
                                                    width:140,
                                                  decoration: BoxDecoration(
                                                    color: Colors.green,
                                                    borderRadius:BorderRadius.circular(12) ,
                                                    ),
                                                    child:  Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [Text("Approve",style:TextStyle(
                                                        fontSize: 16,color:Colors.white,
                                                      ),),
                                                      ],
                                                      )
                                                    ),
                                                ),
                              ],
                            )
                        ],),
                    ],)
                ),
              ),
            ],),
        ),
        ],
    ),
    );
  }
}
   