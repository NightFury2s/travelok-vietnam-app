import 'package:flutter/material.dart';
import 'package:travelok_vietnam_app/Views/Auth/Login/LoginPage.dart';
import 'package:travelok_vietnam_app/Views/Welcome/Welcome.dart';
import '../../constants.dart';

class SplashHome extends StatefulWidget {
  const SplashHome({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<SplashHome> createState() => _SplashHomeState();
}

class _SplashHomeState extends State<SplashHome> {
  @override
  void initState() {
    var splashHome = const Duration(seconds: 4);
    // delayed 3 seconds to next page
    Future.delayed(splashHome, () {
      // to next page and close this page
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const Welcome();
          },
        ),
        (route) => false,
      );
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: xBackgroundColor,
              gradient: LinearGradient(
                  colors: [(new Color(0xFF42A5F5)), (new Color(0xFF7E57C2))],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
            ),
          ),
          Center(
            child: Container(
              child: Text(
                "TraveloK Vietnam",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
