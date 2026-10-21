
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_cubit.dart';

// ========================================
// PHẦN 1: CUNG CẤP COUNTER CUBIT
// ========================================

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {

    // BlocProvider tạo một instance CounterCubit
    // và cung cấp cho các widget con.
    return BlocProvider(
      create: (_) => CounterCubit(),

      // CounterView là widget con sử dụng CounterCubit.
      child: const CounterView(),
    );
  }
}


// ========================================
// PHẦN 2: XÂY DỰNG GIAO DIỆN
// ========================================

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      // Nội dung chính của màn hình.
      body: Center(

        // BlocBuilder lắng nghe thay đổi của CounterCubit.
        // Khi trạng thái thay đổi, giao diện được xây dựng lại.
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, state) {

            // Hiển thị giá trị trạng thái hiện tại.
            return Text(
              '$state',
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            );
          },
        ),
      ),

      // ====================================
      // HAI NÚT TĂNG VÀ GIẢM GIÁ TRỊ
      // ====================================

      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,

        children: [

          // Nút tăng số đếm.
          FloatingActionButton(
            heroTag: 'btnTang',

            // Lấy CounterCubit và gọi phương thức increment().
            onPressed: () =>
                context.read<CounterCubit>().increment(),

            child: const Icon(Icons.add),
          ),

          // Tạo khoảng cách giữa hai nút.
          const SizedBox(height: 10),

          // Nút giảm số đếm.
          FloatingActionButton(
            heroTag: 'btnGiam',

            // Lấy CounterCubit và gọi phương thức decrement().
            onPressed: () =>
                context.read<CounterCubit>().decrement(),

            child: const Icon(Icons.remove),
          ),

        ],
      ),
    );
  }
}
