import 'package:flutter/material.dart';
import 'package:travelok_vietnam_app/Views/Home/components/TravelCard.dart';
import 'package:travelok_vietnam_app/Views/Profile/profile_page.dart';
import 'package:travelok_vietnam_app/constants.dart';
import 'components/NavbarBottom.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          physics: const ClampingScrollPhysics(),
          children: <Widget>[
            // TOP BAR
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding:
                        EdgeInsets.only(left: 4, right: 10, top: 4, bottom: 4),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 35,
                          height: 35,
                          decoration: const BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                        ),
                        SizedBox(width: 5),
                        GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Profile())),
                          child: Text(
                            'Thai Ninh',
                            style: TextStyle(fontSize: 15, color: xGrayXColor),
                          ),
                        ),
                        // Text(
                        //   'Thai Ninh',
                        //   style: TextStyle(fontSize: 15, color: xGrayXColor),
                        // )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.grey[200], shape: BoxShape.circle),
                      child: Icon(
                        Icons.notifications_none_outlined,
                        color: xGrayXColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            // TITLE TRAVEL APP
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                bottom: 40,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    "Explore the",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.w300),
                  ),
                  Row(
                    children: const [
                      Text(
                        "Beautiful",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.normal),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "World!",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.normal,
                          color: Colors.deepOrange,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            // TITLE LISTVIEW
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: const Text(
                      'Best Destination',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Dòng 60');
                    },
                    child: const Text(
                      'View all',
                      style: TextStyle(color: Color(0xFF42A5F5)),
                    ),
                  ),
                ],
              ),
            ),
            // CARD LISTVIEW
            const TravelCard(),
            const NavbarBottom()
          ],
        ),
      ),
    );
  }
}
