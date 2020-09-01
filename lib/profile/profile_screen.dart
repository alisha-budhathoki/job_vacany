import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_application/common/app_card.dart';
import 'package:job_application/common/app_text_field.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        color: Colors.grey,
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(
                  'assets/images/user_img_register.png',
                  width: double.infinity,
                  height: 500,
                  fit: BoxFit.fill,
                ),
                Positioned(
                  top: 100,
                  left: 10,
                  right: 10,
                  child: Container(
                    height: 480,
                    width: 390,
                    child: Card(
                      color: Colors.blueGrey,
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Container(
                                    height: 70,
                                    width: 70,
                                    child: Container(child: Image.asset('assets/images/pdf.png'))),
                                RaisedButton(
                                  onPressed: () {},
                                  color: Colors.white70,
                                  child: Text('Choose'),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          AppTextField(
                            hintText: 'Full name',
                          ),
                          AppTextField(
                            hintText: 'Country',
                          ),
                          AppTextField(
                            hintText: 'E-mail',
                          ),
                          AppTextField(
                            hintText: 'Phone number',
                          ),
                          RaisedButton(
                            color: Colors.yellow,
                            onPressed: () {},
                            child: Text('Send'),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            RaisedButton(onPressed: ()
                {}
                ,color: Colors.white,child: Text('asndsm'))
          ],
        ),
      ),
    );
  }
}
