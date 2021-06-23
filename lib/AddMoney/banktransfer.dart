import 'package:flutter/material.dart';

class banktransfer extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return BankTransferState();

  }


}

class BankTransferState extends State <banktransfer>{
  TextEditingController textController1;
  TextEditingController textController2;
  TextEditingController textController3;
  TextEditingController textController4;

  @override

  void initState() {
    super.initState();
    textController1 = TextEditingController(text: 'Banque Misr');
    textController2 = TextEditingController(text: 'EG 980220164616874641684');
    textController3 = TextEditingController(text: 'BMGECXXXX');
    textController4 = TextEditingController(text: '29910210101816');
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Bank Transfer', style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),

      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: ListView(

            children: [
              Text(
                'Make a local money transfer from your bank account and enter the following data:',

              ),
              Align(
                alignment: Alignment(-1, 0),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Text(
                    'Bank Name:',

                  ),
                ),
              ),
              TextFormField(
                enabled: false,
                controller: textController1,
                obscureText: false,
                decoration: InputDecoration(
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

                textAlign: TextAlign.center,
              ),
              Align(
                alignment: Alignment(-1, 0),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Text(
                    'Bank account Number/IBAN:',

                  ),
                ),
              ),
              TextFormField(
                enabled: false,
                controller: textController2,
                obscureText: false,
                decoration: InputDecoration(
                  hintText: '[Some hint text...]',

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

                textAlign: TextAlign.center,
              ),
              Align(
                alignment: Alignment(-1, 0),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Text(
                    'Swift Code:',

                  ),
                ),
              ),
              TextFormField(
                enabled: false,
                controller: textController3,
                obscureText: false,
                decoration: InputDecoration(
                  hintText: '[Some hint text...]',

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

                textAlign: TextAlign.center,
              ),
              Align(
                alignment: Alignment(-1, 0),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Text(
                    'Notes:',

                  ),
                ),
              ),
              TextFormField(
                enabled: false,
                controller: textController4,
                obscureText: false,
                decoration: InputDecoration(
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
                textAlign: TextAlign.center,
                ),


            ],
          ),
        ),
      ),




    );

  }




}