
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:uacadem/main.dart';
class Reactnative extends StatefulWidget {
  const Reactnative({Key? key}) : super(key: key);

  @override
  State<Reactnative> createState() => _ReactnativeState();
}

class _ReactnativeState extends State<Reactnative> {
  final Uri _url=Uri.parse('https://www.youtube.com/watch?v=z1qG80Jkzi8&list=PL8p2I9GklV468O2wk-n8Q1KmtMhnHHj4C');
  Future<void> _launchURl() async{
    if(!await launchUrl(_url))
    {
      throw "Cannot Launch $_url";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 50,
        backgroundColor: Colors.black,
        centerTitle: true,
        toolbarHeight: 70,
        shadowColor: Colors.black,
        actions: [
          IconButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyApp()),
            );
          },
              icon: Icon(Icons.logout))
        ],
        title: Text('React Native',style:
        TextStyle(
            fontWeight: FontWeight.bold
        ),),
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/register.png'),fit: BoxFit.fill,opacity: 80,filterQuality: FilterQuality.high,
                    colorFilter: ColorFilter.srgbToLinearGamma())
            ),
            // decoration: BoxDecoration(
            //   gradient: LinearGradient(colors: [Colors.pink.shade300,Colors.red.shade100,Colors.white])
            // ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: NeverScrollableScrollPhysics(),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(0.5)),
                  Image(image: AssetImage('assets/images/react.jpg'),gaplessPlayback: true,
                    fit: BoxFit.fill,filterQuality: FilterQuality.low,colorBlendMode:BlendMode.lighten,
                    repeat: ImageRepeat.repeat,),
                  Padding(padding: EdgeInsets.all(20)),
                  Divider(
                    color: Colors.red[900],
                    height: 10,
                    thickness:3,
                    indent: 100,
                    endIndent:100,
                  ),
                  Padding(padding: EdgeInsets.all(8)),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Fundamentals of react native",style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        //fontFamily: 'Sedgwick',
                        letterSpacing:0,
                        wordSpacing:0,
                        color: Colors.black
                    ),),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('  Created By UAcademy\n\n   For Beginners and Experienced Learners',style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      decorationColor: Colors.green,

                    ),),
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  //Padding(padding: EdgeInsets.all(20)),
                  Divider(
                    color: Colors.red[900],
                    height: 10,
                    thickness:3,
                    indent: 100,
                    endIndent:100,
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Align(
                      alignment: Alignment.center,
                      child: Text('   About The Course',style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w300,
                        decorationColor: Colors.green,

                      ),)
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  Container(
                    decoration:
                    BoxDecoration(
                      //color: Colors.green.shade50,
                      borderRadius: BorderRadius.all(Radius.elliptical(10,10)),
                    ),
                    child: Text('Rated as the #1 cross platform mobile app development framework, '
                        'an easy learning curve and being in the top 5 popular technologies by developers '
                        'from time to time, the industry use and widespread adoption of react native has become '
                        'phenomenal. Backed by a strong community , multi platform support it has become a go to skill. '
                        'So if you are a student, working professional or a hobbyist who is looking for the basics of '
                        'react native, projects, company specific mcqs and interview questions all at one place, then '
                        'this is the perfect track for you.',style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w300
                    ),),
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  Row(
                    children: [
                      Text(' Course Length: ',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),),
                      Icon(Icons.timer,color: Colors.deepPurple,fill:1,grade: 5,),
                      Text(' 12+ hours',style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                  Column(
                    children: [
                      Padding(padding: EdgeInsets.all(8)),
                      Row(
                        children: [
                          Text(' Rating:',style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(' 4.8 ', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold
                                  ),),
                                  Icon(Icons.star,color: Colors.amber,),
                                  Icon(Icons.star,color: Colors.amber,),
                                  Icon(Icons.star,color: Colors.amber,),
                                  Icon(Icons.star,color: Colors.amber,),
                                  Icon(Icons.star_half_outlined,color: Colors.amber,),
                                  Text(' (17k+ Students)', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold
                                  ),),
                                ],
                              ),

                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  //Padding(padding: EdgeInsets.all(20)),
                  Divider(
                    color: Colors.red[900],
                    height: 10,
                    thickness:3,
                    indent: 100,
                    endIndent:100,
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  Image(image: NetworkImage('https://www.codingninjas.com/blog/wp-content/uploads/2021/01/Blog-82-1024x536.png')),
                  Padding(padding: EdgeInsets.all(20)),
                  ElevatedButton(
                    style: ButtonStyle(backgroundColor:MaterialStatePropertyAll(Colors.orange),elevation:MaterialStatePropertyAll(50),
                        shadowColor: MaterialStatePropertyAll(Colors.purple)),
                    onPressed: (){
                      _launchURl();
                    },
                    child: Text('Enroll Now',style: TextStyle(
                        fontSize:45
                    ),),
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  //Padding(padding: EdgeInsets.all(20)),
                  Divider(
                    color: Colors.red[900],
                    height: 10,
                    thickness:3,
                    indent: 100,
                    endIndent:100,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
