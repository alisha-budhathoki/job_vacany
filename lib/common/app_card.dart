
import 'package:flutter/material.dart';

class AppCard extends StatefulWidget {
  final Widget child;
  AppCard({Key key, @required this.child}) : super(key: key);
  _AppCardState createState() => _AppCardState();
}

class _AppCardState extends State<AppCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          color: Colors.black12,
          child: Container(
            child: widget.child,
          ),
        ),
      ],
    );
  }
}
