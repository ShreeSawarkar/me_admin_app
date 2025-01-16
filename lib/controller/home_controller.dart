import 'package:get/get.dart';

class HomeController extends GetxController{

  String test='Test String';
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
  testMethod(){
    print(test);
  }

}