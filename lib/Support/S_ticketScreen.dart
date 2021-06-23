//#Packages

import 'package:flutter/material.dart';
//#Data
import 'D_dummyData.dart';
//#Widgets
import 'W_ticketItem.dart';
import 'W_searchBar.dart';
//#Models
import 'M_ticket.dart';

class TicketTable extends StatefulWidget {
  static const routeName = '/ticket-table';

  @override
  _TicketTableState createState() => _TicketTableState();
}

class _TicketTableState extends State<TicketTable> {
  List<TicketDetail> tickets;
  String query = '';

  void _deleteTicket(String id) {
    setState(() {
      allTickets.removeWhere((tic) => tic.id == id);
      Navigator.pop(context);
    });
  }

  @override
  void initState() {
    super.initState();

    tickets = allTickets;

    assignList1();
  }

  @override
  Widget build(BuildContext context) {
    final PreferredSizeWidget appBar = AppBar(
      backgroundColor: Theme.of(context).accentColor,
      iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
      title: Text(
        'Tickets Table',
        style: TextStyle(color: Colors.black),
      ),
      elevation: 0,
    );
    //final routeArgs = ModalRoute.of(context).settings.arguments as Map<String,String>;
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: appBar,
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).orientation == Orientation.portrait
                  ? (MediaQuery.of(context).size.height -
                          appBar.preferredSize.height) *
                      0.1
                  : (MediaQuery.of(context).size.height -
                          appBar.preferredSize.height) *
                      0.25,
              child: buildSearch(),
            ),
            Divider(),
            Expanded(
              child: ListView.builder(
                  itemCount: tickets.length,
                  padding: EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                  ),
                  itemBuilder: (context, index) {
                    return TicketItem(index, _deleteTicket);
                  }),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSearch() => SearchBar(
        text: query,
        onChanged: searchTicket,
      );

  List<TicketDetail> temp = List<TicketDetail>();
  void searchTicket(String query) {
    if (query == "") {
      print("mohab");
      setState(() {
        assignList();
      });
    } else {
      temp.forEach((TicketDetail t) {
        if (query == t.name) {
          setState(() {
            temp.add(t);
            tickets = temp;
          });
        }
      });
    }
  }

  assignList() {
    this.tickets.clear();
    temp.forEach((element) {
      this.tickets.add(element);
    });
  }

  assignList1() {
    this.tickets.forEach((element) {
      temp.add(element);
    });
  }

  bool Like(String qury, String ticketsname) {
    try {
      for (int x = 0; x < query.length; x++) {
        if (query[x] != ticketsname[x]) {
          return false;
        }
        return true;
      }
    } catch (e) {
      return false;
    }
  }
}
