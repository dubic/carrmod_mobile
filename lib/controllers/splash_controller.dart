import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SplashController extends GetxController{
  @override
  void onInit() {
    super.onInit();
    _loadRelevantData();
  }

  void _loadRelevantData(){
    var started = DateTime.now();
    GetStorage box = GetStorage();
    bool intro = box.read('intro') ?? false;
    if(intro == false){
      waitAndMove(started, "/intro");
    }else{

    }
  }

  void waitAndMove(DateTime start, String route) {
    var dateDiff = DateTime.now().difference(start);
    debugPrint('DATE DIFF : ${dateDiff.inSeconds}');
    var secsRem = 3 - dateDiff.inSeconds;
    debugPrint('SECONDS REMAINING : $secsRem');
    if (secsRem > 1) {
      Timer(Duration(seconds: secsRem), () async {
        Get.toNamed(route);
      });
    } else {
      Get.toNamed(route);
    }
  }
}
