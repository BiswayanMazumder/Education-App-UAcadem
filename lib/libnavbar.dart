import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:uacadem/achievements.dart';
import 'package:uacadem/course.dart';
import 'package:uacadem/firstpage.dart';
import 'package:uacadem/helpline.dart';
import 'package:uacadem/library.dart';
import 'package:uacadem/progress.dart';
class librarynavbar extends StatefulWidget {
  const librarynavbar({Key? key}) : super(key: key);

  @override
  State<librarynavbar> createState() => _librarynavbarState();
}

class _librarynavbarState extends State<librarynavbar> {
  int _CurrentIndex=1;
  final List screens=[
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
        //tabShadow: [BoxShadow(color: Colors.red.shade200.withOpacity(0.6), blurRadius:10)],
        textStyle: TextStyle(fontWeight: FontWeight.bold),
        haptic: true,
        iconSize: 30,
        // tabBackgroundColor: Colors.purple.withOpacity(0.1),
        tabActiveBorder: Border.all(color: Colors.red, width:1),
        backgroundColor: Colors.black,
        curve: Curves.easeInOutCirc,
        gap: 5,
        //rippleColor: Colors.white,
       // style:GNav(tabs: tabs),

        tabs: [
        GButton(icon:Icons.book_sharp,text: ' Courses',backgroundColor: Colors.purple,iconSize:15,active: false,
        duration: Duration(minutes: 20000),
        haptic: true,
        iconColor: Colors.white,
        hoverColor: Colors.black,

        backgroundGradient: LinearGradient(colors: [Colors.red,Colors.green]),
        shadow: [BoxShadow(color: Colors.transparent,blurRadius: 0.5)],
        //padding: EdgeInsets.all(0),
        ),
        GButton(icon: Icons.library_books,text: ' Library',backgroundColor: Colors.blue,iconSize: 15,
            duration: Duration(seconds: 20000),
            iconColor: Colors.white,
            backgroundGradient: LinearGradient(colors: [Colors.pink,Colors.white])
          //padding: EdgeInsets.all(40),

        ),
        GButton(icon: Icons.wine_bar,text: ' Achievements',backgroundColor: Colors.red,iconSize: 15,
            duration: Duration(seconds: 20000),
            iconColor: Colors.white,
            backgroundGradient: LinearGradient(colors: [Colors.lightBlueAccent,Colors.green])
          //padding: EdgeInsets.all(40),
        ),
        GButton(icon: Icons.dashboard,text: ' Progression',backgroundColor: Colors.green,iconSize: 15,
            duration: Duration(seconds: 20000),
            debug: true,
            iconColor: Colors.white,
            backgroundGradient: LinearGradient(colors: [Colors.lightGreen,Colors.white])
          //padding: EdgeInsets.all(40),
        ),
      ],
        selectedIndex: _CurrentIndex,
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
