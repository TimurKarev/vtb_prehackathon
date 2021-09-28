import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'dart:math';

part 'compound_interest_state.dart';

class CompoundInterestCubit extends Cubit<CompoundInterestState> {
  double startDeposit = 100000;
  double monthDeposit = 5000;
  double percentage = 10;

  CompoundInterestCubit() : super(const CompoundInterestInitial([]));

  void setStartDeposit(double value) {
    startDeposit = value;
    _calculate();
  }

  void setMonthDeposit(double value) {
    monthDeposit = value;
    _calculate();
  }

  void setPercentage(double value) {
    percentage = value;
    _calculate();
  }

  void _calculate() {
    List<double> incomeList = [];
    double income = startDeposit;
   for (int i=0; i<12; i++) {
      income = startDeposit + monthDeposit * i;//(i == 0? 0 : 1);
      income = income * (percentage*.01) / 12 + income;
      incomeList.add(income);
    }
    emit(CompoundInterestInitial(incomeList));
  }
}
