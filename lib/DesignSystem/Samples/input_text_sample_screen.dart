import 'package:flutter/material.dart';

import '../Components/Inputs/Input_text/input_text.dart';
import '../Components/Inputs/Input_text/input_text_view_model.dart';
 // Assuming your InputTextViewModel path

class InputTextSampleScreen extends StatelessWidget {
  const InputTextSampleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final controller1 = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Input Text Samples'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              // Text Field - Number Style
              InputText.instantiate(
                viewModel: InputTextViewModel(
                    controller: controller1,
                    placeholder: 'Enabled',
                    password: false,
                    isEnabled: true,
                    hasError: false,
                ),
              ),
              SizedBox(height: 8),

              InputText.instantiate(
                viewModel: InputTextViewModel(
                  controller: controller1,
                  placeholder: 'Disabled',
                  password: false,
                  isEnabled: false,
                  hasError: false,
                ),
              ),
              SizedBox(height: 8),

              InputText.instantiate(
                viewModel: InputTextViewModel(
                  controller: controller1,
                  placeholder: 'Error',
                  password: false,
                  isEnabled: true,
                  hasError: true,
                  errorMsg: "Erro"
                ),
              ),
              SizedBox(height: 8),

            ],
          ),
        ),
      ),
    );
  }
}
