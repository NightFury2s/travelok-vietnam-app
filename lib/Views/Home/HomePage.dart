import 'package:flutter/material.dart';

import '../../constants.dart';
import 'componets/NavbarBottom.dart';

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
          physics: ClampingScrollPhysics(),
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
                          decoration: BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Thai Ninh',
                          style: TextStyle(fontSize: 15, color: xGrayXColor),
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('THông báo');
                    },
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
                  Text(
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
                    child: Text(
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
                    child: Text(
                      'View all',
                      style: TextStyle(color: Color(0xFF42A5F5)),
                    ),
                  ),
                ],
              ),
            ),
            // CARD LISTVIEW
            Container(
              height: 450,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 16),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    width: 300,
                    height: double.infinity,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 330,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                  image: NetworkImage(
                                    'https://images.unsplash.com/photo-1578059457703-850565b053f6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDh8fGFydHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
                                  ),
                                  fit: BoxFit.cover),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  right: 16,
                                  top: 16,
                                  child: GestureDetector(
                                    onTap: () {
                                      print('SAVE');
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                          color: Colors.black26,
                                          shape: BoxShape.circle),
                                      child: Icon(
                                        Icons.bookmark_border,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(left: 10, right: 10, top: 18),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Đà Nẵng City",
                                      style: TextStyle(
                                          fontSize: 17, color: xTitleTextColor),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 20,
                                        ),
                                        SizedBox(width: 2),
                                        Text("4.7")
                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox(height: 12),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.location_on_outlined,
                                          color: Colors.grey[400],
                                          size: 22,
                                        ),
                                        SizedBox(width: 2),
                                        Text(
                                          "Đà Nẵng City",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.grey[400]),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: 22,
                                          height: 22,
                                          decoration: BoxDecoration(
                                              color: Colors.black54,
                                              shape: BoxShape.circle),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            NavbarBottom()
          ],
        ),
      ),
    );
  }
}
