/*
import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
class LoginController extends GetxController{
  RxBool Loading=false.obs;
  Api_Client api_client=Api_Client();
  RxBool rememberMe=false.obs;
  RxBool obscureText=true.obs;
  GlobalKey<FormState> formKey=GlobalKey();
  TextEditingController username=TextEditingController();
  TextEditingController password=TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    api_client.close();
  }

  requestLogin() async {
    if(!formKey.currentState!.validate()){
      return;
    }
    Loading.value=true;
    await api_client.SimpleRequest(
        url: URL.Login,
        method: Method.POST,
        body: {
          AppConstant.username: username.text,
          AppConstant.password: password.text
        },
        onSuccess: (data){
          if(data.containsKey('code')){
            ErrorMessage(message: language.Username_or_password_is_incorrect);
          }else{
            auth=Auth.fromJson(data);
            prefs!.setString(AppConstant.Share_Auth, json.encode(data));
            Get.offAllNamed(HOME);
          }
        },
        onError: (data){
        }
    );
    Loading.value=false;
  }
}
*/
