import 'dart:async';
import 'dart:io';
import 'dart:isolate';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:demo_project_getx/app/AppHelper/app_theme.dart';
import 'package:demo_project_getx/app/Dimension/dimension.dart';
import 'package:demo_project_getx/app/Theme/themes.dart';
import 'package:demo_project_getx/app/URL/app_constant.dart';
import 'package:demo_project_getx/app/URL/url.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'app/Controller/app_controller.dart';
import 'app/Language/app_localizations.dart';
import 'app/Language/language.dart';
import 'app/Widgets/list_scroll_behavior.dart';
import 'app/routes/app_pages.dart';


Language language = Language();
SharedPreferences? prefs;
double? paddingTop,appbarHeight,screenRatio;
bool enableReCallApi=true;



void main() async {
  initServices();
  WidgetsFlutterBinding.ensureInitialized();
  startApp();
}

void initServices(){
  Get.put(() => AppController(),permanent: true);
}


void startApp(){
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with AutomaticKeepAliveClientMixin{

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  AppController appController = Get.put(AppController());




  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  }




  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
        init: AppController(),
        builder: (controller){
          return GetMaterialApp(
            title: AppConstant.AppName,
            debugShowCheckedModeBanner: false,
            locale: Locale(controller.appLocale.value),
            supportedLocales: LocaleHelper.getAllLocale(),
            builder: (context,child) {
              return ScrollConfiguration(
                behavior: ListScrollBehavior(),
                child: child!,
              );
            },
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              DefaultCupertinoLocalizations.delegate
            ],
            theme: AppTheme(),
            initialRoute: AppPages.INITIAL,
            getPages: AppPages.routes,
          );
        }
    );
  }
}

bool get isEnglish=>Get.find<AppController>().mainLocale.value==AppLocale.EN;
void dPrint(var data){
  if (kDebugMode) {
    print(data);
  }
}
