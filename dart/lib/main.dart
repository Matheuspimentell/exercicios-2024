import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const ChuvaDart());
}

class ChuvaDart extends StatelessWidget {
  const ChuvaDart({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff587CAF)),
        useMaterial3: true,
      ),
      home: const Calendar(),
    );
  }
}

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  DateTime _currentDate = DateTime(2023, 11, 26);
  bool _clicked = false;

  void _changeDate(DateTime newDate) {
    setState(() {
      _currentDate = newDate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 120.0,
          backgroundColor: Theme.of(context).colorScheme.primary,
          leading: IconButton(
              onPressed: () => print('Hello!'),
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
                const Column(
                  children: [Text('Nov'), Text('2023')],
                ),
                Container(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  child: Row(
                    children: [
                      TextButton(
                          onPressed: () => print('Hello'),
                          child: const Text('26')),
                      TextButton(
                          onPressed: () => print('Hello'),
                          child: const Text('28'))
                    ],
                  ),
                )
              ],
            )
          ],
        ));
  }
}

class Activity extends StatefulWidget {
  const Activity({super.key});

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  bool _favorited = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.inversePrimary,
      child: Column(children: [
        Text(
          'Activity title',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const Text('A Física dos Buracos Negros Supermassivos'),
        const Text('Mesa redonda'),
        const Text('Domingo 07:00h - 08:00h'),
        const Text('Sthepen William Hawking'),
        const Text('Maputo'),
        const Text('Astrofísica e Cosmologia'),
        ElevatedButton.icon(
          onPressed: () {
            setState(() {
              _favorited = !_favorited;
            });
          },
          icon: _favorited
              ? const Icon(Icons.star)
              : const Icon(Icons.star_outline),
          label: Text(
              _favorited ? 'Remover da sua agenda' : 'Adicionar à sua agenda'),
        )
      ]),
    );
  }
}
