import 'package:flutter/material.dart';
import 'package:uacadem/firstpage.dart';
import 'package:uacadem/main.dart';
import 'package:google_fonts/google_fonts.dart';
class Forgotpassword extends StatefulWidget {
  const Forgotpassword({Key? key}) : super(key: key);

  @override
  State<Forgotpassword> createState() => _ForgotpasswordState();
}

class _ForgotpasswordState extends State<Forgotpassword> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          resizeToAvoidBottomInset: false,
          body: new Container(
            decoration:BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/register.png'),fit: BoxFit.cover)),
            child: new Column(
              children: [
                Padding(padding: EdgeInsets.all(30)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: new Text(' Still not on UAcademy',style: GoogleFonts.arimaMadurai(textStyle: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing:1,
                      wordSpacing: 1
                  )
                  )),
                ),
                Padding(padding: EdgeInsets.all(20)),
                Align(alignment: Alignment.centerLeft,
                  child: Text(' Enter Your UserName',style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),),),
                Padding(padding: EdgeInsets.all(10)),
                new TextField(
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  decoration: InputDecoration(
                      hintStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.black38),
                      hintText: 'Enter your username',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(width: 10,color: Colors.purple)),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.purple.shade500)),
                      prefixIcon: Icon(Icons.lock)
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Align(alignment: Alignment.centerLeft,
                  child: Text(' Enter Your Contact Number',style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),),),
                Padding(padding: EdgeInsets.all(20)),
                new TextField(
                  obscureText: false,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.black38),
                      hintText: 'Enter your contact number  ',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(width: 10,color: Colors.purple)),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red.shade500)),
                      prefixIcon: Icon(Icons.lock)
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Align(alignment: Alignment.centerLeft,
                  child: Text(' Enter Your Email',style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),),),
                Padding(padding: EdgeInsets.all(20)),
                new TextField(
                  obscureText: false,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.black38),
                      hintText: 'Enter your Email  ',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(width: 10,color: Colors.purple)),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red.shade500)),
                      prefixIcon: Icon(Icons.lock)
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Align(alignment: Alignment.centerLeft,
                  child: Text(' Enter Your Password',style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),),),
                Padding(padding: EdgeInsets.all(20)),
                new TextField(
                  obscureText: false,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.black38),
                      hintText: 'Enter your Password ',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(width: 10,color: Colors.purple)),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red.shade500)),
                      prefixIcon: Icon(Icons.lock)
                  ),
                ),
                Padding(padding: EdgeInsets.all(20)),
                new ElevatedButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FirstPage()),
                  );
                },
                    style:ButtonStyle(
                        elevation:MaterialStatePropertyAll(30),
                        backgroundColor:MaterialStatePropertyAll(Colors.purple),
                        overlayColor: MaterialStatePropertyAll(Colors.red)
                    ),
                    child:new Text('Confirm Changes'))
              ],
            ),
          ),
        )
      ],
    );
  }
}
