import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';

import 'package:flutter/material.dart';
import 'package:genuine_learner/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var Get;
   return  Scaffold(
     resizeToAvoidBottomInset : false,
     backgroundColor: Colors.greenAccent,
     body: Column(
       children:  [
         const SizedBox(
           height: 100,
         ),
         Container(
           margin: const EdgeInsets.only(left: 20, right: 20),

           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               const Text(
                 "Hello",
                 style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 70,
                   color: Colors.black,
                 ),
               ),
               const Text(
                 "Sign in into your account",
                 style: TextStyle(
                   fontSize: 30,
                   color: Colors.black54,
                 ),
               ),
               const SizedBox(
                 height: 100,
               ),
               Container(
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(30),
                   boxShadow: [
                     BoxShadow(
                       blurRadius: 10,
                       spreadRadius: 7,
                       offset: const Offset(1,1),
                       color: Colors.grey.withOpacity(0.2),
                     )
                   ]
                 ),
                 child: TextField(
                   decoration: InputDecoration(
                     hintText: "Enter your email",
                     icon: const Icon(  Icons.email),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          color: Colors.white,
                          width: 1,
                        ),
                      ),
                     enabledBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(30),
                       borderSide: const BorderSide(
                         color: Colors.white,
                         width: 1,
                       ),
                     ),
                     border: OutlineInputBorder(

                       borderRadius: BorderRadius.circular(30),

                     ),
                   ),
                 ),
               ),
               const SizedBox(
                 height: 30,
               ),
               Container(
                 decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(30),
                     boxShadow: [
                       BoxShadow(
                         blurRadius: 10,
                         spreadRadius: 7,
                         offset: Offset(1,1),
                         color: Colors.grey.withOpacity(0.2),
                       )
                     ]
                 ),
                 child: TextField(
                   decoration: InputDecoration(
                     hintText: "Enter your password",
                     icon: const Icon(  Icons.password),
                     focusedBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(30),
                       borderSide: const BorderSide(
                         color: Colors.white,
                         width: 1,
                       ),
                     ),
                     enabledBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(30),
                       borderSide: const BorderSide(
                         color: Colors.white,
                         width: 1,
                       ),
                     ),
                     border: OutlineInputBorder(

                       borderRadius: BorderRadius.circular(30),

                     ),
                   ),
                 ),
               ),
               const SizedBox(
                 height: 30,
               ),
               Row(
                 children: [
                   Expanded(child: Container(),),
                   const Text(
                     "Forgot password ?",
                     style: TextStyle(

                       fontSize: 20,
                       color: Colors.black54,
                     ),
                   ),
                 ],
               ),
               const SizedBox(
                 height: 50,
               ),
               Container(
                 
                 margin: const EdgeInsets.only(left: 70),
                 height: 60,
                 width: 400,
                 decoration: BoxDecoration(
                     color: Colors.green,
                     borderRadius: BorderRadius.circular(30),
                     boxShadow: [
                       BoxShadow(
                         blurRadius: 10,
                         spreadRadius: 7,
                         offset: const Offset(1,1),
                         color: Colors.grey.withOpacity(0.2),
                       )
                     ]
                 ),
                 child: const Center(child:
                 Text(
                     "Sign in",
                   style: TextStyle(
                     fontSize: 25,
                     fontWeight: FontWeight.bold,
                     color: Colors.black,
                   ),
                 )),
               ),
               const SizedBox(
                 height: 200,
               ),
              Center(
                child: RichText(
                    text:  const TextSpan(
                      text: "Don/t have an account",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black54,

                      ),
                      children: [
                        TextSpan(
                        text: "  Sign up",
                        style:  TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),

                        ),
                      ],
                    ),

                ),
              ),

             ],
           ),
         ),
       ],
     ),
   );

  }
}

