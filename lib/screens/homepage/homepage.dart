import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/fonts.dart';
import 'package:flutter_application_2/constants/images.dart';
import 'package:flutter_application_2/screens/homepage/about.dart';
import 'package:flutter_application_2/screens/homepage/widgets/avatars.dart';
import 'package:flutter_application_2/screens/homepage/widgets/listtile.dart';
import 'package:flutter_application_2/constants/info.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe5e5e5),
      appBar: AppBar(
        backgroundColor: Color(0xffe5e5e5),
        elevation: 0,
        title: const Text(
          'Сотрудники',
          style: Fonts.fontSize20,
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  fillColor: const Color(0xffd3d3d3),
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10)),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Color(0xff404040),
                  ),
                  hintText: 'Поиск',
                  hintStyle: const TextStyle(color: Color(0xFF404040),fontFamily: 'Museo500'),
                  contentPadding: const EdgeInsets.all(5),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 16, 0, 14),
                child: Text('У кого сегодня день рождения',
                style: Fonts.fontSizeBlue16,),
              ),
              const Avatars(),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 23, 0, 14),
                child: Text('У кого завтра день рождения',
                style: Fonts.fontSizeBlack20,),
              ),
              Row(
                children: [
                  CircleAvatars.circleAvatars[0],
                  const SizedBox(
                    width: 20,
                  ),
                  CircleAvatars.circleAvatars[1]
                ],
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 26, 0, 16),
                child: Text('Все сотрудники',
                style: Fonts.fontSizeBlack20,),
              ),
              ListTiles(
                title: 'Жыпаркулов Мырзабек Жыпаркулович',
                imagess: Images.circleImage,
                navigator: AboutScreen(
                  name: Myrzabek.fullName,
                  title: 'Генеральный директор',
                  directionTitle: Myrzabek.direction,
                  departmentTitle: Myrzabek.department,
                  emailTitle: Myrzabek.email,
                  dateTitle: Myrzabek.date,
                  phoneTitle: Myrzabek.phoneNumber,
                  circleImage456: 'assets/images/Ellipse 32.png',
                ),
              ),
              SizedBox(
                height: 16,
              ),
              ListTiles(
                title: 'Артыкбаев Расул Саткынович',
                imagess: Images.circleImage2,
                navigator: AboutScreen(
                  name: Rasul.fullName,
                  title: ' Не генеральный директор',
                  directionTitle: Rasul.direction,
                  departmentTitle: Rasul.department,
                  emailTitle: Rasul.email,
                  dateTitle: Rasul.date,
                  phoneTitle: Rasul.phoneNumber,
                  circleImage456: 'assets/images/Ellipse 29.png',
                ),
              ),
              SizedBox(
                height: 16,
              ),
              ListTiles(
                title: 'Жыпаркулов Мырзабек Жыпаркулович',
                imagess: Images.circleImage,
                navigator: AboutScreen(
                  name: Myrzabek.fullName,
                  title: 'Генеральный директор',
                  directionTitle: Myrzabek.direction,
                  departmentTitle: Myrzabek.department,
                  emailTitle: Myrzabek.email,
                  dateTitle: Myrzabek.date,
                  phoneTitle: Myrzabek.phoneNumber,
                  circleImage456: 'assets/images/Ellipse 32.png',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
