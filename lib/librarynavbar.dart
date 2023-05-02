import 'package:flutter/material.dart';
import 'package:uacadem/achievements.dart';
import 'package:uacadem/course.dart';
import 'package:uacadem/firstpage.dart';
import 'package:uacadem/helpline.dart';
import 'package:uacadem/library.dart';
import 'package:uacadem/progress.dart';
class LibNavbar extends StatefulWidget {
  const LibNavbar({Key? key}) : super(key: key);

  @override
  State<LibNavbar> createState() => _LibNavbarState();
}

class _LibNavbarState extends State<LibNavbar> {
  int _CurrentIndex=1;
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


        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _CurrentIndex,
          enableFeedback: true,
          elevation: 50,
          type: BottomNavigationBarType.shifting,
          mouseCursor:SystemMouseCursors.disappearing,
          //selectedItemColor: MaterialAccentColor(Colors._blueAccentPrimaryValue, swatch),
          useLegacyColorScheme: true,
          unselectedItemColor: Colors.grey.shade300,
          selectedItemColor: Colors.black,

          onTap: (index){
            setState(() {
              _CurrentIndex=index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.book),label: 'Courses',backgroundColor:Colors.purple ),
            BottomNavigationBarItem(icon: Icon(Icons.library_books),
                label:'Library',backgroundColor: Colors.blue),
            BottomNavigationBarItem(icon: Icon(Icons.wine_bar),
                label:'Alumni',backgroundColor: Colors.green),
            BottomNavigationBarItem(icon: Icon(Icons.dashboard),
                label:'Progression',backgroundColor: Colors.red),
            BottomNavigationBarItem(icon: Icon(Icons.call),
                label:'Helpline',backgroundColor: Colors.pinkAccent),

            BottomNavigationBarItem(icon: Icon(Icons.home),
                label:'Home Page',backgroundColor: Colors.purple),
          ],
        ),
      body: screens[_CurrentIndex],
    );
  }
}
