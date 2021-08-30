class LackReport {
  String _normalizationDate;
  String _normalizationHour;
  String _cutDate;
  String _cutHour;

  LackReport(this._normalizationDate, this._normalizationHour,
      this._cutDate, this._cutHour);

  String get normalizationDate => _normalizationDate;

  String get normalizationHour => _normalizationHour;

  String get cutDate => _cutDate;

  String get cutHour => _cutHour;

  factory LackReport.fromJson(Map<String, dynamic> json) {
    return LackReport(
      json['NormalizacaoData'],
      json['NormalizacaoHora'],
      json['PrevisaoData'],
      json['PrevisaoHora'],
    );
  }
}
