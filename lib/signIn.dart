import 'package:flutter/material.dart';

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
              decoration: BoxDecoration(
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
            top: -130,
            left: -120,
            child: Container(
              width: 480,
              height: 600,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff49C5FA),
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
              padding: EdgeInsets.all(35),
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
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
            top: size1.height / 4,
            left: 0,
            right: 0,
            child: Transform.translate(
              offset: Offset(0, -25),
              child: Text(
                "Ontago",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xffE1FEFE),
                  fontSize: 50,
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
