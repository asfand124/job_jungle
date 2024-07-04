import 'package:flutter/material.dart';

// import 'package:job_jungle/Screens/user/user_product.dart';

Widget CatagoryCard({
  required context,
  required String img,
  required Color color,
  required double width,
  required String title,
  required Function onPress,
  required String backgroundImage,
}) {
  return InkWell(
    onTap: () {
      onPress();
    },
    //  () => Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) => UserProductDetail()),
    // ),
    child: Container(
      width: MediaQuery.of(context).size.width * width,
      height: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white12, width: 2),
        color: Color.fromARGB(255, 8, 162, 189),
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: NetworkImage(backgroundImage),
          fit: BoxFit.cover,
          colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken),
        ),
      ),
      padding: const EdgeInsets.all(12),
      // margin: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.1,
              height: MediaQuery.of(context).size.width * 0.1,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Image(image: AssetImage(img)),
              ),

              //
            ),
          ),
        ],
      ),
    ),
  );
}
