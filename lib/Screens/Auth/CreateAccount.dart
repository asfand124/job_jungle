import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:job_jungle/Screens/Auth/SignUp.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    handleButtonPress(userType) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => SignUp(type: userType)));
      print(userType);
    }

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  handleButtonPress("vendor");
                },
                child: Container(
                  height: 100,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Text(
                      "Vendor",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  handleButtonPress("customer");
                },
                child: Container(
                  height: 100,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Text(
                      "Customer",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
