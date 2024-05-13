import 'package:equatable/equatable.dart';
import 'detailproduklist_item_model.dart';

/// This class defines the variables used in the [detail_produk_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

class DetailProdukModel extends Equatable {
  DetailProdukModel({this.detailproduklistItemList = const []});

  List<DetailproduklistItemModel> detailproduklistItemList;

  DetailProdukModel copyWith(
      {List<DetailproduklistItemModel>? detailproduklistItemList}) {
    return DetailProdukModel(
      detailproduklistItemList:
          detailproduklistItemList ?? this.detailproduklistItemList,
    );
  }

  @override
  List<Object?> get props => [detailproduklistItemList];
}
