import 'package:flutter/foundation.dart';

import 'package:hive_flutter/adapters.dart';
import 'package:injectable/injectable.dart';

import 'package:paisa/core/common_enum.dart';
import 'package:paisa/features/account/data/model/account_model.dart';
import 'package:paisa/features/category/data/model/category_model.dart';
import 'package:paisa/features/debit/data/models/debit_model.dart';
import 'package:paisa/features/debt_transaction/data/model/debt_transactions_model.dart';
import 'package:paisa/features/intro/data/models/country_model.dart';
import 'package:paisa/features/transaction/data/model/transaction_model.dart';

@module
abstract class HiveBoxModule {
  @lazySingleton
  @preResolve
  Future<Box<TransactionModel>> expenseBox() =>
      Hive.openBox<TransactionModel>(BoxType.expense.name);

  @lazySingleton
  @preResolve
  Future<Box<AccountModel>> accountBox() =>
      Hive.openBox<AccountModel>(BoxType.accounts.name);

  @lazySingleton
  @preResolve
  Future<Box<CategoryModel>> categoryBox() =>
      Hive.openBox<CategoryModel>(BoxType.category.name);

  @lazySingleton
  @preResolve
  Future<Box<DebtModel>> debtsBox() =>
      Hive.openBox<DebtModel>(BoxType.debts.name);

  @lazySingleton
  @preResolve
  Future<Box<DebtTransactionsModel>> transactionsBox() =>
      Hive.openBox<DebtTransactionsModel>(BoxType.transactions.name);

  @lazySingleton
  @preResolve
  @Named('settings')
  Future<Box<dynamic>> boxDynamic() =>
      Hive.openBox<dynamic>(BoxType.settings.name);
}

class HiveAdapters {
  Future<void> initHive() async {
    await Hive.initFlutter(hivePath);
    Hive
      ..registerAdapter(TransactionModelAdapter())
      ..registerAdapter(TransactionTypeAdapter())
      ..registerAdapter(AccountModelAdapter())
      ..registerAdapter(AccountTypeAdapter())
      ..registerAdapter(CategoryModelAdapter())
      ..registerAdapter(CategoryTypeAdapter())
      ..registerAdapter(DebitModelAdapter())
      ..registerAdapter(DebitTypeAdapter())
      ..registerAdapter(CountryModelAdapter())
      ..registerAdapter(DebitTransactionsModelAdapter())
      ..registerAdapter(TransactionModelTypeAdapter())
      ..registerAdapter(FilterExpenseAdapter());
  }

  String? get hivePath {
    if (kIsWeb) {
      return 'paisa';
    } else if (TargetPlatform.windows == defaultTargetPlatform) {
      return 'paisa';
    } else {
      return null;
    }
  }
}
