# Ondalık Kutular 📦👾

Ders sonu için 3 boyutlu eğitsel oyun. Öğrenci uzay gemisindeki 5 kutuyu taşıyıp üzerlerindeki ondalık sayıları **küçükten büyüğe** sıralar. Yanlış yuvaya koyarsa yeşil canavar karakteri yakalayıp fırlatır ve bir ipucu çıkar.

## Seviyeler
| # | Konu | Örnek |
|---|------|-------|
| 1 | Onda birler | 0,3 · 0,7 |
| 2 | Yüzde birler | 0,4 · 0,45 |
| 3 | Binde birler | 0,3 · 0,29 |
| 4 | Tam kısımlı | 1,5 · 1,05 |
| 5 | Negatifler | −0,5 · −0,45 |

Her seviyede 5 kutu, sayılar her oyunda rastgele üretilir. Hatasız: ★★★, 1–2 hata: ★★, daha fazla: ★.

## Kontroller
- **Bilgisayar / akıllı tahta:** WASD veya ok tuşları ile yürü, Boşluk ile AL / YERLEŞTİR / BIRAK. Fareyle zemine basılı tutarak da yürünür.
- **Tablet / telefon:** Sol alttaki joystick, sağ alttaki büyük buton.

## Dosyalar
- `index.html` — oyunun tamamı (Three.js içine gömülü, tek dosya). `src/index.src.html` düzenlenip `python3 tools/build.py` ile üretilir.
- `sw.js` — çevrimdışı katman, `version.json` — güncelleme kontrolü.
- `.github/workflows/pages.yml` — GitHub Pages yayını, `apk.yml` — `v*` etiketiyle APK derleyip Release'e yükler.

## Yeni sürüm
`src/index.src.html` içindeki `APP_VERSION` ve `version.json` aynı anda artırılır, `python3 tools/build.py` çalıştırılır, `v1.0.1` gibi etiketle release açılır.

Made by Us
