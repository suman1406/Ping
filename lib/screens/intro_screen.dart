import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ping/screens/phonenumber_screen.dart';
import 'package:ping/utils/colors.dart';
import 'package:provider/provider.dart';

import '../provider/auth_provider.dart';
import '../widgets/custom_button.dart';
import 'chat_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final ap = Provider.of<AuthProvider>(context, listen: false);

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: screenWidth,
          height: screenHeight,
          color: primaryColor1,
          child: Stack(
            children: [
              Positioned(
                top: screenHeight * 0.2,
                left: screenWidth * 0.5 - 60,
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 120,
                  height: 120,
                ),
              ),
              Positioned(
                top: screenHeight * 0.36,
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35),
                    ),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    "Ping",
                    style: GoogleFonts.poppins(
                      fontSize: 48,
                      fontWeight: FontWeight.w400,
                      color: text1,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Positioned(
                bottom: screenHeight * 0.08,
                left: 0,
                right: 0,
                child: SizedBox(
                  width: screenWidth,
                  height: screenHeight * 0.58,
                  child: Image.asset(
                    'assets/images/SelfieDoodle.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                bottom: screenHeight * 0.16,
                left: 0,
                right: 0,
                child: Center(
                  child: Text(
                    "Click next to join the community",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: text1,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Positioned(
                bottom: screenHeight * 0.12,
                left: 0,
                right: 0,
                child: GestureDetector(
                  onTap: () {
                    // do something when the link is clicked
                  },
                  child: Text(
                    'Terms & Privacy Policy',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: Colors.blue,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Positioned(
                bottom: screenHeight * 0.05,
                left: 0,
                right: 0,
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      // Navigate to PhoneNumber page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PhoneNumberScreen()),
                      );
                    },
                    child: Container(
                      width: screenWidth * 0.8,
                      height: screenHeight * 0.05,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(25)),
                        color: primaryColor2,
                      ),
                      padding: const EdgeInsets.fromLTRB(0, 4, 0, 0),
                      child: Text(
                        "Next",
                        style: GoogleFonts.poppins(
                            fontSize: 25,
                            color: Colors.white
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: CustomButton(
                  onPressed: () async {
                    if (ap.isSignedIn == true) {
                      await ap.getDataFromSP().whenComplete(
                            () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ChatScreen(),
                          ),
                        ),
                      );
                    } else {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PhoneNumberScreen(),
                        ),
                      );
                    }
                  },
                  text: "Get started",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}