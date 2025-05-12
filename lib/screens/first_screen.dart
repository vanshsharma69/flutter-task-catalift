import 'package:assignment_app/components/button.dart';
import 'package:flutter/material.dart';

class InterestsScreen extends StatelessWidget {
  const InterestsScreen({super.key});

  final List<Map<String, dynamic>> interests = const [
    {'text': 'Lorem ipsum', 'selected': true},
    {'text': 'Lorem', 'selected': false},
    {'text': 'Lorem ipsum', 'selected': false},
    {'text': 'Lorem ipsum', 'selected': true},
    {'text': 'Lorem', 'selected': false},
    {'text': 'Lorem ipsum', 'selected': false},
    {'text': 'Lorem ipsum', 'selected': false},
    {'text': 'Lorem', 'selected': false},
    {'text': 'Lorem ipsum', 'selected': true},
    {'text': 'Lorem ipsum', 'selected': false},
    {'text': 'Lorem', 'selected': false},
    {'text': 'Lorem ipsum', 'selected': false},
    {'text': 'Lorem ipsum', 'selected': true},
    {'text': 'sit amet', 'selected': false},
    {'text': 'Lorem ipsum', 'selected': true},
    {'text': 'Lorem ipsum', 'selected': false},
    {'text': 'Lorem', 'selected': false},
    {'text': 'Lorem', 'selected': false},
    {'text': 'Lorem ipsum', 'selected': false},
    {'text': 'Lorem', 'selected': false},
    {'text': 'Lorem ipsum', 'selected': true},
  ];

  @override
  Widget build(BuildContext context) {
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
              const Text(
                "Your Interests",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF0A0A80),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                style: TextStyle(fontSize: 13, color: Colors.black87),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.search, color: Colors.blue, size: 20),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          hintStyle: TextStyle(color: Colors.blueAccent),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Wrap(
                spacing: 10,
                runSpacing: 12,
                children:
                    interests.map((item) {
                      final selected = item['selected'] as bool;
                      return Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 20,
                        ),
                        decoration: BoxDecoration(
                          color:
                              selected
                                  ? const Color(0xFF0A0A80)
                                  : Colors.transparent,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color:
                                selected
                                    ? const Color(0xFF0A0A80)
                                    : Colors.blue.shade100,
                          ),
                        ),
                        child: Text(
                          item['text'],
                          style: TextStyle(
                            color:
                                selected ? Colors.white : Colors.blue.shade900,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      );
                    }).toList(),
              ),
              const SizedBox(height: 40),
              PrimaryButton(
                label: "Continue",
                onPressed: () {
                  // Logic
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
