import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:sign_in/auth.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  firebase_auth.FirebaseAuth firebaseAuth = firebase_auth.FirebaseAuth.instance;
  AuthClass authClass = AuthClass();
  TextEditingController _emailCont = TextEditingController();
  TextEditingController _pwdCont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size1 = MediaQuery.of(context).size;
    print(size1.height);
    print(size1.width);
    return Scaffold(
      body: Stack(
        children: [
          ClipPath(
            clipper: CustomClipPath(),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff49C5FA),
                    Color(0xff58DEAA),
                  ],
                ),
              ),
              height: size1.height * 0.65,
            ),
          ),
          Positioned(
            top: -(size1.width * 2 / 6), // 120
            left: -(size1.width * 5 / 12), //150
            child: Container(
              width: size1.width * 4 / 3, //480
              height: size1.height * 3 / 4, //600
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff41C1FF),
                    Color(0xff42C2FF),
                    Color(0xff2C9EFF),
                    Color(0xff1576FB),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size1.height / 20,
                vertical: size1.height / 17,
              ),
              child: Container(
                width: size1.width / 12,
                height: size1.width / 12,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffD3EFFB),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.all(50),
              child: Text(
                "Welcome",
                style: GoogleFonts.rubik(
                  fontWeight: FontWeight.bold,
                  color: Color(0xffE1FEFE),
                  fontSize: 18,
                  letterSpacing: 1.2,
                ),
              ),
            ),
          ),
          Positioned(
            top: size1.height / 6.5,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  "O",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.playfairDisplay(
                    color: Color(0xffE1FEFE),
                    fontSize: 70,
                  ),
                ),
                Text(
                  "ntago",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.playfairDisplay(
                    color: Color(0xffE1FEFE),
                    fontSize: 40,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Icon(
                    Icons.home_filled,
                    color: Color(0xffD3EFFA),
                    size: 35,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: FaIcon(
                    FontAwesomeIcons.bagShopping,
                    color: Color(0xffD3EFFA),
                    size: 30,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: FaIcon(
                    FontAwesomeIcons.commentDots,
                    color: Color(0xffD3EFFA),
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: size1.height / 7),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    height: size1.height * 0.56,
                    width: size1.width * 0.85,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.white.withOpacity(0.1),
                          Colors.white.withOpacity(0.1),
                          const Color(0xffE6F7FE),
                          const Color(0xffE6F7FE),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(width: 2, color: Colors.white30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Create New Account",
                                  style: GoogleFonts.tajawal(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Already have an account?",
                                      style: GoogleFonts.rubik(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        "Sign In",
                                        style: GoogleFonts.rubik(
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff58DEAA),
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 15),
                                TextField(
                                  controller: _emailCont,
                                  style: GoogleFonts.merriweather(
                                    fontSize: 20,
                                  ),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    hintText: "Email Id",
                                    hintStyle: GoogleFonts.merriweather(
                                      fontSize: 20,
                                    ),
                                    contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 30,
                                    ),
                                    disabledBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(50)),
                                    ),
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(50)),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(50)),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 15),
                                TextField(
                                  controller: _pwdCont,
                                  style: GoogleFonts.merriweather(
                                    fontSize: 20,
                                  ),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    hintText: "Password",
                                    hintStyle: GoogleFonts.merriweather(
                                      fontSize: 20,
                                    ),
                                    contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 30,
                                    ),
                                    disabledBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(50)),
                                    ),
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(50)),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(50)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            RawMaterialButton(
                              fillColor: const Color(0xff48C6F3),
                              splashColor: const Color(0xff48C6F3),
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                              ),
                              onPressed: () async {
                                await authClass.emailSignUp(
                                    context,
                                    _emailCont.text.trim(),
                                    _pwdCont.text.trim());
                              },
                              child: const Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 11,
                                    letterSpacing: 0.5,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 12),
                            const Text(
                              "Or",
                              style: TextStyle(
                                color: Color.fromARGB(255, 167, 167, 167),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 12),
                            RawMaterialButton(
                              fillColor: const Color(0xffFEFFFE),
                              splashColor: const Color(0xffFEFFFE),
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                              ),
                              onPressed: () async {
                                await authClass.googleSignIn(context);
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/google.jpg',
                                    height: 15,
                                    width: 15,
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    "Continue with Google",
                                    style: TextStyle(
                                      color: Colors.grey[400],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            RawMaterialButton(
                              fillColor: const Color(0xff48C6F3),
                              splashColor: const Color(0xff48C6F3),
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                              ),
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Continue with Google",
                                    style: TextStyle(
                                      color: Color(0xff48C6F3),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final path = Path();
    path.lineTo(0, h - h / 16);
    path.quadraticBezierTo(w / 32, h - h / 128, w / 10, h);
    path.lineTo(w - w / 10, h);
    path.quadraticBezierTo(w - w / 32, h - h / 128, w, h - h / 16);
    path.lineTo(w, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
