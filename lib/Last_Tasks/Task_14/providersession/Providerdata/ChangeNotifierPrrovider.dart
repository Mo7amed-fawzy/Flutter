import 'package:flutter/material.dart';
import 'package:flutercoursetwo/Last_Tasks/Task_14/providersession/MyModels/MyDataModel.dart';

class MyAppProvider extends ChangeNotifier {
  List<DataMoodeel> data = [
    DataMoodeel(
      name: 'Mohamed Fawzy',
      NickName: ' Abo Fawzy',
      email: 'M07amed1st@gmail.com',
      phoneNumber: '01157902453',
    ),
    DataMoodeel(
      name: 'Amr',
      NickName: ' amoor',
      email: 'amr@gmail.com',
      phoneNumber: '01354856',
    ),
    DataMoodeel(
      name: 'mahrous ',
      NickName: ' hares',
      email: 'mahurus@gmail.com',
      phoneNumber: '01354856',
    ),
    DataMoodeel(
      name: 'Amir',
      NickName: ' amoury',
      email: 'amir@gmail.com',
      phoneNumber: '01354856',
    ),
  ];
  void AddData(DataMoodeel dataMoodeel) {
    data.add(dataMoodeel);
    notifyListeners();
  }

  void Remove(DataMoodeel dataMoodeel) {
    data.remove(dataMoodeel);
    notifyListeners();
  }
}
