import 'package:flutter/material.dart';
import 'package:flutercoursetwo/Last_Tasks/Task_14/providersession/widgets/data_row.dart';

class DetailsCard extends StatelessWidget {
  final DataMoodeel;

  const DetailsCard({super.key, required this.DataMoodeel});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 16,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            DetailsRow(label: 'Name', details: DataMoodeel.name),
            const SizedBox(
              height: 12,
            ),
            DetailsRow(label: 'Nickname', details: DataMoodeel.NickName),
            const SizedBox(
              height: 12,
            ),
            DetailsRow(label: 'email', details: DataMoodeel.email),
            const SizedBox(
              height: 12,
            ),
            DetailsRow(label: 'Phone number', details: DataMoodeel.phoneNumber),
          ],
        ),
      ),
    );
  }
}
