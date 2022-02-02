import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:demo_project_getx/app/Controller/app_controller.dart';
import 'package:demo_project_getx/app/Dimension/dimension.dart';
import 'package:demo_project_getx/app/Theme/themes.dart';
import 'package:demo_project_getx/app/URL/app_constant.dart';
import 'package:demo_project_getx/app/URL/url.dart';

import '../../../../main.dart';

class SplashController extends GetxController {
  AppController? appProvider;

  @override
  void onInit() {
    super.onInit();
    appProvider=Get.put(AppController());
    paddingTop=MediaQuery.of(Get.context!).padding.top;
    screenRatio=Get.width/AppConstant.defaultScreenSize.width;
    Dimension.scaleSize(screenRatio!,then: (){
      appProvider!.reactive();
    });
    assignData();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}



  Future assignData()async{
    SharedPreferences.getInstance().then((pr) {
      prefs = pr;
      setAppData();
    });
    if (Platform.isAndroid) {
      URL.device_type = AppConstant.Android;
    } else if (Platform.isIOS) {
      URL.device_type = AppConstant.iOS;
    }
  }


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  back() {

  }

  void navigationPage() async{
    /*try{
      if(prefs!.containsKey(AppConstant.Share_Auth)){
        Get.offAllNamed(HOME);
      }
      else {
        Get.offAllNamed(LOGIN);
      }
    }catch(e){
    }*/
  }

  void setAppData() async{
    //prefs!.remove(AppConstant.Share_Auth);
    /*if(prefs!.containsKey(AppConstant.Share_Auth)){
      auth=Auth.fromJson(json.decode(prefs!.getString(AppConstant.Share_Auth)!));
    }*/
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Themes.Background,statusBarIconBrightness: Brightness.dark,systemNavigationBarColor: Colors.white,systemNavigationBarIconBrightness: Brightness.dark));
    Timer(const Duration(seconds: 3),(){
      navigationPage();
    });
  }

}
