// import 'package:flutter/material.dart';

// CardView({String? title, title2, title3, title4, Color? clr1, clr2}) {
//   Row(
//     mainAxisAlignment: MainAxisAlignment.spaceAround,
//     children: [
//       Card(
//         elevation: 20,
//         shadowColor: Colors.black54,
//         child: Container(
//           height: 150,
//           width: 150,
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(20), color: Colors.white),
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Card(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(15.0),
//                   ),
//                   elevation: 20,
//                   child: Container(
//                     decoration:
//                         BoxDecoration(borderRadius: BorderRadius.circular(70)),
//                     child: CircleAvatar(
//                       backgroundColor: Colors.white,
//                       radius: 40,
//                       child: Icon(
//                         Icons.list_alt_sharp,
//                         color: clr1,
//                         size: 40,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Text("$title",
//                     style: TextStyle(
//                       color: clr1,
//                       fontSize: 22,
//                     )),
//                 Text("$title2",
//                     style: TextStyle(
//                       color: clr1,
//                       fontSize: 16,
//                     )),
//                 Stack(children: [
//                   Container(
//                     decoration: BoxDecoration(
//                         color: Colors.grey,
//                         borderRadius: BorderRadius.circular(32)),
//                     height: 5,
//                     width: 110,
//                   ),
//                   Positioned(
//                     child: Container(
//                       decoration: BoxDecoration(
//                           color: clr1, borderRadius: BorderRadius.circular(32)),
//                       height: 5,
//                       width: 95,
//                     ),
//                   ),
//                 ]),
//               ],
//             ),
//           ),
//         ),
//       ),
//       Card(
//         elevation: 20,
//         shadowColor: Colors.black54,
//         child: Container(
//           height: 150,
//           width: 150,
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(20), color: Colors.white),
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Card(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(15.0),
//                   ),
//                   elevation: 20,
//                   child: Container(
//                     decoration:
//                         BoxDecoration(borderRadius: BorderRadius.circular(70)),
//                     child: CircleAvatar(
//                       backgroundColor: Colors.white,
//                       radius: 40,
//                       child: Icon(
//                         Icons.badge_sharp,
//                         color: clr2,
//                         size: 40,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Text("$title3",
//                     style: TextStyle(
//                       color: clr2,
//                       fontSize: 22,
//                     )),
//                 Text("$title4",
//                     style: TextStyle(
//                       color: clr2,
//                       fontSize: 16,
//                     )),
//                 Stack(children: [
//                   Container(
//                     decoration: BoxDecoration(
//                         color: Colors.grey,
//                         borderRadius: BorderRadius.circular(32)),
//                     height: 5,
//                     width: 110,
//                   ),
//                   Positioned(
//                     child: Container(
//                       decoration: BoxDecoration(
//                           color: clr2, borderRadius: BorderRadius.circular(32)),
//                       height: 5,
//                       width: 20,
//                     ),
//                   ),
//                 ]),
//               ],
//             ),
//           ),
//         ),
//       ),
//     ],
//   );
// }
