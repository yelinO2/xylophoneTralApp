import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  xylophoneBar({required Color color, required int noteNumber}) {
    final player = AudioCache();
    return Expanded(
      child: InkWell(
        onTap: () {
          player.play('note$noteNumber.wav');
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Xylophone'),
      // ),
      body: Column(
        children: [
          xylophoneBar(color: Colors.red, noteNumber: 1),
          xylophoneBar(color: Colors.orange, noteNumber: 2),
          xylophoneBar(color: Colors.yellow, noteNumber: 3),
          xylophoneBar(color: Colors.green, noteNumber: 4),
          xylophoneBar(color: Colors.blue, noteNumber: 5),
          xylophoneBar(color: Colors.purple, noteNumber: 6),
          xylophoneBar(color: Colors.teal, noteNumber: 7),
        ],
      ),
    );
  }
}
