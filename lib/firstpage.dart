

import 'package:flutter/material.dart';
import 'package:uacadem/achievements.dart';
import 'package:uacadem/achievernavbar.dart';
import 'package:uacadem/alumninavbar.dart';
import 'package:uacadem/courses.dart';
import 'package:uacadem/helpline.dart';
import 'package:uacadem/libnavbar.dart';
import 'package:uacadem/library.dart';
import 'package:uacadem/librarynavbar.dart';
import 'package:uacadem/main.dart';
import 'package:uacadem/progile.dart';
import 'package:uacadem/progress.dart';
import 'package:google_fonts/google_fonts.dart';
class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List coursenames=[
    'Python',
    'Java',
    'C#',
    'Java Script',
    'React Native'
  ];
  List newcoursenames=[
    'C++',
    'Flutter',
    'Dart',
    'HTML',
    'CSS'
  ];
  List<Image> newcourseimages=[
    Image(image: AssetImage('assets/images/c++.png')),
    Image(image: AssetImage('assets/images/flutter.png')),
    Image(image: AssetImage('assets/images/dart.png')),
    Image(image: AssetImage('assets/images/html.png')),
    Image(image: AssetImage('assets/images/css.jpg')),
  ];
  List<Image> courseimages=[
    Image(image: AssetImage('assets/images/python.png'),fit: BoxFit.cover,),
    Image(image: AssetImage('assets/images/java1-removebg-preview.png'),),
    Image(image: AssetImage('assets/images/c#.png')),
    Image(image: AssetImage('assets/images/js.png')),
    Image(image: AssetImage('assets/images/react native.png')),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: 300,
                width: 700,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(80))
                ),
                child:  Column(
                  children: [
                    Align(
                        alignment: Alignment.topRight,
                        child:ElevatedButton(onPressed:(){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Profile()),
                          );
                        },
                            style: ButtonStyle(
                                overlayColor: MaterialStatePropertyAll(Colors.transparent),
                                foregroundColor: MaterialStatePropertyAll(Colors.transparent),
                                shadowColor: MaterialStatePropertyAll(Colors.transparent),
                                backgroundColor: MaterialStatePropertyAll(Colors.green),
                                elevation: MaterialStatePropertyAll(0)
                            ),
                            child:Row(
                              children: [
                                SizedBox(width: 270,),
                                CircleAvatar(foregroundImage: AssetImage('assets/images/gentleman.jpg'),),
                                IconButton(onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const HomePage()),
                                  );
                                }, icon: Icon(Icons.logout),color: Colors.black,)
                              ],
                            ))
                    ),
                    
                    Padding(padding: EdgeInsets.all(3)),
                    Align(
                      alignment: Alignment.topLeft,
                      child:  Text('Hi Biswayan\nWelcome Back!',style: GoogleFonts.aboreto(textStyle: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          letterSpacing:1,
                          wordSpacing: 1
                      )
                      )
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(' Welcome To Your Course DashBoard',style: GoogleFonts.arsenal(textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          letterSpacing:1,
                          wordSpacing: 1
                      )
                      )
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('One Stop Education for all Studies',style: GoogleFonts.adamina(textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w200,
                          letterSpacing:1,
                          wordSpacing: 1
                      )
                      )),
                    )
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(15)),
              Column(
                children: [
                  Row(
                    children: [
                      ElevatedButton.icon(onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Courses()),
                        );
                      },
                          style: ButtonStyle(
                              foregroundColor: MaterialStatePropertyAll(Colors.transparent),
                              backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                              shadowColor: MaterialStatePropertyAll(Colors.purple),
                              elevation: MaterialStatePropertyAll(0)
                          ),
                          icon:Icon(Icons.home,size: 40,color: Colors.green[900],fill: 1),
                          label:Text('Courses',style: TextStyle(color: Colors.black),)),
                      ElevatedButton.icon(onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const librarynavbar()),
                        );
                        },
                          style: ButtonStyle(
                              foregroundColor: MaterialStatePropertyAll(Colors.transparent),
                              backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                              shadowColor: MaterialStatePropertyAll(Colors.purple),
                              elevation: MaterialStatePropertyAll(0)
                          ),
                          icon:Icon(Icons.library_books_rounded,size: 40,color: Colors.yellow[900],fill: 1),
                          label:Text('Library',style: TextStyle(color: Colors.black),)),
                      ElevatedButton.icon(onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Achievernavbar()),
                        );
                      },
                          style: ButtonStyle(
                              foregroundColor: MaterialStatePropertyAll(Colors.transparent),
                              backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                              shadowColor: MaterialStatePropertyAll(Colors.purple),
                              elevation: MaterialStatePropertyAll(0)
                          ),
                          icon: Icon(Icons.wine_bar,size: 40,color: Colors.blue,fill: 1),
                          label:Text('Alumni',style: TextStyle(color: Colors.black),))
                      // ElevatedButton.icon(onPressed: (){
                      //
                      // },
                      //     style: ButtonStyle(
                      //         foregroundColor: MaterialStatePropertyAll(Colors.transparent),
                      //         backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                      //         shadowColor: MaterialStatePropertyAll(Colors.purple),
                      //         elevation: MaterialStatePropertyAll(0)
                      //     ),
                      //     icon:Icon(Icons.calendar_month_outlined,size: 40,color: Colors.deepPurpleAccent,fill: 1),
                      //     label:Text('Exam Date',style: TextStyle(color: Colors.black),))
                    ],
                  ),
                  Column(
                    children: [
                      Padding(padding: EdgeInsets.all(20)),
                      Row(
                        children: [
                          ElevatedButton.icon(onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const AlumniNavBar()),
                            );
                          },
                              style: ButtonStyle(
                                  foregroundColor: MaterialStatePropertyAll(Colors.transparent),
                                  backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                                  shadowColor: MaterialStatePropertyAll(Colors.purple),
                                  elevation: MaterialStatePropertyAll(0)
                              ),
                              icon:Icon(Icons.dashboard,size: 40,color: Colors.red,fill: 1),
                              label:Text('Progression',style: TextStyle(color: Colors.black),)),
                          ElevatedButton.icon(onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Helpline()),
                            );
                          },
                              style: ButtonStyle(
                                  foregroundColor: MaterialStatePropertyAll(Colors.transparent),
                                  backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                                  shadowColor: MaterialStatePropertyAll(Colors.purple),
                                  elevation: MaterialStatePropertyAll(0)
                              ),
                              icon:Icon(Icons.call,size: 40,color: Colors.blue,fill: 1),
                              label:Text('Helpline',style: TextStyle(color: Colors.black),)),
                          ElevatedButton.icon(onPressed: (){
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => const Helpline()),
                            // );
                          },
                              style: ButtonStyle(
                                  foregroundColor: MaterialStatePropertyAll(Colors.transparent),
                                  backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                                  shadowColor: MaterialStatePropertyAll(Colors.purple),
                                  elevation: MaterialStatePropertyAll(0)
                              ),
                              icon:Icon(Icons.newspaper_rounded,size: 35,color: Colors.purple,fill: 1),
                              label:Text('News',style: TextStyle(color: Colors.black,fontSize: 12),)),

                            ],
                          ),

                      Padding(padding: EdgeInsets.all(20)),
                      Divider(
                        color: Colors.purple[700],
                        height: 10,
                        thickness:3,
                        indent: 100,
                        endIndent:100,
                      )
                    ],
                  )
                ],
              ),
              Padding(padding: EdgeInsets.all(30)),
              Text('Courses We Are Currently Offering',style:
              GoogleFonts.adamina(textStyle: TextStyle(
                  fontSize: 40,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  letterSpacing:3,
                  wordSpacing: 3
              )
              )),
              Padding(padding: EdgeInsets.all(20)),
              GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
              childAspectRatio: (MediaQuery.of(context).size.height-50-25)/(4*240),
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  ),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: coursenames.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: (){},
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      decoration: BoxDecoration(
                        color:Color(0xFFFF5F3FF),
                        border: Border.all(color: Colors.black,
                        style:BorderStyle.solid ,
                        width: 0.8),
                        //gradient: LinearGradient(colors: [Colors.green,Colors.black]),
                        borderRadius: BorderRadius.circular(40)
                      ),
                      child: Column(
                        children: [Padding(padding: EdgeInsets.all(10),
                        child: courseimages[index]
                        ),
                          SizedBox(
                            height: 10,
                          ),
                          Column(
                            children: [
                              Text(coursenames[index],style: TextStyle(
                                fontWeight: FontWeight.bold
                              ),),



                            ],
                          )
                        ],
                      ),


                    ),

                  );
                },
          ),
              Padding(padding: EdgeInsets.all(20)),
              Divider(
                color: Colors.blue[700],
                height: 10,
                thickness:3,
                indent: 100,
                endIndent:100,
              ),
              Padding(padding: EdgeInsets.all(30)),
              Text('Courses We Will Be Offering In Future',style:
              GoogleFonts.adamina(textStyle: TextStyle(
                  fontSize: 40,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  letterSpacing:3,
                  wordSpacing: 3
              )
              )),
              Padding(padding: EdgeInsets.all(20)),
              GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                childAspectRatio: (MediaQuery.of(context).size.height-50-25)/(4*240),
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: coursenames.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: (){},
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal:20,vertical:10),
                      decoration: BoxDecoration(
                          color:Color(0xFFFF5F3FF),
                          border: Border.all(color: Colors.black,
                              style:BorderStyle.solid ,
                              width: 0.8),
                          //gradient: LinearGradient(colors: [Colors.green,Colors.black]),
                          borderRadius: BorderRadius.circular(40)
                      ),
                      child: Column(
                        children: [Padding(padding: EdgeInsets.all(10),
                            child: newcourseimages[index]
                        ),
                          SizedBox(
                            height: 10,
                          ),
                          Column(
                            children: [
                              Padding(padding: EdgeInsets.all(10)),
                              Text(newcoursenames[index],style: TextStyle(
                                  fontWeight: FontWeight.bold,
                              ),),

                            ],
                          )
                        ],
                      ),


                    ),

                  );
                },
              ),
              Padding(padding: EdgeInsets.all(20)),
              Divider(
                color: Colors.blue[700],
                height: 10,
                thickness:3,
                indent: 100,
                endIndent:100,
              ),
        ],
      ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Column(
          //     children: [
          //       Text(coursenames[index])
          //     ],
          //   ),

    ]
      )
    );
  }
}
