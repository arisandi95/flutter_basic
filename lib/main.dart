import 'package:flutter/material.dart';
// import 'theme.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Flutter Basic Sands',
            style: GoogleFonts.lato(),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.add_alert),
              tooltip: 'Show Snackbar',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('This is a snackbar'))
                );
              },
            ),
          ],
        ),
        body: Image.asset(
          'assets/images/primary.png'
        ),
      ),
    );
  }
}
