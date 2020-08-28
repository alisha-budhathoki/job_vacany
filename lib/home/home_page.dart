import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_application/home/your_job_fragment.dart';

import 'custom_drawer.dart';
import 'home_fragment.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<int> _backstack = [0];
  List<Widget> _fragments = [HomeScreen(), YourJobScreen()];


  Widget getTopMenu(int index, String textValue) {
    if (_currentIndex != index) {
      return Text(
        textValue,
        style: TextStyle(
            color: Colors.black, fontSize: 15, fontWeight: FontWeight.w300),
      );
    }
    return Container(
      padding: EdgeInsets.only(
        bottom: 3, // space between underline and text
      ),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(
            color: Colors.green[700], // Underline colour here
            width: 2.0, // Underline width
          ))
      ),

      child: Text(
        textValue,
        style: TextStyle(
          color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 15,
        backgroundColor: Colors.grey.shade50,
        iconTheme: IconThemeData(
          color: Theme
              .of(context)
              .primaryColorDark,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            InkWell(
              onTap: () {},
              child: Align(
                alignment: Alignment.centerLeft,
              ),
              focusColor: Colors.black,
              highlightColor: Colors.black,
            ),
            SizedBox(),
            InkWell(
              onTap: () {
                _currentIndex = 0;
                navigateTo(_currentIndex);
              },
              child: getTopMenu(0, 'Home'),
            ),
            Text('       '),
            InkWell(
              onTap: () {
                _currentIndex = 1;
                navigateTo(_currentIndex);
              },
              child: getTopMenu(1, 'Your Jobs'),
            ),
            Text('     '),
            Container(
              height: 27,
              child: RaisedButton(color: Color(0xFFfcc892),
                onPressed: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
//                        builder: (context) => GettingStartedScreen(),
                      ));
                },
                child: Center(
                  child: Text(
                    'UPGRADE',
                    style: TextStyle(
                        color: Color(0xFF33691E),
                        fontWeight: FontWeight.bold,
                        fontSize: 12
                    ),
                  ),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7)
                ),

              ),
            )
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: _fragments[_currentIndex],
          ),
        ],
      ),
        drawer: CustomDrawer(),
    );
  }

  void navigateTo(int index) {
    _backstack.add(index);
    setState(() {
      _currentIndex = index;
    });
  }
}
