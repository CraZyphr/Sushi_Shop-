import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_rolls/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Image.asset(
            'lib/images/wall.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(height: 10),
                  // Shop name and icon in a Row
                  Row(
                    children: [
                      // Shop name
                      Text(
                        "SUSHI ROLLS",
                        style: GoogleFonts.playfairDisplay(
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 10), // Adjust the spacing as needed
                      // Icon
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset(
                          'lib/images/suegg.png',
                          height: 40, // Adjust the height as needed
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 335),
                  const SizedBox(height: 28),
                  // Title
                  Text(
                    "THE REAL JAPANESE TASTE",
                    style: GoogleFonts.playfairDisplay(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(height: 28),
                  // Subtitle
                  Text(
                    "Feel the taste of the most authentic Japanese food, just a click away",
                    style: GoogleFonts.raleway(
                      fontSize: 16,
                      color: Colors.grey[400],
                      height: 1.5,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(height: 28),
                  // Get Started Button
                  MyButton(
                    text: "Get Started",
                    onTap: () {
                      Navigator.pushNamed(context, '/menupage');
                    },
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
