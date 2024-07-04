// import 'package:cloud_firestore/cloud_firestore.dart';

// class FirestoreService {
//   final db = FirebaseFirestore.instance;
//   Future<Map<String, dynamic>?> getData(
//     String collection,
//     String uid,
//   ) async {
//     try {
//       DocumentSnapshot doc = await db.collection(collection).doc(uid).get();
//       if (doc.exists) {
//         return doc.data() as Map<String, dynamic>?;
//       } else {
//         return null;
//       }
//     } catch (e) {
//       print("Error fetching data: $e");
//       return null;
//     }
//   }

//   Future<Map<String, dynamic>?> setData(
//       String collection, String uid, Map<String, dynamic> data) async {
//     try {
//       await db.collection(collection).doc(uid).set(data);
//       print("Data set successfully.");
//     } catch (e) {
//       print("Error setting data: $e");
//     }
//     return null;
//   }
// }
