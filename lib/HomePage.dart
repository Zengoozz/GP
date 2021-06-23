import 'package:cayshly_final/AddMoney/AddMoneyPage.dart';
import 'package:cayshly_final/Support/S_chatScreen.dart';
import 'package:cayshly_final/Support/S_ticketScreen.dart';
import 'package:cayshly_final/Transfer/BillsPage.dart';
import 'package:cayshly_final/Transfer/TransferPage.dart';
import 'package:cayshly_final/Transfer/models.dart';
import 'package:cayshly_final/Withdraw.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'flutterflow/flutterflow.dart';
import 'flutterflow/flutterflow.dart';
import 'package:cayshly_final/Transactions.dart';

import 'package:intl/intl.dart';

class HomePageWidget extends StatefulWidget {
  HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              width: 100,
              height: 100,
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              decoration: BoxDecoration(),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 75,
                    height: 75,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.network(
                      'https://picsum.photos/seed/439/600',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Omar',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: 'cairo',
                          ),
                        ),
                        Text(
                          'Welcome back!',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xA9303030),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: new GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddMoneyPage()),
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color(0xFF1DA1F2),
                    borderRadius: BorderRadius.circular(30),
                    shape: BoxShape.rectangle,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Balance',
                        style: TextStyle(
                          fontFamily: 'cairo',
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        '25,000 EGP',
                        style: TextStyle(
                          fontFamily: 'cairo',
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: 100,
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 1, 5, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TransferPageWidget()),
                              );
                            },
                            icon: Icon(
                              Icons.add_box_outlined,
                              color: Colors.black,
                              size: 30,
                            ),
                            iconSize: 30,
                          ),
                          Text(
                            'Transfer',
                            style: TextStyle(
                              fontFamily: 'cairo',
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: 100,
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 1, 5, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BillsPage()),
                              );
                            },
                            icon: Icon(
                              Icons.add_box_outlined,
                              color: Colors.black,
                              size: 30,
                            ),
                            iconSize: 30,
                          ),
                          Text(
                            'Bill',
                            style: TextStyle(
                              fontFamily: 'cairo',
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: 100,
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 1, 5, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Withdraw()),
                              );
                            },
                            icon: Icon(
                              Icons.add_box_outlined,
                              color: Colors.black,
                              size: 30,
                            ),
                            iconSize: 30,
                          ),
                          Text(
                            'Withdraw',
                            style: TextStyle(
                              fontFamily: 'cairo',
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: 100,
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 1, 5, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ChatScreen()),
                              );
                            },
                            icon: Icon(
                              Icons.add_box_outlined,
                              color: Colors.black,
                              size: 30,
                            ),
                            iconSize: 30,
                          ),
                          Text(
                            'Support',
                            style: TextStyle(
                              fontFamily: 'cairo',
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            ListView(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          'Recent Transactions',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: 'cairo',
                          ),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => AllTransactions())),
                        text: 'See all ',
                        options: FFButtonOptions(
                          width: 150,
                          height: 30,
                          color: Color(0xFF1da1f2),
                          textStyle: TextStyle(
                            fontFamily: 'cairo',
                            color: Colors.white,
                          ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: 12,
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 1),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: MediaQuery.of(context).size.height * 0.1,
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.25,
                          maxHeight: MediaQuery.of(context).size.height * 0.1,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.network(
                                'https://picsum.photos/seed/127/600',
                                width: MediaQuery.of(context).size.width * 0.25,
                                height:
                                    MediaQuery.of(context).size.height * 0.1,
                                fit: BoxFit.cover,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: 100,
                      decoration: BoxDecoration(),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Service name',
                              style: TextStyle(
                                fontFamily: 'cairo',
                                fontSize: 17,
                              ),
                            ),
                            Text(
                              '26 May',
                              style: TextStyle(
                                fontFamily: 'cairo',
                                color: Color(0xFFA8A8A8),
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Text(
                                '-120LE',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 1),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: MediaQuery.of(context).size.height * 0.1,
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.25,
                          maxHeight: MediaQuery.of(context).size.height * 0.1,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.network(
                                'https://picsum.photos/seed/127/600',
                                width: MediaQuery.of(context).size.width * 0.25,
                                height:
                                    MediaQuery.of(context).size.height * 0.1,
                                fit: BoxFit.cover,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: 100,
                      decoration: BoxDecoration(),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Service name',
                              style: TextStyle(
                                fontFamily: 'cairo',
                                fontSize: 17,
                              ),
                            ),
                            Text(
                              '26 May',
                              style: TextStyle(
                                fontFamily: 'cairo',
                                color: Color(0xFFA8A8A8),
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Text(
                                '-120LE',
                                style: TextStyle(
                                  fontFamily: 'cairo',
                                  fontSize: 18,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
