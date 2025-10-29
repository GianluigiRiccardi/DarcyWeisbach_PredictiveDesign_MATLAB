# Darcy–Weisbach Predictive Design – MATLAB Simulation  

**Author:** Gianluigi Riccardi  
**2025 – ReliaVib Initiative**  
**Tools:** MATLAB R2024b | Simulink  

---

## 🔹 Concept  
This project explores how **fluid dynamics equations** can serve as an entry point for **physics-informed predictive maintenance**.  
The **Darcy–Weisbach equation** was implemented in MATLAB to analyze head losses between suction and discharge lines of a centrifugal pump, according to **API 610** standards.  

---

## 🔹 Equation  

\[
h_f = f \cdot \frac{L}{D} \cdot \frac{v^2}{2g}
\]

where:  
- **hₓ** – head loss [m]  
- **f** – friction factor (0.02 for smooth SAIS carbon-steel pipes)  
- **L** – pipe length [m]  
- **D** – inner diameter [m]  
- **v** – average flow velocity [m/s]  
- **g** – 9.81 [m/s²]  

---

## 🔹 Configuration  

| Parameter | Suction Line | Discharge Line |
|------------|--------------|----------------|
| Diameter (D) | 0.10 m (DN100 ≈ 4″) | 0.076 m (DN80 ≈ 3″) |
| Length (L) | 4 m | 4 m |
| Flow rate (Q) | 0.0139 m³/s (≈ 50 L/s) | — (same flow) |
| Friction factor (f) | 0.02 | 0.02 |

---

## 🔹 MATLAB Results  

```matlab
>> Darcy_Weisbach_Simulation
Suction velocity = 1.77 m/s
Discharge velocity = 3.06 m/s
Suction head loss = 0.128 m
Discharge head loss = 0.503 m
