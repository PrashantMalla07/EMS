import 'package:flutter/material.dart';
import 'package:project/helpCentre/helpcontainer.dart';
import 'package:project/helpCentre/submit_request.dart';
import 'package:project/model/appbar_optoon.dart';
import 'package:project/model/constant.dart';
import 'package:project/model/drawer.dart';

class Helpcentre extends StatefulWidget {
  @override
  State<Helpcentre> createState() => _HelpcentreState();
}

class _HelpcentreState extends State<Helpcentre> {
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
              child: ConstrainedBox(
                constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height - kToolbarHeight - 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        AppBarOption(
                          title: 'Help Centre',
                          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Helpcentre()),
                            );
                          },
                        ),
                        SizedBox(width: 20),
                        Spacer(),
                        
                        SizedBox(
                          width: 200,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SubmitRequestPage()),
                              );
                            },
                            style: ButtonStyle( backgroundColor: WidgetStateProperty.all<Color>(Colors.blue),),
                            child: Row(
                              children: [
                                Icon(Icons.add,color: Colors.white,),
                                SizedBox(width: 4), 
                                // Add some space between icon and text
                                Text('Submit a Request',style: TextStyle(color: Colors.white),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          
                          Expanded(
                            child: HelpContainer(),
                          ),
                        ],
                      ),
                    ),
                  ],
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
