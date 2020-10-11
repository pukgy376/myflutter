import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
        body: Center(
          child: Column(
            children: [
              Image.asset('assets/logo.jpg',width: 50,height: 20,),
              Text('ญาณิศา พลเงิน',
              style: TextStyle(
                fontSize: 30,
                color: Colors.pinkAccent[100],
                ),
                ),
                SizedBox(height: 5),
              Text(
                '633170090101',
              style: TextStyle(
                fontSize: 20,
                color: Colors.red[100],
              )
              ),
              SizedBox(height: 20),
              Text(
                'สาขาITM',
              style: TextStyle(
                fontSize: 20,
                color: Colors.red[100],
              ),
              ),
              SizedBox(height: 20),
             Text('คณะเทคโนโลยีสารสนเทศ',
              style: TextStyle(
                fontSize: 20,
                color: Colors.pinkAccent[100],
                ),
                ), 
                SizedBox(height: 5),
                Text('มหาวิทยาลัยราชภัฎมหาสารคาม',
              style: TextStyle(
                fontSize: 20,
                color: Colors.pinkAccent[100],
                ),
                ),
                SizedBox(height: 5),
              Icon(
                Icons.perm_phone_msg,
                size: 100,
                color: Colors.yellow,
              ),
               
            ],
          ),
        ),
      ),
    );
  }
}