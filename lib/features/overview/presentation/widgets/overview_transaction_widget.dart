// Flutter imports:
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

// Package imports:

// Project imports:
import 'package:paisa/core/common.dart';
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/core/widgets/paisa_widgets/paisa_empty_widget.dart';
import 'package:paisa/features/home/presentation/controller/summary_controller.dart';
import 'package:paisa/features/transaction/domain/entities/transaction_entity.dart';
import 'package:paisa/main.dart';
import 'package:provider/provider.dart';

class OverviewTransactionWidget extends StatelessWidget {
  const OverviewTransactionWidget({
    super.key,
    required this.builder,
  });

  final Widget Function(Iterable<TransactionEntity> models) builder;

  @override
  Widget build(BuildContext context) {
    final Iterable<TransactionEntity> transactions =
        Provider.of<List<TransactionEntity>>(context).excludeTransfer();
    if (transactions.isEmpty) {
      return EmptyWidget(
        icon: Icons.paid,
        title: context.loc.emptyOverviewMessageTitle,
        description: context.loc.emptyOverviewMessageSubtitle,
      );
    }
    return FilterDateRangeWidget(
      dateTimeRangeNotifier: getIt<SummaryController>().dateTimeRangeNotifier,
      expenses: transactions,
      builder: (transactions) {
        return builder(transactions);
      },
    );
  }
}

class FilterTransactionTypeWidget extends StatelessWidget {
  const FilterTransactionTypeWidget({
    super.key,
    required this.valueNotifier,
    required this.builder,
    required this.transactions,
  });

  final Widget Function(List<TransactionEntity> transactions) builder;
  final Iterable<TransactionEntity> transactions;
  final ValueNotifier<TransactionType> valueNotifier;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<TransactionType>(
      valueListenable: valueNotifier,
      builder: (context, value, child) {
        return builder.call(transactions.budgetOverView(value));
      },
    );
  }
}

class FilterDateRangeWidget extends StatelessWidget {
  const FilterDateRangeWidget({
    super.key,
    required this.builder,
    required this.expenses,
    required this.dateTimeRangeNotifier,
  });

  final Widget Function(List<TransactionEntity> expenses) builder;
  final ValueNotifier<DateTimeRange?> dateTimeRangeNotifier;
  final Iterable<TransactionEntity> expenses;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<DateTimeRange?>(
      valueListenable: dateTimeRangeNotifier,
      builder: (context, value, child) {
        if (value != null) {
          return builder.call(expenses.isFilterTimeBetween(value));
        } else {
          return builder.call(expenses.toList());
        }
      },
    );
  }
}

class FilterGroupCategoryTransactionWidget extends StatelessWidget {
  const FilterGroupCategoryTransactionWidget({
    super.key,
    required this.valueNotifier,
    required this.builder,
    required this.transactions,
  });

  final Widget Function(
    Map<String, List<TransactionEntity>> groupedTransactions,
  ) builder;

  final Iterable<TransactionEntity> transactions;
  final ValueNotifier<FilterExpense> valueNotifier;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<FilterExpense>(
      valueListenable: valueNotifier,
      builder: (context, value, child) {
        final Map<String, List<TransactionEntity>> groupedTransactions =
            groupBy(
          transactions,
          (p0) => p0.time.formatted(value, monthFormat: 'MMM yy'),
        );
        return builder(groupedTransactions);
      },
    );
  }
}

class FilterGroupedDateWidget extends StatelessWidget {
  const FilterGroupedDateWidget({
    super.key,
    required this.valueNotifier,
    required this.builder,
    required this.mapTransactions,
  });

  final Widget Function(List<TransactionEntity> transactions) builder;
  final Map<String, List<TransactionEntity>> mapTransactions;
  final ValueNotifier<String> valueNotifier;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<String>(
      valueListenable: valueNotifier,
      builder: (context, value, child) {
        return builder.call(mapTransactions[value] ?? []);
      },
    );
  }
}

class OverviewBarChartData {
  OverviewBarChartData({
    required this.xLabel,
    required this.expense,
    required this.income,
  });

  final double expense;
  final double income;
  final String xLabel;
}
