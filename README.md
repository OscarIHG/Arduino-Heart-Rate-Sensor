# Arduino-Heart-Rate-Sensor
A simple, plug-and-play heart rate sensor using Arduino for real-time pulse monitoring. Built with affordable and easy-to-use components.

## Introduction

This repo presents a heart rate sensor that is easy to set up and use. It can be placed on the fingertip and connects to an Arduino. The sensor uses an infrared emitter and detector to measure changes in blood flow with each heartbeat, allowing real-time monitoring.

## Methodology

### Step 1: Signal Generation

- Utilizes a **phototransistor** to detect infrared light from an LED emitter.

### Step 2: Signal Filtering

- A **high-pass filter** is used to remove unwanted noise and interference, focusing on the heartbeat signal.
- The cutoff frequency is set to approximately **3.38 Hz** using the formula: 𝐹𝑐 = 1 / (2πRC).

### Step 3: Signal Amplification

- Uses a **TL084 operational amplifier** with a gain of **101** to enhance the signal.
- The gain is calculated as: 𝐺 = 1 + (R1/R2), where R1 = 100 kΩ and R2 = 1 kΩ.

### Step 4: Signal Comparison

- Establishes a threshold using a **potentiometer**.
- The TL084 acts as a comparator, outputting 5V when the signal exceeds the threshold.

### Step 5: Visual Representation

- A **LED** blinks each time a pulse is detected, providing a simple visual indication.
- A **470 Ω resistor** is used to protect the LED.

## Circuit

Below are the diagrams created in Fritzing to illustrate the circuit's layout:

![Visual Representation](images/breadboard.png)
*Figure 1: Visual Representation of Physical Components.*

![Schematic](images/Schematic.png)
*Figure 2: Schematic of the heart rate sensor circuit.*

## Materials List

- **Resistors**:
  - 0.1 kΩ x1
  - 5.6 kΩ x2
  - 10 kΩ x5
  - 3.2 kΩ x1 (approximate value)
  - 3 MΩ x1 (or three 1 MΩ resistors)
- **Potentiometer**:
  - 10 kΩ x1
- **Ceramic Capacitors**:
  - 0.1 µF (Code 104) x2
- **Other Components**:
  - TL084 operational amplifier x1
  - 2N2222A transistors x2
  - Infrared LEDs (emitter and detector) x2
- **Protoboard** and **jumper wires**

## Requirements

- **Arduino UNO** or a compatible microcontroller.
- **MATLAB** (optional, for signal analysis).
- **Instrument Control Toolbox.**
- **MATLAB Support Package for Arduino Hardware.**

## Credits
- Jose Carlos Velaso Lopez
- Yaisiri Monserrat Hernandez Leon
