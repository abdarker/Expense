import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paisa/config/routes.dart';

import 'package:paisa/core/common.dart';
import 'package:paisa/core/widgets/paisa_widget.dart';
import 'package:paisa/features/transaction/presentation/bloc/transaction_bloc.dart';

class TransactionAmountWidget extends StatefulWidget {
  const TransactionAmountWidget({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  State<TransactionAmountWidget> createState() =>
      _TransactionAmountWidgetState();
}

class _TransactionAmountWidgetState extends State<TransactionAmountWidget> {
  Future<void> _openCalculator() async {
    final String? result = await CalculatorPageData(
      initialValue: widget.controller.text,
    ).push(context);

    if (result != null) {
      setState(() {
        widget.controller.text = result;
        double? amount = double.tryParse(result);
        context.read<TransactionBloc>().transactionAmount = amount;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: PaisaTextFormField(
        key: const Key('transaction_amount_text_field'),
        controller: widget.controller,
        hintText: context.loc.amount,
        maxLength: 13,
        maxLines: 1,
        counterText: '',
        suffixIcon: IconButton(
          onPressed: _openCalculator,
          icon: const Icon(Icons.calculate),
        ),
        keyboardType: const TextInputType.numberWithOptions(
          decimal: true,
          signed: true,
        ),
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.allow(RegExp(r"[0-9 '.,-]")),
          TextInputFormatter.withFunction((oldValue, newValue) {
            try {
              final text = newValue.text;
              if (text.isNotEmpty) double.parse(text);
              return newValue;
            } catch (_) {}
            return oldValue;
          }),
        ],
        onChanged: (value) {
          double? amount = double.tryParse(value);
          context.read<TransactionBloc>().transactionAmount = amount;
        },
        validator: (value) {
          if (value!.isNotEmpty) {
            return null;
          } else {
            return context.loc.validAmount;
          }
        },
      ),
    );
  }
}
