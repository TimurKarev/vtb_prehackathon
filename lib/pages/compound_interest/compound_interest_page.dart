import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vtb_prehackathon/pages/compound_interest/compound_interest_cubit.dart';
import 'package:vtb_prehackathon/pages/compound_interest/widgets/bar_chart.dart';
import 'package:vtb_prehackathon/pages/compound_interest/widgets/input_widget.dart';

class CompoundInterestPage extends StatelessWidget {
  const CompoundInterestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CompoundInterestCubit(),
      child: Column(
        children: [
          const Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: CompoundInterestInputWidget(),
          ),
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: BlocBuilder<CompoundInterestCubit, CompoundInterestState>(
              builder: (context, state) {
                final initialState = state as CompoundInterestInitial;
                return BarChart.byList(initialState.value);
              },
            ),
          ),
        ],
      ),
    );
  }
}
