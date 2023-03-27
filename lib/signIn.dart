import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
              padding: EdgeInsets.symmetric(horizontal: size1.height / 20, vertical: size1.height / 17,),
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
          const Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.all(50),
              child: Text(
                "Welcome",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xffE1FEFE),
                  fontSize: 20,
                  letterSpacing: 1.2,
                ),
              ),
            ),
          ),
          Positioned(
            top: size1.height / 6,
            left: 0,
            right: 0,
            child: const Text(
              "Ontago",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xffE1FEFE),
                fontSize: 50,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Icon(
                    Icons.home_filled,
                    color: Color(0xffD3EFFA),
                    size: 35,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: FaIcon(
                    FontAwesomeIcons.bagShopping,
                    color: Color(0xffD3EFFA),
                    size: 30,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
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
                        physics: BouncingScrollPhysics(),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Sign in",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "New user?",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Create an account",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff58DEAA),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 15),
                                TextField(
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    hintText: "User Name",
                                    hintStyle: TextStyle(
                                      fontSize: 20,
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 30,
                                    ),
                                    disabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(50)),
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(50)),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(50)),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 15),
                                TextField(
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    hintText: "Password",
                                    hintStyle: TextStyle(
                                      fontSize: 20,
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 30,
                                    ),
                                    disabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(50)),
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(50)),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(50)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            RawMaterialButton(
                              fillColor: Color(0xff48C6F3),
                              splashColor: Color(0xff48C6F3),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                              ),
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  "Continue",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 11,
                                    letterSpacing: 0.5,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 12),
                            Text(
                              "Or",
                              style: TextStyle(
                                color: Color.fromARGB(255, 167, 167, 167),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 12),
                            RawMaterialButton(
                              fillColor: Color(0xffFEFFFE),
                              splashColor: Color(0xffFEFFFE),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                              ),
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/google.jpg',
                                    height: 15,
                                    width: 15,
                                  ),
                                  SizedBox(width: 10),
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
                              fillColor: Color(0xff48C6F3),
                              splashColor: Color(0xff48C6F3),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                              ),
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
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
