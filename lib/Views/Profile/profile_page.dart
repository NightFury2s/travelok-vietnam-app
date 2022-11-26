import 'package:flutter/material.dart';
import 'package:travelok_vietnam_app/Views/Home/HomePage.dart';
import 'components/card_features.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              left: 20,
              top: 50,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage())),
                    icon: const Icon(Icons.arrow_back_ios),
                    color: Colors.black,
                  )
                ],
              )),
          Positioned(
              left: 150,
              top: 65,
              child: Row(
                children: [
                  const Text(
                    'Profile',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )
                ],
              )),
          Positioned(
              left: 300,
              top: 50,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.edit),
                    color: Colors.black,
                  )
                ],
              )),
          SafeArea(
            minimum: const EdgeInsets.only(top: 130),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: <Widget>[
                    const CircleAvatar(
                      radius: 40,
                      // backgroundImage: AssetImage("assets/images/avt.jpg"),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Demo",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "example_demo@gmail.com",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SafeArea(
            minimum: const EdgeInsets.only(
                top: 280, bottom: 440, left: 25, right: 25),
            child: MaterialButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: [
                      const Text(
                        'Reward Points',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        '360',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                    ],
                  ),
                  const SizedBox(width: 20),
                  Column(
                    children: [
                      const Text(
                        'Travel Trips',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        '238',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                    ],
                  ),
                  const SizedBox(width: 20),
                  Column(
                    children: [
                      const Text(
                        'Bucket List',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        '473',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // ListView(
          //   children: [
          //     InfoProfile()
          //   ],
          // )
          SafeArea(
              minimum: const EdgeInsets.only(top: 350),
              child: Column(
                children: <Widget>[
                  Features(text: 'Profile', icon: Icons.perm_identity_sharp),
                  Features(
                      text: 'Bookmarked', icon: Icons.bookmark_outline_rounded),
                  Features(
                      text: 'Previous Trips',
                      icon: Icons.airplanemode_active_sharp),
                  Features(text: 'Setting', icon: Icons.settings),
                  Features(text: 'Version', icon: Icons.verified_sharp),
                ],
              ))
        ],
      ),
    );
  }
}
