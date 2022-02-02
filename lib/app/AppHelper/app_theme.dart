import 'package:demo_project_getx/app/Dimension/dimension.dart';
import 'package:demo_project_getx/app/routes/route_transition.dart';
import 'package:demo_project_getx/app/Theme/themes.dart';
import 'package:demo_project_getx/app/URL/app_constant.dart';
import 'package:flutter/material.dart';

AppTheme(){
  return ThemeData(
    colorScheme: const ColorScheme.light().copyWith(
      primary: Themes.Primary,
    ),
    primaryColor: Themes.Primary_Lite,
    primaryColorDark: Themes.Primary,
    primaryColorLight: Themes.Primary_Lite,
    scaffoldBackgroundColor: Themes.Background,
    dividerColor: Themes.White,
    appBarTheme: AppBarTheme(
      color: Themes.Primary,
      titleTextStyle: TextStyle(color: Themes.White,fontSize: Dimension.Size_18,fontWeight: Dimension.textBold)
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.white,
    ),
    cardTheme: CardTheme(
      shadowColor: Color(0xFF395AB8).withOpacity(0.1)
    ),
    textTheme: TextTheme(
        headline1: TextStyle(
            color: Themes.Text_Color,
            fontSize: Dimension.Text_Size_Big,
            fontWeight: FontWeight.w800),
        headline2: TextStyle(
            color: Themes.Text_Color,
            fontSize: Dimension.Text_Size,
            fontWeight: FontWeight.bold
        ),
        headline3: TextStyle(
            color: Themes.Text_Color,
            fontSize: Dimension.Text_Size_Small,
            fontWeight: FontWeight.bold
        ),
        headline4: TextStyle(
            color: Themes.Text_Color,
            fontSize: Dimension.Text_Size_Small_Extra,
            fontWeight: FontWeight.bold
        ),
        bodyText1: TextStyle(
            color: Themes.Text_Color, fontSize: Dimension.Text_Size,fontWeight: FontWeight.normal),
        bodyText2: TextStyle(
            color: Themes.Text_Color,
            fontSize: Dimension.Text_Size_Small,fontWeight: FontWeight.normal),
        headline6: TextStyle(
            color: Themes.Text_Color,
            fontSize: Dimension.Text_Size_Small_Extra,fontWeight: FontWeight.normal)),
        pageTransitionsTheme: const PageTransitionsTheme(builders: {
          TargetPlatform.iOS: RouteTransition(),
          TargetPlatform.android: RouteTransition()
        }),
    //fontFamily: AppConstant.font_poppins
  );
}