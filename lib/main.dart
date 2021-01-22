import 'package:first_flutter_app/ui/android/material-app.dart';
import 'package:first_flutter_app/ui/ios/cupertino-app.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

void main() =>
    Platform.isIOS ? runApp(MyCupertinoApp()) : runApp(MyMaterialApp());
