import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String networkImageUrl =
        'https://img.freepik.com/free-vector/blue-circle-with-white-user_78370-4707.jpg';

    return Scaffold(
      appBar: AppBar(title: Text("Profile Card")),
      body: Center(
        child: Card(
          elevation: 5,
          margin: EdgeInsets.all(16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Local image
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/profile.png'),
                ),
                SizedBox(height: 16),

                // Name
                Text(
                  "Shouq Albdrani",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),

                // Email
                Text(
                  "ShouqAlbdrani@Gmail.com",
                  style: TextStyle(color: Colors.grey[700]),
                ),
                SizedBox(height: 16),

                // About Me
                Text(
                  "Android Developer",
                  style: TextStyle(color: Colors.grey[700]),
                ),
                SizedBox(height: 16),

                // Network Image preview
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    networkImageUrl,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
