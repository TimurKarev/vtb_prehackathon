import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vtb_prehackathon/pages/compound_interest/compound_interest_cubit.dart';
import 'package:vtb_prehackathon/pages/compound_interest/widgets/contribution_rate.dart';

class CompoundInterestInputWidget extends StatelessWidget {
  const CompoundInterestInputWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InputWidget(
              icon: const Icon(Icons.money),
              titleText: 'Размер вклада',
              function: (double value) =>
                  BlocProvider.of<CompoundInterestCubit>(context)
                      .setStartDeposit(value),
            ),
            InputWidget(
              icon: const Icon(Icons.money),
              titleText: 'Ежемесячный вклад',
              function: (double value) =>
                  BlocProvider.of<CompoundInterestCubit>(context)
                      .setMonthDeposit(value),
            ),
          ],
        ),
        SizedBox(height: 20.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InputWidget(
              icon: const Icon(Icons.calculate),
              titleText: 'Процентная ставка',
              function: (double value) =>
                  BlocProvider.of<CompoundInterestCubit>(context)
                      .setPercentage(value),
            ),
          ],
        ),
      ],
    );
  }
}
