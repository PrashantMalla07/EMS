import 'package:flutter/material.dart';

class AppBarOption extends StatelessWidget {
  final String title;
  final TextStyle style;
  final VoidCallback onPressed; // Function to be called when option is pressed

  const AppBarOption({
    Key? key,
    required this.title,
    required this.style,
    required this.onPressed, // Add onPressed parameter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed, // Call the onPressed function when tapped
      child: Row(
        children: [
           Text(
              title,
              style: style,
               ),
          Icon(Icons.keyboard_arrow_down),
        ],
      ),
    );
  }
}
