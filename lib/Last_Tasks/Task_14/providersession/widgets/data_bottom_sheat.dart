import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutercoursetwo/Last_Tasks/Task_14/providersession/MyModels/MyDataModel.dart';
import 'package:flutercoursetwo/Last_Tasks/Task_14/providersession/Providerdata/ChangeNotifierPrrovider.dart';
import 'package:flutercoursetwo/Last_Tasks/Task_14/providersession/helperMethods.dart';

class DataBottomSheat extends StatefulWidget {
  const DataBottomSheat({super.key});
  @override
  State<DataBottomSheat> createState() => _DataBottomSheetState();
}

class _DataBottomSheetState extends State<DataBottomSheat> {
  final nameController = TextEditingController();
  final NickNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final formKey = GlobalKey<FormState>(); // هنا بنعمل ال key
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MyAppProvider>(context);
    return Padding(
      padding: EdgeInsets.only(
          left: 16,
          right: 16,
          top: 16,
          bottom: MediaQuery.of(context)
              .viewInsets
              .bottom), // بتتحط في EdgeInsets وبتخلي المحتوي كلو يطلع لفوق بشكل (عشان buttom)responsiv
      child: Form(
        // عشان تشتغل اصلا
        key: formKey, // دا عشان لما يتشك هل ال key دا validat ولا لا
        // لو مش validat ال validator هتشتغل
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              validator: (value) => ValidatResult(value, 'name'),
              controller: nameController,
              decoration: const InputDecoration(
                  label: Text('Name'), border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 12,
            ),
            TextFormField(
              validator: (value) => ValidatResult(value, 'NickName'),
              controller: NickNameController,
              decoration: const InputDecoration(
                  label: Text('NickName'), border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 12,
            ),
            TextFormField(
              validator: (value) => ValidatResult(value, 'email'),
              controller: emailController,
              decoration: const InputDecoration(
                  label: Text('email'), border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 12,
            ),
            TextFormField(
              validator: (value) => ValidatResult(value, 'phone number'),
              controller: phoneNumberController,
              decoration: const InputDecoration(
                  label: Text('Phone number'), border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 18,
            ),
            TextButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  provider.AddData(DataMoodeel(
                      name: nameController.text,
                      NickName: NickNameController.text,
                      email: emailController.text,
                      phoneNumber: phoneNumberController.text));
                  if (Navigator.canPop(context)) {
                    Navigator.pop(context);
                  }
                }
              },
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.black),
              ),
              child: const Text(
                'ADD',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
