import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_jungle/Components/Textfields.dart';
import 'package:job_jungle/Screens/Common/Navigation_bar.dart';
import 'package:job_jungle/Screens/User/User_Home.dart';
import 'package:job_jungle/Services/AuthServices.dart';
import 'package:job_jungle/Services/FirestoreServices.dart';

// ignore: must_be_immutable
class Login extends StatelessWidget {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  Login({super.key});

  @override
  Widget build(BuildContext context) {
    // final AuthService _auth = AuthService();
    // final FirestoreService _fs = FirestoreService();
    // login user
    // handleLogin() async {
    //   final user = _auth.signInWithEmailAndPassword(
    //       _emailController.text, _passwordController.text);

    //   if (_auth.isUserLoggedIn()) {
    //     print("Logged in");
    //     await _fs.getData("Users", _auth.getUserID()).then((value) {
    //       if (value != null) {
    //         print(value['Name']);
    //       }
    //     });
    //   }
    // }

    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 25),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      size: 32,
                    )),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      size: 32,
                    )),
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: Image.asset(
                      "Assets/jobjungle_logo.png",
                    )),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
            ),
            Text('Hi, Welcome!',
                style: Theme.of(context).textTheme.displayLarge),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
            ),
            Text(' Email', style: Theme.of(context).textTheme.titleMedium),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            TextInputField(
              _emailController,
              "Email",
              TextInputType.emailAddress,
              (value) {
                if (value!.isEmpty) {
                  return "Email field cannot be empty";
                } else if (!RegExp(
                        "^[a-zA-Z0-9.a-zA-Z0-9.!#%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+.[a-zA-Z]")
                    .hasMatch(value)) {
                  return "Please enter a valid email";
                } else {
                  return null;
                }
              },
              Icons.email_outlined,
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Text(' Password', style: Theme.of(context).textTheme.titleMedium),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            TextInputField(
              _passwordController,
              "Enter Password",
              TextInputType.text,
              (value) {
                RegExp regex = RegExp(r'^.{6,}$');
                if (value!.isEmpty) {
                  return "Password cannot be empty";
                }
                if (!regex.hasMatch(value)) {
                  return "Please enter a valid password (min. 6 characters)";
                }
                return null;
              },
              Icons.lock,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // InkWell(
                //   onTap: () {
                //     Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //             builder: (context) => ForgetPassword()));
                //   },
                //child:
                Text("Forget Password? ",
                    style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            //////////////////////////////////////////////
            ///////////////////////////////////////////
            ///////////////////////////////////////////////
            ///////////////////////////////////////////////
            ///
            InkWell(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => User_Home(),
                //   ),
                // );
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => User_Home()),
                );
              },
              //  signInHandler,s

              //.................................
              ///////////////////////////////////////
              ///................................
              ///////////////////////////////////////
              ///,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
              ///......................................
              ////////////////////////////////////////////
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.87,
                    decoration: BoxDecoration(
                      color: Color(0xff000000),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 1,
                        color: Color(0xff747474),
                      ),
                    ),
                    child: Center(
                      child: Text('login',
                          style: Theme.of(context).textTheme.titleSmall),
                    )),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.87,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 1,
                      color: Color(0xff747474),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // SizedBox(
                      //   width: MediaQuery.of(context).size.width * 0.1,
                      // ),
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfeGj-vD7Se4BulJfLUzLe5YqhQ9gftr1J3w&s',
                        ),
                        radius: 14,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.07,
                      ),
                      Text(
                        'Sign In with Gmail',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: GoogleFonts.poppins().fontFamily,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Text(
            //       'Remember password? ',
            //       style: TextStyle(
            //         fontWeight: FontWeight.w400,
            //         fontFamily: GoogleFonts.inter().fontFamily,
            //       ),
            //     ),
            //     // InkWell(
            //     //   onTap: () {
            //     //     Navigator.push(
            //     //         context,
            //     //         MaterialPageRoute(
            //     //             builder: (context) => SignUpScreen()));
            //     //   },
            //     // child:
            //     Text(
            //       'Sign up',
            //       style: TextStyle(
            //         color: Color(0xff000000),
            //         fontWeight: FontWeight.w600,
            //         fontFamily: GoogleFonts.inter().fontFamily,
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    ));
  }
}
