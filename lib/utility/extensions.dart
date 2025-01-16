import '../view/category/provider/category_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import '../core/data/data_provider.dart';


extension Providers on BuildContext {
  DataProvider get dataProvider => Provider.of<DataProvider>(this, listen: false);
  CategoryProvider get categoryProvider => Provider.of<CategoryProvider>(this, listen: false);
  //CategoryProvider get categoryProvider => Provider.of<CategoryProvider>(this, listen: false);
}