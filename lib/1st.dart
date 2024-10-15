import 'package:flutter/material.dart';
import 'package:training/2nd.dart';


class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
      ),
      body: ElevatedButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder:(context) => SecondScreen(),));
      }, child: Text("Go to Second Screen")),
    );
  }
}