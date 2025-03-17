import 'package:attendancemanagement/base_viewmodel.dart';
import 'package:attendancemanagement/router/routing_constants.dart';
import 'package:attendancemanagement/screens/base_url/api_requests/web_requests.dart';
import 'package:attendancemanagement/service/navigation_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../helpers/shared_preferences.dart';
import '../../../locator/locator.dart';

class BaseUrlViewModel extends BaseViewModel{
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final baseUrlController = TextEditingController();
  bool settingBaseUrl = false;

  void setBaseURLAndNavigateToAuthScreen(String url) async {
    settingBaseUrl = true;
    notifyListeners();
    await setBaseURL("$url/");
    settingBaseUrl = false;
    notifyListeners();
    locator.get<NavigationService>().navigateTo(authScreen);
  }


  getBaseurlFromLocalStorage() async{
    baseUrlController.text = await getBaseUrl() ?? '';
  }

}