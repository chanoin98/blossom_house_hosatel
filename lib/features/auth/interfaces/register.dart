import 'package:blossom_house_hosatel/user.dart';
import 'package:flutter/material.dart';
import 'package:blossom_house_hosatel/common/custom_text_field.dart';
import 'package:blossom_house_hosatel/common/spacing.dart';
import 'package:blossom_house_hosatel/theme/colors.dart';
import 'package:blossom_house_hosatel/theme/text_theme.dart';
import 'package:hive/hive.dart';
import 'package:blossom_house_hosatel/features/auth/interfaces/login.dart';
import 'widgets/custom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController hostelName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();

  String? selectedBlock;
  String? selectedRoom;

  List<String> blockOptions = ['A', 'B'];
  List<String> roomOptionA = ['101', '102', '103'];
  List<String> roomOptionB = ['201', '202', '203'];

  @override
  void dispose() {
    hostelName.dispose();
    email.dispose();
    password.dispose();
    username.dispose();
    firstName.dispose();
    lastName.dispose();
    phoneNumber.dispose();
    super.dispose();
  }

  Future<void> _registerUser() async {
    if (_formKey.currentState!.validate()) {
      var usersBox = Hive.box<User>('users');
      var newUser = User(
        username: username.text,
        password: password.text,
       hostelName:hostelName.text,
      );
      await usersBox.add(newUser);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('User Registered Successfully')),
      );
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Login()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 1.h),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                heightSpacer(40),
                Center(
                  child: Text(
                    'Register your account',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                 heightSpacer(27),
                Text(
                  "Hostel Name",
                  style: AppTextTheme.kLabelStyle,
                ),
                CustomTextField(
                  controller: username,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  inputHint: "Enter Hostel Name",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Hostel Name is required';
                    }
                    return null;
                  },
                ),
               /*
                heightSpacer(27),
                Text(
                  "Username",
                  style: AppTextTheme.kLabelStyle,
                ),
                CustomTextField(
                  controller: username,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  inputHint: "Enter Username",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Username is required';
                    }
                    return null;
                  },
                ),
                */
                 heightSpacer(15),
                Text(
                  "User Name",
                  style: AppTextTheme.kLabelStyle,
                ),
                CustomTextField(
                  controller: firstName,
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
                Text(
                  "First Name",
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
                Text(
                  "Last Name",
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
                Text(
                  "Email",
                  style: AppTextTheme.kLabelStyle,
                ),
                CustomTextField(
                  controller: email,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  inputHint: "Enter Email",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Email is required';
                    }
                    return null;
                  },
                ),
                heightSpacer(15),
                Text(
                  "Password",
                  style: AppTextTheme.kLabelStyle,
                ),
                CustomTextField(
                  controller: password,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  inputHint: "Enter Password",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Password is required';
                    }
                    return null;
                  },
                ),
                heightSpacer(15),
                Text(
                  "Phone Number",
                  style: AppTextTheme.kLabelStyle,
                ),
                CustomTextField(
                  controller: phoneNumber,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  inputHint: "Enter Phone Number",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Phone Number is required';
                    }
                    return null;
                  },
                ),
                heightSpacer(15),
                Row(
                  children: [
                    Container(
                      height: 50.h,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            color: Color(0xff2e8b57),
                          ),
                          borderRadius: BorderRadius.circular(14.r),
                        ),
                      ),
                      child: Row(
                        children: [
                          widthSpacer(20),
                          const Text("BlockNo."),
                          widthSpacer(8),
                          DropdownButton<String>(
                            value: selectedBlock,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedBlock = newValue;
                                selectedRoom = null;
                              });
                            },
                            items: blockOptions.map((String block) {
                              return DropdownMenuItem<String>(
                                value: block,
                                child: Text(block),
                              );
                            }).toList(),
                          ),
                          widthSpacer(20),
                        ],
                      ),
                    ),
                    widthSpacer(20),
                    Container(
                      height: 50.h,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            color: Color(0xff2e8b57),
                          ),
                          borderRadius: BorderRadius.circular(14.r),
                        ),
                      ),
                      child: Row(
                        children: [
                          widthSpacer(20),
                          const Text("Room No."),
                          widthSpacer(8),
                          DropdownButton<String>(
                            value: selectedRoom,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedRoom = newValue;
                              });
                            },
                            items: (selectedBlock == "A" ? roomOptionA : roomOptionB)
                                .map((String room) {
                              return DropdownMenuItem<String>(
                                value: room,
                                child: Text(room),
                              );
                            }).toList(),
                          ),
                          widthSpacer(20),
                        ],
                      ),
                    ),
                  ],
                ),
                heightSpacer(25),
                CustomButton(
                  buttonText: 'Register',
                  onTap: _registerUser,
                  buttonColor: Colors.white,
                  size: 16,
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

