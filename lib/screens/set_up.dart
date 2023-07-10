import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/colors.dart';

class SetUpScreen extends StatefulWidget {
  const SetUpScreen({Key? key}) : super(key: key);

  @override
  State<SetUpScreen> createState() => _SetUpScreenState();
}

class _SetUpScreenState extends State<SetUpScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: screenWidth,
          height: screenHeight,
          color: primaryColor1,
          child: Stack(
            children: [
              Positioned(
                top: screenHeight * 0.1,
                left: 0,
                right: 0,
                child: SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/logo.png',
                        width: 120,
                        height: 120,
                      ),
                      Text(
                        "Ping",
                        style: GoogleFonts.poppins(
                            fontSize: 48, fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: screenHeight * 0.25,
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
                  padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 8.0),
                  child: Text(
                    "Set up your profile",
                    style: GoogleFonts.poppins(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      color: text1,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              // Positioned(
              //   top: screenHeight * 0.27,
              //   left: 0,
              //   right: 0,
              //   bottom: 0,
              //   child: Container(
              //     padding: const EdgeInsets.symmetric(
              //         vertical: 65.0, horizontal: 20.0),
              //     child: Text(
              //       "Verifying user",
              //       style: GoogleFonts.poppins(
              //           fontSize: 16, fontWeight: FontWeight.w400),
              //       textAlign: TextAlign.left,
              //     ),
              //   ),
              // ),
              Positioned(
                bottom: screenHeight * 0.05,
                left: 0,
                right: 0,
                child: SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: screenWidth * 0.8,
                        height: screenHeight * 0.05,
                        decoration: BoxDecoration(
                          borderRadius:
                          const BorderRadius.all(Radius.circular(25)),
                          color: primaryColor2,
                        ),
                        padding: const EdgeInsets.fromLTRB(0, 4, 0, 0),
                        child: Text(
                          "Verify",
                          style: GoogleFonts.poppins(
                              fontSize: 25, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
