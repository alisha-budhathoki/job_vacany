import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_application/libraries/expansion_tile.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
//      width: double.maxFinite,
        child: Drawer(
            child: Container(
              color: Colors.black87,
//            color: Color(0xfff1f0ec),
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
                        CircleAvatar(),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text('Hello ', style: TextStyle(color: Colors.white),),
                              ],
                            ),

                            Text(
                              'skak',
                              style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.left,
                            ), Container(
                              child: Column(
                                children: <Widget>[
                                  Text('asn', style: TextStyle(color: Colors.white),)
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
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'My Profile',
                          style: GoogleFonts.montserrat(fontSize: 16, color: Colors.white),
                        )),
                  ),
                  ExpansionTile2(
                    title: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'My Job',
                            style: GoogleFonts.montserrat(fontSize: 16, color: Colors.white),
                          )),
                    ),
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35, 0, 5, 5),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Web developer',
                            style:
                            GoogleFonts.montserrat(fontSize: 15, color: Colors.white),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35, 10, 5, 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Mobile developer',
                            style:
                            GoogleFonts.montserrat(fontSize: 15, color: Colors.white),
                          ),
                        ),
                      ),                  ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Local Jobs',
                          style: GoogleFonts.montserrat(
                            fontSize: 16,
                            color: Colors.white,
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
                          'More Topics',
                          style: GoogleFonts.montserrat(
                            fontSize: 16,
                            color: Colors.white,
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
                          'Around Job Planet',
                          style: GoogleFonts.montserrat(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        )),
                  ),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Invite Friends',
                              style: GoogleFonts.montserrat(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.share, color: Colors.white,)
                          ],
                        )),
                  ),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Logout',
                              style: GoogleFonts.montserrat(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.local_gas_station, color: Colors.white,)
                          ],
                        )),
                  ),

                ],
              ),
            )),
      ),
    );
  }
}
