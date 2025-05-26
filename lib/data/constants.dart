import 'package:flutter/material.dart';

class KTextStyle {
  static const TextStyle titleTealText = TextStyle(
    color: Colors.teal,
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle desText = TextStyle(fontSize: 16.0);
}

class KConstants {
  static const String themeModeKey = 'isDarkKey';
}

class KValue {
  final String title;
  final String description;

  KValue({required this.title, required this.description});
}

final List<KValue> kValues = [
  KValue(title: 'Title 1', description: 'Description 1'),
  KValue(title: 'Title 2', description: 'Description 2'),
  KValue(title: 'Title 3', description: 'Description 3'),
  KValue(title: 'Title 4', description: 'Description 4'),
  KValue(title: 'Title 5', description: 'Description 5'),
];
