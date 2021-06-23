import 'package:flutter/services.dart';

import '../flutterflow/flutterflow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransferPageWidget extends StatefulWidget {
  TransferPageWidget({Key key}) : super(key: key);

  @override
  _TransferPageWidgetState createState() => _TransferPageWidgetState();
}

class _TransferPageWidgetState extends State<TransferPageWidget> {
  TextEditingController textController1;
  TextEditingController textController2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Transfer',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.cairo(
                          textStyle: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      )),
                    )
                  ],
                ),
              ),
              SizedBox.fromSize(
                child: Container(
                  height: 12,
                  width: 15,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Container(
                        width: 330,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Color(0xFFE6E6E6),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                          child: TextFormField(
                            controller: textController1,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(14),
                            ],
                            keyboardType: TextInputType.number,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'user id',
                              labelStyle: TextStyle(
                                fontFamily: 'cairo',
                                color: Color(0xffa8a8a8),
                                fontWeight: FontWeight.w500,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                            ),
                            style: TextStyle(
                              fontFamily: 'cairo',
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Container(
                        width: 330,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Color(0xFFE6E6E6),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                          child: TextFormField(
                            controller: textController2,
                            keyboardType: TextInputType.number,
                            obscureText: false,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(5),
                            ],
                            decoration: InputDecoration(
                              labelText: 'amount',
                              labelStyle: TextStyle(
                                fontFamily: 'cairo',
                                color: Color(0xffa8a8a8),
                                fontWeight: FontWeight.w500,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                            ),
                            style: TextStyle(
                              fontFamily: 'cairo',
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment(0.95, 0),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                    child: FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: ('Continue'),
                      options: FFButtonOptions(
                        width: 140,
                        height: 60,
                        color: Colors.white,
                        textStyle: GoogleFonts.cairo(
                          textStyle: TextStyle(
                            fontFamily: 'cairo',
                            color: Color(0xff1da1f2),
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        elevation: 2,
                        borderSide: BorderSide(
                          color: Color(0xffa8a8a8),
                          width: 2,
                        ),
                        borderRadius: 8,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
