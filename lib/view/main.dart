import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/view/home.dart';
import 'package:note_app/widget/const.dart';

void main() async {
  await Hive.initFlutter();
 await Hive.openBox(kNoteBox);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NOTE APP',
      theme: ThemeData.dark(),
      home: const HOME(),
      debugShowCheckedModeBanner: false,
    );
  }
}
