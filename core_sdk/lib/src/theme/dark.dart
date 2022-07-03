part of 'theme.dart';

ThemeData _darkTheme = FlexThemeData.dark(
  scheme: FlexScheme.ebonyClay,
  surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
  blendLevel: 15,
  appBarOpacity: 0.90,
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 30,
    navigationRailElevation: 10,
  ),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  // To use the playground font, add GoogleFonts package and uncomment
  fontFamily: GoogleFonts.notoSans().fontFamily,
);
