

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genuine_learner/home.dart';
import 'package:genuine_learner/home_page.dart';
import 'package:genuine_learner/notification.dart';
import 'package:genuine_learner/profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List pages=[
    const Home(),
    const HomePage(),
      NotificationPage(),
    const Profile(),
    
  ];

  int current_index=0;
  void ontap(int index){
    setState(() {
      current_index=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: pages[current_index],
      bottomNavigationBar: BottomNavigationBar(
       iconSize: 35,
        selectedFontSize: 20,

        showSelectedLabels: true,
        currentIndex:current_index,
        onTap: ontap,

        items:  const [
          BottomNavigationBarItem(icon: Icon(Icons.home,size: 35,),label: 'Home',backgroundColor: Colors.blue),
          BottomNavigationBarItem(icon: Icon(Icons.dashboard,size: 35,),label: 'Dashboard',backgroundColor: Colors.blue),
          BottomNavigationBarItem(icon: Icon(Icons.notifications,size: 35,),label: 'Notification',backgroundColor: Colors.blue),
          BottomNavigationBarItem(icon: Icon(Icons.person,size: 35,),label: 'Profile',backgroundColor: Colors.blue),
        ],

      ),

    );
  }
}

