import 'package:car_appp_admin/core/error/exeptions.dart';
import 'package:car_appp_admin/core/error/failure.dart';
import 'package:car_appp_admin/features/auth/data/datasource/auth-datasource.dart';
import 'package:car_appp_admin/features/auth/domain/repo/auth_reposetory.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepo)
class AuthRepoImpl implements AuthRepo {
  final AuthDatasource datasource;

  AuthRepoImpl({required this.datasource});
  @override
  Future<Either<Failure, User>> login(String email, String password) async {
    try {
      return Right(await datasource.login(email, password));
    } on ServerException catch (e) {
      print(e);
      return Left(ServerFailure(e.message));
    } on Exception catch (e) {
      print(e);
      return Left(ServerFailure(e.toString()));
    }
  }
}
