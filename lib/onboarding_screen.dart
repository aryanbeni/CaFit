import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatelessWidget {
  final List<PageViewModel> pages = [
    PageViewModel(
      title: "Welcome to My App",
      body: "This is the first screen of the onboarding flow.",
      image: Center(
        child: Image.asset("assets/images/slide1.png", height: 200),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 16),
      ),
    ),
    PageViewModel(
      title: "Explore Features",
      body: "Discover amazing tools to boost your productivity.",
      image: Center(
        child: Image.asset("assets/images/slide2.png", height: 200),
      ),
    ),
    PageViewModel(
      title: "Get Started",
      body: "Ready to begin your journey?",
      image: Center(
        child: Image.asset("assets/images/slide3.png", height: 200),
      ),
    ),
  ];

   OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: IntroductionScreen(
      pages: pages,
      showSkipButton: true,
      skip: const Text("Skip", style: TextStyle(color: Colors.grey)),
      next: const Text("Next", style: TextStyle(color: Colors.blue)),
      done: const Text("Done", style: TextStyle(color: Colors.blue)),
      onDone: () {
        // Navigate to the home screen
        Navigator.pushReplacementNamed(context, '/home');
      },
      dotsDecorator: DotsDecorator(
        size: const Size(10, 10),
        activeSize: const Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
    ),
    );
  }
}