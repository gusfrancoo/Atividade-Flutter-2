import 'package:flutter/material.dart';
import 'package:flutter_faculdade/utils/widgets/global_scaffold.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  
  @override
  Widget build(Object context) {
    return Column(
      children: [
        Text(
          'Teste 1',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black
          ),
        )
      ],
    );
  }
  
}