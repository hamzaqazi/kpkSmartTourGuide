import 'controller/app_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:kpksmarttourguide/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          userName: "Welcome Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.welcomeScreen),
                        ),
                        _buildScreenTitle(
                          userName: "Onboarding One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingOneScreen),
                        ),
                        _buildScreenTitle(
                          userName: "Onboarding Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingTwoScreen),
                        ),
                        _buildScreenTitle(
                          userName: "Onboarding Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingThreeScreen),
                        ),
                        _buildScreenTitle(
                          userName: "Let\\'s You In".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.letSYouInScreen),
                        ),
                        _buildScreenTitle(
                          userName: "Sign Up (Blank)".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpBlankScreen),
                        ),
                        _buildScreenTitle(
                          userName: "Sign In ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInScreen),
                        ),
                        _buildScreenTitle(
                          userName: "Fill Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.fillProfileScreen),
                        ),
                        _buildScreenTitle(
                          userName: "Forgot Password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.forgotPasswordScreen),
                        ),
                        _buildScreenTitle(
                          userName: "Forgot Password - Type OTP".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.forgotPasswordTypeOtpScreen),
                        ),
                        _buildScreenTitle(
                          userName: "Forgot Password - Filled Type".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.forgotPasswordFilledTypeScreen),
                        ),
                        _buildScreenTitle(
                          userName: "Create New Password".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.createNewPasswordScreen),
                        ),
                        _buildScreenTitle(
                          userName: "Home Screen - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.homeScreenContainerScreen),
                        ),
                        _buildScreenTitle(
                          userName: "Recently Booked".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.recentlyBookedScreen),
                        ),
                        _buildScreenTitle(
                          userName: "Notifications".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.notificationsScreen),
                        ),
                        _buildScreenTitle(
                          userName: "My Bookmarks".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.myBookmarksScreen),
                        ),
                        _buildScreenTitle(
                          userName: "Hotel Details".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.hotelDetailsScreen),
                        ),
                        _buildScreenTitle(
                          userName: "Gallery".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.galleryScreen),
                        ),
                        _buildScreenTitle(
                          userName: "Location".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.locationScreen),
                        ),
                        _buildScreenTitle(
                          userName: "Select date & Guest".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.selectDateGuestScreen),
                        ),
                        _buildScreenTitle(
                          userName: "Booking Name - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.bookingNameTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          userName: "Choose Payment Method".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.choosePaymentMethodScreen),
                        ),
                        _buildScreenTitle(
                          userName: "Add New Card".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addNewCardScreen),
                        ),
                        _buildScreenTitle(
                          userName: "Card Added".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.cardAddedScreen),
                        ),
                        _buildScreenTitle(
                          userName: "Confirm Payment".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.confirmPaymentScreen),
                        ),
                        _buildScreenTitle(
                          userName: "View Ticket".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.viewTicketScreen),
                        ),
                        _buildScreenTitle(
                          userName: "Refund Method".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.refundMethodScreen),
                        ),
                        _buildScreenTitle(
                          userName: "Edit Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.editProfileScreen),
                        ),
                        _buildScreenTitle(
                          userName: "Notification Settings".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.notificationSettingsScreen),
                        ),
                        _buildScreenTitle(
                          userName: "Security".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.securityScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String userName,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  userName,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
