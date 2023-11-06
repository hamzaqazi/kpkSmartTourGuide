import 'package:kpksmarttourguide/core/app_export.dart';import 'package:kpksmarttourguide/presentation/recently_booked_screen/models/recently_booked_model.dart';/// A controller class for the RecentlyBookedScreen.
///
/// This class manages the state of the RecentlyBookedScreen, including the
/// current recentlyBookedModelObj
class RecentlyBookedController extends GetxController {Rx<RecentlyBookedModel> recentlyBookedModelObj = RecentlyBookedModel().obs;

 }
