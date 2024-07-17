
import 'package:blossom_house_hosatel/common/constants.dart';
import 'package:blossom_house_hosatel/common/custom_text_field.dart';
import 'package:blossom_house_hosatel/common/spacing.dart';
import 'package:blossom_house_hosatel/features/auth/interfaces/register.dart';
import 'package:blossom_house_hosatel/features/auth/interfaces/widgets/custom_button.dart';
import 'package:blossom_house_hosatel/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
static final _formKey=GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      body:SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w,vertical:20.h),

        
          
        child: Form(
          key:_formKey,
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        
   
          children: [
            Center(
              child: Image.asset(
                        AppConstants.logo,
                        height: 250.h,),
            ),

          heightSpacer(30),
           Align(
            alignment:Alignment.center,
             child: Text(
                    "Blossom House",
                    style: TextStyle(
                      fontSize: 27,
                      color: Colors.blue[900],
             
                      fontStyle:FontStyle.italic,
                      fontWeight: FontWeight.w700,
             
                    ),
                       ),
           ),
                heightSpacer(10),
                 Divider(
                  color: Colors.blue[900], 
                  thickness: 2, 
                ),
                heightSpacer(10),
          Align(alignment:Alignment.center,
          
          child: Text
          ("Login to your Account",
          style:TextStyle(fontSize:20,
           color: Colors.blue,

          fontWeight:FontWeight.w700),
          ),
          
          ),
          heightSpacer(25),
Text ("Username",
           // style:AppTextTheme.kLabelStyle,
            style: TextStyle(
                      fontSize: 18,
                      color: Colors.blue[900],
                      fontWeight: FontWeight.w400,

                      ),
                      
        ),
                              heightSpacer(9),

          CustomTextField(
            controller: email,
            enabledBorder:OutlineInputBorder(
              borderSide:const BorderSide(color: Colors.white),
              borderRadius:BorderRadius.circular(10),
            ),
            inputHint:"Enter Username",
            validator:(value){
              if(value!.isEmpty){
                return 'Username is required';
              }
              return null;
            },
          ),
          heightSpacer(30),
        Text ("Password",
           // style:AppTextTheme.kLabelStyle,
           style: TextStyle(
                      fontSize: 18,
                      color: Colors.blue[900],
                      fontWeight: FontWeight.w400,

                      ),
            
        ),
                    heightSpacer(9),

          CustomTextField(
            controller: password,
            enabledBorder:OutlineInputBorder(
              borderSide:const BorderSide(color: Colors.white),
              borderRadius:BorderRadius.circular(14),
            ),
            inputHint:"Enter Password",
             validator:(value){
              if(value!.isEmpty){
                return 'Password is required';
              }
              return null;
            },
          ),
          heightSpacer(30),
           CustomButton(
            buttonColor:Colors.white,
            size:16,
            onTap:() {
             if(_formKey.currentState!.validate()){
                print("validation");
              }
             

            },
            buttonText:"Login",
          ),
          heightSpacer(10),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Didn't have an account? "),
              InkWell(
                onTap:() {
                  Navigator.push(context,MaterialPageRoute(
                    builder: (context)=>const Register(),
                  ),
                  );

                },
                child:Text(
                  " Register",
                  style:AppTextTheme.kLabelStyle.copyWith(
                    fontSize:14.sp,color:Color.fromARGB(255, 65, 52, 189)),
                  ),
              ),
                
              ],
          )

          ],
        ),
        ),
            ),
      ),
    );
  }
}