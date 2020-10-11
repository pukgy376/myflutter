import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[50],
        appBar: AppBar(
           backgroundColor: Colors.pinkAccent.shade700,
        leading: Icon(Icons.person),
        actions: [
          IconButton(icon: Icon(Icons.search) , onPressed: () {}),
          IconButton(icon: Icon(Icons.settings) , onPressed: () {}),
        ],
          title: Text('App'),
        ),
    body: Column(
      children: [
        Text('ข้อมูลการติดต่อ'),
                    
      ],
    ),
    );
  }
  }