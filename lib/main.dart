import 'package:flutter/material.dart';
import 'name_page.dart'; // Import the second page

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dream Tales',
      theme: ThemeData(
        fontFamily: 'COMO',
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isClicked = false; // Tracks button click state

  @override
  Widget build(BuildContext context) {
    // Screen dimensions
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            width: screenWidth,
            height: screenHeight,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/home_page_bg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Logo
          Positioned(
            top: (screenHeight - (336.73 * (screenHeight / 2340))) / 2,
            left: (screenWidth - (586.06 * (screenWidth / 1080))) / 2,
            child: Image.asset(
              'assets/images/logo.png',
              width: 658.32 * (screenWidth / 1080),
              height: 408.96 * (screenHeight / 2340),
              color: Colors.white,
            ),
          ),
          // Button
          Positioned(
            top: 1984 * (screenHeight / 2340), // Button's Y position
            left: (screenWidth - (560 * (screenWidth / 1080))) / 2, // Centering button horizontally
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _isClicked = true; // Change the state to "clicked"
                });
                Future.delayed(const Duration(milliseconds: 300), () async {
                  // Delay and navigate to NamePage
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NamePage(), // Navigate to NamePage
                    ),
                  );
                  // Reset state when coming back
                  setState(() {
                    _isClicked = false; // Reset the button state
                  });
                });
              },
              child: Image.asset(
                _isClicked
                    ? 'assets/images/begin_your_story_button_clicked.png'
                    : 'assets/images/begin_your_story_button_unclicked.png',
                width: 560 * (screenWidth / 1080),
                height: 98 * (screenHeight / 2340),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
