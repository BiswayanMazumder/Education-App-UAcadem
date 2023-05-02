import 'package:flutter/material.dart';
import 'package:uacadem/firstpage.dart';
import 'package:uacadem/pythoncoursedetails.dart';
class Python extends StatefulWidget {
  const Python ({Key? key}) : super(key: key);

  @override
  State<Python> createState() => _PythonState();
}

class _PythonState extends State<Python> {
  //int _Currentstate=0;
  // final tabs=[
  //   Center(child: Text('First Page',style: TextStyle(color: Colors.black),),),
  //   Center(child: Text('2nd Page Page',style: TextStyle(color: Colors.black),),),
  //   Center(child: Text('3rd Page',style: TextStyle(color: Colors.black),),),
  // ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/python (1).png'),filterQuality: FilterQuality.high,
      colorFilter: ColorFilter.srgbToLinearGamma())),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          surfaceTintColor: Colors.white,
          elevation: 10,
          bottomOpacity: 10,
          shadowColor: Colors.transparent, 
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){},
                    icon:Icon(Icons.notifications,size:30,shadows: [
                      Shadow(
                        color: Colors.white,
                        blurRadius: 100,
                        offset: Offset.fromDirection(BorderSide.strokeAlignCenter)
                      )
                    ],)),


              ],
            )
          ],
          title: new Text('UAcademy',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            //fontFamily: 'Sedgwick',
            wordSpacing: 2,
            letterSpacing: 5,
          )),
          centerTitle: true,
        ),
        body: Stack(
          //alignment: Alignment.center,
          children: [
            Column(
              children: [
                Padding(padding: EdgeInsets.all(30)),
                Text('Welcome To Our Python Course',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Sedgwick',
                  fontWeight: FontWeight.bold,
                  fontSize: 30
                ),),
                Padding(padding: EdgeInsets.all(20)),
                Text('Introduction About Python:-\n\nWelcome! Are you completely new to programming? If not then we presume you will be looking for information about '
                    'why and how to get started with Python. Fortunately an experienced programmer in any programming language'
                    ' (whatever it may be) can pick up Python very quickly. Its also easy for beginners to use and learn, so jump in!',
                  style:
                  TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),),
                Padding(padding: EdgeInsets.all(30)),
                new ElevatedButton(onPressed: (){},
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.red),
                  shadowColor: MaterialStatePropertyAll(Colors.yellow),
                  enableFeedback: true,
                  surfaceTintColor:MaterialStatePropertyAll(Colors.green),
                  overlayColor: MaterialStatePropertyAll(Colors.green),

                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),side: BorderSide(
                    color: Colors.green,style: BorderStyle.solid,width: 2
                  ))),
                  elevation: MaterialStatePropertyAll(30)
                ),
                    child: new Text('Videos For Our Course',style:
                      TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),)),
                Padding(padding: EdgeInsets.all(20)),

                new ElevatedButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FirstPage()),
                  );
                },
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.green),
                        shadowColor: MaterialStatePropertyAll(Colors.white),
                        enableFeedback: true,
                        surfaceTintColor:MaterialStatePropertyAll(Colors.green),
                        overlayColor: MaterialStatePropertyAll(Colors.red),

                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),side: BorderSide(
                            color: Colors.white,style: BorderStyle.solid,width: 2
                        ))),
                        elevation: MaterialStatePropertyAll(30)
                    ),
                    child: new Text('Course Description',style:
                    TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),))
              ],
            )
          ],
        )

      ),
    );
  }
}
