import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/fonts.dart';
import 'package:flutter_application_2/constants/images.dart';
import 'package:flutter_application_2/screens/homepage/widgets/bottomsheet.dart';

class ListTiles extends StatelessWidget {
  ListTiles(
      {Key? key,
      required this.title,
      required this.imagess,
      required this.navigator})
      : super(key: key);
  String title;
  String imagess;
  Widget navigator;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => navigator));
    },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      iconColor: Colors.green,
      tileColor: Colors.white,
      contentPadding: EdgeInsets.all(11),
      leading: CircleAvatar(
        backgroundImage: AssetImage(imagess),
        radius: 30,
      ),
      title: Text(title,
      style: Fonts.fontSize16,),
      trailing: const BottomSheetScreen()
      );
  }
}
