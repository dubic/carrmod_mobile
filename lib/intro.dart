import 'package:carrmod_mobile/controllers/intro_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intro_slider/intro_slider.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color primary = Theme.of(context).primaryColor;
    IntroController controller = Get.put(IntroController());
    return IntroSlider(
      key: UniqueKey(),
      listContentConfig: controller.listContentConfig,
      onDonePress: controller.onDonePress,
    );
  }
}
