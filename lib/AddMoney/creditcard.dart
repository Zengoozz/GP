import 'package:flutter/material.dart';

class creditcard extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return CreditCardState();

  }


}

class CreditCardState extends State <creditcard>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Credit Card', style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),

      ),



    );

  }




}