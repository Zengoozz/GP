import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AllTransactions extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AllTransactionsState();
  }
}

class _AllTransactionsState extends State<AllTransactions> {
  bool isVisible = false;
  double queryHeight;

/* Future<void> _filterSearch() async{
    showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 200,
            color: Colors.amber,
            child: Wrap(
              children:[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const Text('Modal BottomSheet'),
                    ElevatedButton(
                      child: Text('Close BottomSheet $cardNum'),
                      onPressed: () => Navigator.pop(context),
                    )
                  ],
                ),
              ]
            ),
          );
        });
  }
*/

  @override
  Widget build(BuildContext context) {
    queryHeight = MediaQuery.of(context).size.height;
    print(queryHeight * (15 / 100));
    return Scaffold(
      body: ListView(children: [
        Container(
          margin: EdgeInsets.only(top: 10.0),
          child: Stack(
            children: [
              Center(
                child: Text(
                  "All Transactions",
                  style: GoogleFonts.cairo(
                      textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold) //w600 semi bold
                      ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 40.0, top: 60.0),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 300.0,
                        child: TextField(
                          textAlignVertical: TextAlignVertical.bottom,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              hintText: 'Search Transaction'),
                        ),
                      ),
                      Container(
                        child: IconButton(
                            icon: Icon(Icons.filter_alt_rounded),
                            onPressed: () {
                              this.setState(() {
                                isVisible = true;
                              });
                            }),
                      ),
                    ],
                  )),
              Container(
                margin: EdgeInsets.only(top: 150.0),
                height: queryHeight - (queryHeight * (28 / 100)),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 8,
                  itemBuilder: (context, i) {
                    return Container(
                        margin: EdgeInsets.only(
                            left: 20.0, right: 20.0, bottom: 10.0),
                        height: 100.0,
                        child: InkWell(
                          onTap: () {},
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 6.0),
                                height: 90,
                                width: 90,
                                child: Card(
                                  elevation: 5,
                                  child: Image.asset('visalogo.png'),
                                ),
                              ),
                              Container(
                                child: Column(children: [
                                  Container(
                                      margin: EdgeInsets.only(
                                          left: 20.0, top: 15.0),
                                      child: Text(
                                        "Netflix",
                                        style: GoogleFonts.cairo(
                                            textStyle: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18) //w600 semi bold
                                            ),
                                      )),
                                  Container(
                                      margin:
                                          EdgeInsets.only(left: 20.0, top: 6.0),
                                      child: Text(
                                        "1 May",
                                        style: GoogleFonts.cairo(
                                            textStyle: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15) //w600 semi bold
                                            ),
                                      ))
                                ]),
                              ),
                              Container(
                                  margin: EdgeInsets.only(left: 130, top: 10.0),
                                  child: Text(
                                    "-180 LE",
                                    style: GoogleFonts.cairo(
                                        textStyle: TextStyle(
                                            color: Color(0xff1DA1F2),
                                            fontSize: 16,
                                            fontWeight: FontWeight
                                                .w600) //w600 semi bold
                                        ),
                                  ))
                            ],
                          ),
                        ));
                  },
                ),
              ),
              isVisible == false
                  ? Text('')
                  : Container(
                      margin: EdgeInsets.only(left: 100, top: 45),
                      width: 300,
                      height: 400,
                      child: Card(
                        color: Colors.blue,
                        elevation: 10.0,
                        child: Column(
                          children: [
                            Text('hello from filter'),
                            TextButton(
                                onPressed: () {
                                  this.setState(() {
                                    isVisible = false;
                                  });
                                },
                                child: Text(
                                  'OK',
                                  style: TextStyle(color: Colors.white),
                                ))
                          ],
                        ),
                      ),
                    ),
            ],
          ),
        )
      ]),
    );
  }
}
