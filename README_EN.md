# SimLogicTSA: Similarity and Logic Gate-Based Tree-Seed Algorithms for Binary Optimization

This repository contains the official MATLAB implementation of **SimLogicTSA**, a Tree-Seed Algorithm (TSA) modified with **Similarity Measures** and **Logic Gate-Based Operators** for solving **binary optimization problems**.

> Ahmet Cevahir Cinar, Mustafa Servet Kiran,  
> *Similarity and Logic Gate-Based Tree-Seed Algorithms for Binary Optimization*,  
> Computers & Industrial Engineering, Volume 115, 2018, Pages 1–15.  
> DOI: https://doi.org/10.1016/j.cie.2017.10.027

## 🌱 Algorithm Overview

SimLogicTSA introduces binary versions of the TSA by:
- Utilizing Hamming distance as a similarity measure to guide search
- Integrating **XOR**, **AND**, and **OR** logic operators to update seed solutions
- Applying different transformation strategies for diversification and intensification

Tested on 23 benchmark binary optimization problems from the literature.

## 📁 Contents

- `slgtsa_main.m`: Main script for running SimLogicTSA
- `problems/`: Includes binary benchmark functions
- `operators/`: Logic gate transformation methods
- `similarity.m`: Hamming distance-based selection
- `results/`: Performance summaries and plots

## 🛠 Requirements

- MATLAB R2015b or later
- No external toolbox required

## 📌 Citation

Please cite the following if you use this code:

```bibtex
@article{cinar2018slgtsa,
  title = {Similarity and Logic Gate-Based Tree-Seed Algorithms for Binary Optimization},
  author = {Cinar, Ahmet Cevahir and Kiran, Mustafa Servet},
  journal = {Computers & Industrial Engineering},
  volume = {115},
  pages = {1--15},
  year = {2018},
  doi = {10.1016/j.cie.2017.10.027},
  url = {https://www.sciencedirect.com/science/article/pii/S0360835217305752}
}
```

## 🤝 Contact & Collaboration

For collaboration or questions:

📧 Email: [ahmetcevahircinar@gmail.com](mailto:ahmetcevahircinar@gmail.com)  
🔗 LinkedIn: [Ahmet Cevahir Çınar](https://www.linkedin.com/in/ahmet-cevahir-cinar/)
