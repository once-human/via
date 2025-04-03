import 'package:flutter/material.dart';

void main() {
  runApp(const VIAApp());
}

class VIAApp extends StatelessWidget {
  const VIAApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VIA Ride Service',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF4B39EF)),
        useMaterial3: true,
      ),
      home: const PlaceholderScreen(),
    );
  }
}

class PlaceholderScreen extends StatelessWidget {
  const PlaceholderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VIA Ride Service'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.directions_car_rounded,
              size: 100,
              color: Color(0xFF4B39EF),
            ),
            const SizedBox(height: 24),
            const Text(
              'VIA',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4B39EF),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Subscription-Based Ride Service',
              style: TextStyle(
                fontSize: 18,
                color: Color(0xFF57636C),
              ),
            ),
            const SizedBox(height: 48),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF4B39EF),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text('Get Started'),
            ),
          ],
        ),
      ),
    );
  }
} 