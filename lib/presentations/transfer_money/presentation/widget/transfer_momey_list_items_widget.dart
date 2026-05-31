import 'package:admin_dashboard/presentations/public/public_widgets/desicion_drop_down_widget.dart';
import 'package:admin_dashboard/presentations/requests/presentaiton/models/drop_down_desicion_model.dart';
import 'package:flutter/widgets.dart';

class TransferMomeyListItemsWidget extends StatelessWidget {
  const TransferMomeyListItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final moreInfo = MediaQuery.sizeOf(context);
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            DesicionDropDownWidget(
              size: moreInfo,
              currntValue: 0,
              kinds: DropDownDesicionModel().getTransferRequestsList(),
              onPressed: (value) {},
            ),
          ],
        ),
      ],
    );
  }
}
