class AppConstants {
  AppConstants._(); // Private constructor

  // 📱 APP INFO
  static const String appName = 'ShareWave';
  static const String appVersion = '1.0.0';
  static const String appDescription = 'Share files with nearby devices instantly';

  // 📏 SPACING & PADDING
  static const double paddingSmall = 8.0;
  static const double paddingMedium = 16.0;
  static const double paddingLarge = 24.0;
  static const double paddingXLarge = 32.0;

  // 📐 SIZES
  static const double iconSizeSmall = 16.0;
  static const double iconSizeMedium = 24.0;
  static const double iconSizeLarge = 32.0;
  static const double iconSizeXLarge = 48.0;

  static const double buttonHeight = 48.0;
  static const double inputHeight = 56.0;
  static const double cardElevation = 4.0;
  static const double borderRadius = 12.0;

  // 📊 LIMITS
  static const int maxFileNameLength = 100;
  static const int maxFilesPerTransfer = 50;
  static const Duration defaultTimeout = Duration(seconds: 30);

  // 🔤 STRINGS
  static const String sendFiles = 'Send Files';
  static const String receiveFiles = 'Receive Files';
  static const String noFilesSelected = 'No files selected';
  static const String connectionFailed = 'Connection failed';
}
