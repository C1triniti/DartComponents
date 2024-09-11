import 'package:flutter/material.dart';
import '../Components/LinkedLabel/linked_label/linked_label.dart';


class LinkedLabelSampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LinkedLabel(
          fullText: 'I have read and agree to the Terms & Services',
          linkText: 'Terms & Services',
          onTap: () {
            // Navegar para a página de termos de serviço
            print('Terms & Services clicked');
          },
        ),
      ),
    );
  }
}