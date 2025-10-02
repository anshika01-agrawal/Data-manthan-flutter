import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../presentation/screens/onboarding/onboarding_screen.dart';
import '../../presentation/screens/dashboard/dashboard_screen.dart';
import '../../presentation/screens/data_visualization/data_visualization_screen.dart';
import '../../presentation/screens/otolith_analysis/otolith_analysis_screen.dart';
import '../../presentation/screens/edna_processing/edna_processing_screen.dart';
import '../../presentation/screens/incois_portal/incois_portal_screen.dart';
import '../../presentation/screens/community/community_screen.dart';
import '../../presentation/screens/collaboration/collaboration_screen.dart';

class AppRoutes {
  // Route Names
  static const String onboarding = '/onboarding';
  static const String dashboard = '/';
  static const String dataVisualization = '/data-visualization';
  static const String otolithAnalysis = '/otolith-analysis';
  static const String ednaProcessing = '/edna-processing';
  static const String incoisPortal = '/incois-portal';
  static const String community = '/community';
  static const String collaboration = '/collaboration';
  
  // Detail routes
  static const String otolithDetail = '/otolith-analysis/detail';
  static const String ednaDetail = '/edna-processing/detail';
  static const String projectDetail = '/collaboration/project';
  static const String userProfile = '/profile';
  static const String settings = '/settings';
}

class AppRouter {
  static final GoRouter _router = GoRouter(
    initialLocation: AppRoutes.onboarding,
    debugLogDiagnostics: true,
    routes: [
      // Onboarding Route
      GoRoute(
        path: AppRoutes.onboarding,
        name: 'onboarding',
        builder: (context, state) => const OnboardingScreen(),
      ),
      
      // Main Dashboard
      GoRoute(
        path: AppRoutes.dashboard,
        name: 'dashboard',
        builder: (context, state) => const DashboardScreen(),
      ),
      
      // Data Visualization
      GoRoute(
        path: AppRoutes.dataVisualization,
        name: 'data-visualization',
        builder: (context, state) => const DataVisualizationScreen(),
      ),
      
      // Otolith Analysis
      GoRoute(
        path: AppRoutes.otolithAnalysis,
        name: 'otolith-analysis',
        builder: (context, state) => const OtolithAnalysisScreen(),
        routes: [
          GoRoute(
            path: 'detail/:id',
            name: 'otolith-detail',
            builder: (context, state) {
              final id = state.pathParameters['id']!;
              return OtolithDetailScreen(id: id);
            },
          ),
        ],
      ),
      
      // eDNA Processing
      GoRoute(
        path: AppRoutes.ednaProcessing,
        name: 'edna-processing',
        builder: (context, state) => const EdnaProcessingScreen(),
        routes: [
          GoRoute(
            path: 'detail/:id',
            name: 'edna-detail',
            builder: (context, state) {
              final id = state.pathParameters['id']!;
              return EdnaDetailScreen(id: id);
            },
          ),
        ],
      ),
      
      // INCOIS Portal
      GoRoute(
        path: AppRoutes.incoisPortal,
        name: 'incois-portal',
        builder: (context, state) => const IncoisPortalScreen(),
      ),
      
      // Community
      GoRoute(
        path: AppRoutes.community,
        name: 'community',
        builder: (context, state) => const CommunityScreen(),
      ),
      
      // Collaboration
      GoRoute(
        path: AppRoutes.collaboration,
        name: 'collaboration',
        builder: (context, state) => const CollaborationScreen(),
        routes: [
          GoRoute(
            path: 'project/:id',
            name: 'project-detail',
            builder: (context, state) {
              final id = state.pathParameters['id']!;
              return ProjectDetailScreen(projectId: id);
            },
          ),
        ],
      ),
      
      // Profile & Settings
      GoRoute(
        path: AppRoutes.userProfile,
        name: 'profile',
        builder: (context, state) => const UserProfileScreen(),
      ),
      
      GoRoute(
        path: AppRoutes.settings,
        name: 'settings',
        builder: (context, state) => const SettingsScreen(),
      ),
    ],
    
    // Error handling
    errorBuilder: (context, state) => Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.error_outline,
              size: 64,
              color: Colors.red,
            ),
            const SizedBox(height: 16),
            Text(
              'Page Not Found',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 8),
            Text(
              'The page you are looking for does not exist.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => context.go(AppRoutes.dashboard),
              child: const Text('Go Home'),
            ),
          ],
        ),
      ),
    ),
    
    // Navigation observer for analytics
    observers: [
      RouterObserver(),
    ],
  );
  
  static GoRouter get router => _router;
}

class RouterObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    // Analytics tracking can be added here
    debugPrint('Navigation: Pushed ${route.settings.name}');
  }
  
  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);
    debugPrint('Navigation: Popped ${route.settings.name}');
  }
}

// Placeholder screens for detailed views
class OtolithDetailScreen extends StatelessWidget {
  final String id;
  
  const OtolithDetailScreen({Key? key, required this.id}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Otolith Analysis $id')),
      body: Center(child: Text('Otolith Detail Screen for ID: $id')),
    );
  }
}

class EdnaDetailScreen extends StatelessWidget {
  final String id;
  
  const EdnaDetailScreen({Key? key, required this.id}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('eDNA Analysis $id')),
      body: Center(child: Text('eDNA Detail Screen for ID: $id')),
    );
  }
}

class ProjectDetailScreen extends StatelessWidget {
  final String projectId;
  
  const ProjectDetailScreen({Key? key, required this.projectId}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Project $projectId')),
      body: Center(child: Text('Project Detail Screen for ID: $projectId')),
    );
  }
}

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: const Center(child: Text('User Profile Screen')),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: const Center(child: Text('Settings Screen')),
    );
  }
}