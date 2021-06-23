//#Packages
import 'package:flutter/material.dart';

//#Data
import 'M_chatMsg.dart';

class Chat extends StatelessWidget {
  final List<ChatMessage> chatMsgs;

  Chat(this.chatMsgs);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatMsgs.length,
      padding: EdgeInsets.only(
        top: 10,
        bottom: 10,
      ),
      itemBuilder: (context, index) {
        return Container(
                  padding:
                      EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
                  child: Align(
                    alignment: (chatMsgs[index].msgType == 'reciever'
                        ? Alignment.topLeft
                        : Alignment.topRight),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: (chatMsgs[index].msgType == 'reciever'
                            ? Theme.of(context).hintColor
                            : Theme.of(context).primaryColorDark),
                      ),
                      padding: EdgeInsets.all(15),
                      child: Text(
                        (chatMsgs[index].msgContent),
                        style: TextStyle(color: Theme.of(context).accentColor),/*TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),*/
                      ),
                    ),
                  ),
                );
              
            
          
        
      },
    );
  }
}
