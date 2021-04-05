import 'package:flutter/material.dart';
import 'package:jennings/screens/navBar/navbar.dart';

class Notes extends StatefulWidget {
  @override
  _NotesState createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Text("Notes"),
      ),
    );
  }
}
