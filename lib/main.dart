import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SOO Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Layout Templet'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container'),
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(20.0, 30.0, 40.0, 50.0),
        margin: const EdgeInsets.all(100.0),
        width: 200,
        height: 100,
        transform: Matrix4.rotationZ(0.5),
        decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(color: Colors.black, width: 3),
          borderRadius: const BorderRadius.all(Radius.circular(18)),
          boxShadow: const [
            BoxShadow(blurRadius: 10),
          ],
        ),
        child: const Text(
          'Flutter Layout Templet',
          style: TextStyle(color: Colors.red),
        ),
      ),
    );
  }
}
