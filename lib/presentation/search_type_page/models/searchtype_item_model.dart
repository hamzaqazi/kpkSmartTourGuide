import '../../../core/app_export.dart';/// This class is used in the [searchtype_item_widget] screen.
class SearchtypeItemModel {SearchtypeItemModel({this.amsterdamNetherlands, this.id, }) { amsterdamNetherlands = amsterdamNetherlands  ?? Rx("Amsterdam, Netherlands");id = id  ?? Rx(""); }

Rx<String>? amsterdamNetherlands;

Rx<String>? id;

 }
