import 'controller/card_added_controller.dart';import 'package:flutter/material.dart';import 'package:kpksmarttourguide/core/app_export.dart';import 'package:kpksmarttourguide/widgets/app_bar/appbar_leading_image.dart';import 'package:kpksmarttourguide/widgets/app_bar/appbar_title.dart';import 'package:kpksmarttourguide/widgets/app_bar/appbar_trailing_image.dart';import 'package:kpksmarttourguide/widgets/app_bar/custom_app_bar.dart';import 'package:kpksmarttourguide/widgets/custom_elevated_button.dart';import 'package:kpksmarttourguide/widgets/custom_radio_button.dart';class CardAddedScreen extends GetWidget<CardAddedController> {const CardAddedScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 28.v), child: Column(children: [_buildPaymentMethods(), SizedBox(height: 34.v), _buildPayWithDebitCredit(), SizedBox(height: 5.v)])), bottomNavigationBar: _buildContinue())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 56.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 10.v, bottom: 17.v), onTap: () {onTapArrowLeft();}), title: AppbarTitle(text: "lbl_payment".tr, margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgQrcode, margin: EdgeInsets.fromLTRB(24.h, 10.v, 24.h, 17.v))]); } 
/// Section Widget
Widget _buildPaymentMethods() { return Column(children: [Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_payment_methods".tr, style: theme.textTheme.titleMedium), Padding(padding: EdgeInsets.only(bottom: 2.v), child: Text("lbl_add_new_card".tr, style: CustomTextStyles.titleMediumPrimary16))]), SizedBox(height: 23.v), _buildPaymentMethodsGoogle(userImage: ImageConstant.imgFrameLightBlue600, googlePay: "lbl_paypal".tr), SizedBox(height: 28.v), _buildPaymentMethodsGoogle(userImage: ImageConstant.imgFrame, googlePay: "lbl_google_pay".tr), SizedBox(height: 28.v), _buildPaymentMethodsGoogle(userImage: ImageConstant.imgFrameWhiteA70032x32, googlePay: "lbl_apple_pay".tr)]); } 
/// Section Widget
Widget _buildPayWithDebitCredit() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_pay_with_debit_credit".tr, style: theme.textTheme.titleMedium), SizedBox(height: 23.v), Container(width: 380.h, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 26.v), decoration: AppDecoration.outlineBlack9000c.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Obx(() => Padding(padding: EdgeInsets.only(right: 8.h), child: CustomRadioButton(width: 324.h, text: "msg".tr, value: "msg".tr, groupValue: controller.radioGroup.value, padding: EdgeInsets.fromLTRB(12.h, 1.v, 30.h, 1.v), isRightCheck: true, onChange: (value) {controller.radioGroup.value = value;}))))]); } 
/// Section Widget
Widget _buildContinue() { return CustomElevatedButton(text: "lbl_continue".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 49.v), onPressed: () {onTapContinue();}); } 
/// Common widget
Widget _buildPaymentMethodsGoogle({required String userImage, required String googlePay, }) { return Container(padding: EdgeInsets.all(24.h), decoration: AppDecoration.outlineBlack9000c.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Row(children: [CustomImageView(imagePath: userImage, height: 32.adaptSize, width: 32.adaptSize), Padding(padding: EdgeInsets.only(left: 12.h, top: 7.v, bottom: 2.v), child: Text(googlePay, style: theme.textTheme.titleMedium!.copyWith(color: appTheme.whiteA700))), Spacer(), CustomImageView(imagePath: ImageConstant.imgContrast, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(top: 6.v, right: 8.h, bottom: 6.v))])); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
/// Navigates to the confirmPaymentScreen when the action is triggered.
onTapContinue() { Get.toNamed(AppRoutes.confirmPaymentScreen, ); } 
 }
