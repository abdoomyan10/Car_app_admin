import 'package:bloc/bloc.dart';
import 'package:car_appp_admin/core/utils/request_status.dart';
import 'package:car_appp_admin/core/utils/toaster.dart';
import 'package:car_appp_admin/features/auth/presentation/bloc/auth-state.dart';
import 'package:car_appp_admin/features/auth/presentation/bloc/auth_event.dart';

import 'package:injectable/injectable.dart';

@lazySingleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUsecase loginUsecase;
  AuthBloc(this.loginUsecase) : super(AuthState()) {
    on<LoginEvent>((event, emit) async {
      emit(state.copyWith(status: RequestStatus.loading));
      final result = await loginUsecase(event.params);
      result.fold(
        (left) {
          emit(state.copyWith(status: RequestStatus.failed));
          Toaster.showToast(left.message);
        },
        (right) {
          emit(state.copyWith(status: RequestStatus.success, user: right));
        },
      );
    });
  }
}
