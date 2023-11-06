import '../home_screen_page/widgets/hotels_item_widget.dart';import '../home_screen_page/widgets/martinezcannes_item_widget.dart';import 'controller/home_screen_controller.dart';import 'models/home_screen_model.dart';import 'models/hotels_item_model.dart';import 'models/martinezcannes_item_model.dart';import 'package:flutter/material.dart';import 'package:kpksmarttourguide/core/app_export.dart';
// ignore_for_file: must_be_immutable
class HomeScreenPage extends StatelessWidget {HomeScreenPage({Key? key}) : super(key: key);

HomeScreenController controller = Get.put(HomeScreenController(HomeScreenModel().obs));

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(child: Column(children: [SizedBox(height: 30.v), Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(left: 24.h), child: Column(children: [_buildHotels(), SizedBox(height: 34.v), _buildRecentlyBooked()])))]))))); } 
/// Section Widget
Widget _buildHotels() { return SizedBox(height: 400.v, child: Obx(() => ListView.separated(scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 24.h);}, itemCount: controller.homeScreenModelObj.value.hotelsItemList.value.length, itemBuilder: (context, index) {HotelsItemModel model = controller.homeScreenModelObj.value.hotelsItemList.value[index]; return HotelsItemWidget(model);}))); } 
/// Section Widget
Widget _buildRecentlyBooked() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(right: 24.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_recently_booked".tr, style: theme.textTheme.titleMedium), GestureDetector(onTap: () {onTapTxtSeeAll();}, child: Text("lbl_see_all".tr, style: CustomTextStyles.titleMediumPrimary16))])), SizedBox(height: 16.v), Padding(padding: EdgeInsets.only(right: 24.h), child: Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 24.v);}, itemCount: controller.homeScreenModelObj.value.martinezcannesItemList.value.length, itemBuilder: (context, index) {MartinezcannesItemModel model = controller.homeScreenModelObj.value.martinezcannesItemList.value[index]; return MartinezcannesItemWidget(model);})))]); } 
/// Navigates to the recentlyBookedScreen when the action is triggered.
onTapTxtSeeAll() { Get.toNamed(AppRoutes.recentlyBookedScreen, ); } 
 }
