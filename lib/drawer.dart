import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
       child: ListView(
        padding: EdgeInsets.zero,
        children: const <Widget>[
        DrawerHeader(
          padding: EdgeInsets.zero,

          decoration: BoxDecoration(
           color: Colors.greenAccent,
          ),
          child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                ),
              accountName: Text(
                  'Siddhartha Kumar',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
                ),
              ),
              accountEmail: Text(
                  'sid@123gmail.com',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                ),
              ),
            currentAccountPicture: CircleAvatar(),
          ),

        ),
          Divider(
            height: 0,
            thickness: 2,
            color: Colors.white,
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.black,
              size: 30,
            ),
            title: Text(
                'Home',
              textScaleFactor: 1.4,
              style: TextStyle(
                color: Colors.black,
              ),
            ),

          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.settings,
              color: Colors.black,
              size: 30,
            ),
            title: Text(
              'Setting',
              textScaleFactor: 1.4,
              style: TextStyle(
                color: Colors.black,
              ),
            ),

          ),
      ] ) );
  }
}

