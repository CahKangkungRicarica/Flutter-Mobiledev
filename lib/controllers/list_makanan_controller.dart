import 'package:flutter_application_1/models/makanan_model.dart';
import 'package:get/get.dart';

class ListMakananController extends GetxController {

  List<MakananModel> dataMakanan = [
    MakananModel(
      namaMakanan: "Soto Ayam", 
      harga: "10.000", 
      deskripsi: "Soto ayam dengan kuah yang lezat", 
      gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6EoVEfuiC0popmi5kR5T9Daci2eHROQcRvFjdUMkl-eHRnB7y0Nf9U8Q&s=10",
      rating: "4.5",
      review: "Soto ayamnya enak banget! gurih dan kaldunya berasa!"
    ),
    MakananModel(
      namaMakanan: "Ayam Goreng", 
      harga: "12.000", 
      deskripsi: "Ayam goreng renyah dan gurih", 
      gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvLudi9qpAMSFJfWFQ-o44xlvh1j5sdPy7vaoDIQl1cm2ZAvOse2xqarE&s=10",
      rating: "4.2",
      review: "Ayam gorengnya matang sempurna, renyah dan gurih"
    ),
    MakananModel(
      namaMakanan: "Ayam Bakar", 
      harga: "12.000", 
      deskripsi: "Ayam bakar dengan bumbu special", 
      gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2IjL1Y0BfHwwUfutUYqmfqHukxMw7AcRAYkBbzA0H9H4KQG4nUdOL5UyF&s=10",
      rating: "4.7",
      review: "Bumbu ayam bakarnya meresap banget, rasanya enak dan lezat"
    ),
    MakananModel(
      namaMakanan: "Ayam Geprek", 
      harga: "11.000", 
      deskripsi: "Ayam geprek pedas dengan sambal", 
      gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT89EufvZWDo57HC_Vrl7bNCOTdof6MPOqNmUhfxde63vDfRBuuSIYpPRmC&s=10",
      rating: "4.3",
      review: "Sambelnya pedasnya pas, enak"
    ),
    MakananModel(
      namaMakanan: "Nasi Goreng", 
      harga: "13.000", 
      deskripsi: "Nasi goreng dengan telur dan ayam", 
      gambar: "https://awsimages.detik.net.id/community/media/visual/2022/08/07/resep-nasi-goreng-ayam-dan-ebi_43.jpeg?w=1200",
      rating: "4.6",
      review: "enak"
    ),
  ];
}