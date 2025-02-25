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
      ),      
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) => print(value),
        backgroundColor: Colors.green,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home, ),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_business_outlined),
            label: 'Add Product'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_rounded),
            label: 'List Products'
          ),
        ],
      )
    );
    
  }
}
