
// import 'package:flutter/material.dart';

// class AuthService {
//   // ignore: unused_field
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   isUserLoggedIn() {
//     return _auth.currentUser != null;
//   }

//   getUserID() {
//     return _auth.currentUser!.uid;
//   }

//   Future<String?> registerWithEmailAndPassword(
//       String email, String password) async {
//     try {
//       final credential =
//           await FirebaseAuth.instance.createUserWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//       return credential.user!.uid;
//     } on FirebaseAuthException catch (e) {
//       if (e.code == 'weak-password') {
//         print('The password provided is too weak.');
//       } else if (e.code == 'email-already-in-use') {
//         print('The account already exists for that email.');
//       }
//     } catch (e) {
//       print(e);
//     }
//     return null;
//   }

//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();

//   void _signUp() async {
//     try {
//       UserCredential userCredential =
//           await _auth.createUserWithEmailAndPassword(
//         email: _emailController.text,
//         password: _passwordController.text,
//       );
//       User? user = userCredential.user;

//       if (user != null) {
//         await _firestore.collection('users').doc(user.uid).set({
//           'email': user.email,
//           'createdAt': FieldValue.serverTimestamp(),
//         });
//         print("User signed up and document added!");
//       }
//     } catch (e) {
//       print("Error: $e");
//     }
//   }

//   signInWithEmailAndPassword(text, text2) {}
// }

// signinWithEmailAndPassword(String email, String password) async {
//   try {
//     final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
//       email: email,
//       password: password,
//     );

//     return credential.user;
//   } on FirebaseAuthException catch (e) {
//     if (e.code == "invalid-email") {
//       print('The Email does not exist');
//     } else if (e.code == 'wrong-password') {
//       print('The password you entered is incorrect');
//     }
//   } catch (e) {
//     print(e);
//   }
// }
