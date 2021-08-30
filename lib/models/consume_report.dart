class ConsumeReport {
  String _billedConsumption;
  String _measuredConsumption;
  String _dateRead;
  String _read;
  String _averageConsumption;
  String _reference;

  ConsumeReport(this._billedConsumption, this._measuredConsumption,
      this._dateRead, this._read, this._averageConsumption, this._reference);

  String get reference => _reference;

  String get averageConsumption => _averageConsumption;

  String get read => _read;

  String get dateRead => _dateRead;

  String get measuredConsumption => _measuredConsumption;

  String get billedConsumption => _billedConsumption;

  factory ConsumeReport.fromJson(Map<String, dynamic> json) {
    return ConsumeReport(
      json['ConsumoFaturado'],
      json['ConsumoMedido'],
      json['DataLeitura'],
      json['Leitura'],
      json['MediaConsumo'],
      json['Referencia']
    );
  }
}