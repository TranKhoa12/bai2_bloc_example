
import 'package:bloc/bloc.dart';

// ========================================
// LỚP QUẢN LÝ TRẠNG THÁI COUNTER
// ========================================

// CounterCubit kế thừa Cubit<int>
// để quản lý trạng thái số nguyên của bộ đếm.
class CounterCubit extends Cubit<int> {

  // Khởi tạo trạng thái ban đầu bằng 0.
  CounterCubit() : super(0);

  // Phương thức tăng giá trị bộ đếm.
  void increment() => emit(state + 1);

  // Phương thức giảm giá trị bộ đếm.
  void decrement() => emit(state - 1);

  // Chú thích:
  // state: Lấy giá trị trạng thái hiện tại.
  // emit(): Phát ra trạng thái mới.
}
