import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.maxFinite,
      child: Drawer(
          child: Container(
            color: Color(0xfff1f0ec),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 30, 25, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Image.asset(
                        'assets/images/logo_login.png',
                        height: 30,
                        fit: BoxFit.fill,
                      ),
                      new IconButton(
                        icon: new Icon(
                          Icons.close,
                          size: 30,
                          color: Colors.grey,
                        ),
                        onPressed: () => Navigator.of(context).pop(null),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 15, 25, 10),
                  child: Row(
                    children: <Widget>[

                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text('Hello '),
                            ],
                          ),

                          Text(
                            'skak',
                            style: GoogleFonts.montserrat(
                                color: Color(0xFF5CC4BE),
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ), Container(
                            child: Column(
                              children: <Widget>[
                                Text('asn')
                                ]
                            ),
                          )
                          //                    LinearProgressIndicator(
//                      backgroundColor: Colors.brown,
//                      // TODO: Linear progress bar left
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5),
                  child: Divider(
                    color: Colors.grey.shade600,
                    height: 6.0,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'My Profile',
                        style: GoogleFonts.montserrat(fontSize: 16, color: Color(0xFF6d7dbc)),
                      )),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Upgrade your account',
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: Color(0xFF6d7dbc),
                        ),
                      )),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Walkthrough Screens',
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: Color(0xFF6d7dbc),
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Terms & Conditions',
                        style: GoogleFonts.montserrat(fontSize: 16, color: Color(0xFF6d7dbc)),
                      )),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Privacy Policy',
                        style: GoogleFonts.montserrat(fontSize: 16, color: Color(0xFF6d7dbc)),
                      )),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
//                                  mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                        children: <Widget>[
                          Text(
                            'Notifications',
                            style:
                            GoogleFonts.montserrat(fontSize: 16, color: Color(0xFF6d7dbc)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      )),
                ),
                SizedBox(
                  height: 15,
                ),
//            InkWell(
//              onTap: () {
////                Platform.isAndroid
////                    ? _settingModalBottomSheet(context)
////                    : recommend(context);
//                share(context);
//              },
//              child: Padding(
//                  padding:
//                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 0),
//                  child: Image.asset(
//                    'assets/images/recommend_btn_xxhdpi.png',
//                    width: double.infinity,
//                  )),
//            ),
//            SizedBox(
//              height: 15,
//            ),
//            Padding(
//              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 0),
//              child: Row(
//                children: <Widget>[
//                  Text('App Version 1.0.1'),
//                ],
//              ),
//            ),
//            Expanded(
//              child:
//              Align(
//                alignment: Alignment.bottomCenter,
//                child: InkWell(
//                    onTap: (){
//                      showDialogHere(context);
//                    },
//
//                    child: Image.asset(
//                      'assets/images/recommend_btn_xxhdpi.png',
//                      width: double.infinity,
//                    )),
//              ),
//            ),

                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Stack(
                      children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.only(top: 90),
                            child: InkWell(
                                onTap: () {
                                },
                                child: Image.asset(
                                    'assets/images/logout_btn_xhdpi.png'))),
//                        SizedBox(height: 20,),
                        Positioned(
//                          bottom: 30,
                          top: 65,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  'App Version ',
                                  style: GoogleFonts.montserrat(fontWeight: FontWeight.w400, fontSize: 12),
                                ),

                              ],
                            ),
                          ),
                        ),
                        Positioned(
//                            bottom: 20,
//                        top:10,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 25, right: 40),
                              child: InkWell(
                                onTap: () {
//                                  share(context);
                                },
                                child: Image.asset(
                                  'assets/images/recommend_btn_xxhdpi.png',
                                  height: 60,
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
