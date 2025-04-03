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
      body: SingleChildScrollView(child:
      Column(
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
          Text('Today, 2 Apr',style: TextStyle(fontSize: 16,color: Color(0xff7F7F7F)),),
          SizedBox(height: 8,),
          Text('Your Activities',style: TextStyle(fontSize: 25,color: Color(0xff000000),fontWeight: FontWeight.bold),),
          SizedBox(height: 20,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('30',style: TextStyle(color: Colors.black54)),
              Text('31',style: TextStyle(color: Colors.black54)),
              Text('1',style: TextStyle(color: Colors.black54)),
              Container(
                height: 32,
                width: 111,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xfff5d6d6),
                      Color(0xfff6e0e0),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),              borderRadius: BorderRadius.circular(10),
                ),
                child:
                Center(child: Text('Today, 2 Apr',style: TextStyle(color: Color(0xff000000),fontWeight: FontWeight.bold),),
                ),
              ),
              Text('3',style: TextStyle(color: Colors.black54)),
              Text('4',style: TextStyle(color: Colors.black54)),
              Text('5',style: TextStyle(color: Colors.black54)),
            ],
          ),
    SizedBox(height: 20,),
    Text('1 883 Kcal',style: TextStyle(fontSize: 30,color: Color(0xff000000),fontWeight: FontWeight.bold),),
          SizedBox(height: 2,),
          Text('Total Kilocalories',style: TextStyle(fontSize: 15,color: Color(0xff7F7F7F)),),
          SizedBox(height: 25,),
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
          SizedBox(height: 25,),
          Image(image: AssetImage('assets/images/Graphs.png')),
          SizedBox(height: 25,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Container(
              width: 112,
              height: 112,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff65CF58),
                    Color(0xffa2e59b),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(padding: EdgeInsets.symmetric(horizontal: 16,vertical: 20),child:
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 24,
                    width: 24,
                    child:
                    Image(image: AssetImage('assets/images/dumbell.png')),
                  ),
                  SizedBox(height: 5),
                  Row(children: [
                    Text('628 ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                    Text('Kcal',style: TextStyle(color: Colors.white),),
                  ],),
                  SizedBox(height: 3),
                  Text('Dumbbell',style: TextStyle(color: Colors.white70),),
                ],
              ),
              ),
            ),
              Container(
                height: 112,
                width: 112,
                child: Padding(padding: EdgeInsets.only(bottom: 20,left: 16,top: 5),child:
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                    height: 4,
                    width: 80,
                    color: Color(0xffF15223),
                  ),
                    SizedBox(height: 12),
                    Container(
                      height: 19,
                      width: 20,
                      child: Image(image: AssetImage('assets/images/car_icon.png')),
                    ),
                    SizedBox(height: 9),
                    Row(children: [
                      Text('235 ',style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('Kcal'),
                    ],),
                    SizedBox(height: 3),
                    Text('Treadmill',style: TextStyle(color: Colors.black54),),
                  ],
                ),),
              ),
              Container(
                height: 112,
                width: 112,
                child: Padding(padding: EdgeInsets.only(bottom: 20,left: 16,top: 5),child:
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 4,
                      width: 80,
                      color: Color(0xFF8A24FF),),
                    SizedBox(height: 12),
                    Container(
                      height: 19,
                      width: 20,
                      child: Image(image: AssetImage('assets/images/Path2.png')),
                    ),
                    SizedBox(height: 9),
                    Row(children: [
                      Text('432 ',style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('Kcal'),
                    ],),
                    SizedBox(height: 3),
                    Text('Rope',style: TextStyle(color: Colors.black54),),
                  ],
                ),),
              ),
          ],)
        ],
      )
        ,),
    );
  }
}
