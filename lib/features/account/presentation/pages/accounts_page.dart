// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hive_flutter/adapters.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:paisa/config/routes.dart';

// Project imports:
import 'package:paisa/core/common.dart';
import 'package:paisa/core/widgets/paisa_widget.dart';
import 'package:paisa/features/account/domain/entities/account_entity.dart';
import 'package:paisa/features/account/presentation/pages/horizontal/accounts_mobile_page.dart';
import 'package:paisa/features/account/presentation/pages/horizontal/accounts_tablet_page.dart';
import 'package:paisa/features/account/presentation/pages/vertical/accounts_vertical_page.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AccountsPage extends StatelessWidget {
  const AccountsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<AccountEntity> accounts =
        Provider.of<List<AccountEntity>>(context);
    return Scaffold(
      key: const Key('accounts_mobile'),
      body: Builder(
        builder: (context) {
          if (accounts.isEmpty) {
            return EmptyWidget(
              icon: Icons.credit_card,
              title: context.loc.emptyAccountMessageTitle,
              description: context.loc.emptyAccountMessageSubTitle,
            );
          }
          return ValueListenableBuilder<Box<dynamic>>(
            valueListenable: settings.listenable(keys: [userAccountsStyleKey]),
            builder: (context, value, child) {
              final isVertical = value.get(
                userAccountsStyleKey,
                defaultValue: false,
              );
              if (isVertical) {
                return AccountMobileVerticalPage(accounts: accounts);
              } else {
                return ScreenTypeLayout.builder(
                  mobile: (p0) => AccountsHorizontalMobilePage(
                    accounts: accounts,
                  ),
                  tablet: (p0) => AccountsHorizontalTabletPage(
                    accounts: accounts,
                  ),
                );
              }
            },
          );
        },
      ),
    );
  }
}
