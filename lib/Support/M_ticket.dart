//#Packages
import 'package:flutter/material.dart';

class TicketDetail {
  final String id;
  final String name;
  final String userName;
  final String assignedTo;
  final String status;
  DateTime timeStamp;

   TicketDetail({
    @required this.id,
    @required this.name,
    @required this.userName,
    @required this.assignedTo,
    @required this.status,
    @required this.timeStamp,
  });
}
