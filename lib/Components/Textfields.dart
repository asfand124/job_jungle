import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget TextInputField(
  TextEditingController editingController,
  String textHint,
  TextInputType keyBoardType,
  String? Function(String?)? validation,
  IconData icon,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5.0),
    child: TextFormField(
      keyboardType: keyBoardType,
      controller: editingController,
      style: TextStyle(
        fontSize: 15.0,
        fontWeight: FontWeight.w200,
        fontFamily: GoogleFonts.inter().fontFamily,
        color: Color(0xff000000),
      ),
      decoration: InputDecoration(
        fillColor: Color(0xffE8ECF8),
        //  Color(0xffF7F8F9),
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Colors.transparent), // Change this color
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffF7F8F9)),
          borderRadius: BorderRadius.circular(8.0),
        ),
        hintText: textHint,
        prefixIcon: Icon(
          icon,
          color: Color(0xff8391A1),
          size: 20,
        ),
        hintStyle: TextStyle(
          fontSize: 15.0,
          fontWeight: FontWeight.w500,
          fontFamily: GoogleFonts.inter().fontFamily,
          color: Color(0xff8391A1),
        ),
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validation,
    ),
  );
}

/////////////////////////////////////
Widget TextInputFieldWithoutIcon(
  String label,
  TextEditingController editingController,
  String textHint,
  TextInputType keyBoardType,
  String? Function(String?)? validation,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$label",
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
            fontFamily: GoogleFonts.inter().fontFamily,
            color: Color(0xff000000),
          ),
        ),
        SizedBox(height: 8),
        TextFormField(
          keyboardType: keyBoardType,
          controller: editingController,
          style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.w200,
            fontFamily: GoogleFonts.inter().fontFamily,
            color: Color(0xff000000),
          ),
          decoration: InputDecoration(
            fillColor: Color(0xffFFFFFF),
            //  Color(0xffF7F8F9),
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Color(0xffD8DADC)), // Change this color
              borderRadius: BorderRadius.circular(8.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffF7F8F9)),
              borderRadius: BorderRadius.circular(8.0),
            ),
            hintText: textHint,

            hintStyle: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w500,
              fontFamily: GoogleFonts.inter().fontFamily,
              color: Color(0xff8391A1),
            ),
          ),
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: validation,
        ),
      ],
    ),
  );
}
