import 'package:flutter/material.dart';

class SpeakerBio extends StatelessWidget {
  const SpeakerBio({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 28.0),
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
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18.0),
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
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    'dom., 26/11/2023',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                ),
              ],
            ),
          ),
        ),
        Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
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
                child: const ListTile(
                  isThreeLine: true,
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mesa redonda de 07:00 até 08:00',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text(
                        'A Física dos Buracos Negros Supermassivos',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ],
                  ),
                  subtitle: Text(
                    'Stephen William Hawking',
                    style: TextStyle(fontSize: 16.0, color: Colors.grey),
                  ),
                  trailing: Icon(Icons.bookmark, color: Colors.blueGrey),
                ),
              ),
            ))
      ],
    );
  }
}
