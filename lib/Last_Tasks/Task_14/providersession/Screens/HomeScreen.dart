import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutercoursetwo/Last_Tasks/Task_14/providersession/helperMethods.dart';
import 'package:flutercoursetwo/Last_Tasks/Task_14/providersession/Providerdata/ChangeNotifierPrrovider.dart';
import 'package:flutercoursetwo/Last_Tasks/Task_14/providersession/widgets/data_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MyAppProvider>(context);

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('GDSC'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) => DetailsCard(
                  DataMoodeel: provider.data[index],
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 8,
                ),
                itemCount: provider.data.length,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
          size: 26,
        ),
        onPressed: () {
          showDataSheat(context);
        },
      ),
    ));
  }
}
