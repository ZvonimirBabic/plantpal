import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'design/theme/app_theme.dart';
import 'locale/locale.dart';
import 'services/snackbar_service.dart';
import 'utils/navigation/pages.dart';
import 'utils/navigation/routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();
  Get.put(
    SnackbarService(),
  );

  runApp(
    const PlantPalApp(),
  );
}

class PlantPalApp extends StatelessWidget {
  const PlantPalApp({super.key});

  @override
  Widget build(BuildContext context) => ScreenUtilInit(
        child: GetMaterialApp(
          title: 'Plantpal',
          theme: plantPalTheme,
          transitionDuration: const Duration(milliseconds: 300),

          /// Translation
          locale: Localization.locale,
          translations: Localization(),

          /// Routes
          getPages: pages,
          initialRoute: PlantPalRoutes.homeScreen,
          //initialBinding: HomeScreenBinding(),
        ),
      );
}
