import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            child: Column(
              children: <Widget>[
                Image.asset(
                  'assets/images/user_img_register.png',
                  width: double.infinity,
                  height: 180,
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),
          Positioned(
            top: 305,
            child: Container( color: Colors.black87, child: Column(
              children: <Widget>[
                Text('asja'),
              ],
            )),
          )
        ],
      ),
    );
  }
}
