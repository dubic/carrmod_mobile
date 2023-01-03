import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intro_slider/intro_slider.dart';

class IntroController extends GetxController{
  List<ContentConfig> listContentConfig = [];

  @override
  void onInit() {
    super.onInit();
    initSlides();
  }

  void initSlides() {

    listContentConfig.add(
      const ContentConfig(
        title: "Add Cars",
        description: "Manage all your car details",
        pathImage: "assets/images/white_car.jpg",
        backgroundColor: Colors.white,
        styleTitle: TextStyle(color: Colors.deepOrangeAccent, fontWeight: FontWeight.w700, fontSize: 25),
        styleDescription: TextStyle(color: Colors.deepOrangeAccent, fontSize: 18),
      ),
    );
    listContentConfig.add(
      const ContentConfig(
        title: "Car Documents",
        description: "Vehicle License,Insurance etc. Get alerts when a document is about to expire",
        pathImage: "assets/images/car_documents.png",
        backgroundColor: Colors.white,
        styleTitle: TextStyle(color: Colors.deepOrangeAccent, fontWeight: FontWeight.w700, fontSize: 25),
        styleDescription: TextStyle(color: Colors.deepOrangeAccent, fontSize: 18),
      ),
    );
    listContentConfig.add(
      const ContentConfig(
        title: "Maintenance and Repairs",
        description:
        "Keep track of maintenance and repairs, parts and costs incurred",
        pathImage: "assets/images/maintenance.jpg",
        backgroundColor: Colors.white,
        styleTitle: TextStyle(color: Colors.deepOrangeAccent, fontWeight: FontWeight.w700, fontSize: 25),
        styleDescription: TextStyle(color: Colors.deepOrangeAccent, fontSize: 18),
      ),
    );
  }

  void onDonePress() {
    log("End of slides");
  }
}
