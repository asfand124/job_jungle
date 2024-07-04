import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
Widget DropDownmenu(Dlist,onChanged,String value,String placeholder,context) {
    print(Dlist);
    

menuItems(){
 List<DropdownMenuItem<String>> list=[DropdownMenuItem<String>(
                  value: "value",
                  child: Text("value"))];
  for (var item in Dlist) {
   list.add( DropdownMenuItem<String>(
                  value: value,
                  child: Text(value)));
  }
return list;
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          ' Select your '+ placeholder,
          style: TextStyle(
            fontSize: 14,
            color: Color(0xff000000),
            fontFamily: GoogleFonts.inter().fontFamily,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
        Center(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.06,
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
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              value: value.isEmpty ? null : value,
              underline: SizedBox(),
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
                fontFamily: GoogleFonts.inter().fontFamily,
                color: Color(0xff8391A1),
              ),
              onChanged: onChanged,
              items:menuItems()
              ,
            ),
          ),
        ),
      ],
    );
  }

