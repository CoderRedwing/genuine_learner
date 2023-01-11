import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:genuine_learner/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:genuine_learner/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passwordVisible=false;
  @override
  void initState(){
    super.initState();
    passwordVisible=true;
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;
    var Get;
    List images = [
      "g.png",
      "t.png",
      "fs.png",
    ];
   return  Scaffold(
     resizeToAvoidBottomInset : false,
     backgroundColor: Colors.cyan.shade100,
     body: Column(
       children:  [
         const SizedBox(
           height: 80,
         ),
         Container(
           margin: const EdgeInsets.only(left: 20, right: 20),

           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [


                     Text(
                     "Hello",
                     style: GoogleFonts.alegreya(
                       textStyle: const TextStyle(
                         color: Colors.black,
                         fontSize: 50,
                         fontWeight: FontWeight.bold,
                       ),
                     ),

                   ),
               Text(
                 "Sign into your account",
                 style: GoogleFonts.alegreya(
                   textStyle:  TextStyle(
                     color: Colors.deepPurple.shade700,
                     fontSize: 20,

                   ),
                 ),

               ),
                   const SizedBox(
                     height: 70,
                   ),

                   Container(
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(25),
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
                          filled: true,

                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: const BorderSide(
                              color: Colors.white,
                              width: 1,
                            ),
                          ),
                         enabledBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(25),
                           borderSide: const BorderSide(
                             color: Colors.white,
                             width: 1,
                           ),
                         ),
                         border: OutlineInputBorder(

                           borderRadius: BorderRadius.circular(25),

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
                         borderRadius: BorderRadius.circular(25),
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
                       obscureText: passwordVisible,
                       decoration: InputDecoration(
                         hintText: "Enter your password",
                         icon: const Icon(  Icons.password),
                         suffixIcon: IconButton(
                           icon: Icon(passwordVisible? Icons.visibility
                               :Icons.visibility_off),
                           onPressed: (){
                             setState((){
                               passwordVisible = !passwordVisible;
                             },
                             );
                           },
                         ),
                         alignLabelWithHint: false,
                         filled: true,
                         focusedBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(25),
                           borderSide: const BorderSide(
                             color: Colors.white,
                             width: 1,
                           ),
                         ),
                         enabledBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(25),
                           borderSide: const BorderSide(
                             color: Colors.white,
                             width: 1,
                           ),
                         ),
                         border: OutlineInputBorder(

                           borderRadius: BorderRadius.circular(25),

                         ),
                       ),
                     ),
                   ),
                   const SizedBox(
                     height: 20,
                   ),
                   Row(
                     children: [
                       Expanded(child: Container(),),
                       const Text(
                         "Forgot password?",
                         style: TextStyle(

                           fontSize: 15,
                           color: Colors.blueAccent,
                         ),
                       ),
                     ],
                   ),
                   const SizedBox(
                     height: 40,
                   ),
                   Center(
                     child: Container(


                       height: 60,
                       width: 200,
                       decoration: BoxDecoration(
                           color: Colors.blue.shade500,
                           borderRadius: BorderRadius.circular(25),
                           boxShadow: [
                             BoxShadow(
                               blurRadius: 10,
                               spreadRadius: 7,
                               offset: const Offset(1,1),
                               color: Colors.grey.withOpacity(0.2),
                             )
                           ]
                       ),
                       child:  Center(child:
                       InkWell(
                         onTap: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context) {
                             return  const HomeScreen(

                             );
                           }));
                         },
                         child: const Text(
                             "Sign in",
                           style: TextStyle(
                             fontSize: 25,
                             fontWeight: FontWeight.bold,
                             color: Colors.white,
                           ),
                         ),
                       )),
                     ),
                   ),
                   const SizedBox(
                     height: 80,
                   ),
               Center(
                 child: Container(
                   child: Wrap(

                     children: List<Widget>.generate(
                         3, (index){
                       return Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: CircleAvatar(
                           radius: 30,
                           backgroundColor: Colors.cyan.shade100,
                           child: CircleAvatar(
                             radius: 25,
                             backgroundColor: Colors.white,
                             backgroundImage: AssetImage(
                                 "img/"+images[index]
                             ),
                           ),
                         ),
                       );
                     }
                     ),
                   ),
                 ),
               ),
               const SizedBox(
                 height: 25,
               ),
               Center(
                 child: Row(mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     const Text(
                         "Don't have account",
                         style: TextStyle(

                           fontSize: 20,
                           color: Colors.blueAccent,
                         ),
                       ),

                     const SizedBox(
                       width: 8,
                     ),
                      InkWell(

                        onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return  const SignUpPage(

                          );
                        }));
                        },
                        child: const Text(
                           "Sign up",
                           style: TextStyle(
                              fontWeight: FontWeight.bold,
                             fontSize: 25,
                             color: Colors.blueAccent,
                           ),

                         ),
                      ),
                   ],

                 ),
               ),

               Center(
                 child: Container(
                   height: 2,
                   width: 270,
                   decoration: const BoxDecoration(
                     color: Colors.grey,
                   ),
                 ),
               )

             ],
           ),
         ),
       ],
     ),
   );

  }
}

