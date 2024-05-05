import 'package:flutter/material.dart';
import 'package:project/model/constant.dart';

class SettingContainer extends StatefulWidget {
  const SettingContainer({Key? key}) : super(key: key);

  @override
  State<SettingContainer> createState() => _SettingContainerState();
}

class _SettingContainerState extends State<SettingContainer> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final containerWidth = (screenWidth - 60) / 2; // Adjust the margin and padding accordingly
    final containerHeight = containerWidth / 6; // Adjust the height according to your needs

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Here you will be able to change your settings.?',
                      style: TextStyle(
                        fontSize: 28,
                      ),
                    ),
                    SizedBox(width: 100,),
                    Flexible(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.search),
                            SizedBox(width: 10),
                            Text('Find Settings'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  'OR',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Choose a category to quickly find the setting you need',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 20),
                GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  childAspectRatio: containerWidth / containerHeight,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  children: [
                    Container(
                      width: containerWidth,
                      height: containerHeight,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(containerWidth / 2), // Make the container circular
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.settings_applications, size: 30), // Increased size of info icon
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'General Setting',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Manage application wide setting',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          Icon(Icons.arrow_right),
                        ],
                      ),
                    ),
                    Container(
                    width: containerWidth,
                    height: containerHeight,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(containerWidth / 2), // Make the container circular
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.security, size: 30), // Increased size of info icon
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Password and Security',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Change your Password and make your account secure',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        Icon(Icons.arrow_right),
                      ],
                    ),
                  ),
                  Container(
                    width: containerWidth,
                    height: containerHeight,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(containerWidth / 2), // Make the container circular
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.account_circle, size: 30), // Increased size of info icon
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Account and Company Setting',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Update your photo, personnel and company detail',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        Icon(Icons.arrow_right),
                      ],
                    ),
                  ),
                  Container(
                    width: containerWidth,
                    height: containerHeight,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(containerWidth / 2), // Make the container circular
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.price_check_outlined, size: 30), // Increased size of info icon
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Pricing Plan and Billing',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Choose pricing plan and manage your company billing',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        Icon(Icons.arrow_right),
                      ],
                    ),
                  ),
                  Container(
                    width: containerWidth,
                    height: containerHeight,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(containerWidth / 2), // Make the container circular
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.notifications, size: 30), // Increased size of info icon
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Notification',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Enable or disable notification',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        Icon(Icons.arrow_right),
                      ],
                    ),
                  ),
                  Container(
                    width: containerWidth,
                    height: containerHeight,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(containerWidth / 2), // Make the container circular
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.notes, size: 30), // Increased size of info icon
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Integration',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Manage and cudtomized your connected app',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        Icon(Icons.arrow_right),
                      ],
                    ),
                  ),
                    // Add other containers as needed
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
