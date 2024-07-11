class Words {
  List<Fiiler>? fiiler;
  List<Isimler>? isimler;

  Words({this.fiiler, this.isimler});

  Words.fromJson(Map<String, dynamic> json) {
    if (json['Fiiler'] != null) {
      fiiler = <Fiiler>[];
      json['Fiiler'].forEach((v) {
        fiiler!.add(new Fiiler.fromJson(v));
      });
    }
    if (json['İsimler'] != null) {
      isimler = <Isimler>[];
      json['İsimler'].forEach((v) {
        isimler!.add(new Isimler.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.fiiler != null) {
      data['Fiiler'] = this.fiiler!.map((v) => v.toJson()).toList();
    }
    if (this.isimler != null) {
      data['İsimler'] = this.isimler!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Fiiler {
  int? id;
  String? ad;
  Bilgiler? bilgiler;

  Fiiler({this.id, this.ad, this.bilgiler});

  Fiiler.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    ad = json['ad'];
    bilgiler = json['bilgiler'] != null
        ? new Bilgiler.fromJson(json['bilgiler'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['ad'] = this.ad;
    if (this.bilgiler != null) {
      data['bilgiler'] = this.bilgiler!.toJson();
    }
    return data;
  }
}

class Isimler {
  int? id;
  String? ad;
  Bilgiler? bilgiler;

  Isimler({this.id, this.ad, this.bilgiler});

  Isimler.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    ad = json['ad'];
    bilgiler = json['bilgiler'] != null
        ? new Bilgiler.fromJson(json['bilgiler'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['ad'] = this.ad;
    if (this.bilgiler != null) {
      data['bilgiler'] = this.bilgiler!.toJson();
    }
    return data;
  }
}

class Bilgiler {
  String? kelime;
  Durumlar? durumlar;

  Bilgiler({this.kelime, this.durumlar});

  Bilgiler.fromJson(Map<String, dynamic> json) {
    kelime = json['kelime'];
    durumlar = json['durumlar'] != null
        ? new Durumlar.fromJson(json['durumlar'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kelime'] = this.kelime;
    if (this.durumlar != null) {
      data['durumlar'] = this.durumlar!.toJson();
    }
    return data;
  }
}

class Durumlar {
  String? geMiZaman;
  String? imdikiZaman;
  String? gelecekZaman;

  Durumlar({this.geMiZaman, this.imdikiZaman, this.gelecekZaman});

  Durumlar.fromJson(Map<String, dynamic> json) {
    geMiZaman = json['geçmiş zaman'];
    imdikiZaman = json['şimdiki zaman'];
    gelecekZaman = json['gelecek zaman'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['geçmiş zaman'] = this.geMiZaman;
    data['şimdiki zaman'] = this.imdikiZaman;
    data['gelecek zaman'] = this.gelecekZaman;
    return data;
  }
}