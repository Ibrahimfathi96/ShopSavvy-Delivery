import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';
import 'package:shop_savvy_delivery/controller/orders_controllers/archive_orders_controller.dart';
import 'package:shop_savvy_delivery/data/model/orders_model.dart';
import 'package:shop_savvy_delivery/view/screen/orders_view/orders_details.dart';
import 'package:shop_savvy_delivery/view/widget/orders_widgets/orders_id_and_date_time.dart';
import 'package:shop_savvy_delivery/view/widget/orders_widgets/orders_texts.dart';
import 'package:shop_savvy_delivery/view/widget/orders_widgets/orders_total_price.dart';

class ArchivedOrdersItemCard extends GetView<ArchiveOrdersController> {
  final OrdersMd ordersMd;

  const ArchivedOrdersItemCard({
    super.key,
    required this.ordersMd,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            OrdersTimeAndId(
              orderId: ordersMd.ordersId!,
              orderDateTime:
                  "${Jiffy.parse(ordersMd.ordersDatetime!).fromNow()}",
            ),
            Divider(
              thickness: 2,
            ),
            OrdersRowOfText(
              text1: "Tracking Number: ",
              text2: "${controller.services.prefs.getString("phone")}",
            ),
            OrdersRowOfText(
              text1: "Order Type     : ",
              text2: controller.printOrderType(ordersMd.ordersType!),
            ),
            OrdersRowOfText(
              text1: "Delivery Taxes : ",
              text2: "${ordersMd.ordersPriceDelivery} EGP",
            ),
            OrdersRowOfText(
              text1: "Payment Method : ",
              text2:
                  controller.printPaymentMethod(ordersMd.ordersPaymentMethod!),
            ),
            OrdersRowOfText(
              text1: "Order Status   : ",
              text2:
              controller.printOrderStatus(ordersMd.ordersStatus!),
            ),
            Divider(thickness: 2),
            OrdersTotalPrice(
              ordersMd: ordersMd,
              isDelivered: ordersMd.ordersStatus == 0,
              onDeletePress: () {},
              onDetailsPress: () {
                Get.toNamed(
                  OrdersDetails.routeName,
                  arguments: {
                    "ordersMd": ordersMd,
                  },
                );
              },
              text1: "Total Price: ",
              color: controller.orderStatusColor(ordersMd.ordersStatus!),
              text2: "${ordersMd.ordersTotalPrice!.round()} EGP",
            ),
          ],
        ),
      ),
    );
  }
}
