import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    // size app
    double widthApp = MediaQuery.of(context).size.width;
    double heightApp = MediaQuery.of(context).size.height;
    double paddingTop = MediaQuery.of(context).padding.top;
    double paddingBottom = MediaQuery.of(context).padding.bottom;

    // appBar
    AppBar HomeAppBar() {
      return AppBar(
        title: Text("HomeView"),
      );
    }

    double heightBody =
        heightApp - HomeAppBar().preferredSize.height - paddingTop;

    return Scaffold(
      appBar: HomeAppBar(),
      body: Column(
        children: [
          Flexible(
            child: Container(
              color: Colors.red,
            ),
          ),
          Flexible(
            child: Container(
              color: Colors.green,
            ),
          ),
          Flexible(
            child: Container(
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
