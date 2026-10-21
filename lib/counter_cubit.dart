
import 'package:flutter_bloc/flutter_bloc.dart';

// =======================================
// LỚP QUẢN LÝ TRẠNG THÁI COUNTER
// =======================================

// Cubit<int>: Quản lý trạng thái có kiểu dữ liệu int.
class CounterCubit extends Cubit<int> {

  // Khởi tạo giá trị ban đầu của bộ đếm bằng 0.
  CounterCubit() : super(0);

  // Hàm tăng giá trị bộ đếm.
  void increment() {
    // state: Giá trị hiện tại của bộ đếm.
    // emit(): Phát ra trạng thái mới.
    emit(state + 1);
  }

  // Hàm giảm giá trị bộ đếm.
  void decrement() {
    // Phát ra trạng thái mới, giảm đi 1.
    emit(state - 1);
  }
}
