import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    const title = 'To do list app in flutter';

    
    
    return MaterialApp(
      title: title,
      theme: ThemeData(
    // Define the default brightness and colors.
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.green,
      // ···
      brightness: Brightness.light,
    )),
      home: Scaffold(
        appBar: AppBar(title: const Text(title)),
        body: ListView(
          children: const <Widget>[
            ListTile(leading: Icon(Icons.list), title: Text('To do list')),
            ListTile(leading: Icon(Icons.check_circle_rounded), title: Text('1. Exercise for 27 minutes...')),
            ListTile(leading: Icon(Icons.check_circle_rounded), title: Text('2. Checking today\'s tasks')),
            ListTile(leading: Icon(Icons.check_circle_outlined), title: Text('3. Complete assignment')),
            ListTile(leading: Icon(Icons.check_circle_outlined), title: Text('4. ---')),
            ListTile(leading: Icon(Icons.add), tileColor: Colors.lightBlue),
          ],
        ),
        floatingActionButton: FloatingActionButton(
        onPressed:
            // If not yet listening for speech start, otherwise stop
            null,
            // _speechToText.isNotListening ? _startListening : _stopListening,
        // tooltip: 'Listen',
        child: Icon(true ? Icons.mic_off : Icons.mic),
      ),
      ),
    );
  }
}