import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genuine_learner/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
        drawer:  const MyDrawer(),
      backgroundColor: Colors.greenAccent,
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,

          mouseCursor: MouseCursor.defer,
          items: const [

            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.book),label: 'Course'),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),

          ],
        ),
        appBar: AppBar(

        backgroundColor: Colors.greenAccent,
        iconTheme: const IconThemeData(
        color: Colors.blue,
        size: 35,
    ),
    ),
     body: SafeArea(
       child: Padding(
         padding: const EdgeInsets.all(25.0),
         child: Column(
           children: [
             Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Column(
         crossAxisAlignment: CrossAxisAlignment.start,
                   children: const [
                      Text('Hi, Siddhartha!',
             style:TextStyle(
             color: Colors.blue,
             fontSize:30,
              fontWeight: FontWeight.bold,
                     ) ,
                   ),
                      SizedBox(
                     height: 8,
                     ),
                      Text('4 Jan, 2023',
                style: TextStyle(
                  color:Colors.white,
                  fontSize: 25,
    ),
    ),
                   ],
                 ),
                Container(
                  decoration:  BoxDecoration(
                   color: Colors.blue,
                   borderRadius: BorderRadius.circular(15),
                    ),
                   padding: const EdgeInsets.all(12),
                  child: const Icon(
               Icons.notifications,
                    color: Colors.white,
             ),
           ),
          ],
       )  ,




     ]
         )
    )
    )
    );
  }
}

