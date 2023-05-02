import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Progress extends StatefulWidget {
  const Progress({Key? key}) : super(key: key);

  @override
  State<Progress> createState() => _ProgressState();
}

class _ProgressState extends State<Progress> {
  List progression=[
    'Task Completed\n\n100',
    'Task Yet To Complete\n\n23',
    'Total Test Appeared\n\n70',
    'Total Test Missed\n\n30',
    'Total Test took \n\nplaced 100',
    'Current GPA\n\n8.58',
    'Class Highest GPA\n\n9.00',
    'Remark-Try Hard'
  ];
  List<Image> progressionimages=[
    Image(image: AssetImage('assets/images/progress.gif')),
    Image(image: AssetImage('assets/images/progress.gif')),
    Image(image: AssetImage('assets/images/progress.gif')),
    Image(image: AssetImage('assets/images/progress.gif')),
    Image(image: AssetImage('assets/images/progress.gif')),
    Image(image: AssetImage('assets/images/progress.gif')),
    Image(image: AssetImage('assets/images/progress.gif')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        centerTitle: true,
        backgroundColor: Colors.pink,
        elevation: 5,
        shadowColor: Colors.black,
        surfaceTintColor: Colors.black,
        bottomOpacity: 5,
        title: new Text('Student Progression Report',style: new TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontFamily: 'Sedgwick',
          letterSpacing: 2,
          wordSpacing: 2,
          decorationColor: Colors.green
        ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.pink.shade200,
              Colors.red.shade100,
              Colors.white,
              Colors.green.shade200,
              Colors.purple.shade200])
            ),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Align(
                  alignment: Alignment.topLeft,
                  child:Text('Biswayan Mazumder',style:
                  TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w900,
                    letterSpacing: 1,
                    wordSpacing: 0
                  ),)
                ),

                Padding(padding: EdgeInsets.all(20)),
                Divider(
                  color: Colors.red[900],
                  height: 10,
                  thickness:3,
                  indent: 100,
                  endIndent:100,
                ),
                Image(image: AssetImage('assets/images/graph.gif'),fit: BoxFit.cover,width:900,filterQuality: FilterQuality.high,
                ),
                Divider(
                  color: Colors.blue[900],
                  height: 10,
                  thickness:5,
                  indent: 100,
                  endIndent:100,
                ),
                Padding(padding: EdgeInsets.all(20)),
              Align(
                alignment:Alignment.topLeft ,
                child: Text('Detailed Student Progress Report',style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  decorationColor: Colors.green,
                ),),
              ),
                Padding(padding: EdgeInsets.all(20)),
              GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: (MediaQuery.of(context).size.height-50-25)/(4*240),
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: progression.length,
                itemBuilder:(context, index) {
                return InkWell(
                  onTap: (){},
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
                        borderRadius: BorderRadius.circular(40)
                    ),
                    child: Row(
                      children: [
                        //progressionimages[index],
                        Text(progression[index],style:
                          TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                          ),)
                      ],
                    ),
                  )
                );
                },
              ),
                Padding(padding: EdgeInsets.all(20)),
                Divider(
                  color: Colors.green[300],
                  height: 10,
                  thickness:5,
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
