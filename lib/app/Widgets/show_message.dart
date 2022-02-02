import 'dart:async';

import 'package:get/get.dart';

void SuccessMessage({required String message,Function? then}){
    /*FlushbarHelper.createSuccess(
    message: message, position: FlushbarPosition.TOP)
    .show(Get.context!);*/

    if(then!=null) {
      Timer(Duration(seconds: 3),(){
        then();
      });
    }
}
void ErrorMessage({required var message,Function? then}){
  /*FlushbarHelper.createError(
      message: message.runtimeType == String ? message : language.Something_went_wrong, position: FlushbarPosition.TOP)
    .show(Get.context!);*/

  if(then!=null) {
    Timer(const Duration(seconds: 3),(){
      then();
    });
  }
}