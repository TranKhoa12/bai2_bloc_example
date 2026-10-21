
import 'package:flutter/material.dart';

import 'counter_page.dart';

// =======================================
// HÀM KHỞI ĐỘNG ỨNG DỤNG
// =======================================

void main() {
  runApp(const MyApp());
}

// Widget gốc của ứng dụng.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      // Ẩn nhãn DEBUG.
      debugShowCheckedModeBanner: false,

      // Khai báo màn hình chính.
      home: CounterPage(),
    );
  }
}
