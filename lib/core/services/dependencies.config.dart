// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/auth/data/datasource/auth-datasource.dart' as _i1047;
import '../../features/auth/data/repo/auth_repo_imp1.dart' as _i367;
import '../../features/auth/domain/repo/auth_reposetory.dart' as _i564;
import '../../features/auth/domain/usecase/login_user.dart' as _i404;
import '../../features/auth/presentation/bloc/auth-bloc.dart' as _i768;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i1047.AuthDatasource>(() => _i1047.AuthDatasourceImpl());
    gh.factory<_i564.AuthRepo>(
      () => _i367.AuthRepoImpl(datasource: gh<_i1047.AuthDatasource>()),
    );
    gh.factory<_i404.LoginUsecase>(
      () => _i404.LoginUsecase(repo: gh<_i564.AuthRepo>()),
    );
    gh.lazySingleton<_i768.AuthBloc>(
      () => _i768.AuthBloc(gh<_i404.LoginUsecase>()),
    );
    return this;
  }
}
