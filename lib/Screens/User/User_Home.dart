import 'package:flutter/material.dart';

import '../../Components/CatagoryCard.dart';

class User_Home extends StatefulWidget {
  const User_Home({super.key});

  @override
  State<User_Home> createState() => _User_HomeState();
}

class _User_HomeState extends State<User_Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            // padding: EdgeInsets.symmetric(horizontal: 8),
            color:
                //  accentColor,
                // primaryColor,
                // secondryColor,
                Color.fromARGB(255, 247, 243, 243),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.purple[500],
                          borderRadius: BorderRadius.circular(15)),
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.height * 0.35,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("address"),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(15)),
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.height * 0.07,
                      child: IconButton(
                          onPressed: () {}, icon: Icon(Icons.pin_drop_rounded)),
                    )
                  ],
                ),

                Container(width: double.infinity),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Services',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 19),
                      ),
                      SizedBox(
                        child: TextButton(
                            style: TextButton.styleFrom(
                                minimumSize: const Size(50, 5)),
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) =>
                              //             const ServicesList()));
                            },
                            child: const Text(
                              "See All",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.black),
                            )),
                      ),
                    ],
                  ),
                ),

                // _services[0] == "none"
                //     ? Container(
                //         height: MediaQuery.of(context).size.height * 0.2,
                //         width: MediaQuery.of(context).size.width * 0.8,
                //         color: Colors.grey,
                //       )
                //     : SingleChildScrollView(
                //         scrollDirection: Axis.horizontal,
                //         child: Row(
                //           children: _services
                //               .map(
                //                 (service) => servicescard(
                //                     context: context,
                //                     onPressed: () {
                //                       Navigator.push(
                //                           context,
                //                           MaterialPageRoute(
                //                               builder: (context) =>
                //                                   ServicesScreen(
                //                                       catagoryTitle:
                //                                           service["title"],
                //                                       serviceId:
                //                                           service['id'])));
                //                     },
                //                     img: service['imgUrl'],
                //                     text: "${service["title"]}"),
                //               )
                //               .toList(),
                //         ),
                //       ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CatagoryCard(
                        context: context,
                        onPress: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => const FoodStore()));
                        },
                        title: "Food",
                        img: "Assets/jobjungle_logo.png",
                        color: Colors.lightBlue,
                        backgroundImage:
                            'https://images.unsplash.com/photo-1555939594-58d7cb561ad1?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfHx8MA%3D%3D',
                        width: 0.46),
                    CatagoryCard(
                        onPress: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => const ServicesList()));
                        },
                        title: "Services",
                        backgroundImage:
                            'https://images.unsplash.com/photo-1671790464448-8c4198cb7529?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2VydmljZSUyMGFjfGVufDB8fDB8fHww',
                        context: context,
                        img: "Assets/jobjungle_logo.png",
                        color: Colors.lightBlue,
                        width: 0.46),
                  ],
                ),
                // Divider(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      CatagoryCard(
                        onPress: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => const ProductScreen()));
                        },
                        title: "Product",
                        backgroundImage:
                            'https://plus.unsplash.com/premium_photo-1672883552384-087b8a7acdb6?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8Y29sbGVjdGlvbiUyMG9mJTIwcmFuZG9tJTIwcHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D',
                        context: context,
                        img: "Assets/jobjungle_logo.png",
                        color: Colors.lightBlue,
                        width: 0.97,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Servies',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 19),
                      ),
                      SizedBox(
                        child: TextButton(
                            style: TextButton.styleFrom(
                                minimumSize: const Size(50, 5)),
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) =>
                              //             const ServicesList()));
                            },
                            child: const Text(
                              "See All",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.black),
                            )),
                      ),
                    ],
                  ),
                ),
                // StreamBuilder<List<DocumentSnapshot>>(
                //     stream: nearbyServices,
                //     builder: (context,
                //         AsyncSnapshot<List<DocumentSnapshot>> snapshot) {
                //       if (!snapshot.hasData) {
                //         return Container(
                //           child: Text('No service near You'),
                //         );
                //       }
                //       return Container(
                //         height: MediaQuery.of(context).size.height * 0.3,
                //         child: ListView.builder(
                //             scrollDirection: Axis.horizontal,
                //             itemCount: snapshot.data!.length,
                //             itemBuilder: ((context, index) {
                //               DocumentSnapshot data = snapshot.data![index];
                //               print(data);
                //               GeoPoint documentLocation =
                //                   data.get('coordinates')['geopoint'];
                //               var distanceInMeters = Geolocator.distanceBetween(
                //                   lat,
                //                   long,
                //                   documentLocation.latitude,
                //                   documentLocation.longitude);
                //               String away =
                //                   '${distanceInMeters.convertFromTo(LENGTH.meters, LENGTH.kilometers)!.toStringAsFixed(2)} KM';
                //               return SingleChildScrollView(
                //                 scrollDirection: Axis.horizontal,
                //                 child: Row(
                //                   children: [
                //                     SizedBox(
                //                       width: MediaQuery.of(context).size.width *
                //                           0.02,
                //                     ),
                //                     ServiceSellerProfileCard(
                //                         img: data.get("imgUrl"),
                //                         profileImage: data.get("profileImage"),
                //                         name: data.get("name"),
                //                         expertise: data.get("experties"),
                //                         serviceID: data.id,
                //                         distance: away,
                //                         context: context,
                //                         ontap: () {}),
                //                     SizedBox(
                //                         width:
                //                             MediaQuery.of(context).size.width *
                //                                 0.05),
                //                   ],
                //                 ),
                //               );
                //             })),
                //       );
                //     }),

                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Resturents',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 19),
                      ),
                      SizedBox(
                        child: TextButton(
                            style: TextButton.styleFrom(
                                minimumSize: const Size(50, 5)),
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) =>
                              //             const ServicesList()));
                            },
                            child: const Text(
                              "See All",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.black),
                            )),
                      ),
                    ],
                  ),
                ),
                // StreamBuilder<List<DocumentSnapshot>>(
                //     stream: nearbyFoods,
                //     builder: (context,
                //         AsyncSnapshot<List<DocumentSnapshot>> snapshot) {
                //       if (!snapshot.hasData) {
                //         return Container(
                //           child: Text('No data'),
                //         );
                //       }
                //       return Container(
                //         height: 300,
                //         child: ListView.builder(
                //             scrollDirection: Axis.horizontal,
                //             itemCount: snapshot.data!.length,
                //             itemBuilder: ((context, index) {
                //               DocumentSnapshot data = snapshot.data![index];
                //               GeoPoint documentLocation =
                //                   data.get('coordinates')['geopoint'];
                //               var distanceInMeters = Geolocator.distanceBetween(
                //                   lat,
                //                   long,
                //                   documentLocation.latitude,
                //                   documentLocation.longitude);
                //               String away =
                //                   '${distanceInMeters.convertFromTo(LENGTH.meters, LENGTH.kilometers)!.toStringAsFixed(2)} KM';
                //               return SingleChildScrollView(
                //                 scrollDirection: Axis.horizontal,
                //                 child: Row(
                //                   children: [
                //                     ///-==--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-backend from abdullah_+_+_+_+_+_++_+_+_+_+_+_+_+
                //                     // Text("Resturent"),
                //                     // Text(away),
                //                     // Text(data.get("Name")),
                //                     SizedBox(
                //                       width: MediaQuery.of(context).size.width *
                //                           0.02,
                //                     ),
                //                     // Resturents_card(),
                //                     Resturents_card(
                //                       image: data.get("Image"),
                //                       resturentName: data.get("Name"),
                //                       location: data.get("Location"),
                //                       productName: data.get("Foodtype"),
                //                       discount: data.get("discount").toString(),
                //                       distance: away,
                //                       compeletedOrders: data
                //                           .get("CompeletedOreders")
                //                           .toString(),
                //                       ratings: "4.3",
                //                     ),
                //                   ],
                //                 ),
                //               );
                //             })),
                //       );
                //     }),

                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Product',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 19),
                      ),
                      SizedBox(
                        child: TextButton(
                            style: TextButton.styleFrom(
                                minimumSize: const Size(50, 5)),
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) =>
                              //             const ServicesList()));
                            },
                            child: const Text(
                              "See All",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.black),
                            )),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                // StreamBuilder<List<DocumentSnapshot>>(
                //     stream: nearbyProducts,
                //     builder: (context,
                //         AsyncSnapshot<List<DocumentSnapshot>> snapshot) {
                //       if (!snapshot.hasData) {
                //         return Container(
                //           child: Text('No data'),
                //         );
                //       }
                //       return Container(
                //         height: 300,
                //         child: ListView.builder(
                //             scrollDirection: Axis.horizontal,
                //             itemCount: snapshot.data!.length,
                //             itemBuilder: ((context, index) {
                //               DocumentSnapshot data = snapshot.data![index];
                //               GeoPoint documentLocation =
                //                   data.get('coordinates')['geopoint'];
                //               var distanceInMeters = Geolocator.distanceBetween(
                //                   lat,
                //                   long,
                //                   documentLocation.latitude,
                //                   documentLocation.longitude);-
                //               String away =
                //                   '${distanceInMeters.convertFromTo(LENGTH.meters, LENGTH.kilometers)!.toStringAsFixed(2)} KM';
                //               return ProductsCard(context, {
                //                 "title": data.get("title"),
                //                 "away": away,
                //                 "Imgurl": data.get("Imgurl"),
                //                 "price": data.get("price"),
                //                 // "Position": data.get("Position") ?? "",
                //                 "SalePercent": data.get("SalePercent"),
                //                 // "Seller": data.get("Seller"),
                //                 "desc": data.get("desc"),
                //                 "isSale": data.get("isSale"),
                //                 "storeID": data.get("storeID"),
                //               });
                //             })),
                //       );
                //     }),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
