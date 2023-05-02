import 'package:flutter/material.dart';
import 'package:uacadem/firstpage.dart';
//import 'package:uacadem/firstpage.dart';
//import 'package:uacadem/register.dart';
class Pythoncoursedetails extends StatelessWidget {
  const Pythoncoursedetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      appBar: AppBar(
        title: new Text('Python',),
        backgroundColor: Colors.black,
        elevation: 25,
        centerTitle: true,
        toolbarHeight:75,
        foregroundColor: Colors.white,
        shadowColor: Colors.purple,
        actions: [
          IconButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FirstPage()),
            );
          },
              icon:Icon(Icons.logout)
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: new Column(
          children: [
            Padding(padding: EdgeInsets.all(20)),
            //Image.asset('assets/images/python (1).png'),
            new Text('Basics of Python with Data Structures and Algorithms',style: new TextStyle(color: Colors.black,fontSize: 35,fontFamily: 'Sedgwick',fontWeight:FontWeight.bold,
            ),),
            Padding(padding: EdgeInsets.all(10)),
            new Text('for Beginners and Experienced Learners',style: new TextStyle(color: Colors.black,fontSize: 20,),),
            Padding(padding: EdgeInsets.all(10)),
            Align(
              alignment: Alignment.topLeft,
              child:new Text('55 Videos',style: new TextStyle(color: Colors.grey,fontSize: 20,),)
            ),
            Padding(padding: EdgeInsets.all(20)),
            Text('This is the course to pick if you are just getting into coding and want to build a strong foundation. '
                'Widely used in Data Science & Machine Learning',
            style:TextStyle(
              color: Colors.black,
              fontSize:20
            ) ,)

          ],
        ),
      ),
    );
  }
}
