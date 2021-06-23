import 'package:flutter/material.dart';

class atmdeposit extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ATMDepositState();

  }


}

class ATMDepositState extends State <atmdeposit>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('ATM Deposit', style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),

      ),
      body :
        ListView(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1,
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.5,
                    decoration: BoxDecoration(),
                    child: Align(
                      alignment: Alignment(0, 0),
                      child: Image.asset('assets/images/success.png', width: 200, height: 200,)
                      ),
                    ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                    child: Text(
                      'OTP is Generated \nCheck now your SMS on your phone and follow the instraction ',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 17)
                    ),
                  )
                ],
              ),
            )
          ],

        ),



    );

  }




}