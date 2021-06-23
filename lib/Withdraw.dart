import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Withdraw extends StatefulWidget {
  @override
  WithdrawState createState() => WithdrawState();
}

class WithdrawState extends State<Withdraw> {
  int amount = 150;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      // No app bar
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          'Withdraw',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0),
        ),
        SizedBox(
          height: 75.0,
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          child: TextField(
            style: TextStyle(
              color: Color(0xff000000),
            ),
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              //contentPadding: const EdgeInsets.all(20.0),
              hintText: "Enter Amount to be Withdrawn ",
              filled: true,
              fillColor: Color(0xffffffff),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 100.0,
        ),
        FlatButton(
          minWidth: 200.0,
          height: 50.0,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Color(0xffA8A8A8)),
            borderRadius: BorderRadius.circular(6.0),
          ),
          color: Color(0xffffffff),
          child: Text('Next',
              style: TextStyle(
                  color: Color(0xff1da1f2),
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0)),
          onPressed: () {},
        ),
      ]),
    );
  }
}
