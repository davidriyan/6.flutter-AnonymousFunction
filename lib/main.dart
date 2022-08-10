import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //membuat properties
  String message = "tombol sudah ditekan";
  //akhir properties
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('anonymous function'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(message),
              ElevatedButton(
                  //membuat anonymous function
                  onPressed: () {
                    setState(() {
                      message = "tombol sudah ditekan";
                    });
                  },
                  //akhir anonymous function
                  child: Text('CLICK'))
            ],
          ),
        ),
      ),
    );
  }
}
