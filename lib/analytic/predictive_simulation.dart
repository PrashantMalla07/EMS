import 'package:flutter/material.dart';
import 'package:project/analytic/analytic_report.dart';
import 'package:project/analytic/chart_widget.dart';
import 'package:project/model/appbar_optoon.dart';
import 'package:project/model/constant.dart';
import 'package:project/model/drawer.dart';

class PredictiveSimulation extends StatefulWidget {
  @override
  State<PredictiveSimulation> createState() => _PredictiveSimulationState();
}

class _PredictiveSimulationState extends State<PredictiveSimulation> {
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
                physics: ClampingScrollPhysics(), 
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height - kToolbarHeight - 32), 
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
                                offset: Offset(2, 2), 
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
                                        
                                        
                                      ),
                                    ),
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
                                   Stack(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                      Navigator.push(
                                       context,
                                       MaterialPageRoute(builder: (context) => PredictiveSimulation()),
                                      );
                                      print('Predictive Simulation tapped');
                                    },
                                        child: Text(
                                          'Predictive simulation',
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
                                ],
                              ),
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
