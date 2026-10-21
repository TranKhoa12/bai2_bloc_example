
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';

import 'counter_observer.dart';
import 'counter_page.dart';

// ========================================
// HÀM KHỞI ĐỘNG ỨNG DỤNG
// ========================================

void main() {

  // Đăng ký Observer để theo dõi mọi thay đổi
  // trạng thái của Bloc hoặc Cubit trong ứng dụng.
  Bloc.observer = CounterObserver();

  // Khởi chạy ứng dụng.
  runApp(const MyApp());
}


// ========================================
// WIDGET GỐC CỦA ỨNG DỤNG
// ========================================

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      // Ẩn nhãn DEBUG trên màn hình.
      debugShowCheckedModeBanner: false,

      home: Scaffold(

        // Thanh tiêu đề giống với slide.
        appBar: AppBar(
          title: const Text('BloC Example'),
        ),

        // Gọi màn hình CounterPage.
        body: const CounterPage(),
      ),
    );
  }
}
