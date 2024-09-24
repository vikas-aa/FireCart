import 'package:flutter/material.dart';

class AvailablePage extends StatelessWidget {
  const AvailablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Center(
            child: Text(
              'Available Soon...',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      
    );
  }
}
