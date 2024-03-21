import 'package:flutercoursetwo/Last_Tasks/Task_14/providersession/widgets/data_bottom_sheat.dart';
import 'package:flutter/material.dart';

void showDataSheat(BuildContext context) {
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (context) => const DataBottomSheat(),
  );
}

String? ValidatResult(String? value, String label) {
  if (value == null || value.isEmpty) {
    return 'pleas enter $label'; // name or nickname
  }
  return null;
}
