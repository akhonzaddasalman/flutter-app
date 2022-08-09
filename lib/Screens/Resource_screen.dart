import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Colors/Colors.dart';
import 'package:untitled1/Components/buttons.dart';

import 'blindchat_screen.dart';

class ResourceScreen extends StatefulWidget {
  const ResourceScreen({Key? key}) : super(key: key);

  @override
  State<ResourceScreen> createState() => _ResourceScreenState();
}

class _ResourceScreenState extends State<ResourceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration:  BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: const [
                  0.0,
                  0.7,
                ],
                colors: [
                  Colors.pinkAccent.shade400,
                  Colors.deepOrangeAccent.shade100,
                ],
              )
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(Icons.menu,color: Colors.white,size: 40,),
                    Spacer(),
                    Text('resources',style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white,fontSize: 25,fontFamily: 'Montserrat'),),
                    Spacer(),
                    Icon(Icons.error_outline_rounded,color: Colors.white,size: 40,),
                  ],
                ),
              ),
              Card(
                margin: const EdgeInsets.only(top: 25,bottom: 1,right: 33,left: 33),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all( Radius.circular(16))),
                color: kWhiteColor,
                child: SizedBox(
                  height: 100,
                  child: Row(
                    children: [
                      MaterialButton(
                        onPressed: () {},
                        color: kFBBGColor,
                        textColor: kWhiteColor,
                        padding: const EdgeInsets.all(16),
                        shape: const CircleBorder(),
                        child: const Image(image: AssetImage('assets/Svgs/fb.png'),),
                      ),
                      Spacer(),
                      MaterialButton(
                        onPressed: () {},
                        color: kIstagramBGColor,
                        textColor: kWhiteColor,
                        padding: const EdgeInsets.all(16),
                        shape: const CircleBorder(),
                        child: const Image(image: AssetImage('assets/Svgs/insta.png'),),
                      ),
                      Spacer(),
                      MaterialButton(
                        onPressed: () {},
                        color: kTwitterBGColor,
                        textColor: kWhiteColor,
                        padding: const EdgeInsets.all(16),
                        shape: const CircleBorder(),
                        child: const Image(image: AssetImage('assets/Svgs/twitter.png'),),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.only(top: 35,bottom: 1,right: 33,left: 33),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all( Radius.circular(16))),
                color: kWhiteColor,
                child: SizedBox(
                  height: 300,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 14),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            MaterialButton(
                              onPressed: () {},
                              color: kPhoneBGColor,
                              textColor: kWhiteColor,
                              padding: const EdgeInsets.all(16),
                              shape: const CircleBorder(),
                              child: Icon(Icons.phone,size: 22,),
                            ),
                            SizedBox(height: 5,),
                            Text('Support\nContacts',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            MaterialButton(
                              onPressed: () {},
                              color: kCheckListBGColor,
                              textColor: kWhiteColor,
                              padding: const EdgeInsets.all(16),
                              shape: const CircleBorder(),
                              child: Icon(Icons.check_circle,size: 22,),
                            ),
                            SizedBox(height: 5,),
                            Text('Checklists',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            MaterialButton(
                              onPressed: () {},
                              color: kFaqsBGColor,
                              textColor: kWhiteColor,
                              padding: const EdgeInsets.all(16),
                              shape: const CircleBorder(),
                              child: Icon(Icons.help_outlined,size: 22,),
                            ),
                            SizedBox(height: 5,),
                            Text('FAQs',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50,),
              buildRegisterButton('Next Screen', (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const BlindChatScreen()));
              })
            ],
          ),
        ),
      ),
    );
  }
}
