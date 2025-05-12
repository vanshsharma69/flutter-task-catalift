import 'package:assignment_app/components/button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: DreamProfessionScreen(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class DreamProfessionScreen extends StatelessWidget {
  const DreamProfessionScreen({super.key});

  final List<String> professions = const [
    'Software Engineer',
    'Data Scientist',
    'Doctor',
    'Designer',
    'Entrepreneur',
  ];

  final List<String> companies = const [
    'Apple',
    'Google',
    'Microsoft',
    'Amazon',
    'Tesla',
  ];

  @override
  Widget build(BuildContext context) {
    String selectedProfession = professions[0];
    String selectedCompany = companies[0];

    return Scaffold(
      backgroundColor: const Color(0xFFFCFCFF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 6,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Color(0xFF0A0A80),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Image.asset('assets/image.png', height: 250, fit: BoxFit.contain),
              const SizedBox(height: 40),
              const Text(
                "Your Dream Profession",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0A0A80),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black87,
                  height: 1.4,
                ),
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  const Text(
                    "I want to be a...",
                    style: TextStyle(fontSize: 13, color: Colors.black54),
                  ),
                  const Spacer(),
                  const Text(
                    "at",
                    style: TextStyle(fontSize: 13, color: Colors.black54),
                  ),
                  const SizedBox(width: 8),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue.shade100),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          isExpanded: true,
                          value: selectedProfession,
                          items:
                              professions.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                          onChanged: (_) {},
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue.shade100),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          isExpanded: true,
                          value: selectedCompany,
                          items:
                              companies.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                          onChanged: (_) {},
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              PrimaryButton(
                label: "Continue",
                onPressed: () {
                  // logic
                },
              ),
              const SizedBox(height: 10),
              PrimaryButton(
                label: "Back",
                isOutlined: true,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
