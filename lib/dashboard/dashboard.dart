import 'package:flutter/material.dart';
import 'package:project/model/appbar_optoon.dart';
import 'package:project/model/constant.dart';
import 'package:project/model/drawer.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double containerSize = 250.0; 

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomDrawer(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        AppBarOption(
                          title: 'Dashboard',
                          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                          onPressed: () {
                             Navigator.push(
                                 context,
                                 MaterialPageRoute(builder: (context) => DashboardPage()),
                           );
                          },
                        ),
                        SizedBox(width: 200.0),
                        AppBarOption(
                          title: 'PAC3100 Meter',
                          style: TextStyle(fontSize: 18),
                          onPressed: () {
    
                          },
                        ),
                        SizedBox(width: 50.0),
                        AppBarOption(
                          title: 'Hour',
                          style: TextStyle(fontSize: 18),
                          onPressed: () {
    
                          },
                        ),
                        SizedBox(width: 50.0),
                        AppBarOption(
                          title: 'Date',
                          style: TextStyle(fontSize: 18),
                          onPressed: () {
                                
                          },
                        ),
                        SizedBox(width: 20),
                        Spacer(), // Add spacing between options and button
                        ElevatedButton(
                          onPressed: () {
                            // Add onPressed functionality for the button
                          },
                          child: Text('Add Widget'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: containerSize,
                              height: containerSize,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0), // Circular edges
                                border: Border.all(color: Colors.white, width: 2), // Border
                                color: Colors.white70,
                              ),
                              child: Image.asset('assets/image/chart.png',fit: BoxFit.fill,),
                               // Add your image asset
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: containerSize,
                              height: containerSize,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10), // Circular edges
                                border: Border.all(color: Colors.white, width: 2), // Border
                                color: Colors.white,
                              ),
                              child: Image.asset('assets/image/chart2.png',fit: BoxFit.fill), // Add your image asset
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: containerSize,
                              height: containerSize,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10), // Circular edges
                                border: Border.all(color: Colors.white, width: 2), // Border
                                color: Colors.white,
                              ),
                              child: Image.asset('assets/image/chart3.png',fit:BoxFit.fill,), // Add your image asset
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20), // Add gap
                  Expanded(
                    child: Container(
                      width: double.infinity, // Set width to expand horizontally
                      height: 200, // Set height
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0), // Circular edges
                        border: Border.all(color: Colors.white, width: 2), // Border
                        color: Colors.black,
                      ),
                      child: Image.asset('assets/image/chart5.png',fit: BoxFit.fill,), // Add your image asset
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
