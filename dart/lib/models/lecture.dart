import 'dart:ffi';
import 'package:chuva_dart/models/category.dart';
import 'package:chuva_dart/models/location.dart';
import 'package:chuva_dart/models/speaker.dart';
import 'package:chuva_dart/models/types.dart';

class Lecture {
  final Int id;
  final Long changed;
  final DateTime start;
  final DateTime end;
  final String title;
  final String description;
  final Category category;
  final List<Location> locations;
  final LectureType type;
  final List<Speaker> speakers;

  Lecture(
      this.id,
      this.changed,
      this.start,
      this.end,
      this.title,
      this.description,
      this.category,
      this.locations,
      this.type,
      this.speakers);
}
