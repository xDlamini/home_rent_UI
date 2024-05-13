import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/detail_produk_model.dart';
import '../models/detailproduklist_item_model.dart';
part 'detail_produk_state.dart';

final detailProdukNotifier =
    StateNotifierProvider<DetailProdukNotifier, DetailProdukState>(
  (ref) => DetailProdukNotifier(DetailProdukState(
    detailProdukModelObj: DetailProdukModel(detailproduklistItemList: [
      DetailproduklistItemModel(
          cathanOne: ImageConstant.imgCatHanApd1ynuyp0wUnsplash),
      DetailproduklistItemModel(cathanOne: ImageConstant.imgSidekixMediaE),
      DetailproduklistItemModel(cathanOne: ImageConstant.imgJorgeDeJorge)
    ]),
  )),
);

/// A notifier that manages the state of a DetailProduk according to the event that is dispatched to it.
class DetailProdukNotifier extends StateNotifier<DetailProdukState> {
  DetailProdukNotifier(DetailProdukState state) : super(state);
}
