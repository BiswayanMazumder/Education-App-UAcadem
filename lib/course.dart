import 'package:flutter/material.dart';
import 'package:uacadem/c.dart';
import 'package:uacadem/java.dart';
import 'package:uacadem/main.dart';
import 'package:uacadem/pythoncourse.dart';
import 'package:uacadem/reactnative.dart';
import 'package:google_fonts/google_fonts.dart';
class Course extends StatefulWidget {
  const Course({Key? key}) : super(key: key);

  @override
  State<Course> createState() => _CourseState();
}

class _CourseState extends State<Course> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 20,
        elevation: 50,
        shadowColor: Colors.red,
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        title: Text('UAcademy Courses Page',style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          //decoration: TextDecoration.underline
        ),),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyApp()),
            );
          },
              icon: Icon(Icons.logout,color: Colors.black,))
        ],
        //shape: CircleBorder(side: BorderSide(color: Colors.black)),
      ),
      body:
      ListView(
        children: [
          //screens[_currentIndex],

          Container(
            decoration: BoxDecoration(

              // image: DecorationImage(image: AssetImage('assets/images/python (1).png')),
              //border: Border.all(color: Colors.yellow,width:5),
              //gradient: SweepGradient(colors: [Colors.pink.shade300,Colors.white,Colors.red.shade200,Colors.yellow])
            ),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(10)),
              Text('Select Your Desired Courses And Get Started',style:
            GoogleFonts.arsenal(textStyle: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              letterSpacing:1,
              wordSpacing: 1
            )
              )
              ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  reverse: true,
                  primary: false,
                  physics: NeverScrollableScrollPhysics(),
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.all(20)),
                      Divider(
                        color: Colors.blue[900],
                        height: 10,
                        thickness:3,
                        indent: 100,
                        endIndent:100,
                      ),
                      Padding(padding: EdgeInsets.all(20)),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const PythonCourse()),
                          );
                        },
                        child: Image(image: AssetImage('assets/images/python.png'),fit: BoxFit.fill,width:250),
                      ),
                      Text('Python Crash Course',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black

                      ),),
                      Padding(padding: EdgeInsets.all(20)),
                      Divider(
                        color: Colors.blue[900],
                        height: 10,
                        thickness:3,
                        indent: 100,
                        endIndent:100,
                      ),
                      Padding(padding: EdgeInsets.all(20)),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Javacourse()),
                          );
                        },
                        child: Image(image: AssetImage('assets/images/java1-removebg-preview.png'),width: 300,),
                      ),
                      Text('Java Crash Course',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black

                      ),),
                      Padding(padding: EdgeInsets.all(20)),
                      Divider(
                        color: Colors.blue[900],
                        height: 10,
                        thickness:3,
                        indent: 100,
                        endIndent:100,
                      ),
                      Padding(padding: EdgeInsets.all(20)),
                      //Padding(padding: EdgeInsets.all(20)),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Reactnative()),
                          );
                        },
                        child: Image(image: AssetImage('assets/images/react native.png'),width: 250,),
                      ),
                      Padding(padding: EdgeInsets.all(10)),
                      Text('React Native Crash Course',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20,

                      ),),
                      Padding(padding: EdgeInsets.all(20)),
                      Divider(
                        color: Colors.blue[900],
                        height: 10,
                        thickness:3,
                        indent: 100,
                        endIndent:100,
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Ccourse()),
                          );
                        },
                        child: Image(image: AssetImage('assets/images/c#.png'),width: 250,),
                      ),
                      Text('C# Crash Course',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black

                      ),),
                      Padding(padding: EdgeInsets.all(20)),
                      Divider(
                        color: Colors.blue[900],
                        height: 10,
                        thickness:3,
                        indent: 100,
                        endIndent:100,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
