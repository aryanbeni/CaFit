import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatelessWidget {
  final List<PageViewModel> pages = [
    PageViewModel(
      title: "Challenge with Friends",
      body: "Let\'s start the week with a challenge with your best friends",
      image: Center(
        child: Image.asset("assets/images/personal-training.png", height: 200),
      ),
      decoration: const PageDecoration(
        // pageColor: Colors.white,
        titleTextStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 20),
      ),
    ),
    PageViewModel(
      title: "Join the Challenge",
      body: "Let\'s start the week with a challenge with your best friends",
      image: Center(
        child: Image.asset("assets/images/fitness-tracker.png", height: 200),
      ),
      decoration: const PageDecoration(
        // pageColor: Colors.white,
        titleTextStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 20),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 32),
        child: IntroductionScreen(
          pages: pages,
          // showSkipButton: true,
          // skip: const Text("Skip", style: TextStyle(color: Colors.grey)),
          next: const Text("Next",
              style: TextStyle(color: Color(0xffF15223), fontSize: 18)),
          done: const Text("Next",
              style: TextStyle(color: Color(0xffF15223), fontSize: 18)),
          onDone: () => Navigator.pushReplacementNamed(context, '/home'),
          dotsDecorator: DotsDecorator(
            size: const Size(10, 10),
            // color: Colors.transparent,
            activeColor: Color(0xffF15223),
            activeSize: const Size(22, 10),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
          ),
          // dotsFlex: 0,
          // controlsFlex: 1,
          controlsPadding: EdgeInsets.only(bottom: 40),
        ),
      ),
    );
  }
}
