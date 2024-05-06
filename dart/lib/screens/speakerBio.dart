import 'package:flutter/material.dart';
import './activityDetails.dart';
import './speakerBio.dart';
import '../components/activityCard.dart';

class SpeakerBio extends StatelessWidget {
  const SpeakerBio({super.key});

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
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.blue,
                    child: Text(
                      'SH',
                      style: TextStyle(fontSize: 30.0),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Stephen William Hawking',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 28.0),
                    ),
                    Text(
                      'Universidade de Cambridge',
                      style: TextStyle(fontSize: 20.0, color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bio',
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 18.0),
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis efficitur, eros tempus lobortis blandit, dolor mi euismod felis, in maximus dui elit a libero. Morbi vel iaculis massa. Cras blandit lacus nec sem ultrices, in maximus dolor dignissim. Suspendisse arcu mi, lobortis luctus eleifend ut, accumsan sed purus. Mauris at.',
                    style: TextStyle(fontSize: 16.0),
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Atividades',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        'dom., 26/11/2023',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ActivityCard(
                title: 'A Física dos Buracos Negros Supermassivos',
                speaker: 'Stephen William Hawking',
                type: 'Mesa redonda',
                start: DateTime(2024, DateTime.may, 06, 7, 0),
                end: DateTime(2024, DateTime.may, 06, 8, 0),
                onPress: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ActivityDetails())))
          ],
        ));
  }
}
