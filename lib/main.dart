import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'app/data/local/my_shared_pref.dart';
import 'app/routes/app_pages.dart';
import 'config/theme/my_theme.dart';
import 'config/translations/localization_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await MyHive.init(adapters: [UserModelAdapter()]);

  await MySharedPref.init();

  // await FcmHelper.initFcm();

  runApp(
    ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      rebuildFactor: RebuildFactors.all,
      builder: (context, widget) {
        return GetMaterialApp(
          title: "Api with GetX Standard",
          useInheritedMediaQuery: true,
          debugShowCheckedModeBanner: false,
          builder: (context, widget) {
            bool themeIsLight = MySharedPref.getThemeIsLight();
            return Theme(
              data: MyTheme.getThemeData(isLight: themeIsLight),
              child: MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                child: widget!,
              ),
            );
          },

          initialRoute:
              AppPages.NAV, // first screen to show when app is running
          getPages: AppPages.routes, // app screens
          locale: MySharedPref.getCurrentLocal(), // app language
          translations:
              LocalizationService(), // localization services in app (controller app language)
        );
      },
    ),
  );
}
