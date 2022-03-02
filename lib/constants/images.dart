import 'package:flutter/material.dart';

class Images{

  static String circleImage = 'assets/images/Ellipse 28.png';
  static String circleImage2 = 'assets/images/Ellipse 29.png';
  static String circleImage3 = 'assets/images/Ellipse 30.png';
  static String circleImage4 = 'assets/images/Ellipse 31.png';
  static String circleImage5 = 'assets/images/Ellipse 32.png';

}

class CircleAvatars{

 static List<Widget>circleAvatars = [
    CircleAvatar(backgroundImage: AssetImage(Images.circleImage), radius: 30,),
    CircleAvatar(backgroundImage: AssetImage(Images.circleImage2), radius: 30,),
    CircleAvatar(backgroundImage: AssetImage(Images.circleImage3), radius: 30,),
    CircleAvatar(backgroundImage: AssetImage(Images.circleImage4), radius: 30,)
  ];

}