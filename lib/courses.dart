import 'package:flutter/material.dart';
import 'package:uacadem/achievements.dart';
import 'package:uacadem/course.dart';
import 'package:uacadem/firstpage.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'package:uacadem/helpline.dart';

import 'package:uacadem/library.dart';
import 'package:uacadem/main.dart';
import 'package:uacadem/progress.dart';


class Courses extends StatefulWidget {
  const Courses({Key? key}) : super(key: key);

  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  int _CurrentIndex=0;
  final  List screens=[
    Course(),
    Library(),
    Achievements(),
    Progress(),
    Helpline(),
   FirstPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: GNav(
      curve: Curves.easeInOutCirc,
        //backgroundColor: Colors.black,

        duration: Duration(microseconds: 5),
        tabs: [
        GButton(icon:Icons.book_sharp,text: ' Courses',backgroundColor: Colors.purple,iconSize:15,active: false,
          duration: Duration(seconds: 20000),
          haptic: true,
          gap: 5,
          //curve:Curves.easeIn,
          //padding: EdgeInsets.all(0),
        ),
        GButton(icon: Icons.library_books,text: ' Library',backgroundColor: Colors.blue,iconSize: 15,
          duration: Duration(seconds: 20000),
          //padding: EdgeInsets.all(40),
        ),
        GButton(icon: Icons.wine_bar,text: ' Achievements',backgroundColor: Colors.red,iconSize: 15,
          duration: Duration(seconds: 20000),
          //padding: EdgeInsets.all(40),
        ),
        GButton(icon: Icons.dashboard,text: ' Progression',backgroundColor: Colors.green,iconSize: 15,
          duration: Duration(seconds: 20000),
          //padding: EdgeInsets.all(40),
        ),
      ],
        onTabChange: (index){
          setState(() {
            _CurrentIndex=index;
          });
        },
      ),
      body: screens[_CurrentIndex],
    );
  }
}
