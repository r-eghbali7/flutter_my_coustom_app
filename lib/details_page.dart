import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final int index;
  const DetailsPage({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('صفحه جزئیات')),
      body: Center(
        child: Text(
          'این جزئیات مربوط به مطلب شماره $index هست',
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
