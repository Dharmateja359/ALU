# 🔢 4-Bit ALU in Verilog

This project implements a simple **4-bit Arithmetic and Logic Unit (ALU)** in Verilog HDL. The ALU supports basic arithmetic and logical operations and is fully testable using a Verilog testbench.

---

## 🛠️ Features

- 4-bit input operands (`A`, `B`)
- 3-bit opcode input to select operations
- Output: 4-bit `Result`
- Operations supported:
  - `000` – Addition (`A + B`)
  - `001` – Subtraction (`A - B`)
  - `010` – AND (`A & B`)
  - `011` – OR (`A | B`)
  - `100` – XOR (`A ^ B`)
  - `111` – Clear (`Result = 0`)

---

## 📁 Files Included

| File         | Description                      |
|--------------|----------------------------------|
| `ALU.v`      | Main ALU module in Verilog       |
| `ALU_tb.v`   | Testbench to verify ALU behavior |
| `.gitignore` | Ignores simulation/build files   |
| `README.md`  | Project documentation            |

---

## 🚀 How to Simulate

### 🔧 Requirements:
- [Icarus Verilog](http://iverilog.icarus.com/)
- GTKWave (optional, for waveform visualization)

### ▶️ Run Simulation:

```bash
iverilog -o alu_tb ALU_tb.v ALU.v
vvp alu_tb
