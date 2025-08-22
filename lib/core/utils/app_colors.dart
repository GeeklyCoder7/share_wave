import 'package:flutter/material.dart';

/// Custom color palette for ShareWave - Ocean & Wave inspired theme
class AppColors {
  AppColors._(); // Private constructor

  // 🌊 PRIMARY WAVE COLORS
  static const Color deepOcean = Color(0xFF0B4D6A);      // Deep ocean blue - main brand
  static const Color waveBlue = Color(0xFF1E88E5);       // Primary wave blue
  static const Color surfBlue = Color(0xFF42A5F5);       // Light surf blue
  static const Color foamBlue = Color(0xFFE3F2FD);       // Very light foam background

  // 🌀 ACCENT WAVE COLORS
  static const Color tealWave = Color(0xFF00ACC1);       // Fresh teal accent
  static const Color cyanSplash = Color(0xFF26C6DA);     // Cyan highlights
  static const Color aquaMist = Color(0xFF4DD0E1);       // Subtle aqua accents

  // ⚡ COMPLEMENTARY COLORS
  static const Color coralWave = Color(0xFFFF7043);      // Warm coral for actions
  static const Color seafoamGreen = Color(0xFF4DB6AC);   // Success states
  static const Color stormGray = Color(0xFF546E7A);      // Neutral text

  // 🌈 NEUTRAL WAVE COLORS
  static const Color white = Color(0xFFFFFFFF);          // Pure white
  static const Color lightFoam = Color(0xFFF8FFFE);      // Off-white with blue tint
  static const Color mistGray = Color(0xFFECEFF1);       // Light gray with blue tint
  static const Color deepGray = Color(0xFF37474F);       // Dark blue-gray
  static const Color abyssal = Color(0xFF263238);        // Very dark blue-gray

  // ✅ SUCCESS WAVE COLORS
  static const Color successWave = Color(0xFF4DB6AC);    // Seafoam success
  static const Color successLight = Color(0xFF80CBC4);   // Light seafoam

  // ❌ ERROR WAVE COLORS
  static const Color errorCoral = Color(0xFFE53935);     // Coral error
  static const Color errorLight = Color(0xFFEF5350);     // Light coral

  // ⚠️ WARNING WAVE COLORS
  static const Color warningAmber = Color(0xFFFFB300);   // Amber warning
  static const Color warningLight = Color(0xFFFFCC02);   // Light amber

  // 🗂️ FILE TYPE WAVE COLORS
  static const Color fileDocument = Color(0xFF00695C);   // Deep teal for docs
  static const Color fileImage = Color(0xFF00897B);      // Ocean green for images
  static const Color fileVideo = Color(0xFFD84315);      // Deep coral for videos
  static const Color fileAudio = Color(0xFF5E35B1);      // Wave purple for audio
  static const Color fileApk = Color(0xFF1565C0);        // Storm blue for APKs
  static const Color fileOther = Color(0xFF546E7A);      // Storm gray for others

  // 🎨 GRADIENT WAVE COLORS
  static const List<Color> oceanGradient = [deepOcean, waveBlue];
  static const List<Color> surfGradient = [waveBlue, surfBlue];
  static const List<Color> mistGradient = [surfBlue, foamBlue];
  static const List<Color> coralGradient = [coralWave, Color(0xFFFFAB91)];

  /// Get color based on file extension
  static Color getFileTypeColor(String extension) {
    switch (extension.toLowerCase()) {
      case '.pdf':
      case '.doc':
      case '.docx':
      case '.txt':
      case '.rtf':
      case '.odt':
        return fileDocument;
      case '.jpg':
      case '.jpeg':
      case '.png':
      case '.gif':
      case '.bmp':
      case '.webp':
      case '.svg':
        return fileImage;
      case '.mp4':
      case '.avi':
      case '.mov':
      case '.mkv':
      case '.flv':
      case '.wmv':
        return fileVideo;
      case '.mp3':
      case '.wav':
      case '.aac':
      case '.flac':
      case '.ogg':
      case '.m4a':
        return fileAudio;
      case '.apk':
        return fileApk;
      default:
        return fileOther;
    }
  }

  /// Get gradient based on context
  static LinearGradient getWaveGradient({
    required String type,
    AlignmentGeometry begin = Alignment.topLeft,
    AlignmentGeometry end = Alignment.bottomRight,
  }) {
    List<Color> colors;
    switch (type.toLowerCase()) {
      case 'ocean':
        colors = oceanGradient;
        break;
      case 'surf':
        colors = surfGradient;
        break;
      case 'mist':
        colors = mistGradient;
        break;
      case 'coral':
        colors = coralGradient;
        break;
      default:
        colors = oceanGradient;
    }

    return LinearGradient(
      begin: begin,
      end: end,
      colors: colors,
    );
  }

  /// Material Theme with ShareWave colors
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: waveBlue,
        primary: waveBlue,
        onPrimary: white,
        primaryContainer: surfBlue,
        onPrimaryContainer: deepOcean,
        secondary: tealWave,
        onSecondary: white,
        secondaryContainer: cyanSplash,
        onSecondaryContainer: deepOcean,
        tertiary: coralWave,
        onTertiary: white,
        error: errorCoral,
        onError: white,
        background: lightFoam,
        onBackground: deepGray,
        surface: white,
        onSurface: deepGray,
        surfaceVariant: mistGray,
        onSurfaceVariant: stormGray,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: deepOcean,
        foregroundColor: white,
        centerTitle: true,
        elevation: 2,
        surfaceTintColor: Colors.transparent,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: waveBlue,
          foregroundColor: white,
          elevation: 3,
          shadowColor: waveBlue.withOpacity(0.3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        ),
      ),
      cardTheme: CardThemeData(
        elevation: 4,
        shadowColor: deepOcean.withOpacity(0.1),
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        color: white,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: coralWave,
        foregroundColor: white,
        elevation: 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(color: deepOcean, fontWeight: FontWeight.bold),
        displayMedium: TextStyle(color: deepOcean, fontWeight: FontWeight.bold),
        displaySmall: TextStyle(color: deepOcean, fontWeight: FontWeight.bold),
        headlineLarge: TextStyle(color: deepOcean, fontWeight: FontWeight.w600),
        headlineMedium: TextStyle(color: deepOcean, fontWeight: FontWeight.w600),
        headlineSmall: TextStyle(color: deepOcean, fontWeight: FontWeight.w600),
        titleLarge: TextStyle(color: deepGray, fontWeight: FontWeight.w500),
        titleMedium: TextStyle(color: deepGray, fontWeight: FontWeight.w500),
        titleSmall: TextStyle(color: stormGray, fontWeight: FontWeight.w500),
        bodyLarge: TextStyle(color: deepGray),
        bodyMedium: TextStyle(color: deepGray),
        bodySmall: TextStyle(color: stormGray),
      ),
    );
  }

  /// Dark theme for ShareWave
  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: waveBlue,
        brightness: Brightness.dark,
        primary: surfBlue,
        onPrimary: abyssal,
        primaryContainer: deepOcean,
        onPrimaryContainer: surfBlue,
        secondary: aquaMist,
        onSecondary: abyssal,
        secondaryContainer: tealWave,
        onSecondaryContainer: white,
        tertiary: coralWave,
        onTertiary: abyssal,
        error: errorLight,
        onError: abyssal,
        background: abyssal,
        onBackground: white,
        surface: deepGray,
        onSurface: white,
        surfaceVariant: stormGray,
        onSurfaceVariant: mistGray,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: abyssal,
        foregroundColor: white,
        centerTitle: true,
        elevation: 2,
        surfaceTintColor: Colors.transparent,
      ),
    );
  }
}
