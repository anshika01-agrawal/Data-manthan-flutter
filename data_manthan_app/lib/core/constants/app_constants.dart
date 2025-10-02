class AppConstants {
  // App Information
  static const String appName = 'Data Manthan';
  static const String appVersion = '1.0.0';
  static const String appDescription = 'Comprehensive marine science data platform';

  // API Configuration
  static const String baseUrl = 'https://api.data-manthan.com';
  static const String webAppUrl = 'https://data-manthan.vercel.app';
  
  // MongoDB Configuration
  static const String mongoLocalUrl = 'mongodb://localhost:27017/data_manthan';
  static const String mongoDbName = 'data_manthan';
  
  // Collections
  static const String oceanDataCollection = 'ocean_data';
  static const String speciesCollection = 'species_data';
  static const String otolithCollection = 'otolith_analysis';
  static const String ednaCollection = 'edna_samples';
  static const String usersCollection = 'users';
  static const String projectsCollection = 'projects';
  
  // External APIs
  static const String incoisApiUrl = 'https://incois.gov.in/api';
  static const String ncbiBlastUrl = 'https://ftp.ncbi.nlm.nih.gov/blast/db';
  
  // Animation Durations
  static const Duration shortAnimation = Duration(milliseconds: 300);
  static const Duration mediumAnimation = Duration(milliseconds: 500);
  static const Duration longAnimation = Duration(milliseconds: 800);
  
  // Pagination
  static const int defaultPageSize = 20;
  static const int maxPageSize = 100;
  
  // File Limits
  static const int maxImageSizeMB = 10;
  static const int maxFileSizeMB = 50;
  
  // Supported file types
  static const List<String> supportedImageTypes = ['.jpg', '.jpeg', '.png', '.tiff'];
  static const List<String> supportedDataTypes = ['.csv', '.xlsx', '.json', '.txt'];
}

class APIEndpoints {
  // Data Visualization
  static const String oceanographicData = '/api/oceanographic';
  static const String temperatureData = '/api/temperature';
  static const String salinityData = '/api/salinity';
  static const String chlorophyllData = '/api/chlorophyll';
  
  // Species Analysis
  static const String otolithAnalysis = '/api/otolith';
  static const String speciesClassification = '/api/species/classify';
  static const String morphometrics = '/api/morphometrics';
  
  // eDNA Processing
  static const String ednaUpload = '/api/edna/upload';
  static const String sequenceAnalysis = '/api/edna/analyze';
  static const String taxonomicComposition = '/api/edna/taxonomy';
  
  // Community & Collaboration
  static const String projects = '/api/projects';
  static const String teams = '/api/teams';
  static const String discussions = '/api/discussions';
  
  // User Management
  static const String auth = '/api/auth';
  static const String profile = '/api/profile';
}

class StorageKeys {
  static const String authToken = 'auth_token';
  static const String userId = 'user_id';
  static const String userPreferences = 'user_preferences';
  static const String themeMode = 'theme_mode';
  static const String onboardingCompleted = 'onboarding_completed';
  static const String lastSync = 'last_sync';
}