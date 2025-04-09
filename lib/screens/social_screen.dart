import 'package:flutter/material.dart';

class SocialScreen extends StatefulWidget {
  const SocialScreen({super.key});

  @override
  State<SocialScreen> createState() => _SocialScreenState();
}

class _SocialScreenState extends State<SocialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Stack(
                  children: [
                    Positioned(
                      child: Container(
                        height: 70,
                        width: 70,
                        child: Image(
                          image: AssetImage('assets/images/Avatar.png'),
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        left: 50,
                        child: Container(
                          height: 18,
                          width: 18,
                          child: Image(
                            image: AssetImage('assets/images/Dot.png'),
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Text.rich(TextSpan(children: [
                  TextSpan(
                      text: 'Hello Linh!\n',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black26,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: 'Thursday, 08 July',
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff000000),
                          fontWeight: FontWeight.bold)),
                ]))
              ],
            )
          ],
        ),
      ),
    );
  }
}
