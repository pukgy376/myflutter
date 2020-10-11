import 'package:flutter/material.dart';
import 'package:myflutter/pages/Profile.dart';

  class HomePages extends StatelessWidget {

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
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Image.asset(
                 'assets/logo.jpg',
                 width: 300,
                 height: 300,
                 ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Icon(Icons.star, color: Colors.red,),
               Icon(Icons.star, color: Colors.black,),
               Icon(Icons.star, color: Colors.white,),
               Icon(Icons.star, color: Colors.yellow,),
               Icon(Icons.star, color: Colors.brown,),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //สร้างปุ่ม
                SizedBox(
                  width: 100,
                  height: 50, 
                  child: RaisedButton(
                    onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Profile()));
                    },
                    child: Text(
                      'ตกลง',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      ),
                    ),
                    color: Colors.purple[200],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                ),
                ),
                SizedBox(width: 30,),
                    SizedBox(
                  width: 100,
                  height: 50, 
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text('ยกเลิก',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      ),
                    ),
                    color: Colors.purple[200],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                ),
                ),
                
                  
                 
                  
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}
