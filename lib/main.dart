import 'package:flutter/material.dart';
import 'package:uacadem/firstpage.dart';
import 'package:uacadem/forgotpw.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:uacadem/register.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cool_alert/cool_alert.dart';
void main()async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplashScreen(
        nextScreen: HomePage(),
        //pageTransitionType:pageTransitionType.downtoUp ,
        backgroundColor: Colors.black,
        splash:
        Column(
          children: [
            Icon(Icons.book,size: 50,color: Colors.white,
            shadows: [
              Shadow(
                color: Colors.white,
                blurRadius: 50,
              )
            ]),
            Padding(padding: EdgeInsets.all(5)),
            Text('UAcademy',style:GoogleFonts.arimaMadurai(textStyle: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.w200,
                letterSpacing:1,
                wordSpacing: 1
            )
            )
            ),
            // Align(
            //   alignment: AlignmentDirectional.bottomCenter,
            //   child: Text('From Biswayan',style:TextStyle(color: Colors.white),),
            // )
          ],
        ),
        splashTransition: SplashTransition.slideTransition,
        duration: 100,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static Future<User?> loginUsingEmailPassword({required String email, required String password, required BuildContext context})
  async {
    FirebaseAuth auth=FirebaseAuth.instance;
    User? user;
    try{
      UserCredential userCredential=await auth.signInWithEmailAndPassword(email: email, password: password);
      user=userCredential.user;
    } on FirebaseAuthException catch(e){
      if(e.code=='user not found'){
        print('No User Found');
      }
    }
    return user;
  }
  @override
  Widget build(BuildContext context) {
    TextEditingController  _emailController= TextEditingController();
    TextEditingController _passwordController =TextEditingController();
    return Stack(
      children: [
        new Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white70,
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/login.png'),fit: BoxFit.cover)
            ),
            child: new Column(
              children: [
                Padding(padding: EdgeInsets.all(30)),

                //Image.network('https://images.unsplash.com/photo-1654277041028-ffa014fb301b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1162&q=80'),

                Align(alignment:Alignment.topLeft,
                child:  new Text('  Welcome\n To UAcademy',style:GoogleFonts.halant(textStyle: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing:1,
                    wordSpacing: 1
                )
                )
                ),
                ),
                Padding(padding: EdgeInsets.all(80)),
                Align(
                  alignment: Alignment.centerLeft,
                child: Text(' Enter Your Username',style: TextStyle(
                  color:Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,

                ),),
                ),
                SizedBox(
                  height: 30,
                ),
                SingleChildScrollView(
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  child: new TextField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    cursorRadius: Radius.circular(20),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                      hintText: '  Enter Your Username/Email-ID',
                      hintStyle: TextStyle(color: Colors.black),
                      hoverColor: Colors.black
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(30)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(' Enter Your Password',style: TextStyle(
                    color:Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,

                  ),),
                ),
                SizedBox(
                  height: 30,
                ),
                new TextField(
                  controller: _passwordController,
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                      hintText: '  Enter Your Password',
                      hintStyle: TextStyle(color: Colors.black),
                      hoverColor: Colors.black
                  ),
                ),
                Padding(padding: EdgeInsets.all(20)),
                new ElevatedButton  (
                    onPressed:()async{
                      User? user =  await loginUsingEmailPassword(email: _emailController.text, password: _passwordController.text, context: context);
                      if(user!=null){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const FirstPage()),

                        );
                        CoolAlert.show(
                          context: context,
                          type: CoolAlertType.loading,
                          text: "Welcome To UAcadem",
                          textTextStyle: GoogleFonts.arya(fontWeight: FontWeight.bold)

                        );

                      }


                },
                    style: ButtonStyle(backgroundColor:MaterialStatePropertyAll(Colors.black),
                        elevation: MaterialStatePropertyAll(20),
                    visualDensity: VisualDensity(horizontal: BorderSide.strokeAlignCenter),
                    enableFeedback: true,
                    shadowColor: MaterialStatePropertyAll(Colors.purple),
                    overlayColor: MaterialStatePropertyAll(Colors.purple)),
                    child:new Text('Sign In',style: TextStyle(
                      color: Colors.white,
                    ),
                    )
                ),
                // new TextButton(onPressed: (){
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => const Register()),
                //   );
                // },
                //     child:new Text('Forgot Password?',
                //     softWrap: true,
                //     style: TextStyle(color: Colors.black87))),
                // new TextButton(onPressed: ()
                // {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => const Forgotpassword(
                //     )),
                //   );
                // },
                //     child:new Text('Still not on UAcademy Sign-Up?',
                //         style: TextStyle(color: Colors.black87)
                //     )
                // ),
              ],


            ),
          ),
        )
      ],
    );
  }
}
