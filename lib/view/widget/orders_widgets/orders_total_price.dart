import 'package:flutter/material.dart';
import 'package:shop_savvy_delivery/core/constants/color.dart';
import 'package:shop_savvy_delivery/data/model/orders_model.dart';
import 'package:shop_savvy_delivery/view/widget/orders_widgets/orders_rating_dialog.dart';

class OrdersTotalPrice extends StatelessWidget {
  final String text1;
  final String text2;
  final Color color;
  final void Function() onDetailsPress;
  final void Function() onDeletePress;
  final bool? isDelivered;
  final OrdersMd ordersMd;

  const OrdersTotalPrice({
    super.key,
    required this.text1,
    required this.text2,
    required this.onDetailsPress,
    required this.color,
    required this.onDeletePress,
    this.isDelivered,
    required this.ordersMd,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      text1,
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      text2,
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                      side: BorderSide(color: AppColors.primaryDark, width: 2)),
                  onPressed: onDetailsPress,
                  child: Text(
                    "Details",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            if (ordersMd.ordersRating == 0 && ordersMd.ordersStatus == 4)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  MaterialButton(
                    color: AppColors.darkColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    onPressed: () {
                      showRatingDialog(context, ordersMd.ordersId.toString());
                    },
                    child: Text(
                      "Rate",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            if (isDelivered == true)
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MaterialButton(
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    onPressed: onDeletePress,
                    child: Text(
                      "Delete",
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ],
    );
  }
}
