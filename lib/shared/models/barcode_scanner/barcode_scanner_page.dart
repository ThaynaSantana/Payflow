import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/label_button/label_button.dart';

class BarcodeScannerPage extends StatefulWidget {
  const BarcodeScannerPage({Key? key}) : super(key: key);

  @override
  State<BarcodeScannerPage> createState() => _BarcodeScannerPageState();
}

class _BarcodeScannerPageState extends State<BarcodeScannerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Escaneio o código de barras',
          style: TextStyles.buttonBackground,
        ),
        leading: BackButton(color: AppColors.background),
      ),
      body: Column(
        children: [
          Expanded(child: Container(color: Colors.black)),
          Expanded(flex: 2,child: Container(color: Colors.transparent)),
          Expanded(child: Container(color: Colors.black))
        ],
      ),
      bottomNavigationBar: Row(
        children: [
          Expanded(
            child: LabelButton(
              label: 'Inserir código com boleto',
              onPressed: () {},),
          ),
          Container(
            height: 56,
            width: 2,
            color: AppColors.stroke),
            Expanded(
              child: LabelButton(
                label: 'Adicionar imagem da Galeria',
               onPressed: () {}),
            )
        ],
      ),
    );
  }
}
