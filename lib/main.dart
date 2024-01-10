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
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
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
              // padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
              padding: const EdgeInsets.symmetric(vertical: 25.0),
              child: Image.asset(
                'assets/images/logo.png',
                width: 300,
                height: 150,
              ),
            ),
            const Text(
              'Connect, Collaborate, Thrive \n Your Campus Life Simplified ',
              style: TextStyle(
                fontSize: 22,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 50.0, // Adjust the value as needed
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewsPage()),
                );
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.black45),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                minimumSize: MaterialStateProperty.all<Size>(
                    const Size(200, 50)), // Change width and height as needed
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
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
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.black45),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                minimumSize: MaterialStateProperty.all<Size>(
                    Size(200, 50)), // Change width and height as needed
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        15.0), // Adjust border radius as desired
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
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.black45),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                minimumSize: MaterialStateProperty.all<Size>(
                    Size(200, 50)), // Change width and height as needed
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
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

class NewsPage extends StatelessWidget {
  final random = Random();

  String generateRandomSentence() {
    const letters = 'abcdefghijklmnopqrstuvwxyz';
    return List.generate(10, (index) => letters[random.nextInt(letters.length)])
        .join();
  }

  List<String> generateRandomNews() {
    return List.generate(
        10, (index) => 'News ${index + 1}: ${generateRandomSentence()}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('News'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(generateRandomNews()[index]),
          );
        },
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
