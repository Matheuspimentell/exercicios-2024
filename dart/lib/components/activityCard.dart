import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ActivityCard extends StatelessWidget {
  final String title;
  final String speaker;
  final String type;
  final DateTime start;
  final DateTime end;
  final void Function()? onPress;

  const ActivityCard(
      {super.key,
      required this.title,
      required this.speaker,
      required this.type,
      required this.start,
      required this.end,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    DateFormat formatter = DateFormat('hh:mm');

    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        margin: const EdgeInsets.all(10.0),
        color: Colors.orange,
        child: Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(5.0),
                    bottomRight: Radius.circular(5.0))),
            child: ListTile(
              onTap: onPress,
              isThreeLine: true,
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$type de ${formatter.format(start)}h até ${formatter.format(end)}h',
                    style: const TextStyle(fontSize: 12.0),
                  ),
                  Text(
                    title,
                    style: const TextStyle(fontSize: 20.0),
                  ),
                ],
              ),
              subtitle: Text(
                speaker,
                style: const TextStyle(fontSize: 16.0, color: Colors.grey),
              ),
              trailing: const Icon(Icons.bookmark, color: Colors.blueGrey),
            ),
          ),
        ));
  }
}
