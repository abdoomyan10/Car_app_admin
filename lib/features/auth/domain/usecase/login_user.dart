import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../repo/auth_reposetory.dart';

@injectable
class LoginUsecase implements UseCase<User, LoginParams> {
  final AuthRepo repo;

  LoginUsecase({required this.repo});
  @override
  Future<Either<Failure, User>> call(LoginParams params) async {
    return await repo.login(params.email, params.password);
  }
}

class LoginParams {
  final String email;
  final String password;
  LoginParams({required this.email, required this.password});
}
