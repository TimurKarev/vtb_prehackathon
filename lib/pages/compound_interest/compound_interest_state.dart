part of 'compound_interest_cubit.dart';

@immutable
abstract class CompoundInterestState {
  const CompoundInterestState();
}

class CompoundInterestInitial extends CompoundInterestState {
  final List<double> value;

  const CompoundInterestInitial(this.value);
}
