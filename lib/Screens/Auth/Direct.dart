import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:job_jungle/Screens/Auth/CreateAccount.dart';
import 'package:job_jungle/Screens/Auth/Login.dart';

class Direct extends StatelessWidget {
  const Direct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://plus.unsplash.com/premium_photo-1664372599757-2f60a17190aa?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fHN0b3JlfGVufDB8fDB8fHww'),
                  fit: BoxFit.cover),
            ),
          ),
          Positioned(
            top: 25,
            right: 20,
            child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.2,
                child: Image.asset(
                  "Assets/jobjungle_logo.png",
                )),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.43,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                // borderRadius: BorderRadius.only(
                //     topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
                child: Column(
                  children: [
                    Text(
                      'Ultimate Convenience',
                      style: TextStyle(
                        fontSize: 23,
                        fontFamily: GoogleFonts.poppins().fontFamily,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Everything You Need, All in One App!',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: GoogleFonts.inter().fontFamily,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.77,
                      decoration: BoxDecoration(
                          color: Color(0xff000000),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                          child: Text(
                        'Sign In with Email',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: GoogleFonts.poppins().fontFamily,
                          fontWeight: FontWeight.w600,
                        ),
                      )),
                    ),

                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),

                    InkWell(
                      onTap: () {
                        Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CreateAccount()));
                      },
                      child: Container(
                          height: MediaQuery.of(context).size.height * 0.07,
                          width: MediaQuery.of(context).size.width * 0.77,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 1,
                              color: Color(0xff747474),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Create account',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                fontFamily: GoogleFonts.poppins().fontFamily,
                              ),
                            ),
                          )),
                    ),

                    // InkWell(
                    //   onTap: () {
                    //     // Navigator.push(
                    //     //         context,
                    //     //         MaterialPageRoute(
                    //     //             builder: (context) => SignUpScreen()));
                    //   },
                    //   child: Container(
                    //     height: MediaQuery.of(context).size.height * 0.07,
                    //     width: MediaQuery.of(context).size.width * 0.77,
                    //     decoration: BoxDecoration(
                    //         color: Color(0xff000000),
                    //         borderRadius: BorderRadius.circular(10)),
                    //     child: Center(
                    //         child: Text(
                    //       'Sign In with Email',
                    //       style: TextStyle(
                    //         color: Colors.white,
                    //         fontFamily: GoogleFonts.poppins().fontFamily,
                    //         fontWeight: FontWeight.w600,
                    //       ),
                    //     )),
                    //   ),
                    // ),

                    // SizedBox(
                    //   height: MediaQuery.of(context).size.height * 0.03,
                    // ),
                    // InkWell(
                    //   onTap: () {
                    //     // Navigator.push(
                    //     //         context,
                    //     //         MaterialPageRoute(
                    //     //             builder: (context) => SignUpScreen()));
                    //   },
                    //   child: Container(
                    //       height: MediaQuery.of(context).size.height * 0.07,
                    //       width: MediaQuery.of(context).size.width * 0.77,
                    //       decoration: BoxDecoration(
                    //         color: Colors.white,
                    //         borderRadius: BorderRadius.circular(10),
                    //         border: Border.all(
                    //           width: 1,
                    //           color: Color(0xff747474),
                    //         ),
                    //       ),
                    //       child: Center(
                    //         child: Text(
                    //           'Create account',
                    //           style: TextStyle(
                    //             fontWeight: FontWeight.w600,
                    //             fontFamily: GoogleFonts.poppins().fontFamily,
                    //           ),
                    //         ),
                    //       )),
                    // ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: MediaQuery.of(context).size.width * 0.77,
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
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfeGj-vD7Se4BulJfLUzLe5YqhQ9gftr1J3w&s',
                              ),
                              radius: 14,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.03,
                            ),
                            Text(
                              'Sign In with Google',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontFamily: GoogleFonts.poppins().fontFamily,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
