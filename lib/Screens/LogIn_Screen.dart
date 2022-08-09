import 'package:flutter/material.dart';
import 'package:untitled1/Colors/Colors.dart';
import 'package:untitled1/Screens/Resource_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/Images/login_background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Card(
            margin: const EdgeInsets.only(top: 470,bottom: 30,right: 33,left: 33),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all( Radius.circular(20))),
            color: kWhiteColor,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 13.0),
                  child: Row(
                    children: const [
                      Expanded(

                        child: Text('Welcome batch\nof \n2025',style: TextStyle(fontSize: 30,fontFamily: 'RobotoMono',
                            fontWeight: FontWeight.w500),),
                      ),
                      Expanded(
                        child: Image(image: AssetImage('assets/Images/logo.png')),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 12),
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(kButtonBGColor),
                    ), onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context)=> const ResourceScreen())); },
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Image(image: AssetImage('assets/Images/logo-google.png')),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: Text('Sign in with student email',style: TextStyle(fontSize: 16),),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ) /* add child content here */,
        ),
      ),
    );
  }
}