import 'package:flutter/material.dart';
import 'package:uacadem/main.dart';
import 'package:google_fonts/google_fonts.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List profile=[
    'Name:\nBiswayan Mazumder',
    'Enrolled On:\n26/12/2020',
    'End Date:\n26/12/2022',
    'Package Name:\nStarter Package',
    'Course Type:\nPhysical Class',
    'Course Subjects\nIncluded:\nTech Only(Coding)'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        centerTitle: true,
        backgroundColor: Colors.pinkAccent.shade100,
        elevation: 5,
        shadowColor: Colors.white,
        surfaceTintColor: Colors.black,
        bottomOpacity: 5,
        title: new Text('Student Profile',style: new TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'Sedgwick',
            letterSpacing: 2,
            wordSpacing: 2,
            decorationColor: Colors.green
        ),
        ),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyApp()),
            );
          },
              icon:Icon(Icons.logout,size: 32,color: Colors.black,))
        ],
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.pink.shade200,Colors.lime,Colors.deepOrange,Colors.blue,]
              )
            ),
            child: Column(
            children: [

              //Padding(padding: EdgeInsets.all(20)),
              // Divider(
              //   color: Colors.deepPurple[900],
              //   height: 10,
              //   thickness:3,
              //   indent: 100,
              //   endIndent:100,
              // ),
              Padding(padding: EdgeInsets.all(20)),
              Image(image: AssetImage('assets/images/b8b0a5a86e44c5f45a1db5f9faa2c529_w200.gif')),
              Padding(padding: EdgeInsets.all(20)),
              Divider(
                color: Colors.blue[600],
                height: 10,
                thickness:3,
                indent: 100,
                endIndent:100,
              ),
              Padding(padding: EdgeInsets.all(20)),
              Align(
                alignment: Alignment.topLeft,
                child: Text('Student Profile',style: GoogleFonts.ovo(textStyle: TextStyle(
                    fontSize: 40,

                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    letterSpacing:1,
                    wordSpacing: 1
                )
                )),
              ),
    Padding(padding: EdgeInsets.all(20)),
    Divider(
      color: Colors.deepPurple[900],
      height: 10,
      thickness:3,
      indent: 100,
      endIndent:100,
    ),
              Padding(padding: EdgeInsets.all(20)),
              GridView.builder(gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: (MediaQuery.of(context).size.height-50-25)/(4*240),
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,

              ),
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: profile.length,
                  itemBuilder:(context, index) {
                return InkWell(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    decoration: BoxDecoration(
                        boxShadow: [BoxShadow(
                          color: Colors.black,
                          blurRadius: double.infinity,
                        )],
                        color:Color(0xFFFF5F3FF),
                        border: Border.all(color: Colors.black,
                            style:BorderStyle.solid ,
                            width: 2),
                        //gradient: LinearGradient(colors: [Colors.green,Colors.black]),
                        borderRadius: BorderRadius.circular(40),
                    ),
                    child: Row(
                      children: [
                        Text(profile[index],style:
                          TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            //background: Paint(),
                            fontSize: 15
                          ),),

                      ],

                    ),
                  ),
                );
                  },),
              Padding(padding: EdgeInsets.all(30)),
              Divider(
                color: Colors.deepPurple[900],
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
    );
  }
}
