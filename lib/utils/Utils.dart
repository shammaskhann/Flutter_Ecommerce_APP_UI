import 'package:flutter_assignment/constants/AppColor.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils {
  toastMessage(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        backgroundColor: AppColor.primaryColor.withOpacity(0.8),
        textColor: AppColor.secondaryColor,
        fontSize: 16.0);
  }
}
