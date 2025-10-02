import 'package:flutter/material.dart';
import '../../../core/themes/app_theme.dart';
import '../../widgets/common/bottom_navigation.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

class _CommunityScreenState extends State<CommunityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Community'),
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.groups,
              size: 80,
              color: AppColors.error,
            ),
            SizedBox(height: 16),
            Text(
              'Marine Community',
              style: AppTextStyles.headline3,
            ),
            SizedBox(height: 8),
            Text(
              'Connect with marine researchers worldwide',
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