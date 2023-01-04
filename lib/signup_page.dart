import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List images = [
      "g.png",
      "t.png",
      "fs.png",
    ];
    return Scaffold(
      resizeToAvoidBottomInset : false,
      backgroundColor: Colors.greenAccent,
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
             const CircleAvatar(
            radius: 60,
            backgroundColor: Colors.white,

            backgroundImage: AssetImage('img/log.png'),

          ),

          Container(

            margin: const EdgeInsets.only(left: 20, right: 20),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Sign up",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 70,
                    color: Colors.black,
                  ),
                ),
                const Text(
                  "Welcome to our family ",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                Center(
                  child: Container(
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
                        hintText: "Email",
                        alignLabelWithHint: true,
                        icon: const Icon(Icons.email),
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

                      hintText: "Password",
                      icon: const Icon(Icons.password),
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
                            offset: Offset(1,1),
                            color: Colors.grey.withOpacity(0.2),
                          )
                        ]
                    ),
                    child: const Center(child:
                    Text(
                      "Sign up",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    )),
                  ),

                const SizedBox(
                  height: 140,
                ),
                Center(
                  child: RichText(
                    text: const TextSpan(
                        text: "Sign up using one of the following methods",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black54,

                        ),
                        children: [

                          TextSpan(
                              text: "  Sign ",

                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              )
                          ),
                        ]
                    ),

                  ),
                ),
                Center(
                  child: Container(
                    child: Wrap(

                      children: List<Widget>.generate(
                          3, (index){
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: 45,
                                backgroundColor: Colors.greenAccent,
                                child: CircleAvatar(
                                  radius: 40,
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
                )

              ],
            ),
          ),
        ],
      ),
    );
  }
}
