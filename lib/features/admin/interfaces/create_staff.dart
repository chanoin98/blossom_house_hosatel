import 'package:blossom_house_hosatel/common/app_bar.dart';
import 'package:blossom_house_hosatel/common/custom_text_field.dart';
import 'package:blossom_house_hosatel/common/spacing.dart';
import 'package:blossom_house_hosatel/features/auth/interfaces/widgets/custom_button.dart';
import 'package:blossom_house_hosatel/theme/text_theme.dart';
import 'package:flutter/material.dart';

class CreateStaff extends StatefulWidget {
  const CreateStaff({super.key});

  @override
  State<CreateStaff> createState() => _CreateStaffState();
}

class _CreateStaffState extends State<CreateStaff> {

   static final _formKey = GlobalKey<FormState>();
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
    TextEditingController jobRole = TextEditingController();

    @override
  void dispose() {
username.dispose();
email.dispose();
password.dispose();
firstName.dispose();
lastName.dispose();
phoneNumber.dispose();
jobRole.dispose();

    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:buildAppBar(context,"Create Staff"),
      body:SingleChildScrollView(
        child: Padding(
 padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),          child :  Form(
            key: _formKey,
            child:  Column (
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
              Text("Username",
                style: AppTextTheme.kLabelStyle,
                  ),
                  CustomTextField(
                  controller: username,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  inputHint: "Enter User Name",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'User Name is required';
                    }
                    return null;
                  },
                ),
                heightSpacer(15),
                Text("First Name",
                style: AppTextTheme.kLabelStyle,
                  ),
                  CustomTextField(
                  controller: firstName,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  inputHint: "Enter First Name",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'First Name is required';
                    }
                    return null;
                  },
                ),
                heightSpacer(15),
                Text("Last Name",
                style: AppTextTheme.kLabelStyle,
                  ),
                  CustomTextField(
                  controller: lastName,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  inputHint: "Enter Last Name",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Last Name is required';
                    }
                    return null;
                  },
                ),
                heightSpacer(15),
                Text("Job Role",
                style: AppTextTheme.kLabelStyle,
                  ),
                  CustomTextField(
                  controller: jobRole,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  inputHint: "Enter Job Role",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Job role is required';
                    }
                    return null;
                  },
                ),
                heightSpacer(15),
                Text("Password",
                style: AppTextTheme.kLabelStyle,
                  ),
                  CustomTextField(
                  controller: password,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  inputHint: "Enter Password ",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Password is required';
                    }
                    return null;
                  },
                ),
                heightSpacer(15),
                Text("Phone Number",
                style: AppTextTheme.kLabelStyle,
                  ),
                  CustomTextField(
                  controller: phoneNumber,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  inputHint: "Enter phone number",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Phone number is required';
                    }
                    return null;
                  },
                ),
                heightSpacer(40),
                CustomButton(buttonText:"Create Staff",
                onTap: () {
                  if (_formKey.currentState!.validate()){

                  }
                },
                buttonColor: Colors.blue,
                size: 50.0,
                ),
            ],
            ) ,)
          ),
      )
    );
  }
}