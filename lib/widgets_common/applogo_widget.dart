import 'package:emartapp/consts/consts.dart';

Widget applogoWidget() {
  //using velocityX here
  return Image.asset(icAppLogo)
      .box
      .white
      .size(77, 77)
      .padding(const EdgeInsets.all(8))
      .rounded
      .make();
}
