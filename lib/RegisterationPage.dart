import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistrationPageWidget extends StatefulWidget {
  RegistrationPageWidget({Key key}) : super(key: key);

  @override
  _RegistrationPageWidgetState createState() => _RegistrationPageWidgetState();
}

class _RegistrationPageWidgetState extends State<RegistrationPageWidget> {
  TextEditingController fullNameTextFieldController = TextEditingController();
  TextEditingController passwordTextFieldController = TextEditingController();
  TextEditingController nationalIdTextFieldController = TextEditingController();
  TextEditingController emailTextFieldController = TextEditingController();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    fullNameTextFieldController = TextEditingController();
    passwordTextFieldController = TextEditingController();
    nationalIdTextFieldController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xff1DA1F2),
        automaticallyImplyLeading: true,
        title: Text(
          'Sign Up',
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
              alignment: Alignment(0.04, -0.79),
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Image.network(
                  'https://picsum.photos/seed/389/600',
                  width: 300,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment(0, 0),
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: TextFormField(
                  controller: fullNameTextFieldController,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Full Name',
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
                ),
              ),
            ),
            Align(
              alignment: Alignment(-0.17, 0.37),
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: TextFormField(
                  controller: emailTextFieldController,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Email',
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
                ),
              ),
            ),
            Align(
              alignment: Alignment(0.06, 0.55),
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
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
                ),
              ),
            ),
            Align(
              alignment: Alignment(-5.89, 0.18),
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 20),
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
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment(-0.65, 0.79),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                    child: FlatButton(
                      child: Text('Button'),
                      onPressed: () {
                        print('nationalIdButton pressed ...');
                      },
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(0.54, 0.8),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 2, 0),
                    child: FlatButton(
                      child: Text('Button'),
                      onPressed: () {
                        print('nationalIdButton pressed ...');
                      },
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
