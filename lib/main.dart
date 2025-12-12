import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

void main() {
  runApp(const MyApp());
}
//test123
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title: const Text('app title')),
        body: Column(
          children: [
            const Center(

            ),
            Icon(Icons.add_circle),
            Container(
              width: 200,
              height: 50,
              color: Colors.greenAccent,
              child: Text(
              'Hello, Flutter\n999!',
              style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(width: 100, height: 50),
            Expanded(child: Container(width: 150, decoration:
              BoxDecoration(
                  borderRadius: BorderRadius.circular(20)
                ,color: Colors.blue,
              ),
              child: SizedBox(width: 50, height: 50,
              child: Image(image:AssetImage('Images/image1.jpg')),
            ),
              )
            ),
            SizedBox(width: 100, height: 50),
            Container(width: 200, height: 100, color: Colors.greenAccent,child: Text(
              'Hello, Flutter\n999!',
              style: TextStyle(fontSize: 20),
            ),),


          ],
        ),
      ),
    );
  }
}
