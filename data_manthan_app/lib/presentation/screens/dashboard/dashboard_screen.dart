import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../../../core/themes/app_theme.dart';
import '../../../core/routes/app_router.dart';
import '../../widgets/common/app_card.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // App Bar
          SliverAppBar(
            expandedHeight: 200,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                'Data Manthan',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              background: Container(
                decoration: BoxDecoration(
                  gradient: AppColors.oceanGradient,
                ),
                child: Stack(
                  children: [
                    // Animated background elements
                    Positioned(
                      top: 50,
                      right: 20,
                      child: Icon(
                        Icons.waves,
                        size: 100,
                        color: Colors.white.withOpacity(0.1),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 20,
                      child: Icon(
                        Icons.set_meal_outlined,
                        size: 80,
                        color: Colors.white.withOpacity(0.1),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.notifications_outlined),
                onPressed: () {
                  // Show notifications
                },
              ),
              IconButton(
                icon: const Icon(Icons.person_outline),
                onPressed: () {
                  context.go(AppRoutes.userProfile);
                },
              ),
            ],
          ),
          
          // Dashboard Content
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                // Welcome Section
                _buildWelcomeSection(),
                const SizedBox(height: 24),
                
                // Quick Stats
                _buildQuickStats(),
                const SizedBox(height: 24),
                
                // Main Features
                _buildMainFeatures(),
                const SizedBox(height: 24),
                
                // Recent Activity
                _buildRecentActivity(),
                const SizedBox(height: 100), // Bottom padding for FAB
              ]),
            ),
          ),
        ],
      ),
      
      // Floating Action Button
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          _showQuickActionDialog();
        },
        icon: const Icon(Icons.add),
        label: const Text('Quick Action'),
        backgroundColor: AppColors.primaryBlue,
      ),
    );
  }

  Widget _buildWelcomeSection() {
    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.wb_sunny,
                color: AppColors.accentCyan,
                size: 32,
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Good ${_getGreeting()}!',
                    style: AppTextStyles.headline4,
                  ),
                  Text(
                    'Ready to explore ocean data?',
                    style: AppTextStyles.bodyMedium,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppColors.primaryBlue.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.info_outline,
                  color: AppColors.accentCyan,
                  size: 20,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'Discover marine insights with our comprehensive data platform',
                    style: AppTextStyles.bodySmall.copyWith(
                      color: AppColors.accentCyan,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuickStats() {
    return Row(
      children: [
        Expanded(
          child: _buildStatCard(
            title: 'Data Points',
            value: '2.4M',
            icon: Icons.analytics,
            color: AppColors.success,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: _buildStatCard(
            title: 'Species',
            value: '1,247',
            icon: Icons.set_meal_outlined,
            color: AppColors.warning,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: _buildStatCard(
            title: 'Projects',
            value: '89',
            icon: Icons.folder,
            color: AppColors.info,
          ),
        ),
      ],
    );
  }

  Widget _buildStatCard({
    required String title,
    required String value,
    required IconData icon,
    required Color color,
  }) {
    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                icon,
                color: color,
                size: 24,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  '+12%',
                  style: AppTextStyles.bodySmall.copyWith(
                    color: color,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            value,
            style: AppTextStyles.headline3.copyWith(
              color: color,
            ),
          ),
          Text(
            title,
            style: AppTextStyles.bodySmall,
          ),
        ],
      ),
    );
  }

  Widget _buildMainFeatures() {
    final features = [
      FeatureItem(
        title: 'Data Visualization',
        subtitle: 'Interactive oceanographic charts',
        icon: Icons.show_chart,
        color: AppColors.primaryBlue,
        route: AppRoutes.dataVisualization,
      ),
      FeatureItem(
        title: 'Otolith Analysis',
        subtitle: 'Species identification & age',
        icon: MdiIcons.microscope,
        color: AppColors.success,
        route: AppRoutes.otolithAnalysis,
      ),
      FeatureItem(
        title: 'eDNA Processing',
        subtitle: 'Environmental DNA sequencing',
        icon: MdiIcons.dna,
        color: AppColors.warning,
        route: AppRoutes.ednaProcessing,
      ),
      FeatureItem(
        title: 'INCOIS Portal',
        subtitle: 'Indian Ocean data access',
        icon: Icons.public,
        color: AppColors.info,
        route: AppRoutes.incoisPortal,
      ),
      FeatureItem(
        title: 'Community',
        subtitle: 'Connect with researchers',
        icon: Icons.groups,
        color: AppColors.error,
        route: AppRoutes.community,
      ),
      FeatureItem(
        title: 'Collaboration',
        subtitle: 'Project management',
        icon: Icons.handshake,
        color: AppColors.accentCyan,
        route: AppRoutes.collaboration,
      ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Main Features',
          style: AppTextStyles.headline4,
        ),
        const SizedBox(height: 16),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 1.2,
          ),
          itemCount: features.length,
          itemBuilder: (context, index) {
            final feature = features[index];
            return _buildFeatureCard(feature);
          },
        ),
      ],
    );
  }

  Widget _buildFeatureCard(FeatureItem feature) {
    return AppCard(
      onTap: () => context.go(feature.route),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              color: feature.color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Icon(
              feature.icon,
              color: feature.color,
              size: 28,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            feature.title,
            style: AppTextStyles.bodyLarge.copyWith(
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 4),
          Text(
            feature.subtitle,
            style: AppTextStyles.bodySmall,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildRecentActivity() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Recent Activity',
              style: AppTextStyles.headline4,
            ),
            TextButton(
              onPressed: () {},
              child: const Text('View All'),
            ),
          ],
        ),
        const SizedBox(height: 16),
        AppCard(
          child: Column(
            children: [
              _buildActivityItem(
                title: 'Otolith analysis completed',
                subtitle: 'Sample ID: OTL-2024-001',
                time: '2 hours ago',
                icon: MdiIcons.microscope,
                color: AppColors.success,
              ),
              const Divider(),
              _buildActivityItem(
                title: 'eDNA sequence uploaded',
                subtitle: 'Bay of Bengal sample',
                time: '5 hours ago',
                icon: MdiIcons.dna,
                color: AppColors.warning,
              ),
              const Divider(),
              _buildActivityItem(
                title: 'New collaboration request',
                subtitle: 'Marine Biology Project',
                time: '1 day ago',
                icon: Icons.handshake,
                color: AppColors.info,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildActivityItem({
    required String title,
    required String subtitle,
    required String time,
    required IconData icon,
    required Color color,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              icon,
              color: color,
              size: 20,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyles.bodyMedium.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  subtitle,
                  style: AppTextStyles.bodySmall,
                ),
              ],
            ),
          ),
          Text(
            time,
            style: AppTextStyles.bodySmall,
          ),
        ],
      ),
    );
  }

  String _getGreeting() {
    final hour = DateTime.now().hour;
    if (hour < 12) return 'Morning';
    if (hour < 17) return 'Afternoon';
    return 'Evening';
  }

  void _showQuickActionDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Quick Actions'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.upload_file),
              title: const Text('Upload Data'),
              onTap: () {
                Navigator.pop(context);
                // Handle upload
              },
            ),
            ListTile(
              leading: const Icon(Icons.camera_alt),
              title: const Text('Capture Otolith'),
              onTap: () {
                Navigator.pop(context);
                context.go(AppRoutes.otolithAnalysis);
              },
            ),
            ListTile(
              leading: const Icon(Icons.add_box),
              title: const Text('New Project'),
              onTap: () {
                Navigator.pop(context);
                context.go(AppRoutes.collaboration);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class FeatureItem {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;
  final String route;

  FeatureItem({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
    required this.route,
  });
}