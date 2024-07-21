import 'package:get/get.dart';

class HomeController extends GetxController {
  /// Dependencies

  /// Init
  @override
  Future<void> onInit() async {
    super.onInit();
  }

  /// Variables

  /// UI update example, RX = Reactive = Reacts to change and updates UI
  final RxBool testUI = RxBool(true);

  /// Ako želite, možete raditi gettere i settere za RX varijable, ali nije potrebno
  /// ovo je samo ljepše izgleda u VIEW jer ne morate pisati .value nego samo koristite kao normalnu varijablu.
  /// Imate oba primjera u view
  bool get testUIGetter => testUI.value;

  set testUISetter(bool value) {
    testUI.value = value;
  }

  /// Functions
  void testFunction() {}
}
