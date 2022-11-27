import 'package:flutter/material.dart';
import 'package:travelok_vietnam_app/Views/Auth/Login/LoginPage.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _Welcome();
}

class _Welcome extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Positioned(
          left: 0,
          right: 0,
          child: Container(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
            width: MediaQuery.of(context).size.width,
            height: 400,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/bg-welcome.jpg"),
                    fit: BoxFit.cover),
                color: Colors.redAccent,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
          ),
        ),
        const Positioned(
          top: 350,
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Text(
              'Life is short and the world is wide',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 24, right: 24),
          child: Text(
            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, height: 1.5, color: Colors.grey),
          ),
        ),
        const Spacer(),
        SizedBox(height: 35),
        GestureDetector(
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const LoginPage())),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(15),
            ),
            padding: const EdgeInsets.only(
                left: 130, right: 130, top: 20, bottom: 20),
            child: const Text(
              'Get Started',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
        const Spacer(),
      ],
    ));
  }
}
