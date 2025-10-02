import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'core/themes/theme_config.dart';
import 'core/routes/app_router.dart';
import 'core/constants/app_constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Set preferred orientations
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  
  // Set system UI overlay style
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Colors.black,
      systemNavigationBarIconBrightness: Brightness.light,
    ),
  );
  
  runApp(const DataManthanApp());
}

class _DataManthanAppState extends State<DataManthanApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Data Manthan',
      debugShowCheckedModeBanner: false,
      theme: ThemeConfig.darkTheme,
      routerConfig: AppRouter.router,
    );
  }
}

class DataManthanApp extends StatefulWidget {
  const DataManthanApp({super.key});