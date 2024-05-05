import 'dart:ffi';

class Location {
  final Int id;
  final String title;
  final String parent;
  final String? map;

  Location(this.id, this.title, this.parent, [this.map]);
}
