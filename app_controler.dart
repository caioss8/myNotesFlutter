import 'package:flutter/foundation.dart';

class AppController extends ChangeNotifier{
  static AppController instance = AppController();  
  
  bool isdarttheme = false;
  changeTheme(){
    isdarttheme = !isdarttheme;
    notifyListeners();
  }

}