//#Packages
import 'package:flutter/material.dart';

class ChatMessage {
  final String msgContent;
  final String msgType;

  const ChatMessage({
    @required this.msgContent,
    @required this.msgType,
  });
}
