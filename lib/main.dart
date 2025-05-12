import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:assignment_app/screens/first_screen.dart';
import 'package:assignment_app/screens/second_screen.dart';
import 'package:assignment_app/components/button.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff2E3F6E)),
        scaffoldBackgroundColor: const Color(0xfff1f4ff),
        cardTheme: const CardTheme(
          elevation: 1.6,
          color: Colors.white,
          margin: EdgeInsets.symmetric(vertical: 8),
        ),
      ),
      home: const BaseScreen(),
    );
  }
}

class BaseScreen extends StatelessWidget {
  const BaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 64),
            _buildNavButton(
              context,
              'Go to First Screen',
              const InterestsScreen(),
            ),
            _buildNavButton(
              context,
              'Go to Second Screen',
              const DreamProfessionScreen(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavButton(BuildContext context, String text, Widget screen) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: PrimaryButton(
        label: text,
        onPressed:
            () => Navigator.push(
              context,
              CupertinoPageRoute(builder: (_) => screen),
            ),
      ),
    );
  }
}
