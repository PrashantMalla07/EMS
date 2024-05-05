import 'package:flutter/material.dart';
import 'package:project/analytic/analytic_report.dart';
import 'package:project/buildings/building.dart';
import 'package:project/dashboard/dashboard.dart';
import 'package:project/devices/device.dart';
import 'package:project/helpCentre/helpcentre.dart';
import 'package:project/setting/setting.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // You can replace these variables with your actual user data
    var username = 'User';
    var userEmail = 'user@example.com';

    return Drawer(
      backgroundColor: null,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              username,
              style: TextStyle(color: Colors.black), // Set text color to black
            ),
            accountEmail: Text(
              userEmail,
              style: TextStyle(color: Colors.black), // Set text color to black
            ),
            currentAccountPicture: const CircleAvatar(
              child: ClipOval(
                child: Icon(Icons.account_circle_rounded),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.white, // Set the background color
            ), // Remove the background decoration
          ),
          const SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Main Menu",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 5),
              ListTile(
                leading: const Icon(Icons.dashboard),
                title: Text("Dashboard", style: Theme.of(context).textTheme.bodyMedium),
                onTap: () {
                   Navigator.push(
                                 context,
                                 MaterialPageRoute(builder: (context) => DashboardPage()),
                           );
                },
              ),
            ],
          ),
          const SizedBox(height: 0),
          ListTile(
            leading: const Icon(Icons.analytics),
            title: Text("Analytics", style: Theme.of(context).textTheme.bodyMedium),
            onTap: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AnalyticReport()),
              );
            },
          ),
          const SizedBox(height: 0),
          ListTile(
            leading: const Icon(Icons.apartment),
            title: Text("Building", style: Theme.of(context).textTheme.bodyMedium),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Building()),
              );
            },
          ),
          const SizedBox(height: 0),
          ListTile(
            leading: const Icon(Icons.devices),
            title: Text("Device", style: Theme.of(context).textTheme.bodyMedium),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Device()),
              );
            },
          ),
          const SizedBox(height: 0),
          ListTile(
            leading: const Icon(Icons.history),
            title: Text("Alarm logs", style: Theme.of(context).textTheme.bodyMedium),
            onTap: () {
              // Add functionality for Chat
            },
          ),
          const SizedBox(height: 0),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: Text("Notification", style: Theme.of(context).textTheme.bodyMedium),
            onTap: () {
              // Add functionality for Settings
            },
          ),
           const SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Insight",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 5),
              ListTile(
                leading: const Icon(Icons.help),
                title: Text("Help", style: Theme.of(context).textTheme.bodyMedium),
                onTap: () {
                   Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Helpcentre()),
              );
                },
              ),
            ],
          ),
          const SizedBox(height: 0),
          ListTile(
            leading: const Icon(Icons.settings),
            title: Text("Setting", style: Theme.of(context).textTheme.bodyMedium),
            onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Setting()),
              );
            },
          ),
          const SizedBox(height: 0),
          ListTile(
            leading: const Icon(Icons.logout),
            title: Text("Log Out", style: Theme.of(context).textTheme.bodyMedium),
            onTap: () {
              // Add functionality for Teacher
            },
          ),
        ],
      ),
    );
  }
}
