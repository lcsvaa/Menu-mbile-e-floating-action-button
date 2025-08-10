import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) => Container(
        color: Colors.red,
        child: const Center(
          child: Text(
            "Teste",
            style: TextStyle(fontSize: 60, color: Colors.white),
          ),
        ),
      );
}
