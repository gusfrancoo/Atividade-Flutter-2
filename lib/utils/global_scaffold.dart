import 'package:flutter/material.dart';

class GlobalScaffold extends StatelessWidget {
  final Widget child;

  const GlobalScaffold({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'teste',
          style: TextStyle(
            color: Colors.white
          ),
        ),
        backgroundColor: Colors.black,
      ),      
      body: child,
    );
  }
}
