// import 'package:flutter/material.dart';
// import 'package:project/model/constant.dart';

// class HelpCenter extends StatefulWidget {
//   const HelpCenter({Key? key}) : super(key: key);

//   @override
//   State<HelpCenter> createState() => _HelpCenterState();
// }

// class _HelpCenterState extends State<HelpCenter> {
//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final containerWidth = (screenWidth - 60) / 2; // Adjust the margin and padding accordingly
//     final containerHeight = containerWidth / 7; // Adjust the height according to your needs

//     return Scaffold(
//       backgroundColor: kBackgroundColor,
//       body: Align(
//         alignment: Alignment.topLeft,
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Hello!',
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
              
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     'What can we do for you?',
//                     style: TextStyle(
//                       fontSize: 28,
//                     ),
//                   ),
//                   SizedBox(width: 100,),
//                   Flexible(
//                     flex: 1,
//                     child: Container(
//                       padding: EdgeInsets.all(10),
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         border: Border.all(color: Colors.black),
                        
//                         borderRadius: BorderRadius.circular(25),
//                       ),
//                       child: Row(
//                         children: [
//                           Icon(Icons.search),
//                           SizedBox(width: 10),
//                           Text('Find answer'),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//                SizedBox(height: 20),
//               Text(
//                 'OR',
//                 style: TextStyle(
//                   fontSize: 18,
//                 ),
//               ),
//               SizedBox(height: 20),
//               Text(
//                 'Choose a category to quickly find the help you need',
//                 style: TextStyle(
//                   fontSize: 18,
//                 ),
//               ),
//               SizedBox(height: 20),
//               GridView.count(
//                 shrinkWrap: true,
//                 crossAxisCount: 2,
//                 childAspectRatio: containerWidth / containerHeight,
//                 crossAxisSpacing: 20,
//                 mainAxisSpacing: 20,
//                 children: [
//                   Container(
//                     width: containerWidth,
//                     height: containerHeight,
//                     padding: EdgeInsets.all(16),
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       border: Border.all(color: Colors.black),
//                       borderRadius: BorderRadius.circular(containerWidth / 2), // Make the container circular
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Icon(Icons.info, size: 30), // Increased size of info icon
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(
//                               'About Ems',
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             SizedBox(height: 5),
//                             Text(
//                               'General information about ems',
//                               textAlign: TextAlign.center,
//                             ),
//                           ],
//                         ),
//                         Icon(Icons.arrow_right),
//                       ],
//                     ),
//                   ),
//                  Container(
//                     width: containerWidth,
//                     height: containerHeight,
//                     padding: EdgeInsets.all(16),
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       border: Border.all(color: Colors.black),
//                       borderRadius: BorderRadius.circular(containerWidth / 2), // Make the container circular
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Icon(Icons.start, size: 30), // Increased size of info icon
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(
//                               'Getting Started',
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             SizedBox(height: 5),
//                             Text(
//                               'New to Ems? We will help!',
//                               textAlign: TextAlign.center,
//                             ),
//                           ],
//                         ),
//                         Icon(Icons.arrow_right),
//                       ],
//                     ),
//                   ),
//                   Container(
//                     width: containerWidth,
//                     height: containerHeight,
//                     padding: EdgeInsets.all(16),
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       border: Border.all(color: Colors.black),
//                       borderRadius: BorderRadius.circular(containerWidth / 2), // Make the container circular
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Icon(Icons.youtube_searched_for, size: 30), // Increased size of info icon
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(
//                               'Ems Videos',
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             SizedBox(height: 5),
//                             Text(
//                               'Watch Featured overview and how to use EMS',
//                               textAlign: TextAlign.center,
//                             ),
//                           ],
//                         ),
//                         Icon(Icons.arrow_right),
//                       ],
//                     ),
//                   ),
//                   Container(
//                     width: containerWidth,
//                     height: containerHeight,
//                     padding: EdgeInsets.all(16),
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       border: Border.all(color: Colors.black),
//                       borderRadius: BorderRadius.circular(containerWidth / 2), // Make the container circular
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Icon(Icons.man_2, size: 30), // Increased size of info icon
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(
//                               'EMS Community',
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             SizedBox(height: 5),
//                             Text(
//                               'The place to ask question and share best practices',
//                               textAlign: TextAlign.center,
//                             ),
//                           ],
//                         ),
//                         Icon(Icons.arrow_right),
//                       ],
//                     ),
//                   ),
//                   Container(
//                     width: containerWidth,
//                     height: containerHeight,
//                     padding: EdgeInsets.all(16),
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       border: Border.all(color: Colors.black),
//                       borderRadius: BorderRadius.circular(containerWidth / 2), // Make the container circular
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Icon(Icons.model_training, size: 30), // Increased size of info icon
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(
//                               'Interactive Training',
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             SizedBox(height: 5),
//                             Text(
//                               'Learn EMS by doing',
//                               textAlign: TextAlign.center,
//                             ),
//                           ],
//                         ),
//                         Icon(Icons.arrow_right),
//                       ],
//                     ),
//                   ),
//                   Container(
//                     width: containerWidth,
//                     height: containerHeight,
//                     padding: EdgeInsets.all(16),
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       border: Border.all(color: Colors.black),
//                       borderRadius: BorderRadius.circular(containerWidth / 2), // Make the container circular
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Icon(Icons.more, size: 30), // Increased size of info icon
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(
//                               'More',
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             SizedBox(height: 5),
//                             Text(
//                               'Useful tip from EMS',
//                               textAlign: TextAlign.center,
//                             ),
//                           ],
//                         ),
//                         Icon(Icons.arrow_right),
//                       ],
//                     ),
//                   ),
                  
//                   // Add other containers as needed
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
