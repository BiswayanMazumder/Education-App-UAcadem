import 'package:flutter/material.dart';
import 'package:uacadem/main.dart';
import 'package:google_fonts/google_fonts.dart';
class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

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
                  child: new Text(' Forgot Password\n No Problem',style: GoogleFonts.artifika(textStyle: TextStyle(
                      fontSize: 45,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing:1,
                      wordSpacing: 1
                  )
                  )
                  ),
                ),
                Padding(padding: EdgeInsets.all(20)),
                Align(alignment: Alignment.centerLeft,
                child: Text(' Enter Your New\n Password',style: TextStyle(
                    color: Colors.black87,
                  fontSize: 35,
                  fontWeight: FontWeight.bold
                ),),),
                Padding(padding: EdgeInsets.all(30)),
                new TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.black38),
                    hintText: 'Enter your new password',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(width: 10,color: Colors.purple)),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.purple.shade500)),
                    prefixIcon: Icon(Icons.lock)
                  ),
                ),
                Padding(padding: EdgeInsets.all(20)),
                Align(alignment: Alignment.centerLeft,
                  child: Text(' Enter Your New\n Password Again',style: TextStyle(
                      color: Colors.black87,
                      fontSize: 35,
                      fontWeight: FontWeight.bold
                  ),),),
                Padding(padding: EdgeInsets.all(30)),
                new TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                      hintStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.black38),
                      hintText: 'Enter your new password Again ',
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
                    MaterialPageRoute(builder: (context) => const HomePage()),
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
