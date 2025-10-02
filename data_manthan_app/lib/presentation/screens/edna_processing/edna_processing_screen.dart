import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../../../core/themes/app_theme.dart';
import '../../widgets/common/bottom_navigation.dart';

class EdnaProcessingScreen extends StatefulWidget {
  const EdnaProcessingScreen({Key? key}) : super(key: key);

  @override
  State<EdnaProcessingScreen> createState() => _EdnaProcessingScreenState();
}

class _EdnaProcessingScreenState extends State<EdnaProcessingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('eDNA Processing'),
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              MdiIcons.dna,
              size: 80,
              color: AppColors.warning,
            ),
            SizedBox(height: 16),
            Text(
              'eDNA Processing',
              style: AppTextStyles.headline3,
            ),
            SizedBox(height: 8),
            Text(
              'Environmental DNA sequencing and analysis',
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
      bottomNavigationBar: const AppBottomNavigation(currentIndex: 3),
    );
  }
}