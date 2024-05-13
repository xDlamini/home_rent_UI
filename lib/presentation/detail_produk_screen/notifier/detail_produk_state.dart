part of 'detail_produk_notifier.dart';

/// Represents the state of DetailProduk in the application.

// ignore_for_file: must_be_immutable
class DetailProdukState extends Equatable {
  DetailProdukState({this.detailProdukModelObj});

  DetailProdukModel? detailProdukModelObj;

  @override
  List<Object?> get props => [detailProdukModelObj];
  DetailProdukState copyWith({DetailProdukModel? detailProdukModelObj}) {
    return DetailProdukState(
      detailProdukModelObj: detailProdukModelObj ?? this.detailProdukModelObj,
    );
  }
}
