import 'package:flutter/material.dart';

class NamePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/images/name_page_bg.png',
              fit: BoxFit.cover,
            ),
          ),
          // Logo at the top
          Positioned(
            top: 197 * (screenHeight / 2340), // Adjust Y position based on screen height
            left: (screenWidth - (264 * (screenWidth / 1080))) / 2, // Center logo
            child: Image.asset(
              'assets/images/logo.png',
              width: 264 * (screenWidth / 1080),
              height: 152 * (screenHeight / 2340),
            ),
          ),
          // Text: "My name is"
          Positioned(
            top: 1052 * (screenHeight / 2340),
            left: 0,
            right: 0,
            child: Text(
              'My name is',
              style: TextStyle(
                fontFamily: 'COMO',
                fontSize: 50 * (screenWidth / 1080),
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          // Text Placeholder and Entry
          Positioned(
            top: 1188 * (screenHeight / 2340),
            left: 255 * (screenWidth / 1080),
            right: 255 * (screenWidth / 1080),
            child: Column(
              children: [
                TextField(
                  style: TextStyle(
                    fontFamily: 'COMO',
                    fontSize: 50 * (screenWidth / 1080),
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Type your name here',
                    hintStyle: TextStyle(
                      color: Color(0xFFBDBDBD),
                      fontFamily: 'COMO',
                      fontSize: 50 * (screenWidth / 1080),
                    ),
                    border: InputBorder.none,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 4),
                Image.asset(
                  'assets/images/name_line.png',
                  width: 891 * (screenWidth / 1080),
                  height: 2 * (screenHeight / 2340),
                ),
              ],
            ),
          ),
          // Next Button
          Positioned(
            top: 1963 * (screenHeight / 2340),
            left: (screenWidth - (560 * (screenWidth / 1080))) / 2, // Center button
            child: GestureDetector(
              onTap: () {
                print('Next button clicked');
              },
              child: Image.asset(
                'assets/images/next_button_unclicked.png',
                width: 560 * (screenWidth / 1080),
                height: 98 * (screenHeight / 2340),
              ),
            ),
          ),
          // Home Button
          Positioned(
            top: 2152 * (screenHeight / 2340),
            left: (screenWidth - (84.96 * (screenWidth / 1080))) / 2, // Center button
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset(
                'assets/images/home_button.png',
                width: 84.96 * (screenWidth / 1080),
                height: 84.96 * (screenHeight / 2340),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
