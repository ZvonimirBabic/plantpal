import 'package:get/get.dart';

import '../../views/home/home_bindings.dart';
import '../../views/home/home_screen.dart';
import 'routes.dart';

final pages = [
  GetPage(
    name: PlantPalRoutes.homeScreen,
    page: HomeScreen.new,
    binding: HomeBinding(),
  ),
];
