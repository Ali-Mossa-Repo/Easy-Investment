import 'package:admin_dashboard/presentations/public/public_widgets/item_list_widget.dart';
import 'package:admin_dashboard/presentations/transfer_money/domain/entities/tansfer_money_entity.dart';
import 'package:flutter/widgets.dart';

class AnimatedTransferMoneyList extends StatelessWidget {
  Size size;
  GlobalKey<AnimatedListState> globalKey;
  List<TansferMoneyEntity> requests;
  AnimatedTransferMoneyList({
    required this.size,
    required this.globalKey,
    required this.requests,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * .76,
      width: size.width * .8,
      child: NotificationListener(
        onNotification: (ScrollNotification notification) {
          if (notification.metrics.pixels ==
              notification.metrics.maxScrollExtent) {}
          return false;
        },
        child: AnimatedList(
          physics: BouncingScrollPhysics(),
          key: globalKey,
          initialItemCount: requests.length,
          shrinkWrap: true,
          itemBuilder:
              (context, index, animation) => FadeTransition(
                opacity: animation.drive(Tween<double>(begin: 0, end: 1)),
                child: ItemListWidget(
                  name: '',
                  size: size,
                  status: [],
                  date: '10-12-2025',
                  onPressed: () {},
                ),
              ),
        ),
      ),
    );
  }
}
