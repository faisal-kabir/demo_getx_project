import 'package:flutter/material.dart';
import 'package:demo_project_getx/app/Dimension/dimension.dart';
import 'package:demo_project_getx/app/Theme/themes.dart';

Widget DialogButton({required String negativeButton,required String positiveButton,required Function(bool) onTap}){
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      TextButton(
        child: Text(negativeButton,style: TextStyle(color: Themes.Primary2,fontSize: Dimension.Text_Size_Small,fontWeight: Dimension.textBold),),
        onPressed: ()=>onTap(false),
      ),
      TextButton(
        child: Text(positiveButton,style: TextStyle(color: Themes.Primary,fontSize: Dimension.Text_Size_Small,fontWeight: Dimension.textBold),),
        onPressed: ()=>onTap(true),
      ),
    ],
  );
}