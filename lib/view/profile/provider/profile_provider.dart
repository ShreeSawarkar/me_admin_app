import '../../../core/data/data_provider.dart';
import '../../../utility/constants.dart';
import '../../../utility/snack_bar_helper.dart';
import 'package:flutter/cupertino.dart';

class ProfileProvider extends ChangeNotifier {
 final DataProvider _dataProvider;


 final GlobalKey<FormState> addressFormKey = GlobalKey<FormState>();
 TextEditingController phoneController = TextEditingController();
 TextEditingController streetController = TextEditingController();
 TextEditingController cityController = TextEditingController();
 TextEditingController stateController = TextEditingController();
 TextEditingController postalCodeController = TextEditingController();
 TextEditingController countryController = TextEditingController();
 TextEditingController couponController = TextEditingController();

 ProfileProvider(this._dataProvider) {
  retrieveSavedAddress();
 }

 void storeAddress() {

  SnackBarHelper.showSuccessSnackBar('Address Stored Successfully');
 }

// Method to retrieve saved address values
 void retrieveSavedAddress() {

 }
}
