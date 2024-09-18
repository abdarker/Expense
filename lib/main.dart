import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:paisa/app.dart';
import 'package:paisa/di/dependency_injection.dart';

final getIt = GetIt.instance;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configInjector(getIt);
  if (kDebugMode) {
    addDummyData();
  }
  runApp(const PaisaApp());
}
