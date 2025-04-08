import 'package:flutter/material.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
              right: 0,
              child: Container(
            width: double.infinity,
            height: 255,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              color: Colors.yellow
            ),
                child: Column(children: [
                  Row(
                    children: [
                      Image.asset('assets/images/User.png',height: 40,width: 88,),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text('Indoor Run',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        Text('20km',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black54),),
                      ],)
                    ],
                  )
                ],),
          ))
        ],
      ),
    );
  }
}
