import 'dart:convert';

class ImovelModel {
  final String tipoImovel;
  final String categoria;
  final String codigo;
  final double valor;
  final int metros;
  final int garagem;
  final int chuveiro;
  final int banheiro;
  final int quartos;
  final String cidade;
  final String bairro;
  final String corretor;
  ImovelModel({
    required this.tipoImovel,
    required this.categoria,
    required this.codigo,
    required this.valor,
    required this.metros,
    required this.garagem,
    required this.chuveiro,
    required this.banheiro,
    required this.quartos,
    required this.cidade,
    required this.bairro,
    required this.corretor,
  });

  Map<String, dynamic> toMap() {
    return {
      'tipoImovel': tipoImovel,
      'categoria': categoria,
      'codigo': codigo,
      'valor': valor,
      'metros': metros,
      'garagem': garagem,
      'chuveiro': chuveiro,
      'banheiro': banheiro,
      'quartos': quartos,
      'cidade': cidade,
      'bairro': bairro,
      'corretor': corretor,
    };
  }

  factory ImovelModel.fromMap(Map<String, dynamic> map) {
    return ImovelModel(
      tipoImovel: map['tipoImovel'] ?? '',
      categoria: map['categoria'] ?? '',
      codigo: map['codigo'] ?? '',
      valor: map['valor'].toDouble(),
      metros: map['metros'] ?? 0,
      garagem: map['garagem'] ?? 0,
      chuveiro: map['chuveiro'] ?? 0,
      banheiro: map['banheiro'] ?? 0,
      quartos: map['quartos'] ?? 0,
      cidade: map['cidade'] ?? '',
      bairro: map['bairro'] ?? '',
      corretor: map['corretor'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ImovelModel.fromJson(String source) =>
      ImovelModel.fromMap(json.decode(source));
}
