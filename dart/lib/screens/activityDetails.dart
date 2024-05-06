import 'package:flutter/material.dart';
import './activityDetails.dart';
import './speakerBio.dart';

class ActivityDetails extends StatelessWidget {
  const ActivityDetails({super.key});

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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Expanded(
                    child: Container(
                        color: Colors.purple,
                        height: 30.0,
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 5.0),
                            child: Text(
                              'Atrofísica e Cosmologia',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 16.0),
                            ),
                          ),
                        )))
              ],
            ),
            Column(
              children: [
                const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 5.0, vertical: 15.0),
                  child: Center(
                    child: Text(
                      'A Física dos Buracos Negros Supermassivos',
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 25.0),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.access_time_outlined,
                              color: Theme.of(context).colorScheme.primary,
                              size: 16.0,
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            const Text(
                              'Domingo 07:00h - 08:00h',
                              style: TextStyle(fontSize: 16.0),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Theme.of(context).colorScheme.primary,
                              size: 16.0,
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            const Text(
                              'Maputo',
                              style: TextStyle(fontSize: 16.0),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: FilledButton(
                      onPressed: () => print('Hey'),
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.blue)),
                      child: const Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.star),
                            SizedBox(width: 10.0),
                            Text(
                              'Adicionar à sua agenda',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      )),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 30.0),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean vestibulum, sem vitae viverra convallis, orci est placerat augue, quis venenatis lacus ligula quis eros. Nullam in bibendum elit. Proin luctus cursus ipsum, at imperdiet mi consectetur eu. Praesent aliquet libero eu arcu sollicitudin elementum. Cras rhoncus sed mi a ornare.',
                style: TextStyle(fontSize: 16.0),
                textAlign: TextAlign.justify,
              ),
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Palestrantes',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0),
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: ListTile(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SpeakerBio())),
                      leading: const CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Text('SH'),
                      ),
                      title: const Text('Stephen William Hawking'),
                      subtitle: const Text('Universidade de Cambridge'),
                    )),
              ],
            ),
            Expanded(
              child: Container(
                color: Colors.transparent,
              ),
            )
          ],
        ));
  }
}
