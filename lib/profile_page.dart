import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(
                      'assets/images/profile_pic.png'), // Updated image path
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Navigate to the change picture page
                        // You can implement the navigation logic here
                      },
                      child: Text('Change Profile Picture'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Implement logic to delete the picture
                      },
                      child: Text('Delete Picture'),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16),
            // Text input for username
            Text('Username:'),
            SizedBox(
              width: 250,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your username',
                ),
              ),
            ),
            SizedBox(height: 8),
            // Text input for password
            Text('Password:'),
            SizedBox(
              width: 250,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                ),
                obscureText: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
