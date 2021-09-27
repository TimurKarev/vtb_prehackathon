import 'package:flutter/material.dart';
import 'package:vtb_prehackathon/pages/compound_interest_page/widgets/contribution_rate.dart';

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
            Text("Srok"),
            ContributionRate(),
          ],
        ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Text("Stavka"),
        //     Text("Month"),
        //   ],
        // ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Text("Pay"),
        //     Text("Do pay"),
        //   ],
        // ),
      ],
    );
  }
}
