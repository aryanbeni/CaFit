import 'package:cafit/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'onboarding_screen.dart';
import 'screens/navigation_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/bloc_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
        BlocProvider(create: (context) => NavCubit()),
    ],
      child:
      MaterialApp(
      title: 'CaFit',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      initialRoute: '/welcome',
      routes: {
        '/welcome': (context) => WelcomeScreen(),
        '/onboarding': (context) => OnboardingScreen(),
        '/home': (context) => NavigationScreen(),
      },
      // home: const WelcomeScreen(),
    ),
    );
  }
}