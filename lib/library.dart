import'package:flutter/material.dart';
import 'package:uacadem/libraryprofile.dart';
import 'package:uacadem/main.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';
class Library extends StatefulWidget {
  const Library({Key? key}) : super(key: key);

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  final Uri _url=Uri.parse('https://ndl.iitkgp.ac.in/');
  Future<void> _launchURl() async{
    if(!await launchUrl(_url))
    {
      throw "Cannot Launch $_url";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade200,
      appBar: AppBar(
        title: Text('Open Library'),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: [
          IconButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyApp()),
            );
          },
              icon:Icon(Icons.logout))
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 300,
            width: 700,
            decoration: BoxDecoration(
              color: Colors.blue.shade900,
              borderRadius:BorderRadius.only(bottomRight: Radius.circular(50)),
              //border: Border.all(color: Colors.red,width:2)

            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child:ElevatedButton(onPressed:(){
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const Profile()),
                    // );
                  },
                      style: ButtonStyle(
                          overlayColor: MaterialStatePropertyAll(Colors.transparent),
                          foregroundColor: MaterialStatePropertyAll(Colors.transparent),
                          shadowColor: MaterialStatePropertyAll(Colors.transparent),
                          backgroundColor: MaterialStatePropertyAll(Colors.blue.shade900),
                          elevation: MaterialStatePropertyAll(00)
                      ),
                      child:GestureDetector(
                        onTap:(){
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const LibraryProfile()),
                          );
                        },
                        child: CircleAvatar(
                          foregroundImage: AssetImage('assets/images/download.png'),
                        ),
                      ))
                ),
                Text('Welcome To Open Library',style:GoogleFonts.arimaMadurai(textStyle: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing:1,
                    wordSpacing: 1
                )
                ))
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: NeverScrollableScrollPhysics(),

            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(20)),
                Align(
                  alignment: Alignment.center,
                child: Text('A Complete Open Library for book enthusiasts.\nCalling'
                    ' all book lovers read your book at free of cost.Just click'
                    ' on button below and search your book and get started.\n\nSponsored By'
                    ' National Library Of India',style: GoogleFonts.arimaMadurai(textStyle: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.w200,
                    letterSpacing:1,
                    wordSpacing: 1
                )
                )
                ),
                ),
                Padding(padding: EdgeInsets.all(20)),
                Row(
                  children: [
                    Text('Ratings:',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25
                    ),),
                    Icon(Icons.star,color: Colors.yellowAccent,),
                    Icon(Icons.star,color: Colors.yellowAccent,),
                    Icon(Icons.star,color: Colors.yellowAccent,),
                    Icon(Icons.star,color: Colors.yellowAccent,),
                    Icon(Icons.star_half_outlined,color: Colors.yellowAccent,),
                    Text(' 4.5',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                    ),),

                  ],
                ),
                Padding(padding: EdgeInsets.all(10)),
                Column(
                  children: [
                    Row(
                      children: [

                        Text('Daily Users',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25
                        ),),
                        Icon(Icons.person_2_rounded,color: Colors.yellowAccent.shade100,),
                        Text('20k+',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25
                        ),),
                      ],
                    )
                  ],
                ),
                Padding(padding: EdgeInsets.all(20)),
                ElevatedButton(onPressed: (){
                  _launchURl();
                },
                    style: ButtonStyle(
                      shadowColor:MaterialStatePropertyAll(Colors.black),
                      elevation: MaterialStatePropertyAll(50),
                      backgroundColor: MaterialStatePropertyAll(Colors.orange),
                      foregroundColor: MaterialStatePropertyAll(Colors.black)
                    ),
                    child: Column(
                      children: [
                        Text('Get Started',style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w300,
                        ),),
                        Icon((Icons.arrow_right_alt_outlined))
                      ],
                    )
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
