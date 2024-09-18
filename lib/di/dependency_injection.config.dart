// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:device_info_plus/device_info_plus.dart' as _i20;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/adapters.dart' as _i5;
import 'package:hive_flutter/hive_flutter.dart' as _i33;
import 'package:image_picker/image_picker.dart' as _i24;
import 'package:injectable/injectable.dart' as _i2;
import 'package:package_info_plus/package_info_plus.dart' as _i25;

import '../core/app_providers.dart' as _i3;
import '../features/account/data/data_sources/account_data_source.dart' as _i38;
import '../features/account/data/model/account_model.dart' as _i6;
import '../features/account/data/repository/account_repository_impl.dart'
    as _i40;
import '../features/account/domain/repository/account_repository.dart' as _i39;
import '../features/account/domain/use_case/account_use_case.dart' as _i70;
import '../features/account/domain/use_case/add_account_use_case.dart' as _i41;
import '../features/account/domain/use_case/clear_accounts_use_case.dart'
    as _i44;
import '../features/account/domain/use_case/delete_account_use_case.dart'
    as _i51;
import '../features/account/domain/use_case/get_account_use_case.dart' as _i61;
import '../features/account/domain/use_case/get_accounts_use_case.dart' as _i62;
import '../features/account/domain/use_case/update_account_use_case.dart'
    as _i80;
import '../features/account/presentation/bloc/accounts_bloc.dart' as _i82;
import '../features/account/presentation/cubit/accounts_cubit.dart' as _i83;
import '../features/category/data/data_sources/category_data_source.dart'
    as _i11;
import '../features/category/data/model/category_model.dart' as _i9;
import '../features/category/data/repository/category_repository_impl.dart'
    as _i13;
import '../features/category/domain/repository/category_repository.dart'
    as _i12;
import '../features/category/domain/use_case/add_category_use_case.dart'
    as _i42;
import '../features/category/domain/use_case/category_use_case.dart' as _i71;
import '../features/category/domain/use_case/clear_categories_use_case.dart'
    as _i14;
import '../features/category/domain/use_case/delete_category_use_case.dart'
    as _i19;
import '../features/category/domain/use_case/get_category_use_case.dart'
    as _i21;
import '../features/category/domain/use_case/update_category_use_case.dart'
    as _i36;
import '../features/category/presentation/bloc/category_bloc.dart' as _i87;
import '../features/debit/data/data_sources/debit_local_data_source_impl.dart'
    as _i17;
import '../features/debit/data/models/debit_model.dart' as _i10;
import '../features/debit/data/repository/debit_repository_impl.dart' as _i48;
import '../features/debit/domain/repository/debit_repository.dart' as _i47;
import '../features/debit/domain/use_case/add_debit_use.case.dart' as _i85;
import '../features/debit/domain/use_case/debit_use_case.dart' as _i89;
import '../features/debit/domain/use_case/delete_debit_use_case.dart' as _i54;
import '../features/debit/domain/use_case/get_debit_use_case.dart' as _i64;
import '../features/debit/domain/use_case/update_debit_use.case.dart' as _i81;
import '../features/debit/presentation/cubit/debts_bloc.dart' as _i88;
import '../features/debt_transaction/data/data_source/debit_transactions_data_store.dart'
    as _i18;
import '../features/debt_transaction/data/model/debt_transactions_model.dart'
    as _i7;
import '../features/debt_transaction/data/repository/debit_transaction_repo_impl.dart'
    as _i50;
import '../features/debt_transaction/domain/repository/debit_transaction_repository.dart'
    as _i49;
import '../features/debt_transaction/domain/use_case/add_debit_transaction_use_case.dart'
    as _i84;
import '../features/debt_transaction/domain/use_case/delete_debit_transaction_use_case.dart'
    as _i52;
import '../features/debt_transaction/domain/use_case/delete_debit_transactions_by_debit_id_use_case.dart'
    as _i53;
import '../features/debt_transaction/domain/use_case/get_debit_transactions_use_case.dart'
    as _i63;
import '../features/home/presentation/controller/summary_controller.dart'
    as _i31;
import '../features/home/presentation/pages/home/home_cubit.dart' as _i69;
import '../features/intro/data/repository/country_repository_impl.dart' as _i16;
import '../features/intro/domain/repository/country_repository.dart' as _i15;
import '../features/intro/domain/use_case/get_contries_user_case.dart' as _i22;
import '../features/intro/domain/use_case/get_selected_country_use_case.dart'
    as _i23;
import '../features/intro/domain/use_case/save_selected_country_use_case.dart'
    as _i28;
import '../features/intro/presentation/cubit/country_picker_cubit.dart' as _i46;
import '../features/profile/data/repository/profile_repository_impl.dart'
    as _i27;
import '../features/profile/domain/repository/profile_repository.dart' as _i26;
import '../features/profile/domain/use_case/image_picker_use_case.dart' as _i73;
import '../features/profile/domain/use_case/profile_use_case.dart' as _i77;
import '../features/profile/presentation/cubit/profile_cubit.dart' as _i76;
import '../features/search/domain/use_case/filter_expense_use_case.dart'
    as _i78;
import '../features/search/presentation/cubit/search_cubit.dart' as _i90;
import '../features/settings/data/authenticate.dart' as _i4;
import '../features/settings/data/repository/csv_export_impl.dart' as _i59;
import '../features/settings/data/repository/json_export_import_impl.dart'
    as _i60;
import '../features/settings/data/repository/settings_repository_impl.dart'
    as _i30;
import '../features/settings/domain/repository/import_export.dart' as _i58;
import '../features/settings/domain/repository/settings_repository.dart'
    as _i29;
import '../features/settings/domain/use_case/csv_file_export_use_case.dart'
    as _i86;
import '../features/settings/domain/use_case/json_file_export_use_case.dart'
    as _i74;
import '../features/settings/domain/use_case/json_file_import_use_case.dart'
    as _i75;
import '../features/settings/domain/use_case/setting_use_case.dart' as _i92;
import '../features/settings/presentation/cubit/settings_cubit.dart' as _i91;
import '../features/transaction/data/data_sources/local/transaction_data_manager.dart'
    as _i32;
import '../features/transaction/data/model/transaction_model.dart' as _i8;
import '../features/transaction/data/repository/transaction_repository_impl.dart'
    as _i35;
import '../features/transaction/domain/repository/transaction_repository.dart'
    as _i34;
import '../features/transaction/domain/use_case/add_transaction_use_case.dart'
    as _i43;
import '../features/transaction/domain/use_case/clear_transactions_use_case.dart'
    as _i45;
import '../features/transaction/domain/use_case/delete_transaction_from_category_id_use_case.dart'
    as _i57;
import '../features/transaction/domain/use_case/delete_transaction_use_case.dart'
    as _i55;
import '../features/transaction/domain/use_case/delete_transactions_by_account_id_use_case.dart'
    as _i56;
import '../features/transaction/domain/use_case/get_transaction_use_case.dart'
    as _i65;
import '../features/transaction/domain/use_case/get_transactions_by_account_id_use_case.dart'
    as _i66;
import '../features/transaction/domain/use_case/get_transactions_by_category_id_use_case.dart'
    as _i67;
import '../features/transaction/domain/use_case/get_transactions_use_case.dart'
    as _i68;
import '../features/transaction/domain/use_case/transaction_use_case.dart'
    as _i72;
import '../features/transaction/domain/use_case/update_expense_use_case.dart'
    as _i37;
import '../features/transaction/presentation/bloc/transaction_bloc.dart'
    as _i79;
import 'module/hive_module.dart' as _i93;
import 'module/service_module.dart' as _i94;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final hiveBoxModule = _$HiveBoxModule();
  final serviceBoxModule = _$ServiceBoxModule();
  gh.lazySingleton<_i3.AppProviders>(() => _i3.AppProviders());
  gh.lazySingleton<_i4.Authenticate>(() => _i4.Authenticate());
  await gh.lazySingletonAsync<_i5.Box<_i6.AccountModel>>(
    () => hiveBoxModule.accountBox(),
    preResolve: true,
  );
  await gh.lazySingletonAsync<_i5.Box<_i7.DebtTransactionsModel>>(
    () => hiveBoxModule.transactionsBox(),
    preResolve: true,
  );
  await gh.lazySingletonAsync<_i5.Box<_i8.TransactionModel>>(
    () => hiveBoxModule.expenseBox(),
    preResolve: true,
  );
  await gh.lazySingletonAsync<_i5.Box<_i9.CategoryModel>>(
    () => hiveBoxModule.categoryBox(),
    preResolve: true,
  );
  await gh.lazySingletonAsync<_i5.Box<_i10.DebtModel>>(
    () => hiveBoxModule.debtsBox(),
    preResolve: true,
  );
  await gh.lazySingletonAsync<_i5.Box<dynamic>>(
    () => hiveBoxModule.boxDynamic(),
    instanceName: 'settings',
    preResolve: true,
  );
  gh.lazySingleton<_i11.CategoryDataSource>(() =>
      _i11.LocalCategoryManagerDataSourceImpl(
          gh<_i5.Box<_i9.CategoryModel>>()));
  gh.lazySingleton<_i12.CategoryRepository>(() =>
      _i13.CategoryRepositoryImpl(dataSources: gh<_i11.CategoryDataSource>()));
  gh.lazySingleton<_i14.ClearCategoriesUseCase>(
      () => _i14.ClearCategoriesUseCase(gh<_i12.CategoryRepository>()));
  gh.lazySingleton<_i15.CountryRepository>(() => _i16.CountryRepositoryImpl(
      gh<_i5.Box<dynamic>>(instanceName: 'settings')));
  gh.lazySingleton<_i17.DebtDataSource>(
      () => _i17.DebitDataSourceImpl(debtBox: gh<_i5.Box<_i10.DebtModel>>()));
  gh.lazySingleton<_i18.DebtTransactionDataSource>(() =>
      _i18.DebitTransactionDataStoreImpl(
          transactionsBox: gh<_i5.Box<_i7.DebtTransactionsModel>>()));
  gh.lazySingleton<_i19.DeleteCategoryUseCase>(() => _i19.DeleteCategoryUseCase(
      categoryRepository: gh<_i12.CategoryRepository>()));
  gh.lazySingleton<_i20.DeviceInfoPlugin>(
      () => serviceBoxModule.providesDeviceInfoPlugin());
  gh.lazySingleton<_i21.GetCategoryUseCase>(() => _i21.GetCategoryUseCase(
      categoryRepository: gh<_i12.CategoryRepository>()));
  gh.factory<_i22.GetCountriesUseCase>(
      () => _i22.GetCountriesUseCase(repository: gh<_i15.CountryRepository>()));
  gh.lazySingleton<_i23.GetSelectedCountryUseCase>(() =>
      _i23.GetSelectedCountryUseCase(repository: gh<_i15.CountryRepository>()));
  gh.lazySingleton<_i24.ImagePicker>(
      () => serviceBoxModule.providesImagePicker());
  await gh.lazySingletonAsync<_i25.PackageInfo>(
    () => serviceBoxModule.providesPackageInfoPlugin(),
    preResolve: true,
  );
  gh.lazySingleton<_i26.ProfileRepository>(() => _i27.ProfileRepositoryImpl(
        gh<_i24.ImagePicker>(),
        gh<_i5.Box<dynamic>>(instanceName: 'settings'),
      ));
  gh.lazySingleton<_i28.SaveSelectedCountryUseCase>(() =>
      _i28.SaveSelectedCountryUseCase(
          repository: gh<_i15.CountryRepository>()));
  gh.factory<_i29.SettingsRepository>(() => _i30.SettingsRepositoryImpl());
  gh.lazySingleton<_i31.SummaryController>(() => _i31.SummaryController());
  gh.factory<_i32.TransactionDataSource>(() =>
      _i32.LocalTransactionManagerImpl(gh<_i33.Box<_i8.TransactionModel>>()));
  gh.lazySingleton<_i34.TransactionRepository>(() =>
      _i35.ExpenseRepositoryImpl(dataSource: gh<_i32.TransactionDataSource>()));
  gh.lazySingleton<_i36.UpdateCategoryUseCase>(() => _i36.UpdateCategoryUseCase(
      categoryRepository: gh<_i12.CategoryRepository>()));
  gh.lazySingleton<_i37.UpdateTransactionUseCase>(() =>
      _i37.UpdateTransactionUseCase(
          expenseRepository: gh<_i34.TransactionRepository>()));
  gh.lazySingleton<_i38.AccountDataSource>(() =>
      _i38.AccountDataSourceImpl(accountBox: gh<_i5.Box<_i6.AccountModel>>()));
  gh.lazySingleton<_i39.AccountRepository>(() =>
      _i40.AccountRepositoryImpl(dataSource: gh<_i38.AccountDataSource>()));
  gh.lazySingleton<_i41.AddAccountUseCase>(() =>
      _i41.AddAccountUseCase(accountRepository: gh<_i39.AccountRepository>()));
  gh.lazySingleton<_i42.AddCategoryUseCase>(() => _i42.AddCategoryUseCase(
      categoryRepository: gh<_i12.CategoryRepository>()));
  gh.lazySingleton<_i43.AddTransactionUseCase>(() => _i43.AddTransactionUseCase(
      expenseRepository: gh<_i34.TransactionRepository>()));
  gh.lazySingleton<_i44.ClearAccountsUseCase>(
      () => _i44.ClearAccountsUseCase(gh<_i39.AccountRepository>()));
  gh.lazySingleton<_i45.ClearTransactionsUseCase>(() =>
      _i45.ClearTransactionsUseCase(
          expenseRepository: gh<_i34.TransactionRepository>()));
  gh.factory<_i46.CountryPickerCubit>(() => _i46.CountryPickerCubit(
        gh<_i22.GetCountriesUseCase>(),
        gh<_i23.GetSelectedCountryUseCase>(),
        gh<_i28.SaveSelectedCountryUseCase>(),
      ));
  gh.lazySingleton<_i47.DebitRepository>(
      () => _i48.DebtRepositoryImpl(dataSource: gh<_i17.DebtDataSource>()));
  gh.lazySingleton<_i49.DebitTransactionRepository>(() =>
      _i50.DebitTransactionRepoImpl(
          dataStore: gh<_i18.DebtTransactionDataSource>()));
  gh.lazySingleton<_i51.DeleteAccountUseCase>(() => _i51.DeleteAccountUseCase(
      accountRepository: gh<_i39.AccountRepository>()));
  gh.lazySingleton<_i52.DeleteDebitTransactionUseCase>(() =>
      _i52.DeleteDebitTransactionUseCase(
          debtRepository: gh<_i49.DebitTransactionRepository>()));
  gh.lazySingleton<_i53.DeleteDebitTransactionsByDebitIdUseCase>(() =>
      _i53.DeleteDebitTransactionsByDebitIdUseCase(
          debtRepository: gh<_i49.DebitTransactionRepository>()));
  gh.lazySingleton<_i54.DeleteDebitUseCase>(() =>
      _i54.DeleteDebitUseCase(debtRepository: gh<_i47.DebitRepository>()));
  gh.lazySingleton<_i55.DeleteTransactionUseCase>(() =>
      _i55.DeleteTransactionUseCase(
          expenseRepository: gh<_i34.TransactionRepository>()));
  gh.lazySingleton<_i56.DeleteTransactionsByAccountIdUseCase>(() =>
      _i56.DeleteTransactionsByAccountIdUseCase(
          expenseRepository: gh<_i34.TransactionRepository>()));
  gh.lazySingleton<_i57.DeleteTransactionsByCategoryIdUseCase>(() =>
      _i57.DeleteTransactionsByCategoryIdUseCase(
          transactionRepository: gh<_i34.TransactionRepository>()));
  gh.lazySingleton<_i58.Export>(
    () => _i59.CSVExport(
      gh<_i20.DeviceInfoPlugin>(),
      gh<_i38.AccountDataSource>(),
      gh<_i11.CategoryDataSource>(),
      gh<_i32.TransactionDataSource>(),
    ),
    instanceName: 'csv',
  );
  gh.lazySingleton<_i58.Export>(
    () => _i60.JSONExportImpl(
      gh<_i38.AccountDataSource>(),
      gh<_i11.CategoryDataSource>(),
      gh<_i32.TransactionDataSource>(),
      gh<_i17.DebtDataSource>(),
      gh<_i18.DebtTransactionDataSource>(),
      gh<_i25.PackageInfo>(),
    ),
    instanceName: 'json_export',
  );
  gh.lazySingleton<_i61.GetAccountUseCase>(() =>
      _i61.GetAccountUseCase(accountRepository: gh<_i39.AccountRepository>()));
  gh.lazySingleton<_i62.GetAccountsUseCase>(() =>
      _i62.GetAccountsUseCase(accountRepository: gh<_i39.AccountRepository>()));
  gh.lazySingleton<_i63.GetDebitTransactionsUseCase>(() =>
      _i63.GetDebitTransactionsUseCase(
          debtRepository: gh<_i49.DebitTransactionRepository>()));
  gh.lazySingleton<_i64.GetDebitUseCase>(
      () => _i64.GetDebitUseCase(debtRepository: gh<_i47.DebitRepository>()));
  gh.lazySingleton<_i65.GetTransactionUseCase>(() => _i65.GetTransactionUseCase(
      transactionRepository: gh<_i34.TransactionRepository>()));
  gh.lazySingleton<_i66.GetTransactionsByAccountIdUseCase>(() =>
      _i66.GetTransactionsByAccountIdUseCase(
          expenseRepository: gh<_i34.TransactionRepository>()));
  gh.lazySingleton<_i67.GetTransactionsByCategoryIdUseCase>(() =>
      _i67.GetTransactionsByCategoryIdUseCase(
          expenseRepository: gh<_i34.TransactionRepository>()));
  gh.lazySingleton<_i68.GetTransactionsUseCase>(() =>
      _i68.GetTransactionsUseCase(
          expenseRepository: gh<_i34.TransactionRepository>()));
  gh.factory<_i69.HomeCubit>(() => _i69.HomeCubit(
        gh<_i70.GetAccountUseCase>(),
        gh<_i71.GetCategoryUseCase>(),
        gh<_i72.GetTransactionsByCategoryIdUseCase>(),
        gh<_i72.GetTransactionsByAccountIdUseCase>(),
      ));
  gh.lazySingleton<_i73.ImagePickerUseCase>(
      () => _i73.ImagePickerUseCase(gh<_i26.ProfileRepository>()));
  gh.lazySingleton<_i58.Import>(
    () => _i60.JSONImportImpl(
      gh<_i20.DeviceInfoPlugin>(),
      gh<_i38.AccountDataSource>(),
      gh<_i11.CategoryDataSource>(),
      gh<_i32.TransactionDataSource>(),
      gh<_i17.DebtDataSource>(),
      gh<_i18.DebtTransactionDataSource>(),
    ),
    instanceName: 'json_import',
  );
  gh.lazySingleton<_i74.JSONFileExportUseCase>(() => _i74.JSONFileExportUseCase(
        gh<_i29.SettingsRepository>(),
        gh<_i58.Export>(instanceName: 'json_export'),
      ));
  gh.lazySingleton<_i75.JSONFileImportUseCase>(() => _i75.JSONFileImportUseCase(
        gh<_i29.SettingsRepository>(),
        gh<_i58.Import>(instanceName: 'json_import'),
      ));
  gh.factory<_i76.ProfileCubit>(() => _i76.ProfileCubit(
        gh<_i77.ImagePickerUseCase>(),
        gh<_i5.Box<dynamic>>(instanceName: 'settings'),
      ));
  gh.lazySingleton<_i78.SearchUseCase>(
      () => _i78.SearchUseCase(gh<_i34.TransactionRepository>()));
  gh.factory<_i79.TransactionBloc>(() => _i79.TransactionBloc(
        gh<_i70.GetAccountsUseCase>(),
        gh<_i72.AddTransactionUseCase>(),
        gh<_i72.DeleteTransactionUseCase>(),
        gh<_i72.GetTransactionUseCase>(),
        gh<_i72.UpdateTransactionUseCase>(),
      ));
  gh.lazySingleton<_i80.UpdateAccountUseCase>(() => _i80.UpdateAccountUseCase(
      accountRepository: gh<_i39.AccountRepository>()));
  gh.lazySingleton<_i81.UpdateDebitUseCase>(() =>
      _i81.UpdateDebitUseCase(debtRepository: gh<_i47.DebitRepository>()));
  gh.factory<_i82.AccountBloc>(() => _i82.AccountBloc(
        getAccountUseCase: gh<_i70.GetAccountUseCase>(),
        deleteAccountUseCase: gh<_i70.DeleteAccountUseCase>(),
        addAccountUseCase: gh<_i70.AddAccountUseCase>(),
        getCategoryUseCase: gh<_i21.GetCategoryUseCase>(),
        deleteExpensesFromAccountIdUseCase:
            gh<_i72.DeleteTransactionsByAccountIdUseCase>(),
        updateAccountUseCase: gh<_i70.UpdateAccountUseCase>(),
      ));
  gh.factory<_i83.AccountsCubit>(() => _i83.AccountsCubit(
        gh<_i72.GetTransactionsByAccountIdUseCase>(),
        gh<_i70.GetAccountUseCase>(),
      ));
  gh.lazySingleton<_i84.AddDebitTransactionUseCase>(() =>
      _i84.AddDebitTransactionUseCase(
          debtRepository: gh<_i49.DebitTransactionRepository>()));
  gh.lazySingleton<_i85.AddDebitUseCase>(
      () => _i85.AddDebitUseCase(debtRepository: gh<_i47.DebitRepository>()));
  gh.lazySingleton<_i86.CSVFileExportUseCase>(() => _i86.CSVFileExportUseCase(
        gh<_i29.SettingsRepository>(),
        gh<_i58.Export>(instanceName: 'csv'),
      ));
  gh.factory<_i87.CategoryBloc>(() => _i87.CategoryBloc(
        getCategoryUseCase: gh<_i71.GetCategoryUseCase>(),
        addCategoryUseCase: gh<_i71.AddCategoryUseCase>(),
        deleteCategoryUseCase: gh<_i71.DeleteCategoryUseCase>(),
        deleteExpensesFromCategoryIdUseCase:
            gh<_i72.DeleteTransactionsByCategoryIdUseCase>(),
        updateCategoryUseCase: gh<_i71.UpdateCategoryUseCase>(),
      ));
  gh.factory<_i88.DebitBloc>(() => _i88.DebitBloc(
        addDebtUseCase: gh<_i89.AddDebitUseCase>(),
        getDebtUseCase: gh<_i89.GetDebitUseCase>(),
        getTransactionsUseCase: gh<_i63.GetDebitTransactionsUseCase>(),
        addTransactionUseCase: gh<_i84.AddDebitTransactionUseCase>(),
        updateDebtUseCase: gh<_i89.UpdateDebitUseCase>(),
        deleteDebtUseCase: gh<_i89.DeleteDebitUseCase>(),
        deleteDebitTransactionUseCase: gh<_i52.DeleteDebitTransactionUseCase>(),
        deleteDebitTransactionsByDebitIdUseCase:
            gh<_i53.DeleteDebitTransactionsByDebitIdUseCase>(),
      ));
  gh.factory<_i90.SearchCubit>(
      () => _i90.SearchCubit(gh<_i78.SearchUseCase>()));
  gh.factory<_i91.SettingCubit>(() => _i91.SettingCubit(
        gh<_i92.JSONFileImportUseCase>(),
        gh<_i92.JSONFileExportUseCase>(),
        gh<_i92.CSVFileExportUseCase>(),
        gh<_i72.ClearTransactionsUseCase>(),
        gh<_i70.ClearAccountsUseCase>(),
        gh<_i71.ClearCategoriesUseCase>(),
      ));
  return getIt;
}

class _$HiveBoxModule extends _i93.HiveBoxModule {}

class _$ServiceBoxModule extends _i94.ServiceBoxModule {}
