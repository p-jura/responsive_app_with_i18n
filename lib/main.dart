// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:responsive_localization/presentation/main_page.dart';
import 'package:responsive_localization/theme/theme.dart';

void main(List<String> args) {
  runApp(const RootApp());
}

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: defoultTextTheme,
        colorScheme: DefaultColorsPalette.defoultColorScheme,
        popupMenuTheme: DefaultColorsPalette.defoultPopUpStyle,
      ),
      builder: (context, child) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context, child!),
        breakpoints: [
          const ResponsiveBreakpoint.resize(1, name: 'RS', scaleFactor: 0.5),
          const ResponsiveBreakpoint.autoScale(200,
              name: 'S', scaleFactor: 0.5),
          const ResponsiveBreakpoint.tag(480, name: MOBILE),
          const ResponsiveBreakpoint.resize(800, name: TABLET),
          const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
          const ResponsiveBreakpoint.autoScale(
            1900,
            name: 'LARGE',
          ),
        ],
      ),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      home: const MainPage(),
    );
  }
}
