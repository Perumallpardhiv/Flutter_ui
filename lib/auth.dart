// ignore_for_file: use_build_context_synchronously
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in/home.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;

class AuthClass {
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );
  FirebaseAuth auth = FirebaseAuth.instance;
  firebase_auth.FirebaseAuth firebaseAuth = firebase_auth.FirebaseAuth.instance;

  Future<void> emailSignUp(
      BuildContext context, String txt1, String txt2) async {
    try {
      // ignore: unused_local_variable
      firebase_auth.UserCredential userCredential = await firebaseAuth
          .createUserWithEmailAndPassword(email: txt1, password: txt2);
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (builder) => const HomePage()),
          (route) => false);
    } on FirebaseAuthException catch (e) {
      final snackbar = SnackBar(content: Text(e.message.toString()));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    }
  }

  Future<void> emailSignIn(
      BuildContext context, String txt1, String txt2) async {
    try {
      // ignore: unused_local_variable
      firebase_auth.UserCredential userCredential = await firebaseAuth
          .signInWithEmailAndPassword(email: txt1, password: txt2);
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (builder) => const HomePage()),
          (route) => false);
    } on FirebaseAuthException catch (e) {
      final snackbar = SnackBar(content: Text(e.message.toString()));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    }
  }

  Future<void> googleSignIn(BuildContext context) async {
    try {
      GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();

      if (googleSignInAccount != null) {
        GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;

        AuthCredential credential = GoogleAuthProvider.credential(
          idToken: googleSignInAuthentication.idToken,
          accessToken: googleSignInAuthentication.accessToken,
        );

        try {
          // ignore: unused_local_variable
          UserCredential userCredential =
              await auth.signInWithCredential(credential);
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (builder) => const HomePage()),
              (route) => false);
        } on FirebaseAuthException catch (e) {
          final snackbar = SnackBar(content: Text(e.message.toString()));
          ScaffoldMessenger.of(context).showSnackBar(snackbar);
        }
      } else {
        const snackbar =
            SnackBar(content: Center(child: Text("Not Able to SignIn")));
        ScaffoldMessenger.of(context).showSnackBar(snackbar);
      }
    } on FirebaseAuthException catch (e) {
      final snackbar = SnackBar(content: Text(e.message.toString()));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    }
  }

  Future<void> logOut({BuildContext? context}) async {
    try {
      await _googleSignIn.signOut();
      await auth.signOut();
    } on FirebaseAuthException catch (e) {
      final snackBar = SnackBar(content: Text(e.message.toString()));
      ScaffoldMessenger.of(context!).showSnackBar(snackBar);
    }
  }
}
