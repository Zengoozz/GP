import 'package:cayshly_final/HomePage.dart';
import 'package:cayshly_final/SignInPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:cayshly_final/ScanQRCode.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Support/S_ticketScreen.dart';

bool alreadyLogged = true;
void main() {
  if (alreadyLogged) {
    runApp(new MyApp());
  } else {
    runApp(MaterialApp(
      home: SignInWidget(),
    ));
  }
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int _selectedTab = 0;
  final _pageOptions = [
    HomePageWidget(),
    ScanQRWidget(),
    SignInWidget(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue,
          accentColor: Colors.white,
          hintColor: Colors.grey[400],
          textTheme: GoogleFonts.cairoTextTheme(Theme.of(context).textTheme),
          primaryTextTheme: TextTheme(
            title: TextStyle(color: Colors.white),
          )),
      home: Scaffold(
        body: _pageOptions[_selectedTab],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedTab,
          onTap: (int index) {
            setState(() {
              print(_pageOptions[index]);
              _selectedTab = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.qr_code),
              title: Text('Scan and go'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('More'),
            ),
          ],
        ),
      ),
      routes: {
        TicketTable.routeName: (ctx) => TicketTable(),
      },
    );
  }
}
