import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tgf_style_guide_v2/pages/dummy.dart';
import 'package:tgf_style_guide_v2/pages/home.dart';
import 'package:tgf_style_guide_v2/utils/routes.dart';
import 'package:tgf_style_guide_v2/widgets/filterchip.dart';
import 'package:tgf_style_guide_v2/widgets/timer.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(PackageApp());
}

class PackageApp extends StatelessWidget {
  const PackageApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.samay,
      routes: {
        AppRoutes.home: (context) => HomePage(),
        AppRoutes.dummy: (context) =>StopWatchTimerPage(),
        AppRoutes.samay: (context) =>FilterChipDisplay(),
      },
    );
  }
}
