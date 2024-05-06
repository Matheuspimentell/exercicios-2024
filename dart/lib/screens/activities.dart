import 'package:flutter/material.dart';
import './activityDetails.dart';
import './speakerBio.dart';
import '../components/activityCard.dart';

class Activities extends StatelessWidget {
  const Activities({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 120.0,
          backgroundColor: Theme.of(context).colorScheme.primary,
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: Theme.of(context).colorScheme.onPrimary,
              )),
          title: Column(
            children: [
              Text('Chuva 💜 Flutter',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0,
                      color: Theme.of(context).colorScheme.onPrimary)),
              Text('Programação',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).colorScheme.onPrimary)),
            ],
          ),
        ),
        body: Column(
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 50.0,
                  child: Column(
                    children: [
                      Text(
                        'Nov',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      Text(
                        '2023',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    child: Row(
                      children: [
                        TextButton(
                            onPressed: () => print('Hello'),
                            child: Text(
                              '26',
                              style: TextStyle(
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.normal),
                            )),
                        TextButton(
                            onPressed: () => print('Hello'),
                            child: Text('28',
                                style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.normal)))
                      ],
                    ),
                  ),
                )
              ],
            ),
            ActivityCard(
              title: 'A Física dos Buracos Supermassivos',
              speaker: 'Stephen William Hawking',
              type: 'Mesa redonda',
              start: DateTime(2024, DateTime.may, 6, 7, 0),
              end: DateTime(2024, DateTime.may, 6, 8, 0),
              onPress: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ActivityDetails())),
            )
          ],
        ));
  }
}
