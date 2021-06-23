import 'dart:ui';

import 'package:cayshly_final/RegisterationPage.dart';
import 'package:cayshly_final/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'flutterflow/flutterflow.dart';
import 'flutterflow/flutterflow.dart';

import 'package:intl/intl.dart';

class SignInWidget extends StatefulWidget {
  SignInWidget({Key key}) : super(key: key);

  @override
  _SignInWidgetState createState() => _SignInWidgetState();
}

class _SignInWidgetState extends State<SignInWidget> {
  TextEditingController nationalIdTextFieldController = TextEditingController();
  TextEditingController passwordTextFieldController = TextEditingController();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    nationalIdTextFieldController = TextEditingController();
    passwordTextFieldController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xff1DA1F2),
        automaticallyImplyLeading: true,
        title: Text(
          'Sign In',
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          children: [
            Align(
              alignment: Alignment(0.09, -0.91),
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 20),
                child: Image.network(
                  'https://picsum.photos/seed/268/600',
                  width: 250,
                  height: 250,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Align(
              alignment: Alignment(0, -0.06),
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: TextFormField(
                  controller: nationalIdTextFieldController,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'National ID',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xA9000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xA9000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                      ),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            Align(
              alignment: Alignment(0, 0.11),
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextFormField(
                  controller: passwordTextFieldController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xA9000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xA9000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                      ),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            Align(
              alignment: Alignment(-1, 0),
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: FlatButton(
                  child: Text(
                    'Forget Password?',
                    style: TextStyle(color: Color(0xff1da1f2)),
                  ),
                  onPressed: () {
                    print('forgotPasswordButton pressed ...');
                  },
                ),
              ),
            ),
            Align(
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
                child: FlatButton(
                  minWidth: 200.0,
                  height: 50.0,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Color(0xffA8A8A8)),
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  color: Color(0xffffffff),
                  child: Text('Sign In',
                      style: TextStyle(
                          color: Color(0xff1da1f2),
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePageWidget()),
                    );
                  },
                ),
              ),
            ),
            Align(
                alignment: Alignment(0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have account?'),
                    FlatButton(
                      color: Color(0xfffffff),
                      child: Text('Sign up now!',
                          style: TextStyle(color: Color(0xff1da1f2))),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomePageWidget()),
                        );
                      },
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
