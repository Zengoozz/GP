import 'dart:io';
//#Packages
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'TransferPage.dart';
//Services is for SystemChrome property.

//#Widgets
import 'newTrans.dart';
import 'transactionList.dart';

import 'package:google_fonts/google_fonts.dart';
//#Models
import 'models.dart';

class BillsPage extends StatefulWidget {
  //String titleInput;
  //String priceInput;
  //final titleController = TextEditingController();
  //[final priceController = TextEditingController();

  @override
  _BillsPageState createState() => _BillsPageState();
}

class _BillsPageState extends State<BillsPage> {
  final List<Transaction> _userTransactions = [
    /*Transaction(
      id: 'a1',
      title: 'New Clothes',
      price: 14.45,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'a2',
      title: 'Groceries',
      price: 3.45,
      date: DateTime.now(),
    ),*/
  ];

  bool _showChart = false;

  List<Transaction> get _recentTransactions {
    return _userTransactions.where((tx) {
      return tx.date.isAfter(
        DateTime.now().subtract(
          Duration(days: 7),
        ),
      );
    }).toList();
  }

  void _addNewTrx(String trxTitle, double trxPrice, DateTime selectedDate) {
    final newTrx = Transaction(
      title: trxTitle,
      price: trxPrice,
      date: selectedDate,
      id: DateTime.now().toString(),
    );

    setState(() {
      _userTransactions.add(newTrx);
    });
  }

  void _startAddNewTrx(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (bCtx) {
          return GestureDetector(
            onTap: () {},
            child: NewTransaction(_addNewTrx),
            behavior: HitTestBehavior.opaque,
          );
        });
  }

  void _deleteTrx(String id) {
    setState(() {
      _userTransactions.removeWhere((tx) => tx.id == id);
    });
  }

  List<Widget> _buildLandscapeContent(
    MediaQueryData mediaQuery,
    AppBar appBar,
    Widget txListWidget,
  ) {
    return [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Show Chart',
            style: Theme.of(context).textTheme.title,
          ),
          Switch.adaptive(
              activeColor: Theme.of(context).accentColor,
              value: _showChart,
              onChanged: (val) {
                setState(() {
                  _showChart = val;
                });
              }),
        ],
      ),
      //_showChart ?
      //Container(
      //height: (mediaQuery.size.height -
      // appBar.preferredSize.height -
      // mediaQuery.padding.top) *
      //  0.7,
      //child: //Chart(_recentTransactions),
      //):
      txListWidget //),
    ];
  }

  List<Widget> _buildPortraitContent(
    MediaQueryData mediaQuery,
    AppBar appBar,
    Widget txListWidget,
  ) {
    return [
      /*Container(
        height: (mediaQuery.size.height -
            appBar.preferredSize.height -
            mediaQuery.padding.top) *
            0.3,
        child: Chart(_recentTransactions),
      ),*/
      txListWidget,
    ];
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final isLandScape = mediaQuery.orientation == Orientation.landscape;
    //to get info about app bar we saved it in seperated value from its default

    return Scaffold(
        appBar: AppBar(
          title: Text("bills"),
        ),
        body: ListView(
          children: [
            TransactionList(_userTransactions, _deleteTrx),
            
          ],
        ),
        floatingActionButton: FloatingActionButton(
              backgroundColor: Theme.of(context).primaryColor,
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
              onPressed: () => _startAddNewTrx(context),
            ),

        //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

        );
  }
}
