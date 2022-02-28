import 'package:flutter/material.dart';

class Hurray extends StatefulWidget {
  const Hurray({Key? key}) : super(key: key);

  @override
  _HurrayState createState() => _HurrayState();
}

class _HurrayState extends State<Hurray> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Image.network('https://i.gifer.com/embedded/download/73Ha.gif'),
      ),
    );
  }
}
