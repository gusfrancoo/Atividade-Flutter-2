import 'package:flutter/material.dart';
import 'package:flutter_faculdade/app/controllers/navigation_controller.dart';
import 'package:get/get.dart';

import '../../app/routes/app_routes.dart';

class GlobalScaffold extends StatelessWidget {
  final Widget child;

  GlobalScaffold({super.key, required this.child});
  final NavigationController _controller = Get.find<NavigationController>();


  @override
  Widget build(BuildContext context) {
    return 
    Obx(
      () { 
        return 
          Scaffold(
            appBar: AppBar(
              title: Text(
                _controller.appBarTitle.value,
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),      
            body: child,
            bottomNavigationBar: BottomNavigationBar(

              onTap: (value) => _controller.changePage(value),
              backgroundColor: Colors.green,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white,
              items: [
                BottomNavigationBarItem(

                  activeIcon: 
                    Stack(
                      clipBehavior: Clip.none, // Garante que a linha possa ultrapassar o item
                      alignment: Alignment.center,
                      children: [
                        if(_controller.selectedIndex.value == 0) ... [
                          Positioned(
                            width: 140,
                            top: -6,
                            child: Container(
                              height: 4,
                              // width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.green[800],
                                border: Border(top: BorderSide(color: Colors.green.shade800, width: 2))
                              ),
                            ),
                          ),
                        ],
                        Icon(Icons.home, color: Colors.white),
                      ],
                    ),
                  icon: Icon(Icons.home_outlined,),
                  label: 'Home'
                  
                ),
                BottomNavigationBarItem(
                  activeIcon: 
                    Stack(
                      clipBehavior: Clip.none, // Garante que a linha possa ultrapassar o item
                      alignment: Alignment.center,
                      children: [
                        if(_controller.selectedIndex.value == 1) ... [
                          Positioned(
                            width: 140,
                            top: -6,
                            child: Container(
                              height: 4,
                              // width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.green[800],
                                border: Border(top: BorderSide(color: Colors.green.shade800, width: 2))
                              ),
                            ),
                          ),
                        ],
                        Icon(Icons.add_business_rounded, color: Colors.white),
                      ],
                  ),
                  icon: Icon(Icons.add_business_outlined),
                  label: 'Add Product'
                ),
                BottomNavigationBarItem(
                  activeIcon: 
                    Stack(
                      clipBehavior: Clip.none, // Garante que a linha possa ultrapassar o item
                      alignment: Alignment.center,
                      children: [
                        if(_controller.selectedIndex.value == 2) ... [
                          Positioned(
                            width: 140,
                            top: -6,
                            child: Container(
                              height: 4,
                              // width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.green[800],
                                border: Border(top: BorderSide(color: Colors.green.shade800, width: 2))
                              ),
                            ),
                          ),
                        ],
                        Icon(Icons.list_rounded, color: Colors.white),
                      ],
                  ),
                  icon: Icon(Icons.format_list_bulleted_rounded),
                  label: 'List Products'
                ),
              ],
            )
          );
      }
    );
    
  }
}
