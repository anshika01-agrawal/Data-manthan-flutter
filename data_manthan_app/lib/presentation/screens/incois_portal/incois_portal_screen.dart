import 'package:flutter/material.dart';
import '../../../core/themes/app_theme.dart';
import '../../widgets/common/bottom_navigation.dart';

class IncoisPortalScreen extends StatefulWidget {
  const IncoisPortalScreen({Key? key}) : super(key: key);

  @override
  State<IncoisPortalScreen> createState() => _IncoisPortalScreenState();
}

class _IncoisPortalScreenState extends State<IncoisPortalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('INCOIS Portal'),
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.public,
              size: 80,
              color: AppColors.info,
            ),
            SizedBox(height: 16),
            Text(
              'INCOIS Portal',
              style: AppTextStyles.headline3,
            ),
            SizedBox(height: 8),
            Text(
              'Indian Ocean data access and analysis',
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
      bottomNavigationBar: const AppBottomNavigation(currentIndex: 1),
    );
  }
}