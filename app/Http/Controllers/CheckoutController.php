<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\Produk;
use App\Models\Kategori;
use App\Models\Kasir;
use App\Models\Pesanan;
use App\Models\PesananDetail;
use App\Models\Pengiriman;
use App\Models\Ongkir;
use App\Models\BuktiPembayaran;
use Redirect;
use Session;
use PDF;
use Image;

class CheckoutController extends Controller
{
    public function checkout(Request $request, $id)
    {
        $checkout = Pesanan::with('PesananDetail')->where('id_pesanan', $id)->first();
        $pesanan = Pesanan::find($id);
        
        // Mengambil data pengiriman berdasarkan id_pesanan
        $pengiriman = Pengiriman::where('id_pesanan', $id)->first();

        // Mengambil data wilayah untuk dropdown
        $wilayah = Ongkir::all();

        return view('toko-checkout', compact('checkout', 'pesanan', 'pengiriman', 'wilayah', 'id'));
    }


    public function pengiriman(Request $request)
    {
        $id_pesanan = $request->input('id_pesanan');
        $alamat = $request->input('alamat');
        $id_ongkir = $request->input('id_ongkir');
        
        // Ambil data ongkir berdasarkan id_ongkir yang dipilih
        $ongkir = Ongkir::find($id_ongkir);

        if (!$ongkir) {
            return back()->with('error', 'Wilayah ongkir tidak ditemukan');
        }

        // Cek apakah sudah ada pengiriman untuk pesanan ini
        $existingPengiriman = Pengiriman::where('id_pesanan', $id_pesanan)->first();
        if ($existingPengiriman) {
            return back()->with('error', 'Anda sudah menginputkan pengiriman');
        }

        // Simpan data pengiriman
        $pengiriman = new Pengiriman();
        $pengiriman->id_pesanan = $id_pesanan;
        $pengiriman->id_ongkir = $ongkir->id_ongkir;
        $pengiriman->alamat = $alamat;
        $pengiriman->wilayah = $ongkir->wilayah;  // Ambil wilayah dari data ongkir
        $pengiriman->ongkir = $ongkir->ongkir;
        $pengiriman->save();

        // Tampilkan pesan sukses
        Session()->flash('message', 'Pengiriman berhasil disimpan');
        Session()->flash('alert_class', 'success');

        $request->session()->forget('kasir');

        // Menghitung total ongkir
        $totalOngkir = $ongkir->ongkir;

        // Kembalikan total ongkir dan redirect ke checkout
        return redirect('/toko-checkout/' . $id_pesanan)->with('totalOngkir', $totalOngkir);
    }


    public function bukti(Request $request)
    {
        $id_pesanan = $request->input('id_pesanan');

        $request->validate([
            'foto' => 'required|image|mimes:jpeg,png,jpg',
        ]);

        $file = $request->file('foto');
        $name = 'Bukti_'.date('Ymdhis').'.'.$request->file('foto')->getClientOriginalExtension();

        $resize_foto = Image::make($file->getRealPath());
        $resize_foto->resize(500, 500, function($constraint){
            $constraint->aspectRatio();
        })->save('images/buktipembayaran/'.$name);

        // Cek apakah sudah ada bukti pembayaran untuk pesanan ini
        $existingBuktiPembayaran = BuktiPembayaran::where('id_pesanan', $id_pesanan)->first();
        if ($existingBuktiPembayaran) {
            return back()->with('error', 'Anda sudah menginputkan bukti pembayaran');
        }

        $buktiPembayaran = new BuktiPembayaran();
        $buktiPembayaran->id_pesanan = $id_pesanan;
        $buktiPembayaran->foto = $name;
        $buktiPembayaran->save();

        Session()->flash('message', 'Bukti Pembayaran berhasil disimpan');
        Session()->flash('alert_class', 'success');

        return redirect('/toko-checkout/' . $id_pesanan);
    }
}
