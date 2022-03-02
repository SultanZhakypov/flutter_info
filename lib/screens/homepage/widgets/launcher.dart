import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Launcher extends StatefulWidget {
  Launcher({Key? key}) : super(key: key);

  @override
  State<Launcher> createState() => _LauncherState();
}

class _LauncherState extends State<Launcher> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed:() async => {await launch('tel:+996700117882')},
      icon: Icon(Icons.phone),
      color: Colors.green,
    );
  }
}
