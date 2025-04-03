import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
      Stack(
        children: [
          Positioned(child: Image(image: AssetImage('assets/images/home_Base.png'),),),
          Positioned(left: 0,right: 0,top: 80,
            child: Container(
              height: 95,
              width: 95,
              child:
            Image(image: AssetImage('assets/images/Avatar.png'),),),),
          Positioned(top: 150,left: 228,
              child: Container(height: 24,
            width: 24,
            child: Image(image: AssetImage('assets/images/Dot.png'),),
          ))
        ],
      ),
          SizedBox(height: 10,),
          Text('Today, 2 Apr',style: TextStyle(fontSize: 20,color: Color(0xff7F7F7F)),),
          SizedBox(height: 8,),
          Text('Your Activities',style: TextStyle(fontSize: 25,color: Color(0xff000000),fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          Container(
            height: 32,
            width: 111,
            decoration: BoxDecoration(
              color: Color(0xffFF7D7D),
              borderRadius: BorderRadius.circular(10),
            ),
            child:
            Center(child: Text('Today, 2 Apr',style: TextStyle(color: Color(0xff000000),fontWeight: FontWeight.bold),),
                ),
    ),
    SizedBox(height: 20,),
    Text('1883 Kcal',style: TextStyle(fontSize: 20,color: Color(0xff000000),fontWeight: FontWeight.bold),),
          SizedBox(height: 6,),
          Text('Total Kilocalories',style: TextStyle(fontSize: 20,color: Color(0xff7F7F7F),fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Column(
              children: [
                Text('7580 m',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                Text('Distance',style: TextStyle(color: Colors.black54),)
              ],
            ),Column(
              children: [
                Text('9832',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                Text('Steps',style: TextStyle(color: Colors.black54),)
              ],
            ),Column(
              children: [
                Text('1248',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                Text('Points',style: TextStyle(color: Colors.black54),)
              ],
            ),
          ],),
          SizedBox(height: 20,),
          Image(image: AssetImage('assets/images/Graphs.png'))
        ],
      )
    );
  }
}
