import 'package:cafit/constants/app_color.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 24),
          child: Column(
            children: [
              Center(child: Image(image: AssetImage('assets/images/Logo.png'),height: 100,)),
              Spacer(),
              Spacer(),
              Center(child: Image(image: AssetImage('assets/images/fitness-stats.png')),),
              Spacer(),
              Center(child: Text('Welcome to CaFit',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
              SizedBox(height: 20,),
              Center(child: Text('We need to workout safely during Covid-19 and CaFit is here to help',style: TextStyle(fontSize: 20,color: Colors.black54),textAlign: TextAlign.center),),
              Spacer(),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: GestureDetector(child:
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Color(0xffFD371F),Color(0xffFF844B)]),
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text('Let\'s Walk',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                  ),
                ),
                    onTap: ()=> Navigator.pushReplacementNamed(context, '/onboarding'
                    ),
              )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
