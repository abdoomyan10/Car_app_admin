/*import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;


extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i264.SellCarRemoteDataSource>(
      () => _i264.SellCarRemoteDataSource(),
    );
    gh.factory<_i477.SellCarRepository>(
      () => _i400.SellCarRepositoryImpl(
        remoteDataSource: gh<_i264.SellCarRemoteDataSource>(),
      ),
    );
    gh.factory<_i64.AuthDatasource>(() => _i64.AuthDatasourceImpl());
    gh.factory<_i875.AuthRepo>(
      () => _i469.AuthRepoImpl(datasource: gh<_i64.AuthDatasource>()),
    );
    gh.factory<_i1048.LoginUsecase>(
      () => _i1048.LoginUsecase(repo: gh<_i875.AuthRepo>()),
    );
    gh.lazySingleton<_i204.AuthBloc>(
      () => _i204.AuthBloc(gh<_i1048.LoginUsecase>()),
    );
    gh.factory<_i83.SubmitCarListing>(
      () => _i83.SubmitCarListing(repository: gh<_i477.SellCarRepository>()),
    );
    gh.lazySingleton<_i410.SellCarBloc>(
      () => _i410.SellCarBloc(submitCarListing: gh<_i83.SubmitCarListing>()),
    );
    return this;
  }
}
*/
