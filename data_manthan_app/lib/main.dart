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

class DataManthanApp extends StatelessWidget {
  const DataManthanApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: AppConstants.appName,
      debugShowCheckedModeBanner: false,
      
      // Theme Configuration
      theme: ThemeConfig.darkTheme,
      themeMode: ThemeMode.dark,
      
      // Router Configuration
      routerConfig: AppRouter.router,
      
      // Localization (can be extended later)
      supportedLocales: const [
        Locale('en', 'US'),
      ],
      
      // Builder for additional configurations
      builder: (context, child) {
        return MediaQuery(
          // Prevent font scaling issues
          data: MediaQuery.of(context).copyWith(
            textScaler: TextScaler.noScaling,
          ),
          child: child!,
        );
      },
    );
  }
}