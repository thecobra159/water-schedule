import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:water_schedule/utils/route_generator.dart';
import 'package:water_schedule/views/home.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:water_schedule/utils/routes.dart' as Routes;


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // load .env file
  await dotenv.load(fileName: ".env");

  // block rotation screen
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  final waterScheduleTheme = ThemeData(
    primaryColor: Color(0xff00A7CA),
    primaryColorDark: Color(0xff4E89B7),
    accentColor: Color(0xff00C3C5),
    backgroundColor: Color(0xff00A7CA),
  );

  runApp(MaterialApp(
    home: Home(),
    theme: waterScheduleTheme,
    initialRoute: Routes.home,
    onGenerateRoute: RouteGenerator.generateRoute,
    debugShowCheckedModeBanner: false,
  ));
}