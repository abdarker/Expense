import 'package:flutter/material.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:paisa/core/common.dart';
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/features/home/presentation/controller/summary_controller.dart';
import 'package:paisa/features/account/presentation/widgets/account_filter_transactions_widget.dart';

class AccountTransactionsHeaderWidget extends StatelessWidget {
  const AccountTransactionsHeaderWidget({
    super.key,
    required this.summaryController,
  });

  final SummaryController summaryController;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      title: Text(
        context.loc.transactions,
        style: context.titleMedium?.copyWith(
          color: context.onBackground,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: OutlinedButton.icon(
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          foregroundColor: context.secondary,
        ),
        label: ValueListenableBuilder<FilterExpense>(
          valueListenable: summaryController.accountTransactionsNotifier,
          builder: (context, value, child) {
            return Text(value.stringValue(context));
          },
        ),
        icon: Icon(MdiIcons.sortVariant),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width >= 700
                  ? 700
                  : double.infinity,
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            builder: (context) {
              return AccountFilterTransactionsWidget(
                  summaryController: summaryController);
            },
          );
        },
      ),
    );
  }
}
