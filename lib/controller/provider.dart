import 'package:flutter/material.dart';

class provider extends ChangeNotifier{
  TextEditingController text1 =TextEditingController();
  TextEditingController text2 = TextEditingController();
  int x =0;

  adder(){
    x =int.parse(text1.text)+int.parse(text2.text);
    notifyListeners();
  }
}