import 'package:car_appp_admin/core/error/exeptions.dart';
import 'package:car_appp_admin/core/utils/toaster.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

abstract class AuthDatasource {
  Future<User> login(String email, String password);
}

@Injectable(as: AuthDatasource)
class AuthDatasourceImpl implements AuthDatasource {
  @override
  Future<User> login(String email, String password) async {
    try {
      final user = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (user.user == null) {
        throw ServerException('User Not Found');
      } else {
        return user.user!;
      }
    } on FirebaseAuthException catch (e) {
      if (e.message != null) {
        Toaster.showToast(e.message!, isError: true);
      }
      throw ServerException(e.message ?? 'User Not Found');
    }
  }
}
