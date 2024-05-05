import 'dart:ffi';

class Speaker {
  final Int id;
  final String title;
  final String name;
  final String institution;
  final String bio;
  final String? picturePath;
  final Int? weight;
  final String role;
  final String hash;

  Speaker(this.id, this.title, this.name, this.institution, this.bio, this.role,
      this.hash,
      [this.picturePath, this.weight]);
}
