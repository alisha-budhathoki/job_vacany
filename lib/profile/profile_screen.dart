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
        color: Colors.red,
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
              top: 120,
                left: 10,
                right: 10,
                child:Container(
                  height: 200,
                  width: 390,
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(height: 70, width: 70,child: Card(child: Text('dsad'))),
                              RaisedButton(
                                onPressed: (){
                                },
                                color: Colors.yellow,
                                child: Text(
                                  'Choose'
                                ),
                              )
                            ],
                          ),
                        ),
                        AppTextField(
                          hintText: 'dsa',
                        )
                      ],
                    ),

                  ),
                ),
            ),
                TextFormField()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
