import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey, // Change the app bar color as desired
        title: Text(''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: Image.asset(
                'assets/images/logo.png',
                width: 300,
                height: 150,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print('News');
              },
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all<Size>(
                    Size(200, 50)), // Change width and height as needed
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: const BorderSide(color: Colors.grey, width: 5.0),
                  ),
                ),
              ),
              child: Text('News'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print('Bulletin');
              },
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all<Size>(
                    Size(200, 50)), // Change width and height as needed
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        15.0), // Adjust border radius as desired
                    side: const BorderSide(color: Colors.grey, width: 5.0),
                  ),
                ),
              ),
              child: Text('Bulletin'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print('Community');
              },
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all<Size>(
                    Size(200, 50)), // Change width and height as needed
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: const BorderSide(color: Colors.grey, width: 5.0),
                  ),
                ),
              ),
              child: Text('Community'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                print('Homepage');
              },
              icon: Icon(Icons.home),
            ),
            IconButton(
              onPressed: () {
                print('Network');
              },
              icon: Icon(Icons.people),
            ),
            IconButton(
              onPressed: () {
                print('Post');
              },
              icon: Icon(Icons.add),
            ),
            IconButton(
              onPressed: () {
                print('Notifications');
              },
              icon: Icon(Icons.notifications),
            ),
          ],
        ),
      ),
    );
  }
}
