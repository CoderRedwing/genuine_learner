import 'dart:convert';
import 'package:genuine_learner/model/Bookmodel.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomePage> {
  List<Bookmodel> postList =[];
  Future<List<Bookmodel>> getPostApi() async{
    final resposne = await http.get(Uri.parse('http://18.183.73.25:8000/api/get-issued-books'));
    var data = jsonDecode(resposne.body.toString());

    if(resposne.statusCode==200) {
      postList.clear();
      for(Map i in data) {
        postList.add(Bookmodel.fromJson(i));
      }
      return postList;

    }else{
      return postList;

    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blue.shade400,
        title: const Text("Student Book Data"),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
                future: getPostApi(),
                builder:(context, snapshot) {
                  if (!snapshot.hasData) {
                    return const Text("Loading");
                  } else {
                    return ListView.builder(
                        itemCount: postList.length,
                        itemBuilder: (context, index) {

                          return Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      postList[index].name.toString()),
                                  const SizedBox(height: 5,),
                                  Text(postList[index].branch.toString()),
                                  const SizedBox(height: 5,),
                                  Text(postList[index].session.toString()),
                                  const SizedBox(height: 5,),
                                  Text(postList[index].book.toString()),
                                  const SizedBox(height: 5,),

                                  Text(postList[index].bookId.toString()),
                                  const SizedBox(height: 5,),
                                  Text(postList[index].issueDate.toString()),
                                  const SizedBox(height: 5,),
                                ],),
                            ),
                          );
                        });
                  }
                }),
          )
        ],
      ),
    );
  }
}

