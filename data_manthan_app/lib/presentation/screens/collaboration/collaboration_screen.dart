import 'package:flutter/material.dart';
import '../../../core/themes/app_theme.dart';
import '../../widgets/common/bottom_navigation.dart';

class CollaborationScreen extends StatefulWidget {
  const CollaborationScreen({Key? key}) : super(key: key);

  @override
  State<CollaborationScreen> createState() => _CollaborationScreenState();
}

class _CollaborationScreenState extends State<CollaborationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Collaboration'),
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.handshake,
              size: 80,
              color: AppColors.accentCyan,
            ),
            SizedBox(height: 16),
            Text(
              'Research Collaboration',
              style: AppTextStyles.headline3,
            ),
            SizedBox(height: 8),
            Text(
              'Project management and team collaboration',
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
      bottomNavigationBar: const AppBottomNavigation(currentIndex: 4),
    );
  }
}