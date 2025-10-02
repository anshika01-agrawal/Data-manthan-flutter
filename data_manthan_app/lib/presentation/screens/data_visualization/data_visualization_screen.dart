import 'package:flutter/material.dart';
import '../../../core/themes/app_theme.dart';
import '../../widgets/common/bottom_navigation.dart';

class DataVisualizationScreen extends StatefulWidget {
  const DataVisualizationScreen({Key? key}) : super(key: key);

  @override
  State<DataVisualizationScreen> createState() => _DataVisualizationScreenState();
}

class _DataVisualizationScreenState extends State<DataVisualizationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Visualization'),
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.analytics,
              size: 80,
              color: AppColors.primaryBlue,
            ),
            SizedBox(height: 16),
            Text(
              'Data Visualization',
              style: AppTextStyles.headline3,
            ),
            SizedBox(height: 8),
            Text(
              'Interactive oceanographic charts and maps',
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