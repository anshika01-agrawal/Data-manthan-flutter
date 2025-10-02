import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../../../core/themes/app_theme.dart';
import '../../widgets/common/bottom_navigation.dart';

class OtolithAnalysisScreen extends StatefulWidget {
  const OtolithAnalysisScreen({Key? key}) : super(key: key);

  @override
  State<OtolithAnalysisScreen> createState() => _OtolithAnalysisScreenState();
}

class _OtolithAnalysisScreenState extends State<OtolithAnalysisScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Otolith Analysis'),
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              MdiIcons.microscope,
              size: 80,
              color: AppColors.success,
            ),
            SizedBox(height: 16),
            Text(
              'Otolith Analysis',
              style: AppTextStyles.headline3,
            ),
            SizedBox(height: 8),
            Text(
              'Species identification and age determination',
              style: AppTextStyles.bodyMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24),
            Text(
              'Coming Soon!',
              style: AppTextStyles.bodyLarge,
            ),
          ],
        ),
      ),
      bottomNavigationBar: const AppBottomNavigation(currentIndex: 2),
    );
  }
}