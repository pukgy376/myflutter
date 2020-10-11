
import 'package:flutter/material.dart';
import 'package:myflutter/MainMenu.dart';
import 'package:myflutter/pages/Education.dart';
import 'package:myflutter/pages/HomePages.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:MainMenu (),
      // home: Education(),
      
    );
  }
}
class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ITM'),
        ),
        body: Center(
          child: Row(
            children: [
              Image.asset('assets/logo.jpg',width: 200,height: 200,),
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
              SizedBox(height: 5),
              Text(
                'สาขาITM',
              style: TextStyle(
                fontSize: 20,
                color: Colors.red[100],
              ),
              ),
              SizedBox(height: 5),
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
class MyLayout extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green[50],
        appBar: AppBar(
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
                    onPressed: () {},
                    child: Text('ตกลง',
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
