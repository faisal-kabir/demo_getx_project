import 'package:flutter/foundation.dart';
import 'package:demo_project_getx/app/URL/app_constant.dart';

class URL {
  static String Main_Url = '';
  static String device_type='android';

  static String Login=Main_Url + 'wp-json/jwt-auth/v1/token';
  static String Register=Main_Url + 'wp-json/wp/v2/users/register';
}
