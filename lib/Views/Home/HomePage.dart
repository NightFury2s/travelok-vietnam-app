import 'package:flutter/material.dart';
import 'package:travelok_vietnam_app/Views/Notify/NotifyPage.dart';
import 'package:travelok_vietnam_app/Views/Profile/ProfilePage.dart';
import 'package:travelok_vietnam_app/constants.dart' as constants;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // TOP BAR
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
            child: Row(
              children: [
                // Click -> Profile
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProfilePage(),
                      ),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 3, right: 12, top: 3, bottom: 3),
                    decoration: BoxDecoration(
                      color: constants.AppColor.xGrayBackgroundColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1611605698335-8b1569810432?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8bG9nbyUyMGZhY2Vib29rfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          'Leonardo',
                          style: TextStyle(
                              fontSize: 15,
                              color: constants.AppColor.xDarkTextColor),
                        )
                      ],
                    ),
                  ),
                ),
                // Empty Container
                Expanded(child: Container()),
                // Click -> Notification
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NotifyPage(),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.grey[200], shape: BoxShape.circle),
                    child: Icon(
                      Icons.notifications_none_outlined,
                      color: constants.AppColor.xDarkTextColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // TITLE APP
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Explore the",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w300,
                    color: constants.AppColor.xDarkTextColor,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Beautiful",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w500,
                        color: constants.AppColor.xDarkTextColor,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      "World!",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w500,
                        color: constants.AppColor.xOrangeColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // TITLE LISTVIEW
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
            child: Row(
              children: [
                Text(
                  'Best Destination',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: constants.AppColor.xDarkTextColor,
                  ),
                ),
                Expanded(child: Container()),
                GestureDetector(
                  onTap: () {
                    print('VIEW ALL');
                  },
                  child: Text(
                    'View all',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: constants.AppColor.xBackgroundColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // CARD LISTVIEW
          // Expanded(
          //   child: ListView.builder(
          //     scrollDirection: Axis.horizontal,
          //     itemCount: 10,
          //     itemBuilder: (BuildContext context, int index) {
          //       return Container(
          //         width: 280,
          //         height: 400,
          //         margin: const EdgeInsets.only(left: 20, top: 10),
          //         padding: const EdgeInsets.all(16),
          //         decoration: BoxDecoration(
          //           color: constants.AppColor.xOverViewBackgroundColor,
          //           borderRadius: BorderRadius.circular(25),
          //           boxShadow: [
          //             BoxShadow(
          //               offset: const Offset(0, 0),
          //               blurRadius: 10,
          //               color: constants.AppColor.xShadowColor,
          //             ),
          //           ],
          //         ),
          //         child: Column(
          //           children: [
          //             // IMAGE
          //             Container(
          //               width: double.infinity,
          //               height: 300,
          //               decoration: BoxDecoration(
          //                 borderRadius: BorderRadius.circular(25),
          //                 image: DecorationImage(
          //                     image: NetworkImage(
          //                       'https://images.unsplash.com/photo-1666085596628-66d4306f3728?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60',
          //                     ),
          //                     fit: BoxFit.cover),
          //               ),
          //               child: Stack(
          //                 children: [
          //                   Positioned(
          //                     right: 16,
          //                     top: 16,
          //                     child: GestureDetector(
          //                       onTap: () {
          //                         print('SAVE');
          //                       },
          //                       child: Container(
          //                         padding: const EdgeInsets.all(8),
          //                         decoration: BoxDecoration(
          //                             color: constants
          //                                 .AppColor.xBlackBackgroundColor,
          //                             shape: BoxShape.circle),
          //                         child: const Icon(
          //                           Icons.bookmark_border,
          //                           color: Colors.white,
          //                         ),
          //                       ),
          //                     ),
          //                   )
          //                 ],
          //               ),
          //             ),
          //             // CONTENT 1
          //             Container(
          //               margin:
          //               const EdgeInsets.only(left: 8, right: 8, top: 16),
          //               child: Row(
          //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                 children: [
          //                   Text(
          //                     "Ngu Hang Do",
          //                     style: TextStyle(
          //                       fontSize: 16,
          //                       fontWeight: FontWeight.w500,
          //                       color: constants.AppColor.xDarkTextColor,
          //                     ),
          //                   ),
          //                   Row(
          //                     children: [
          //                       const Icon(
          //                         Icons.star,
          //                         color: Colors.amberAccent,
          //                         size: 20,
          //                       ),
          //                       const SizedBox(width: 2),
          //                       Text(
          //                         "4,7",
          //                         style: TextStyle(
          //                           fontSize: 15,
          //                           fontWeight: FontWeight.w400,
          //                           color: constants.AppColor.xDarkTextColor,
          //                         ),
          //                       )
          //                     ],
          //                   )
          //                 ],
          //               ),
          //             ),
          //             // CONTENT 2
          //             Container(
          //               margin:
          //               const EdgeInsets.only(left: 4, right: 8, top: 10),
          //               child: Row(
          //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                 children: [
          //                   Row(
          //                     children: [
          //                       Icon(
          //                         Icons.location_on_outlined,
          //                         color: constants.AppColor.xGrayTextColor,
          //                         size: 20,
          //                       ),
          //                       const SizedBox(width: 2),
          //                       Text(
          //                         "Chicago City",
          //                         style: TextStyle(
          //                             fontSize: 13,
          //                             color: constants.AppColor.xGrayTextColor),
          //                       )
          //                     ],
          //                   ),
          //                   Row(
          //                     children: [
          //                       Container(
          //                         width: 20,
          //                         height: 20,
          //                         decoration: BoxDecoration(
          //                             color:
          //                             constants.AppColor.xBackgroundColor,
          //                             shape: BoxShape.circle),
          //                       ),
          //                     ],
          //                   )
          //                 ],
          //               ),
          //             ),
          //           ],
          //         ),
          //       );
          //     },
          //   ),
          // ),

          // BOTTOM NAVBAR
        ],
      ),
    );
  }
}
