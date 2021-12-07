import 'package:EverythingGuitar/screens/log_in_screen.dart';
import 'package:EverythingGuitar/widgets/authentication_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

import './models/color_scheme.dart';
import './screens/home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthenticationService>(
          create: (_) => AuthenticationService(FirebaseAuth.instance),
          ),

          StreamProvider(create: (context) => context.read<AuthenticationService>().authStateChanges,)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AuthenticationWrapper(),
        themeMode: ThemeMode.system,
        theme: ThemeData(
          brightness: Brightness.light,
          accentColor: Colors.grey[850],
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          accentColor: lightBlue,
        ),
        routes: {
          '/HomePage': (context) => HomePage(),
        },
      ),
    );
  }
}

class AuthenticationWrapper extends StatelessWidget {
  const AuthenticationWrapper({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User>();

  if (firebaseUser != null) {
    return HomePage();
  }
  return SignInPage();
  }
}

