import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Homescreen'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// Ako želimo da se widget update-a sa reaktivnom varijablom iz kontrolera/servia moramo ga wrappati u OBX
              /// Npr. Obx( () => Widget )
              /// Primjer bez gettera i settera
              Obx(
                () => Switch(
                  value: controller.testUI.value,
                  onChanged: (bool value) {
                    controller.testUI.value = value;
                  },
                ),
              ),
              const SizedBox(height: 32),

              /// Primjer sa getterom i setterom
              Obx(
                () => Switch(
                  value: controller.testUIGetter,
                  onChanged: (bool value) {
                    controller.testUISetter = value;
                  },
                ),
              ),
            ],
          ),
        ),
      );
}

/// UPUTE:
/// Sa GetX-om se skoro pa uopće ne koriste StatefulWidget.
/// Ako trebate upravljati stateom za update UI-a koristite GetView i on se veže na svoj kontroller -> MVC arhitektura
/// U pravilu se koristi 1 view za 1 kontroller osim ako nisu usko povezani, a želite izdvojiti dio.

/// Za navigaciju se koristi Get.to ili Get.toNamed, s obzirom da koristimo named routes koristimo Get.toNamed(PlantPalRoutes.homeScreen)
/// Ostalo za GetX možete pročitati u dokumentaciji na pub.devu ( što su bindingsi, lokalizacija, middleware...)
