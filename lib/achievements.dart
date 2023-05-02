import 'package:flutter/material.dart';
class Achievements extends StatefulWidget {
  const Achievements({Key? key}) : super(key: key);

  @override
  State<Achievements> createState() => _AchievementsState();
}

class _AchievementsState extends State<Achievements> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade100,
      resizeToAvoidBottomInset: false,

      appBar: AppBar(
        elevation: 10,
        title: Text('Welcome To Achievements Page',style: TextStyle(
          fontWeight: FontWeight.bold,
          fontFamily: 'Sedgwick',
          letterSpacing: 1,
          wordSpacing: 2,
        ),),
      ),
      body: ListView(
        children: [
          Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(8)),
                  Text('Our Proud Achievers',style:
                  TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),),
                  Padding(padding: EdgeInsets.all(5)),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 100,left:10)),
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('assets/images/alumni1.jpg'),
                      ),
                      Padding(padding: EdgeInsets.only(left: 20
                      )),
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('assets/images/alumni1.jpg'),
                      ),
                      Padding(padding: EdgeInsets.only(left: 20
                      )),
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('assets/images/alumni1.jpg'),
                        //backgroundColor: Colors.black,
                      ),
                      Padding(padding: EdgeInsets.only(left: 20
                      )),
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('assets/images/alumni1.jpg'),
                        //backgroundColor: Colors.black,
                      ),
                      Padding(padding: EdgeInsets.only(left: 20
                      )),
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('assets/images/alumni1.jpg'),
                        //backgroundColor: Colors.black,
                      ),
                      Padding(padding: EdgeInsets.only(left: 20
                      )),
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('assets/images/alumni1.jpg'),
                        //backgroundColor: Colors.black,
                      ),
                      Padding(padding: EdgeInsets.only(left: 20
                      )),
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('assets/images/alumni1.jpg'),
                        //backgroundColor: Colors.black,
                      ),
                      Padding(padding: EdgeInsets.only(left: 20
                      )),
                      CircleAvatar(
                        radius: 35,
                        //backgroundColor: Colors.black,
                        backgroundImage: AssetImage('assets/images/alumni1.jpg'),
                      ),
                      Padding(padding: EdgeInsets.only(left: 20
                      )),
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('assets/images/alumni1.jpg'),
                       // backgroundColor: Colors.black,
                      ),
                      Padding(padding: EdgeInsets.only(left: 20
                      )),
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('assets/images/alumni1.jpg'),
                        //backgroundColor: Colors.black,
                      ),
                      Padding(padding: EdgeInsets.only(left: 20
                      )),
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('assets/images/alumni1.jpg'),
                        //backgroundColor: Colors.black,
                      ),

                    ],
                  ),


                ],
              ),
            ),
    Column(
    children: [
      SingleChildScrollView(
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
    Text('  Our Proud Alumni 2020\n  Mircosoft CTC 1 Cr',style:
      TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30,color: Colors.purple
      ),),
    Padding(padding: EdgeInsets.all(10)),
    Image(image: AssetImage('assets/images/gentleman.jpg'),width: 850,height: 300,),
        Padding(padding: EdgeInsets.all(20)),
        Divider(
          color: Colors.blue[900],
          height: 10,
          thickness:3,
          indent: 100,
          endIndent:100,
        ),
        Padding(padding: EdgeInsets.all(20)),
        Text('  Our Proud Alumni 2020\n  Microsoft CTC 75 LPA',style:
        TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,color: Colors.purple
        ),),
        Padding(padding: EdgeInsets.all(10)),
        Image(image: AssetImage('assets/images/gentleman.jpg'),width: 850,height: 300,),
        Padding(padding: EdgeInsets.all(20)),
        Divider(
          color: Colors.blue[900],
          height: 10,
          thickness:3,
          indent: 100,
          endIndent:100,
        ),
        Padding(padding: EdgeInsets.all(20)),
        Text('  Our Proud Alumni 2022\n  Microsoft 1 CR',style:
        TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,color: Colors.purple
        ),),
        Padding(padding: EdgeInsets.all(10)),
        Image(image: AssetImage('assets/images/gentleman.jpg'),width: 850,height: 300,),

        Padding(padding: EdgeInsets.all(20)),
        Divider(
          color: Colors.blue[900],
          height: 10,
          thickness:3,
          indent: 100,
          endIndent:100,
        ),
        Padding(padding: EdgeInsets.all(20)),
        Text('  Our Proud Alumni 2022\n  Microsoft 1 CR',style:
        TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,color: Colors.purple
        ),),
        Padding(padding: EdgeInsets.all(10)),
        Image(image: AssetImage('assets/images/gentleman.jpg'),width: 850,height: 300,),
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

          ],
      )
        ],
      ),
    );
  }
}
