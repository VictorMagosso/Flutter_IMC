import 'package:flutter_masked_text/flutter_masked_text.dart';

class ImcBloc {
  var heightCtrl = new MaskedTextController(mask: '000');
  var weightCtrl = new MaskedTextController(mask: '000');
  var result = "Preencha os dados para calcular o IMC";
  var imc = "";

  calculate() {
    double weight = double.parse(weightCtrl.text);
    double height = double.parse(heightCtrl.text);
    double resCount = weight / (height / 100 * height / 100);
    imc = resCount.toStringAsFixed(2).replaceAll('.', ',');

    if (resCount < 18) {
      result = "Você está abaixo do peso";
    } else if (resCount >= 18 && resCount < 25) {
      result = "Você está no peso ideal. Parabéns!";
    } else {
      result = "Você está acima do peso!";
    }
  }
}
