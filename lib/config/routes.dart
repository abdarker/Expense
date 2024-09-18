import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/features/account/presentation/pages/add/add_account_page.dart';
import 'package:paisa/features/account/presentation/pages/transactions_by_account_page.dart';
import 'package:paisa/features/category/presentation/bloc/category_bloc.dart';
import 'package:paisa/features/category/presentation/pages/add/add_category_page.dart';
import 'package:paisa/features/category/presentation/pages/category_icon_picker_page.dart';
import 'package:paisa/features/debit/presentation/pages/add/add_debit_page.dart';
import 'package:paisa/features/home/presentation/pages/home/home_page.dart';
import 'package:paisa/features/intro/presentation/cubit/country_picker_cubit.dart';
import 'package:paisa/features/intro/presentation/pages/biometric_page.dart';
import 'package:paisa/features/intro/presentation/pages/intro_page.dart';
import 'package:paisa/features/intro/presentation/pages/user_onboarding_page.dart';
import 'package:paisa/features/overview/presentation/transactions_by_category_list_page.dart';
import 'package:paisa/features/search/presentation/pages/search_page.dart';
import 'package:paisa/features/settings/presentation/pages/app_language_changer_page.dart';
import 'package:paisa/features/settings/presentation/pages/export_and_import_page.dart';
import 'package:paisa/features/settings/presentation/pages/font_picker_page.dart';
import 'package:paisa/features/settings/presentation/pages/setting_page.dart';
import 'package:paisa/features/transaction/presentation/pages/equation_calculator_page.dart';
import 'package:paisa/features/transaction/presentation/pages/transaction_page.dart';
import 'package:paisa/main.dart';

part 'routes.g.dart';

final Box<dynamic> settings = Hive.box(BoxType.settings.name);

final GoRouter goRouter = GoRouter(
  initialLocation: const IntroRouterData().location,
  refreshListenable: settings.listenable(keys: [
    userIntroFinishedKey,
    userNameSetKey,
    userImageKey,
    userCategorySelectorKey,
    userAccountSelectorKey,
    userCountryKey,
    userAuthKey
  ]),
  debugLogDiagnostics: true,
  observers: <NavigatorObserver>[
    HeroController(),
  ],
  routes: $appRoutes,
  errorBuilder: (c, s) => ErrorRoute(error: s.error!).build(c, s),
  redirect: (context, state) {
    final bool isLogging =
        state.matchedLocation == const IntroRouterData().location;
    bool isIntroDone = settings.get(userIntroFinishedKey, defaultValue: false);
    if (!isIntroDone) {
      return const IntroRouterData().location;
    }
    final String name = settings.get(userNameSetKey, defaultValue: '');
    if (name.isEmpty && isLogging) {
      return UserOnboardingPageData().location;
    }
    final String image = settings.get(userImageKey, defaultValue: '');
    if (image.isEmpty && isLogging) {
      return UserOnboardingPageData().location;
    }
    final bool categorySelectorDone = settings.get(
      userCategorySelectorKey,
      defaultValue: true,
    );
    if (categorySelectorDone && isLogging) {
      return UserOnboardingPageData().location;
    }

    final bool accountSelectorDone = settings.get(
      userAccountSelectorKey,
      defaultValue: true,
    );
    if (accountSelectorDone && isLogging) {
      return UserOnboardingPageData().location;
    }

    final Map<dynamic, dynamic>? json = settings.get(userCountryKey);
    if (json == null && isLogging) {
      return UserOnboardingPageData(forceCountrySelector: true).location;
    }

    final isBiometricEnabled = settings.get(userAuthKey, defaultValue: false);
    if (isBiometricEnabled &&
        name.isNotEmpty &&
        image.isNotEmpty &&
        isLogging) {
      return const BiometricPageData().location;
    } else if (name.isNotEmpty && image.isNotEmpty && isLogging) {
      return const LandingPageData().location;
    }
    return null;
  },
);

class ErrorRoute extends GoRouteData {
  ErrorRoute({required this.error});

  final Exception error;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return Center(
      child: Text(state.error.toString()),
    );
  }
}

@TypedGoRoute<LoginPageData>(
  path: '/login',
  name: 'login',
)
class LoginPageData extends GoRouteData {
  const LoginPageData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Center(child: CircularProgressIndicator());
  }
}

@TypedGoRoute<IntroRouterData>(
  path: '/intro',
  name: 'intro',
)
class IntroRouterData extends GoRouteData {
  const IntroRouterData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const IntroPage();
  }
}

@TypedGoRoute<UserOnboardingPageData>(
  path: '/onboarding',
  name: 'onboarding',
)
class UserOnboardingPageData extends GoRouteData {
  UserOnboardingPageData({this.forceCountrySelector = false});

  final bool forceCountrySelector;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (context) => getIt<CountryPickerCubit>()..fetchCountry(),
      child: UserOnboardingPage(
        forceCountrySelector: forceCountrySelector,
      ),
    );
  }
}

@TypedGoRoute<BiometricPageData>(
  path: '/biometric',
  name: 'biometric',
)
class BiometricPageData extends GoRouteData {
  const BiometricPageData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const BiometricPage();
  }
}

@TypedGoRoute<LandingPageData>(
  path: '/landing',
  routes: <TypedGoRoute<GoRouteData>>[
    TypedGoRoute<SearchPageData>(
      path: 'search',
    ),
    TypedGoRoute<DebitPageData>(
      path: 'debit',
      routes: <TypedGoRoute<GoRouteData>>[
        TypedGoRoute<CalculatorPageData>(
          path: 'calculator',
        )
      ],
    ),
    TypedGoRoute<TransactionPageData>(
      path: 'transaction',
    ),
    TypedGoRoute<AccountPageData>(
      path: 'account',
    ),
    // TypedGoRoute<AddRecurringPageData>(
    //   path: 'recurring',
    // ),
    TypedGoRoute<ExportAndImportPageData>(
      path: 'export',
    ),
    TypedGoRoute<SettingsPageData>(
      path: 'settings',
      routes: <TypedGoRoute<GoRouteData>>[
        TypedGoRoute<FontPickerPageData>(
          path: 'font-picker',
        ),
        TypedGoRoute<AppLanguageChangerPageData>(
          path: 'language-picker',
        ),
      ],
    ),
    TypedGoRoute<CategoryPageData>(
      path: 'category',
      routes: <TypedGoRoute<GoRouteData>>[
        TypedGoRoute<CategoryIconPickerPageData>(
          path: 'icon-picker',
        ),
      ],
    ),
    TypedGoRoute<ExportAndImportPageData>(
      path: 'export',
    ),
    TypedGoRoute<TransactionsByCategoryPageData>(
      path: 'transactions-by-category/:id',
    ),
    TypedGoRoute<TransactionsByAccountPageData>(
        path: 'transactions-by-account/:id')
  ],
)
class LandingPageData extends GoRouteData {
  const LandingPageData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}

class TransactionsByAccountPageData extends GoRouteData {
  const TransactionsByAccountPageData({required this.id});

  final int id;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return TransactionsByAccountPage(accountId: id);
  }
}

class TransactionPageData extends GoRouteData {
  const TransactionPageData({
    this.accountId,
    this.categoryId,
    this.transactionId,
    this.transactionType,
  });

  final int? accountId;
  final int? categoryId;
  final int? transactionId;
  final TransactionType? transactionType;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return TransactionPage(
      transactionType: transactionType,
      accountId: accountId,
      categoryId: categoryId,
      transactionId: transactionId,
    );
  }
}

class AccountPageData extends GoRouteData {
  const AccountPageData({this.accountId});

  final int? accountId;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return AddAccountPage(accountId: accountId);
  }
}

class CategoryPageData extends GoRouteData {
  const CategoryPageData({
    this.categoryId,
    this.categoryType = CategoryType.income,
    this.isTransferCategoryType = false,
  });

  final int? categoryId;
  final CategoryType categoryType;
  final bool isTransferCategoryType;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (context) => getIt<CategoryBloc>(param1: categoryId),
      child: CategoryPage(
        categoryId: categoryId,
        categoryType: categoryType,
        isTransferCategoryType: isTransferCategoryType,
      ),
    );
  }
}

class CategoryIconPickerPageData extends GoRouteData {
  const CategoryIconPickerPageData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const CategoryIconPickerPage();
  }
}

class SettingsPageData extends GoRouteData {
  const SettingsPageData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SettingsPage();
  }
}

class SearchPageData extends GoRouteData {
  const SearchPageData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SearchPage();
  }
}

class DebitPageData extends GoRouteData {
  const DebitPageData({this.debtId});

  final int? debtId;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return DebitPage(debtId: debtId);
  }
}

// class AddRecurringPageData extends GoRouteData {
//   const AddRecurringPageData();
// }

class FontPickerPageData extends GoRouteData {
  const FontPickerPageData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return FontPickerPage(
        currentFont: settings.get(
      appFontChangerKey,
      defaultValue: 'Outfit',
    ));
  }
}

class AppLanguageChangerPageData extends GoRouteData {
  const AppLanguageChangerPageData({this.currentLanguage});

  final String? currentLanguage;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return AppLanguageChangerPage(currentLanguage: currentLanguage);
  }
}

class ExportAndImportPageData extends GoRouteData {
  const ExportAndImportPageData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ExportAndImportPage();
  }
}

class TransactionsByCategoryPageData extends GoRouteData {
  const TransactionsByCategoryPageData(this.id);

  final int id;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return TransactionByCategoryPage(categoryId: id);
  }
}

class CalculatorPageData extends GoRouteData {
  const CalculatorPageData({
    this.initialValue = '',
  });

  final String initialValue;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return CalculatorPage(
      initialValue: initialValue,
    );
  }
}
