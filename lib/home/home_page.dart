import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../styles.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  final FocusNode passwordField = FocusNode();
  bool _isObsecure = true;
  void _changeObsecure() {
    setState(() {
      _isObsecure = !_isObsecure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Login to your account",
                style: secondaryBold,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Please login to continue',
                style: Theme.of(context).textTheme.subtitle,
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                style: Theme.of(context).textTheme.subtitle,
                decoration: InputDecoration(
                  labelText: "Email address",
                  labelStyle: Theme.of(context).textTheme.subtitle,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                style: Theme.of(context).textTheme.subtitle,
                focusNode: passwordField,
                decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: Theme.of(context).textTheme.subtitle,
                  suffixIcon: new InkWell(
                    onTap: _changeObsecure,
                    highlightColor: Colors.transparent,
                    child: new Container(
                      width: 0,
                      alignment: Alignment.center,
                      child: Text(
                        _isObsecure ? "Show" : "Hide",
                        style: Theme.of(context).textTheme.subtitle.copyWith(
                              color: Theme.of(context).primaryColor,
                            ),
                      ),
                    ),
                    splashColor: Colors.transparent,
                  ),
                ),
                obscureText: _isObsecure,
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                child: Text("Forgot Password?",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(color: Colors.black45)),
              ),
              SizedBox(height: 20.0),
              SizedBox(
                width: double.infinity,
                child: RaisedButton(
                  color: Color(0xFF5CC4BE),
                  child: Container(
                    width: 105,
                    height: 46,
                    child: Center(
                      child: Text(
                        'LOGIN',
                        style: GoogleFonts.montserrat(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                child: Text('OR', textAlign: TextAlign.center, style: GoogleFonts.montserrat(
                    color: Colors.black45
                ),),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                child: RaisedButton(
                  color: Colors.white,
                  child: Text(
                    'Sign in with Google'
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: RaisedButton(
                  child: Text(
                      'Sign in with Facebook'
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "New user? ",
                      style: GoogleFonts.montserrat(
                          color: Colors.blueAccent
                      ),
                    ),
                    new Text(
                      "Sign up now",
                      style: GoogleFonts.montserrat(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              )

            ],
          ),
        ),
      ),
    );
  }
}
