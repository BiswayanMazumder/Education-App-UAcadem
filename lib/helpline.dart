import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class Helpline extends StatefulWidget {
  const Helpline({Key? key}) : super(key: key);

  @override
  State<Helpline> createState() => _HelplineState();
}

class _HelplineState extends State<Helpline> {
  final Uri _url=Uri.parse('tel: +91 8335856470');
  Future<void> _launchURl() async{
    if(!await launchUrl(_url))
    {
      throw "Cannot Launch $_url";
    }
  }
  //final Uri _Url=Uri.parse('https://mail.google.com/mail/u/0/#inbox?compose=GTvVlcSKjRJfsmfCKxrFkmLnsSZjBgXVXTzkgVLMdkKWKdKljghLkNWCGDXXhKLNptHBbZWVSvKsw');
  // Future<void> _LaunchUrl() async{
  //   if(!await _LaunchUrl(_Url))
  //     {
  //       throw "Cannot Launch";
  //     }
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                // gradient: LinearGradient(colors: [Colors.red.shade200,
                // Colors.white,
                // Colors.green,
                // Colors.pink])
                image: DecorationImage(image:AssetImage('assets/images/login.png'),fit: BoxFit.cover)
              ),
              child: Align(
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.all(20)),
                    Divider(
                      color: Colors.red[700],
                      height: 10,
                      thickness:3,
                      indent: 100,
                      endIndent:100,
                    ),
                    Padding(padding: EdgeInsets.all(20)),
                    Text('Helpline.',style: TextStyle(
                      fontSize: 50,
                      fontFamily: 'Sedgwick',
                      letterSpacing: 3,
                      wordSpacing: 2,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                    ),
                    Padding(padding: EdgeInsets.all(20)),
                    Divider(
                      color: Colors.white,
                      height: 10,
                      thickness:3,
                      indent: 100,
                      endIndent:100,
                    ),
                    Padding(padding: EdgeInsets.all(30)),
                    Row(
                      children: [
                        Icon(Icons.phone,color: Colors.white70,size: 30,),
                       TextButton(onPressed: (){
                         _launchURl();
                       },
                           child: Text('Toll Free- +91 8335856470',style: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 18.3,
                             color: Colors.blueGrey.shade50
                           ),))
                      ],
                    ),
                    Padding(padding: EdgeInsets.all(20)),
                    Divider(
                      color: Colors.green[700],
                      height: 10,
                      thickness:3,
                      indent: 100,
                      endIndent:100,
                    ),
                    Padding(padding: EdgeInsets.all(20)),
                    Column(
                      children: [
                        Row(
                          children: [

                            Icon(Icons.email,size: 30,color: Colors.red,),
                            Text('  Email-biswayan.mazumder27@gmail.com',
                              style: TextStyle(
                                  fontSize: 18.3,
                                  fontWeight: FontWeight.bold
                              ),)
                          ],
                        )
                      ],
                    ),
                    Padding(padding: EdgeInsets.all(20)),
                    Divider(
                      color: Colors.blue[700],
                      height: 10,
                      thickness:3,
                      indent: 100,
                      endIndent:100,
                    ),
                    Padding(padding: EdgeInsets.all(20)),
                    Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.location_city,size: 30,color: Colors.indigo,),
                            Text('    Location-1139/1 Surya Sen Road \n   Kolkata,Pin-700126',
                              style:TextStyle(
                                  fontSize: 18.3,
                                  fontWeight: FontWeight.bold
                              ),)
                          ],
                        ),
                        Padding(padding: EdgeInsets.all(20)),
                        Divider(
                          color: Colors.orange[700],
                          height: 10,
                          thickness:3,
                          indent: 100,
                          endIndent:100,
                        ),
                        Padding(padding: EdgeInsets.all(20)),
                        Row(
                          children: [
                            Icon(Icons.timelapse,color: Colors.indigo,size: 30,),
                            Text('    We are open from 9:00-9:00',
                              style:TextStyle(
                                  fontSize: 18.3,
                                  fontWeight: FontWeight.bold
                              ),)

                          ],
                        ),
                       Column(
                         children: [
                           Padding(padding: EdgeInsets.all(20)),
                           Divider(
                             color: Colors.pink[700],
                             height: 10,
                             thickness:3,
                             indent: 100,
                             endIndent:100,
                           ),
                           Padding(padding: EdgeInsets.all(20)),
                           Image(image: AssetImage('assets/images/education.gif'),filterQuality: FilterQuality.high,
                           fit: BoxFit.cover,gaplessPlayback: true,
                           repeat: ImageRepeat.repeat),
                           Padding(padding: EdgeInsets.all(20)),
                           Divider(
                             color: Colors.orange[700],
                             height: 10,
                             thickness:3,
                             indent: 100,
                             endIndent:100,
                           ),
                         ],
                       )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
