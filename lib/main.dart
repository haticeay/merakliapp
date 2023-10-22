import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_merakli/core/components/custom_activity_card.dart';
import 'package:flutter_merakli/core/components/custom_bottom_bar.dart';
import 'package:flutter_merakli/firebase_options.dart';
import 'package:flutter_merakli/view/home/activity_view.dart';
import 'package:flutter_merakli/view/home/home_view.dart';
import 'package:flutter_merakli/view/home/profile_question_view.dart';
import 'package:flutter_merakli/view/login/welcome_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const ProviderScope(child: MyApp()));
  //status barı kaldırmak için
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const ColorScheme myColorScheme = ColorScheme.light(
      primary: Color(0xFF258086),
      secondary: Color(0xFFAABBCC),
    );

    final ThemeData myTheme = ThemeData.from(
      colorScheme: myColorScheme,
    );
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: myTheme,
        home: ProfileQuestionView());
  }
}
