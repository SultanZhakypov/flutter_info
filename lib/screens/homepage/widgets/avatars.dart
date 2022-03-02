import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/images.dart';

class Avatars extends StatelessWidget {
  const Avatars({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatars.circleAvatars[0],
        SizedBox(
          width: 20,
        ),
        CircleAvatars.circleAvatars[1],
        SizedBox(
          width: 20,
        ),
        CircleAvatars.circleAvatars[2],
        SizedBox(
          width: 20,
        ),
        CircleAvatars.circleAvatars[3],
      ],
    );
  }
}