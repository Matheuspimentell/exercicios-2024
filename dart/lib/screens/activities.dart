import 'package:flutter/material.dart';

class Activities extends StatelessWidget {
  const Activities({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
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
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontSize: 18.0,
                              fontWeight: FontWeight.normal),
                        )),
                    TextButton(
                        onPressed: () => print('Hello'),
                        child: Text('28',
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.onPrimary,
                                fontSize: 18.0,
                                fontWeight: FontWeight.normal)))
                  ],
                ),
              ),
            )
          ],
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
