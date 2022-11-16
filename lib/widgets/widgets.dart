import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/models.dart';

class EventWidget extends StatelessWidget {
  final Event task;

  const EventWidget({
    Key? key,
    required this.task,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shadowColor: const Color(0xff2da9ef),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 16,
        ),
        minLeadingWidth: 2,
        leading: Container(
          width: 2,
          color: const Color(0xff2da9ef),
        ),
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            task.title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        subtitle: Text(
          task.description,
          style: TextStyle(
            color: Colors.blue.shade700,
            fontSize: 16,
          ),
        ),
        trailing: Text(
          "${DateFormat('dd/MM\nhh:mm a').format(task.startTime)}\n${DateFormat("hh:mm a").format(task.endTime)}",
          textAlign: TextAlign.right,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}

class LecturerWidget extends StatelessWidget {
  final Lecturer info;
  final bool useEnglish;

  const LecturerWidget({
    Key? key,
    required this.info,
    required this.useEnglish,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shadowColor: const Color(0xff2da9ef),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      child: ListTile(
        leading: CircleAvatar(
          foregroundImage:
              ExactAssetImage('assets/images/profile/${info.image}'),
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 16,
        ),
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            info.name,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        subtitle: Text(
          info.description,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
          // textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
