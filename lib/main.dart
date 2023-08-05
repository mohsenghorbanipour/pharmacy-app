import 'package:drug/core/router/drug_router.dart';
import 'package:drug/drug_app.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await EasyLocalization.ensureInitialized();

  DrugRouter.setupRouter();
  Provider.debugCheckInvalidValueType = null;

  runApp(const DrugApp());
}
