import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:officechatbox/screens/chat_screen.dart';
import 'package:officechatbox/screens/login_screen.dart';
import 'package:officechatbox/screens/registration_screen.dart';
import 'package:officechatbox/screens/welcome_screen.dart';

Future<void> main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    FlashChat(),
  );
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: WelcomeScreen(),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen()
      },
    );
  }
}
