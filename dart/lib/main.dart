import 'package:flutter/material.dart';
import 'screens/activities.dart';
import 'screens/activityDetails.dart';
import 'screens/speakerBio.dart';

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
      home: const Activities(),
    );
  }
}