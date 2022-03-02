import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/fonts.dart';
import 'package:flutter_application_2/constants/images.dart';
import 'package:flutter_application_2/constants/info.dart';
import 'package:flutter_application_2/screens/homepage/widgets/launcher.dart';

class AboutScreen extends StatelessWidget {
  AboutScreen(
      {Key? key,
      required this.name,
      required this.title,
      required this.directionTitle,
      required this.departmentTitle,
      required this.emailTitle,
      required this.dateTitle,
      required this.phoneTitle,
      required this.circleImage456})
      : super(key: key);
  String name;
  String title;
  String directionTitle;
  String departmentTitle;
  String emailTitle;
  String dateTitle;
  String phoneTitle;
  String circleImage456;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffe5e5e5),
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.keyboard_backspace,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        color: Color(0xFFe5e5e5),
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(circleImage456),
                    radius: 57,
                  ),
                ),
                Text(
                  name,
                  style: Fonts.fontSizeBlack20,
                ),
                SizedBox(
                  height: 11,
                ),
                Text(
                  title,
                  style: Fonts.fontWeightBlue500,
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Направление',
                  style: Fonts.fontWeight400,
                ),
                Text(
                  directionTitle,
                  style: Fonts.fontWeight500,
                ),
                SizedBox(
                  height: 28,
                ),
                Divider(),
                const Text(
                  'Отдел',
                  style: Fonts.fontWeight400,
                ),
                Text(departmentTitle, style: Fonts.fontWeight500),
                SizedBox(
                  height: 28,
                ),
                Divider(),
                const Text(
                  'Email',
                  style: Fonts.fontWeight400,
                ),
                Text(emailTitle, style: Fonts.fontWeight500),
                SizedBox(
                  height: 28,
                ),
                Divider(),
                const Text(
                  'Дата рождения',
                  style: Fonts.fontWeight400,
                ),
                Text(dateTitle, style: Fonts.fontWeight500),
                SizedBox(
                  height: 28,
                ),
                Divider(),
                const Text(
                  'Телефон основной',
                  style: Fonts.fontWeight400,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(phoneTitle, style: Fonts.fontWeight500),
                    Launcher()
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
