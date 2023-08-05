import 'package:bhasa/presentation/screens/Home/home_screen.dart';
import 'package:bhasa/utils/move_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../common/widget/custom_continue_button.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Image(
              image: AssetImage('resources/images/onboarding.jpg'),
              height: 500,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 3.0, right: 3.0),
                child: Text(
                  'Welcome to Bhasa',
                  style: GoogleFonts.poppins(
                    fontSize: 38,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Center(
                child: Text(
                  'Bhasa is a language learning app that helps you learn a new language in a fun and easy way.',
                  style: GoogleFonts.roboto(
                    fontSize: 18,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            CustomContinueButton(
              onTap: () {
                moveScreen(context, const HomeScreen());
              },
              text: 'Continue',
              color: HexColor('#999b9e'),
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
