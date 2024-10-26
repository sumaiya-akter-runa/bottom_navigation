

import 'package:bottom_navigation/camera.dart';
import 'package:bottom_navigation/contacts.dart';
import 'package:bottom_navigation/settings.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  int selectedIndex=0;
  void onItemTapped(int index){
    setState(() {
      selectedIndex=index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent ,
        title: Text("Bottom Navigation"),
      ),
      body: Center(
        child:pages.elementAt(selectedIndex) ,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.deepPurple
          ),
          BottomNavigationBarItem(icon: Icon(Icons.camera),
            label: "Camera",
            backgroundColor: Colors.purple
          ),
          BottomNavigationBarItem(icon: Icon(Icons.settings),
            label: "Settings",
            backgroundColor: Colors.deepPurple
          ),
        ],

        type: BottomNavigationBarType.shifting,
        currentIndex: selectedIndex,
        selectedItemColor: Colors.deepPurpleAccent,
        iconSize: 40,
        onTap: onItemTapped,

      ),
    );
  }

  List<Widget> pages=<Widget>[
    Contacts(),
    Camera(),
    Settings()
  ];


}
