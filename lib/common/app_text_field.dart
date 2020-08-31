import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextField extends StatefulWidget {
  final Widget child;
  final String hintText;
  AppTextField({Key key, @required this.child, this.hintText}) : super(key: key);
  _AppTextFieldState createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextFormField(
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              hintText: widget.hintText??"FULL NAME", hintStyle: GoogleFonts.montserrat(),
              labelStyle: TextStyle(
                color: Colors.black87,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: new BorderSide(color: Color(0xfff1f0ec)),
                borderRadius: BorderRadius.circular(10),
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
        )
      ],
    );
  }
}
