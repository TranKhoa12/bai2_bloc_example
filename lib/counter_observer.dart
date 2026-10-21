
import 'package:bloc/bloc.dart';

// ========================================
// LỚP THEO DÕI THAY ĐỔI TRẠNG THÁI
// ========================================

// Tạo lớp kế thừa từ BlocObserver để theo dõi
// các thay đổi trạng thái trong ứng dụng.
class CounterObserver extends BlocObserver {

  // Phương thức được gọi khi trạng thái
  // của Bloc hoặc Cubit có sự thay đổi.
  @override
  void onChange(
    BlocBase<dynamic> bloc,
    Change<dynamic> change,
  ) {

    // Gọi phương thức onChange của lớp cha.
    super.onChange(bloc, change);

    // Ghi log tên Bloc/Cubit và sự thay đổi trạng thái.
    // Kết quả được hiển thị trong Debug Console.
    print('${bloc.runtimeType} $change');
  }
}
