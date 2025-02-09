// user_detail_screen.dart (User Detail Screen)
import 'package:flutter/material.dart';
import 'models/user_model.dart';

class UserDetailScreen extends StatelessWidget {
  final User user;

  const UserDetailScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(user.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('ID: ${user.id}', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                Text('Name: ${user.name}', style: const TextStyle(fontSize: 18)),
                const SizedBox(height: 10),
                Text('Email: ${user.email}', style: const TextStyle(fontSize: 18)),
                const SizedBox(height: 10),
                Text('Phone: ${user.phone}', style: const TextStyle(fontSize: 18)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
