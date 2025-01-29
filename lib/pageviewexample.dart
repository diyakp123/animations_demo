import 'package:flutter/material.dart';

class Pageviewexample extends StatefulWidget {
  const Pageviewexample({super.key});

  @override
  State<Pageviewexample> createState() => _PageviewexampleState();
}

class _PageviewexampleState extends State<Pageviewexample> {

  PageController _pageviewcontroller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageviewcontroller,
        scrollDirection: Axis.vertical,
        children: [
            Center(
              child: Text('First Page',),
            ),
            Center(
              child: Text("Second Page"),
      
            ),
            Center(child: Text("Third page"),)
        ],
        
      ),

    );
  }
}