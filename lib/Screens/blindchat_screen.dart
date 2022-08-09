import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Colors/Colors.dart';

import 'map_screen.dart';

class BlindChatScreen extends StatefulWidget {
  const BlindChatScreen({Key? key}) : super(key: key);

  @override
  State<BlindChatScreen> createState() => _BlindChatScreenState();
}

class _BlindChatScreenState extends State<BlindChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [
                    0.0,
                    0.7,
                  ],
                  colors: [
                    Color(0xffFC42A5),
                    Color(0xff471069),
                  ],
                )
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.menu, color: Colors.white, size: 40,),
                      Spacer(),
                      Text('Blind Chat', style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 25,
                          fontFamily: 'Montserrat'),),
                      Spacer(),
                      Icon(Icons.error_outline_rounded, color: Colors.white,
                        size: 40,),
                    ],
                  ),
                ),
                Card(
                  margin: const EdgeInsets.symmetric(
                      vertical: 18, horizontal: 100),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(28))),
                  color: kWhiteColor,
                  child: SizedBox(
                    height: 45,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 11),
                          width: 10,
                          height: 10,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: kPrimaryColor),
                        ),
                        const Spacer(),
                        const Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: Text('26 people online', style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  margin: const EdgeInsets.only(top: 20, bottom: 0),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(topLeft:Radius.circular(16),topRight:Radius.circular(16))),
                  color: kWhiteColor,
                  child: SizedBox(
                    height: 550,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 14),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            children: [
                              Expanded(child: CircleAvatar(
                                radius: 30,
                                child: Image(image: AssetImage(
                                    "assets/Svgs/Ellipse 6.png")),
                              )),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text('Bailey Ryes', style: TextStyle(
                                      fontWeight: FontWeight.w600,),),
                                    Text('UG24', style: TextStyle(
                                      fontWeight: FontWeight.w500,),),
                                    Text('I\'m in the canteen rn.',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,),),

                                  ],
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(left: 11),
                                  width: 10,
                                  height: 10,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: kFBBGColor),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Divider(
                            color: kDescriptionColor,
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Expanded(child: CircleAvatar(
                                radius: 30,
                                child: Image(image: AssetImage(
                                    "assets/Svgs/Ellipse 11.png")),
                              )),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text('Bailey Ryes', style: TextStyle(
                                      fontWeight: FontWeight.w600,),),
                                    Text('UG24', style: TextStyle(
                                      fontWeight: FontWeight.w500,),),
                                    Text('I\'m in the canteen rn.',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,),),

                                  ],
                                ),
                              ),
                              Expanded(
                                  child: Container(
                                      margin: EdgeInsets.only(left: 11),
                                      alignment: Alignment.center,
                                      child: Text('3:59', style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: kIstagramBGColor),))
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Divider(
                            color: kDescriptionColor,
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Expanded(child: CircleAvatar(
                                radius: 30,
                                child: Image(image: AssetImage(
                                    "assets/Svgs/Ellipse 10.png")),
                              )),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text('Bailey Ryes', style: TextStyle(
                                      fontWeight: FontWeight.w600,),),
                                    Text('UG24', style: TextStyle(
                                      fontWeight: FontWeight.w500,),),
                                    Text('I\'m in the canteen rn.',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,),),

                                  ],
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(left: 11),
                                  width: 10,
                                  height: 10,
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: kIstagramBGColor,
        onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context)=> const MapScreen())); },
        icon: const Icon(Icons.add),
        label: const Text("start a new chat"),
      ),
      // bottomSheet: _modalBottomSheetMenu(),
    );
  }

  // _modalBottomSheetMenu() {
  //   showModalBottomSheet(
  //       context: context,
  //       builder: (builder) {
  //           return SingleChildScrollView(
  //             child: Container(),
  //           );
  //       });
  // }
}