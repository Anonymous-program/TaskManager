import 'package:flutter/material.dart';

import 'cancelTaskScreen.dart';
import 'completedTaskScreen.dart';
import 'inprogressTaskScreen.dart';
import 'newTaskScreen.dart';

class BottonNavBaseScreen extends StatefulWidget {
  const BottonNavBaseScreen({Key? key}) : super(key: key);

  @override
  State<BottonNavBaseScreen> createState() => _BottonNavBaseScreenState();
}

class _BottonNavBaseScreenState extends State<BottonNavBaseScreen> {
  int _seletedScreenIndex=0;
  final List<Widget> _screens = const [
    NewTaskScreen(),
    InprogressTaskScreen(),
    CanaelTaskScreen(),
    CompletedTaskScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_seletedScreenIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _seletedScreenIndex,
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: const TextStyle(
          color: Colors.grey,
        ),
        showSelectedLabels: true,
        selectedItemColor: Colors.green,
        onTap: (int index){
          _seletedScreenIndex=index;
          if(mounted){
            setState(() {

            });
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: 'New'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_tree), label: 'In Progress'),
          BottomNavigationBarItem(
              icon: Icon(Icons.cancel_outlined), label: 'Cancel'),
          BottomNavigationBarItem(
              icon: Icon(Icons.done_all), label: 'Completed'),
        ],
      ),
    );
  }
}
