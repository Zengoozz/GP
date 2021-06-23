//#Packages
import 'package:flutter/material.dart';
//#Widgets
import 'W_chatTextBox.dart';
import 'W_chat.dart';
import 'S_ticketScreen.dart';
import 'M_chatMsg.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  PreferredSizeWidget appBar = AppBar();
  final List<ChatMessage> chatMsg = [];

  void _sendMsg(String msgContent) {
    final newMsg = ChatMessage(
      msgContent: msgContent,
      msgType: 'Sender',
    );

    setState(() {
      chatMsg.add(newMsg);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).accentColor,
          iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
          elevation: 5,
          flexibleSpace: SafeArea(
            child: Row(
              children: [
                /* IconButton(
                  icon: Icon(Icons.arrow_back),
                  color: Theme.of(context).primaryColor,
                  iconSize: 30,
                  onPressed: () {/*print (MediaQuery.of(context).size);*/},
                ), */
                SizedBox(
                  width: 50,
                ),
                CircleAvatar(
                  maxRadius: 20,
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('User_Name',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          )),
                      SizedBox(
                        height: 0,
                      ),
                      Text(
                        'Online',
                        style: TextStyle(
                          color: Theme.of(context).hintColor,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          actions: [
            PopupMenuButton(
              itemBuilder: (BuildContext ctx) => [
                PopupMenuItem(
                  child: Text('Search for Transaction'),
                ),
                PopupMenuItem(
                  child: Text('Check Ticket'),
                  value: TicketTable.routeName,
                ),
              ],
              onSelected: (value) => Navigator.of(context).pushNamed(value),
            )
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Chat(chatMsg),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? (MediaQuery.of(context).size.height) * 0.07
                        : (MediaQuery.of(context).size.height) * 0.15,
                child: ChatTxtBox(_sendMsg),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
