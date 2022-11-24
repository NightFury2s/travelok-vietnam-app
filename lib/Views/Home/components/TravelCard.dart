import 'package:flutter/material.dart';
import 'package:travelok_vietnam_app/Models/Repository/Repository_Travel.dart';
import 'package:travelok_vietnam_app/ViewModels/TravelController.dart';
import 'package:travelok_vietnam_app/constants.dart';

class TravelCard extends StatelessWidget {
  const TravelCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Dependency Injection
    var travelController = TravelController(RepositoryTravel());
    // Test statusCode
    travelController.fetchTravel();

    return Container(
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
                      image: const DecorationImage(
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
                              decoration: const BoxDecoration(
                                  color: Colors.black26,
                                  shape: BoxShape.circle),
                              child: const Icon(
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
                    margin: EdgeInsets.only(left: 10, right: 10, top: 18),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Đà Nẵng City",
                              style: TextStyle(
                                  fontSize: 17, color: xTitleTextColor),
                            ),
                            Row(
                              children: const [
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.grey[400],
                                  size: 22,
                                ),
                                const SizedBox(width: 2),
                                Text(
                                  "Đà Nẵng City",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.grey[400]),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 22,
                                  height: 22,
                                  decoration: const BoxDecoration(
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
    );
  }
}
