import 'package:equatable/equatable.dart';

import '../../domain/usecase/login_user.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class LoginEvent extends AuthEvent {
  final LoginParams params;

  LoginEvent({required this.params});
}
