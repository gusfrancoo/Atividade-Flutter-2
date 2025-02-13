import 'package:flutter/material.dart';
import 'package:flutter_faculdade/utils/global_scaffold.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  
  @override
  Widget build(Object context) {
    return GlobalScaffold(
      child: Column(
        children: [
          Text(
            'TESSSSSTEEEEEE',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black
            ),
          )
        ],
      ),
    );
  }
  
}