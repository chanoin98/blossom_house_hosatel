import 'package:blossom_house_hosatel/common/constants.dart';
import 'package:blossom_house_hosatel/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hive/hive.dart';
import 'package:blossom_house_hosatel/features/auth/interfaces/register.dart';
import 'package:blossom_house_hosatel/common/custom_text_field.dart';
import 'package:blossom_house_hosatel/common/spacing.dart';
import 'package:blossom_house_hosatel/theme/colors.dart';
import 'package:blossom_house_hosatel/theme/text_theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'widgets/custom_button.dart';
import 'package:blossom_house_hosatel/features/home/interfaces/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});



  @override
  State<Login> createState() => _LoginState();
}



class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController hostelController = TextEditingController();
  String? hostelName;

  @override
  void initState() {
    super.initState();
    _loadSavedHostelName();
  }
  Future<void> _loadSavedHostelName() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      hostelController.text = prefs.getString('savedHostelName') ?? '';
    });
  }

  Future<void> _loginUser() async {
    if (_formKey.currentState!.validate()) {
      var usersBox = Hive.box<User>('users');

      /*Future<void> _clearSavedHostelName() async {
  final prefs = await SharedPreferences.getInstance();
  prefs.remove('savedHostelName');
}
*/

      User? user;
      for (int i = 0; i < usersBox.length; i++) {
        var tempUser = usersBox.getAt(i);
        if (tempUser?.username == usernameController.text) {
          user = tempUser;
          break;
        }
      }

      if (user != null && user.password == passwordController.text) {
         setState(() {
          hostelName = user!.hostelName;
        });

        final prefs = await SharedPreferences.getInstance();
        prefs.setString('savedHostelName', user!.hostelName);

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Login Successful')),
        );
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Home()),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Invalid username or password')),
        );
      }
    }
  }


  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    hostelController.dispose();

    super.dispose();
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/background.jpg'), 
            fit: BoxFit.cover, 
          ),
          
        ),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 1.h),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

         
              heightSpacer(150),
           Align(
            alignment:Alignment.center,
             child: Text(
                    "Student Hostel",
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
               
                heightSpacer(30),
                Center(
                  child: Text(
                    'Login to your account',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,

                    ),
                  ),
                ),
                 heightSpacer(27),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Hostel Name",
                       style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue[900],
                      fontWeight: FontWeight.w500,

                      ),
                      
        ),),

                  
                  CustomTextField(
                    controller: hostelController,
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
                heightSpacer(25),

                  Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Username",
            style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue[900],
                      fontWeight: FontWeight.w500,

                      ),
                      
        ),),

                CustomTextField(
                  controller: usernameController,
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
                 heightSpacer(20),
                 Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Password",
           style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue[900],
                      fontWeight: FontWeight.w500,

                      ),
            
        ),),

                CustomTextField(
                  controller: passwordController,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  inputHint: "Enter Password",
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Password is required';
                    }
                    return null;
                  },
                ),
               
                heightSpacer(25),
                CustomButton(
                  buttonText: 'Login',
                  onTap: _loginUser,
                  buttonColor: Colors.white,
                  size: 17,
                ),
                 heightSpacer(10),
                  if (hostelName != null) 
                    Text(
                      'Hostel: $hostelName',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                heightSpacer(10),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                   Text('Don’t have an account?'),
                    
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Register()),
                        );
                      },
                      child: Text('Register'),

                    ),

                  ],
                ),
              ],
            ),
          ),),
        ),
      ),
    );
  }
}
