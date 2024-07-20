import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../assets/assets.dart';
import 'home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Homescreen'),
        ),
        body: Image.asset(PlantPalAssets.placeholderPNG),
      );
}
