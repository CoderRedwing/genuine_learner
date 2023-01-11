


import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:genuine_learner/color.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      
      body: Stack(
        


        children: <Widget>[Container(

          height: size.height*.45,
          decoration: const BoxDecoration(
            color:Color(0xFFFFCC80),
            
          ),

        ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 80),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Welcome \nStudents",style: Theme.of(context).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.w900),),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 40),
                    padding: const EdgeInsets.symmetric(horizontal:30,vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(29.5),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        icon: Icon(Icons.search),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Expanded(

                    child: GridView.count(
                        crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: const <Widget>[
                        CatagoryCard(
                          svgSrc: "img/boom.svg",
                          title: "hlo how",
                        ),
                        CatagoryCard(
                          svgSrc: "img/boom.svg",
                          title: "hlo how",
                        ),
                        CatagoryCard(
                          svgSrc: "img/boom.svg",
                          title: "hlo how",
                        ),
                        CatagoryCard(
                          svgSrc: "img/boom.svg",
                          title: "hlo how",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
        ],
      ),
    );
  }
}

class CatagoryCard extends StatelessWidget {
  final String svgSrc;
  final String title;
  const CatagoryCard({
    Key? key, required this.svgSrc, required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

    decoration: BoxDecoration(color: Colors.white,
    borderRadius: BorderRadius.circular(13),
      boxShadow: const [BoxShadow(
        offset: Offset(0,15),
        blurRadius: 17,
        spreadRadius: -23,
        color: kShadowColor,
      ),
                  ]    ),
         child: Material(
           color: Colors.transparent,
          child: InkWell(
            onTap: (){},

            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                 children: <Widget>[
              const Spacer(),
              SvgPicture.asset(svgSrc),
              const Spacer(),
              Text(title,
                textAlign: TextAlign.center,

                style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 15),
              ),
        ],
      ),
            ),
          ),
    ),
                      );
  }
}

