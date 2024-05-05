import 'package:flutter/material.dart';
import 'package:project/analytic/analyticreport_table.dart'; // Import the AnalyticsReportTable widget
import 'package:project/analytic/chart_widget.dart';
import 'package:project/analytic/predictive_simulation.dart';
import 'package:project/model/appbar_optoon.dart';
import 'package:project/model/constant.dart';
import 'package:project/model/drawer.dart';

class AnalyticReport extends StatefulWidget {
  @override
  State<AnalyticReport> createState() => _AnalyticReportState();
}

class _AnalyticReportState extends State<AnalyticReport> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomDrawer(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: SingleChildScrollView(
                physics: ClampingScrollPhysics(), // Disable scrolling if content fits
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height - kToolbarHeight - 32), // Adjust the maxHeight as needed
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          AppBarOption(
                            title: 'Analytics',
                            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => AnalyticReport()),
                              );
                            },
                          ),
                          SizedBox(width: 200.0),
                          AppBarOption(
                            title: 'PAC3100 Meter',
                            style: TextStyle(fontSize: 18),
                            onPressed: () {},
                          ),
                          SizedBox(width: 50.0),
                          AppBarOption(
                            title: 'Hour',
                            style: TextStyle(fontSize: 18),
                            onPressed: () {},
                          ),
                          SizedBox(width: 50.0),
                          AppBarOption(
                            title: 'Date',
                            style: TextStyle(fontSize: 18),
                            onPressed: () {},
                          ),
                          SizedBox(width: 20),
                          Spacer(), 
                          ElevatedButton(
                            onPressed: () {
                              
                            },
                            child: Text('Add Widget'),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10), 
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.5), 
                                blurRadius: 5, 
                                spreadRadius: 2, 
                                offset: Offset(2, 2), // Offset of the shadow
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  SizedBox(width: 100), 
                                  Stack(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                      Navigator.push(
                                       context,
                                       MaterialPageRoute(builder: (context) => AnalyticReport()),
                                      );
                                      print('Text Report tapped');
                                    },
                                        child: Text(
                                          'Text Report', 
                                          style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(255, 154, 224, 221),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        right: 0,
                                        bottom: 0,
                                        child: Container(
                                          height: 5,
                                          color: Colors.grey, 
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 40), 
                                  GestureDetector(
                                    onTap: () {
                                       Navigator.push(
                                       context,
                                       MaterialPageRoute(builder: (context) => ChartWidget()),
                                      );
                                      print('Chart Widget tapped');
                                    },
                                    child: Text(
                                      'Chart Widget', 
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 40),
                                  GestureDetector(
                                    onTap: () {
                                       Navigator.push(
                                       context,
                                       MaterialPageRoute(builder: (context) => PredictiveSimulation()),
                                      );
                                      print('Predictive Simulation tapped');
                                    },
                                    child: Text(
                                      'Predictive Simulation', 
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              AnalyticsReportTable(selectedRows: selectedRows), 
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<int> selectedRows = [];
}
