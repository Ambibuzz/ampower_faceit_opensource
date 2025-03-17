import 'package:attendancemanagement/base_viewmodel.dart';
import 'package:attendancemanagement/screens/auth/api_requests/web_requests.dart';
import 'package:flutter/cupertino.dart';

class AuthPageViewModel extends BaseViewModel{
  // Form key
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool obscureText = true;
  String? email;
  String? password;
  bool isLoggingIn = false;

  void changePasswordVisibility() {
    obscureText = !obscureText;
    notifyListeners();
  }

  void authenticateEmployee(String email,String password,context) async{
    isLoggingIn = true;
    notifyListeners();
    await WebRequests().emailAuth(email, password,context);
    isLoggingIn = false;
    notifyListeners();
  }
}