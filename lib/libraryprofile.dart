import 'package:flutter/material.dart';
import 'package:uacadem/firstpage.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';
class LibraryProfile extends StatefulWidget {
  const LibraryProfile({Key? key}) : super(key: key);

  @override
  State<LibraryProfile> createState() => _LibraryProfileState();
}

class _LibraryProfileState extends State<LibraryProfile> {
  final Uri _url=Uri.parse('https://mail.google.com/mail/u/0/#inbox?compose=GTvVlcSBpRhPdmZbSXhdQRHNWsRVTlnkjKJLFfMhdgBNgscVhvtcZGZzNlHPdgJJxxqShFqGMMtMP');
  Future<void> _launchURl() async{
    if(!await launchUrl(_url))
    {
      throw "Cannot send email";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.black,
        elevation: 10,
        surfaceTintColor: Colors.red,
        toolbarOpacity:1,
        iconTheme: IconThemeData(color: Colors.black,
        fill:1,
        opticalSize: 20,
        opacity: 0.8),
        automaticallyImplyLeading: true,
        actions: [
          IconButton(onPressed: (){
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const FirstPage()),
            );
          },
              icon: Icon(Icons.home))
        ],
        title: Text('Librarian Details',style:GoogleFonts.artifika(textStyle: TextStyle(
            fontSize:20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            letterSpacing:3,
            wordSpacing: 3
        )
        )),
      ),
      body:ListView(
        children: [
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(60)),
                  color: Colors.green.shade500
                ),
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.all(10)),
                    Align(
                      alignment: Alignment.center,
                      child: Text('Welcome To Librarian Details',style: GoogleFonts.aboreto(textStyle: TextStyle(
                            fontSize:40,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            letterSpacing:1,
                            wordSpacing: 1
                            )
                            )),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    Text('Complete Details Of Librarian',style: GoogleFonts.arsenal(textStyle: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w100,
                        letterSpacing:1,
                        wordSpacing: 1
                    )
                    )),
                    Padding(padding: EdgeInsets.all(20)),
                    Text('')
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  //Padding(padding: EdgeInsets.all(20)),
                  Divider(
                    color: Colors.red[700],
                    height: 10,
                    thickness:3,
                    indent: 100,
                    endIndent:100,
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  Text(' Librarian Photo:',style:GoogleFonts.artifika(textStyle: TextStyle(
                    fontSize:25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    // letterSpacing:1,
                    // wordSpacing: 1
                  )
                  )),
                  Padding(padding: EdgeInsets.all(10)),
                  Image(image: AssetImage('assets/images/download.png'),fit: BoxFit.fitHeight,
                  filterQuality: FilterQuality.high,
                    alignment: AlignmentDirectional(BorderSide.strokeAlignCenter, 20),
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  Divider(
                    color: Colors.red[700],
                    height: 10,
                    thickness:3,
                    indent: 100,
                    endIndent:100,
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Text(' Librarian Name:',style:GoogleFonts.artifika(textStyle: TextStyle(
                            fontSize:25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            // letterSpacing:1,
                            // wordSpacing: 1
                        )
                        )),
                        Padding(padding: EdgeInsets.all(5)),
                        Column(
                          children: [
                            Text('  Mr.Biswayan Mazumder',style:GoogleFonts.artifika(textStyle: TextStyle(
                              fontSize:25,
                              color: Colors.black,
                              fontWeight: FontWeight.w200,
                              // letterSpacing:1,
                              // wordSpacing: 1
                            )
                            )),
                          ],
                        ),
                        Padding(padding: EdgeInsets.all(20)),
                        Divider(
                          color: Colors.red[700],
                          height: 10,
                          thickness:3,
                          indent: 100,
                          endIndent:100,
                        ),
                        Padding(padding: EdgeInsets.all(20)),
                        Text('Cabin Details:',style:GoogleFonts.artifika(textStyle: TextStyle(
                          fontSize:25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          // letterSpacing:1,
                          // wordSpacing: 1
                        )
                        )),
                        Padding(padding: EdgeInsets.all(5)),
                        Column(
                          children: [
                            Text('AB205',style:GoogleFonts.artifika(textStyle: TextStyle(
                              fontSize:25,
                              color: Colors.black,
                              fontWeight: FontWeight.w200,
                              // letterSpacing:1,
                              // wordSpacing: 1
                            )
                            )),
                            Padding(padding: EdgeInsets.all(20)),
                            Divider(
                              color: Colors.red[700],
                              height: 10,
                              thickness:3,
                              indent: 100,
                              endIndent:100,
                            ),
                            Padding(padding: EdgeInsets.all(20)),
                            Text('Office Operating Hours:',style:GoogleFonts.artifika(textStyle: TextStyle(
                              fontSize:25,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              // letterSpacing:1,
                              // wordSpacing: 1
                            ))),
                            Padding(padding: EdgeInsets.all(8)),
                            Text('Mon-Sat=>9:30-4;30',style:GoogleFonts.artifika(textStyle: TextStyle(
                              fontSize:25,
                              color: Colors.black,
                              fontWeight: FontWeight.w200,
                              // letterSpacing:1,
                              // wordSpacing: 1
                            ))),
                            Padding(padding: EdgeInsets.all(20)),
                            Divider(
                              color: Colors.red[700],
                              height: 10,
                              thickness:3,
                              indent: 100,
                              endIndent:100,
                            ),
                            Padding(padding: EdgeInsets.all(20)),
                            Text('Official Email ID-',style:GoogleFonts.artifika(textStyle: TextStyle(
                              fontSize:25,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              // letterSpacing:1,
                              // wordSpacing: 1
                              ))),
                            
                            Padding(padding: EdgeInsets.all(7)),
                            TextButton(onPressed: (){
                              _launchURl();
                            },
                                child: Text('biswayanmazumder27@gmail.com',style:GoogleFonts.artifika(textStyle: TextStyle(
                                  fontSize:20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w200,
                                  // letterSpacing:1,
                                  // wordSpacing: 1
                                  ))),),
                            Padding(padding: EdgeInsets.all(18)),
                            Divider(
                              color: Colors.red[700],
                              height: 10,
                              thickness:3,
                              indent: 100,
                              endIndent:100,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )
              ],
            
          )
        ],
      )
    );
  }
}
