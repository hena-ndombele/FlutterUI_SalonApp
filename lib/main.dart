import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'apps/MonApplication.dart';
import 'package:salon_app_ui/utils/ColorsPage.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark
        .copyWith(statusBarColor: ColorPages.COLOR_TRANSPARENT),
  );
  runApp(MonApplication());
}
