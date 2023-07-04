import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_savvy_delivery/core/localization/change_locale.dart';
import 'package:shop_savvy_delivery/core/localization/translations.dart';
import 'package:shop_savvy_delivery/core/services/services.dart';
import 'package:shop_savvy_delivery/initial_binding.dart';
import 'package:shop_savvy_delivery/routes.dart';


void main() async {
  await initServices();
  runApp(const ShopSavvyDelivery());
}

class ShopSavvyDelivery extends StatelessWidget {
  const ShopSavvyDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    LocaleController localeController = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslations(),
      debugShowCheckedModeBanner: false,
      locale: localeController.startingLanguage,
      title: 'ShopSavvy Delivery',
      theme: localeController.appTheme,
      getPages: routes,
      initialBinding: InitialBindings(),
    );
  }
}
