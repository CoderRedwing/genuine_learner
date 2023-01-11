import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genuine_learner/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_screen.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool passwordVisible=false;
@override
void initState(){
  super.initState();
  passwordVisible=true;
}

  @override
  Widget build(BuildContext context) {

    List images = [
      "g.png",
      "t.png",
      "fs.png",
    ];
    return Scaffold(
      resizeToAvoidBottomInset : false,
      backgroundColor:  Colors.cyan.shade100,
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
              const CircleAvatar(

            radius: 60,

               backgroundImage: AssetImage('img/signup.png'),
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
                  "Welcome to our family",
                  style: GoogleFonts.alegreya(
                    textStyle:  TextStyle(
                      color: Colors.deepPurple.shade700,
                      fontSize: 20,

                    ),
                  ),

                ),
                const SizedBox(
                  height: 40,

                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 20,
                            spreadRadius: 3,
                            offset: Offset(1,1),
                            color: Colors.grey.withOpacity(0.2),
                          )
                        ]
                    ),
                    child: TextField(
                      maxLines: 1,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 10),
                        hintText: "Name",
                        alignLabelWithHint: false,
                          filled: true,
                        icon: Icon(Icons.people),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Colors.white,
                             width: 1,
                          ),
                        ),
                        border: OutlineInputBorder(

                          borderRadius: BorderRadius.circular(20),

                        ),
                      ),

                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 20,
                            spreadRadius: 3,
                            offset: Offset(1,1),
                            color: Colors.grey.withOpacity(0.2),
                          )
                        ]
                    ),
                    child: TextField(
                      maxLines: 1,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 10),
                        hintText: "Roll No.",
                        alignLabelWithHint: false,
                        filled: true,
                        icon: Icon(Icons.keyboard),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                        ),
                        border: OutlineInputBorder(

                          borderRadius: BorderRadius.circular(20),

                        ),
                      ),

                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 20,
                            spreadRadius: 3,
                            offset: Offset(1,1),
                            color: Colors.grey.withOpacity(0.2),
                          )
                        ]
                    ),
                    child: TextField(
                      maxLines: 1,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 10),
                        hintText: "Email",
                        alignLabelWithHint: false,
                        filled: true,
                        icon: Icon(Icons.email),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                        ),
                        border: OutlineInputBorder(

                          borderRadius: BorderRadius.circular(20),

                        ),
                      ),

                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 20,
                            spreadRadius: 3,
                            offset: Offset(1,1),
                            color: Colors.grey.withOpacity(0.2),
                          )
                        ]
                    ),
                    child: TextField(
                      maxLines: 1,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 10),
                        hintText: "Phone No.",
                        alignLabelWithHint: false,
                        filled: true,
                        icon: Icon(Icons.phone),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                        ),
                        border: OutlineInputBorder(

                          borderRadius: BorderRadius.circular(20),

                        ),
                      ),

                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
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
                        maxLines: 1,
                    obscureText: passwordVisible,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 10),
                      hintText: "Password",

                      icon: const Icon(Icons.password),
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
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: Colors.white,
                          width: 1,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: Colors.white,
                          width: 1,
                        ),
                      ),
                      border: OutlineInputBorder(

                        borderRadius: BorderRadius.circular(20),

                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),



                  Center(
                    child: Container(


                      height: 60,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Colors.blue.shade500,
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
                      child:  Center(child:
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return  const HomeScreen(

                            );
                          }));
                        },
                        child: const Text(
                          "Sign up",
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
                  height: 20,
                ),
                const SizedBox(
                  height: 25,
                ),
                Center(
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Have an account",
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
                            return  const LoginPage(

                            );
                          }));
                        },
                        child: const Text(
                          "Sign in",
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
                    width: 240,
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
