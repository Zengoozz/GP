import 'package:flutter/material.dart';
import 'banktransfer.dart';
import 'atmdeposit.dart';
import 'creditcard.dart';

class AddMoneyPage extends StatefulWidget {
  AddMoneyPage({Key key, this.title = ''}) : super(key: key);

  final String title;

  @override
  _AddMoneyPageState createState() => _AddMoneyPageState();
}

class _AddMoneyPageState extends State<AddMoneyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            widget.title,
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: SafeArea(
            child: Container(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                child: ListView(
                  children: [
                    Container(
                        padding: EdgeInsets.only(bottom: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Select how to add money',
                              style: TextStyle(fontSize: 20.0),
                            ),
                            Text(
                              'All your details are saved securely',
                              style: TextStyle(
                                  fontSize: 17.0, color: Color(0xffA8A8A8)),
                            ),
                          ],
                        )),
                    Container(
                        padding: EdgeInsets.only(bottom: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              leading: ImageIcon(
                                AssetImage('assets/images/exchange.png'),
                                color: Color(0xffA8A8A8),
                              ),
                              shape: CircleBorder(),
                              title: Text(
                                'Bank Transfer',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                ),
                              ),
                              trailing: Icon(Icons.arrow_forward_ios_rounded),
                              onTap: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => banktransfer())),
                            ),
                            ListTile(
                              leading: ImageIcon(
                                AssetImage('assets/images/atm-machine.png'),
                                color: Color(0xffA8A8A8),
                              ),
                              shape: CircleBorder(),
                              title: Text(
                                'ATM Deposit',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                ),
                              ),
                              trailing: Icon(Icons.arrow_forward_ios_rounded),
                              onTap: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => atmdeposit())),
                            ),
                            ListTile(
                              leading: Icon(
                                Icons.credit_card,
                                color: Color(0xffA8A8A8),
                              ),
                              shape: CircleBorder(),
                              title: Text(
                                'Debit/Credit Card',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                ),
                              ),
                              trailing: Icon(Icons.arrow_forward_ios_rounded),
                              onTap: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => creditcard())),
                            ),
                          ],
                        )),
                  ],
                ))));
  }
}
