import 'package:flutter/material.dart';

// Simple placeholder bottom navigation
class AppBottomNavigation extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;
  
  const AppBottomNavigation({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xFF1E293B),
      selectedItemColor: Color(0xFF06B6D4),
      unselectedItemColor: Color(0xFF94A3B8),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.dashboard),
          label: 'Dashboard',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bar_chart),
          label: 'Data Viz',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.science),
          label: 'Otolith',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.biotech),
          label: 'eDNA',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people),
          label: 'Community',
        ),
      ],
    );
  }
}