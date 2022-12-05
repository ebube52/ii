import 'package:flutter/material.dart';

import 'Tweet_Widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab03 and 04',
      theme: ThemeData(
      ),
        // visualDensity: VisualDensity.adaptivePlatformDensity,
      home:TweetWidget(),
    );
  }
}

