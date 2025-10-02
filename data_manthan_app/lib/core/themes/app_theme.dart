import 'package:flutter/material.dart';

class AppColors {
  // Ocean Theme Colors (inspired by marine environment)
  static const Color primaryBlue = Color(0xFF0891B2); // Deep Ocean Blue
  static const Color secondaryBlue = Color(0xFF0369A1); // Darker Ocean Blue
  static const Color accentCyan = Color(0xFF06B6D4); // Tropical Water Cyan
  static const Color lightCyan = Color(0xFF67E8F9); // Light Cyan
  
  // Background Colors
  static const Color darkBackground = Color(0xFF0F172A); // Deep Sea Dark
  static const Color surfaceColor = Color(0xFF1E293B); // Ocean Floor
  static const Color cardColor = Color(0xFF334155); // Reef Color
  
  // Text Colors
  static const Color primaryText = Color(0xFFF8FAFC);
  static const Color secondaryText = Color(0xFFCBD5E1);
  static const Color mutedText = Color(0xFF94A3B8);
  
  // Status Colors
  static const Color success = Color(0xFF10B981);
  static const Color warning = Color(0xFFF59E0B);
  static const Color error = Color(0xFFEF4444);
  static const Color info = Color(0xFF3B82F6);
  
  // Gradient Colors
  static const LinearGradient oceanGradient = LinearGradient(
    colors: [primaryBlue, secondaryBlue],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  
  static const LinearGradient deepSeaGradient = LinearGradient(
    colors: [darkBackground, secondaryBlue],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  
  static const LinearGradient cardGradient = LinearGradient(
    colors: [cardColor, surfaceColor],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  
  static const LinearGradient accentGradient = LinearGradient(
    colors: [accentCyan, lightCyan],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  
  // Chart Colors for Data Visualization
  static const List<Color> chartColors = [
    primaryBlue,
    accentCyan,
    lightCyan,
    success,
    warning,
    info,
    Color(0xFF8B5CF6), // Purple
    Color(0xFFEC4899), // Pink
  ];
  
  // Additional functional colors
  static const Color divider = Color(0xFF475569);
  static const Color outline = Color(0xFF64748B);
  static const Color shadow = Color(0x1A000000);
}

class AppTextStyles {
  // Using system default fonts for now
  
  // Headlines
  static const TextStyle headline1 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryText,
  );
  
  static const TextStyle headline2 = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryText,
  );
  
  static const TextStyle headline3 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppColors.primaryText,
  );
  
  static const TextStyle headline4 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.primaryText,
  );
  
  // Body Text
  static const TextStyle bodyLarge = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.primaryText,
  );
  
  static const TextStyle bodyMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColors.primaryText,
  );
  
  static const TextStyle bodySmall = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: AppColors.secondaryText,
  );
  
  // Labels and Buttons
  static const TextStyle labelLarge = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryText,
  );
  
  static const TextStyle labelMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryText,
  );
  
  // Caption and Small Text
  static const TextStyle caption = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: AppColors.mutedText,
  );
  
  static const TextStyle overline = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w500,
    color: AppColors.mutedText,
    letterSpacing: 1.2,
  );
  
  // Button Text
  static const TextStyle buttonText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.primaryText,
  );
}

class AppDimensions {
  // Spacing
  static const double paddingXS = 4.0;
  static const double paddingS = 8.0;
  static const double paddingM = 16.0;
  static const double paddingL = 24.0;
  static const double paddingXL = 32.0;
  static const double paddingXXL = 48.0;
  
  // Border Radius
  static const double radiusXS = 2.0;
  static const double radiusS = 4.0;
  static const double radiusM = 8.0;
  static const double radiusL = 12.0;
  static const double radiusXL = 16.0;
  static const double radiusXXL = 24.0;
  static const double radiusRound = 999.0;
  
  // Icon Sizes
  static const double iconXS = 12.0;
  static const double iconS = 16.0;
  static const double iconM = 24.0;
  static const double iconL = 32.0;
  static const double iconXL = 48.0;
  static const double iconXXL = 64.0;
  
  // Button Heights
  static const double buttonHeightS = 32.0;
  static const double buttonHeightM = 40.0;
  static const double buttonHeightL = 48.0;
  static const double buttonHeightXL = 56.0;
  
  // App Bar
  static const double appBarHeight = 56.0;
  static const double toolbarHeight = 56.0;
  
  // Bottom Navigation
  static const double bottomNavigationHeight = 80.0;
  
  // Cards
  static const double cardElevation = 4.0;
  static const double cardElevationHovered = 8.0;
  
  // Dividers
  static const double dividerThickness = 1.0;
  static const double thickDividerThickness = 2.0;
  
  // Margins (same as padding for consistency)
  static const double marginXS = paddingXS;
  static const double marginS = paddingS;
  static const double marginM = paddingM;
  static const double marginL = paddingL;
  static const double marginXL = paddingXL;
  static const double marginXXL = paddingXXL;
}

class AppShadows {
  static const List<BoxShadow> cardShadow = [
    BoxShadow(
      color: AppColors.shadow,
      blurRadius: 8.0,
      offset: Offset(0, 2),
    ),
  ];
  
  static const List<BoxShadow> elevatedShadow = [
    BoxShadow(
      color: AppColors.shadow,
      blurRadius: 12.0,
      offset: Offset(0, 4),
    ),
  ];
  
  static const List<BoxShadow> deepShadow = [
    BoxShadow(
      color: AppColors.shadow,
      blurRadius: 16.0,
      offset: Offset(0, 8),
    ),
  ];
}