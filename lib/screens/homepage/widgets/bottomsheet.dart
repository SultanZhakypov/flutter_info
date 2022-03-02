import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/fonts.dart';
import 'package:flutter_application_2/screens/homepage/widgets/launcher.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomSheetScreen extends StatelessWidget {
  const BottomSheetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Icon(Icons.phone),
      onTap: () {
        showModalBottomSheet(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
          context: context,
          builder: (context) => Container(
            padding: EdgeInsets.fromLTRB(23, 30, 23, 14),
            height: 400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Позвонить',
                      style: Fonts.fontSize20,
                    ),
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Image.asset(
                        'assets/images/Group 93.png',
                        height: 30,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 13,
                ),
                const Text(
                  'Жыпаркулов Мырзабек \nЖыпаркулович',
                  style: Fonts.fontSize16,
                ),
                SizedBox(
                  height: 51,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Телефон основной', style: Fonts.fontWeight400),
                        Text('996700117882', style: Fonts.fontSizeBlack20)
                      ],
                    ),
                    Launcher()
                  ],
                ),
                SizedBox(
                  height: 28,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Телефон рабочий', style: Fonts.fontWeight400),
                        Text('996700117882', style: Fonts.fontSizeBlack20)
                      ],
                    ),
                     Launcher()
                  ],
                ),
                SizedBox(
                  height: 28,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Телефон WhatsApp', style: Fonts.fontWeight400),
                        Text('996700117882', style: Fonts.fontSizeBlack20)
                      ],
                    ),
                     IconButton(
                      onPressed:() async => {await launch('https://api.whatsapp.com/send/?phone=996700117882&text&app_absent=0')},
                      icon: Icon(Icons.phone),
                      color: Colors.green,
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
