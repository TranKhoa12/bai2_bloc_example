
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_cubit.dart';

// =======================================
// PHẦN 1: CUNG CẤP COUNTER CUBIT
// =======================================

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {

    // BlocProvider tạo và cung cấp CounterCubit
    // cho các widget con bên trong.
    return BlocProvider(
      create: (context) => CounterCubit(),

      // Chuyển sang widget hiển thị giao diện.
      child: const CounterView(),
    );
  }
}


// =======================================
// PHẦN 2: XÂY DỰNG GIAO DIỆN
// =======================================

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // Thanh tiêu đề của ứng dụng.
      appBar: AppBar(
        title: const Text('BLoC Counter'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      // Nội dung chính của màn hình.
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            const Text(
              'Giá trị bộ đếm:',
              style: TextStyle(fontSize: 20),
            ),

            const SizedBox(height: 15),

            // BlocBuilder lắng nghe CounterCubit.
            // Khi trạng thái thay đổi, builder chạy lại
            // để cập nhật giá trị bộ đếm trên giao diện.
            BlocBuilder<CounterCubit, int>(
              builder: (context, state) {

                // state là giá trị hiện tại của bộ đếm.
                return Text(
                  '$state',
                  style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                );

              },
            ),
          ],
        ),
      ),

      // ===================================
      // HAI NÚT TĂNG VÀ GIẢM GIÁ TRỊ
      // ===================================

      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,

        children: [

          // Nút tăng giá trị bộ đếm.
          FloatingActionButton(
            heroTag: 'btnTang',

            // Truy cập CounterCubit và gọi hàm increment().
            onPressed: () {
              context.read<CounterCubit>().increment();
            },

            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            child: const Icon(Icons.add),
          ),

          const SizedBox(height: 10),

          // Nút giảm giá trị bộ đếm.
          FloatingActionButton(
            heroTag: 'btnGiam',

            // Truy cập CounterCubit và gọi hàm decrement().
            onPressed: () {
              context.read<CounterCubit>().decrement();
            },

            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
