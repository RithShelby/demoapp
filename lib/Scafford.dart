import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Map'),
          centerTitle: true,
          leading: Icon(Icons.login),
          actions: [Text("End Data"), Icon(Icons.login)],
          backgroundColor: Colors.teal,
        ),
      ),
    );
  }
}
