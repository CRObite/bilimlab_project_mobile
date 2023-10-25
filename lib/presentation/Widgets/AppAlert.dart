import 'package:bilimlab_project_mobile/utils/AlertEnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:quickalert/quickalert.dart';

class AppAlert {
  static void show(BuildContext context, String content, AlertEnum type){
    switch (type){
      case AlertEnum.Success :
        QuickAlert.show(context: context, type:QuickAlertType.success, text: content);
        break;
      case AlertEnum.Error :
        QuickAlert.show(context: context, type:QuickAlertType.error, text: content);
        break;
      case AlertEnum.Warning :
        QuickAlert.show(context: context, type:QuickAlertType.warning, text: content);
        break;
      case AlertEnum.Info :
        QuickAlert.show(context: context, type:QuickAlertType.info, text: content);
        break;
      case AlertEnum.Confirm :
        QuickAlert.show(context: context, type:QuickAlertType.confirm, text: content);
        break;
      case AlertEnum.Loading :
        QuickAlert.show(context: context, type:QuickAlertType.loading, text: content);
        break;
    }
  }
}