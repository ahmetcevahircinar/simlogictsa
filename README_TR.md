# SimLogicTSA: Benzerlik ve Mantık Kapısı Tabanlı Ağaç-Tohum Algoritmaları (İkili Optimizasyon için)

Bu depo, **SimLogicTSA** algoritmasının resmi MATLAB kodlarını içermektedir. SimLogicTSA, **Benzerlik Ölçütleri** ve **Mantık Kapısı Operatörleri** kullanılarak geliştirilmiş bir **İkili Ağaç-Tohum Algoritmasıdır (Binary TSA)**.

> Ahmet Cevahir Cinar, Mustafa Servet Kiran,  
> *Similarity and Logic Gate-Based Tree-Seed Algorithms for Binary Optimization*,  
> Computers & Industrial Engineering, Cilt 115, 2018, Sayfa 631–646.  
> DOI: [https://doi.org/10.1016/j.cie.2017.10.027](https://doi.org/10.1016/j.cie.2017.12.009)

## 🌱 Algoritma Özeti

SimLogicTSA algoritması:
- Hamming mesafesini kullanarak çözümler arası benzerliği ölçer
- **XOR**, **AND**, **OR** gibi mantık kapılarını kullanarak çözüm üretir
- Keşif ve sömürü dengesi için farklı dönüşüm stratejileri uygular

Literatürde yer alan ikili benchmark problemi üzerinde test edilmiştir.

## 📁 İçerik

- `SimLogicTSAALL.m`: SimLogicTSA algoritmasını çalıştıran ana dosya
- `text/`: İkili benchmark fonksiyonları
- `sonuclar/`: Performans sonuçları ve grafikler

## 🛠 Gereksinimler

- MATLAB R2015b veya üzeri
- Ekstra toolbox gerektirmez

## 📌 Atıf

Bu kodu kullanmanız durumunda aşağıdaki yayına atıfta bulunun:

```bibtex
@article{cinar2018slgtsa,
  title = {Similarity and Logic Gate-Based Tree-Seed Algorithms for Binary Optimization},
  author = {Cinar, Ahmet Cevahir and Kiran, Mustafa Servet},
  journal = {Computers & Industrial Engineering},
  volume = {115},
  pages = {631-646},
  year = {2018},
  doi = {10.1016/j.cie.2017.10.027},
  url = {https://www.sciencedirect.com/science/article/pii/S0360835217305752}
}
```

## 🤝 İletişim ve İş Birliği

📧 E-posta: [ahmetcevahircinar@gmail.com](mailto:ahmetcevahircinar@gmail.com)  
🔗 LinkedIn: [Ahmet Cevahir Çınar](https://www.linkedin.com/in/ahmet-cevahir-cinar/)
