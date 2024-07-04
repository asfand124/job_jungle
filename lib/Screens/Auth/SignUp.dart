import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_jungle/Components/DropDownMenu.dart';
import 'package:job_jungle/Components/Textfields.dart';
import 'package:job_jungle/Screens/Auth/Login.dart';
import 'package:job_jungle/Services/AuthServices.dart';
import 'package:job_jungle/Services/FirestoreServices.dart';

class SignUp extends StatefulWidget {
  final String type;

  const SignUp({super.key, required this.type});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _value = true;
  String _selectedVendorType = "Product";
  String _selectedSpecialization = "";
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _referalCodeController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPassController = TextEditingController();
  List<String> _vendorType = [
    "Product",
    "Service",
    "Food",
  ];
  Map _specialization = {
    "Product": [
      "Electronics",
      "Fashion",
      "Grocery",
    ],
    "Service": [
      "Plumber",
      "Mechanic",
      "Electricion",
    ],
    "Food": [
      "Chicken",
      "Beaf",
      "Mutton",
    ]
  };
  @override
  Widget build(BuildContext context) {
    final AuthService _auth = AuthService();
    final FirestoreService _fs = FirestoreService();
    register() async {
      await _auth
          .registerWithEmailAndPassword(
              _emailController.text, _passwordController.text)
          .then((res) {
        print(res);
        _fs.setData("user", res!, {"name": _firstNameController.text});
      });
    }

    handlePasswords() {
      if (_confirmPassController.text == _passwordController.text) {
        register();
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('data')));
      }
    }

    return Scaffold(
      body: SafeArea(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Form(
              // key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width * 0.2,
                          child: Image.asset(
                            "Assets/jobjungle_logo.png",
                          )),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Text(
                    'Create account',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w800,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                  Text(
                    ' First Name',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff000000),
                      fontFamily: GoogleFonts.inter().fontFamily,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  TextInputField(
                    _firstNameController,
                    "First Name",
                    TextInputType.emailAddress,
                    (value) {
                      if (value!.isEmpty) {
                        return "Username field cannot be empty";
                      } else {
                        return null;
                      }
                    },
                    Icons.person_outline,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Text(
                    ' Last Name',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff000000),
                      fontFamily: GoogleFonts.inter().fontFamily,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  TextInputField(
                    _lastNameController,
                    "Last Name",
                    TextInputType.emailAddress,
                    (value) {
                      if (value!.isEmpty) {
                        return "Username field cannot be empty";
                      } else {
                        return null;
                      }
                    },
                    Icons.person_outline,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Text(
                    ' Email',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff000000),
                      fontFamily: GoogleFonts.inter().fontFamily,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
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
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  widget.type == "vendor"
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              ' Select your Type',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff000000),
                                fontFamily: GoogleFonts.inter().fontFamily,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.01),
                            Center(
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  color: Color(0xffE8ECF8),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                margin: EdgeInsets.symmetric(
                                  horizontal: 6,
                                ),
                                child: DropdownButton<String>(
                                  isExpanded:
                                      true, // Makes the dropdown take the full width of the container
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 5),
                                  value: _selectedVendorType.isEmpty
                                      ? null
                                      : _selectedVendorType,
                                  underline: SizedBox(),
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: GoogleFonts.inter().fontFamily,
                                    color: Color(0xff8391A1),
                                  ),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      _selectedVendorType = newValue!;
                                    });
                                  },
                                  items: _vendorType
                                      .map<DropdownMenuItem<String>>(
                                          (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          ],
                        )
                      //  DropDownmenu(
                      // _vendorType,
                      //  (String? newValue) {
                      //       setState(() {
                      //         _selectedVendorType = newValue!;
                      //       });
                      //     },
                      // _selectedVendorType,
                      //      'Type',
                      //     context
                      //   )
                      : SizedBox(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  widget.type == "vendor"
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              ' Select your Specialization',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff000000),
                                fontFamily: GoogleFonts.inter().fontFamily,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.01),
                            Center(
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  color: Color(0xffE8ECF8),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                margin: EdgeInsets.symmetric(
                                  horizontal: 6,
                                ),
                                child: DropdownButton<String>(
                                  isExpanded:
                                      true, // Makes the dropdown take the full width of the container
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 5),
                                  value: _selectedSpecialization.isEmpty
                                      ? null
                                      : _selectedSpecialization,
                                  underline: SizedBox(),
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: GoogleFonts.inter().fontFamily,
                                    color: Color(0xff8391A1),
                                  ),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      _selectedSpecialization = newValue!;
                                    });
                                  },
                                  items: _specialization[_selectedVendorType]
                                      .map<DropdownMenuItem<String>>(
                                          (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          ],
                        )
                      : SizedBox(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Text(' Password',
                      style: Theme.of(context).textTheme.titleMedium),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
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
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Text(
                    ' Confirm Password',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff000000),
                      fontFamily: GoogleFonts.inter().fontFamily,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  TextInputField(
                    _confirmPassController,
                    "Confirm your Password",
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
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Text(
                    ' Referal Code',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff000000),
                      fontFamily: GoogleFonts.inter().fontFamily,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  TextInputField(
                    _referalCodeController,
                    "Referal Code",
                    TextInputType.number,
                    null,
                    Icons.numbers_outlined,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              _value = !_value;
                            });
                          },
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.black45),
                                color: _value
                                    ? Colors.grey.shade200
                                    : Color(0xff000000)),
                            child: Padding(
                              padding: EdgeInsets.all(2.0),
                              child: _value
                                  ? Icon(
                                      Icons.check_box_outline_blank,
                                      size: 13.0,
                                      color: Colors.transparent,
                                    )
                                  : Icon(
                                      Icons.check,
                                      size: 13.0,
                                      color: Colors.white,
                                    ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.03,
                        ),
                        Text(
                          'I accept the terms and privacy policy',
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xff000000),
                            fontFamily: GoogleFonts.inter().fontFamily,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  Center(
                    child: InkWell(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => LoginScreen()));
                      },
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Sign Up',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Text(
                      //   "Or Rigester with",
                      //   style: TextStyle(),
                      // )
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(" Already have an account?",
                          style: Theme.of(context).textTheme.titleMedium),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()));
                          },
                          child: Text(" Login Now",
                              style: TextStyle(fontWeight: FontWeight.bold))),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.08),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

