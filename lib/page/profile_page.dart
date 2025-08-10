import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) => Container(
        color: const Color.fromARGB(255, 243, 33, 163),
        child: const Center(
          child: Text(
            "Foi?",
            style: TextStyle(fontSize: 60, color: Colors.white),
          ),
        ),
      );
}
