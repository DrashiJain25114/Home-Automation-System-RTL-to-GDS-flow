# VDF Group Project — Home Automation System
Drashi Jain | IIIT Delhi | Submitted to: Dr. Sneh Saurabh

---

## Overview

This project covers the complete RTL-to-GDS digital design flow for a **Home Automation System (HA)**, implemented across two parts:

- **Part 1** — RTL design, simulation, synthesis, formal equivalence checking, static timing analysis (STA), and scan insertion (DFT).
- **Part 2** — Physical design using Cadence Innovus: floorplanning, power network, placement, clock tree synthesis (CTS), routing, and GDS generation.

The design is a synchronous, registered I/O system with clock and reset signals. All input and output ports are connected to flip-flops.

---

## Project Structure

```
VDF_Project/
├── Part1/                        # RTL, Synthesis, DFT
│   ├── verilog/                  # RTL source and testbenches
│   ├── synthesis/                # Constraint files and netlists (3 constraints)
│   ├── equivalence/              # Formal equivalence checking logs
│   ├── sta/                      # Static timing analysis reports
│   └── dft/                      # Scan-inserted netlist and reports
│
└── Part2/                        # Physical Design
    ├── zero_point_five/          # Utilization = 0.5 (large die)
    │   ├── placement_reports/
    │   ├── cts_reports/
    │   ├── optimised_cts_reports/
    │   ├── post_route_reports/
    │   ├── timingReports/
    │   ├── encounter_script.tcl
    │   └── HA.gds
    └── zero_point_eight/         # Utilization = 0.8 (small die)
        ├── (same structure as above)
        └── HA.gds
```

---

## Part 1 — RTL, Synthesis, Formal Verification & DFT

### Design Specification
The Home Automation System integrates multiple controllers:
- Door Lock, Burglar Alarm, Temperature, Humidity, Luminosity, Visitor Counter, Window Treatment, Water Level, Appliances, and Entertainment controllers.
- 116 I/O pins distributed across four sides (East/West/North/South, 29 each).

### Tools Used
- **Simulation & Coverage:** Cadence/Synopsys tools (or equivalent open-source)
- **Synthesis:** Genus (RTL Compiler) / Design Compiler — 90nm CMOS library
- **Formal Equivalence:** Cadence Conformal / Synopsys Formality
- **STA:** Cadence Tempus 20.10
- **DFT / Scan Insertion:** RTL Compiler / Design Compiler

### Design Steps

#### 1. Simulation & Coverage
- Three testbenches written with increasing code coverage
- Coverage analysis performed to study impact of test vectors

#### 2. Synthesis (3 Constraint Scenarios)
| Constraint | Target | Clock Period | Observed Slack |
|---|---|---|---|
| Best Timing | Minimum delay | ~1.8 ns (tight) | Slight negative (~−151 ps) |
| Mid Timing | Balanced | Intermediate | Positive |
| Min Area | Relaxed timing | Large period | Positive, large |

- Technology library: 90nm CMOS (slow corner)
- Total standard cells: **446**, Total area: **6074.879 µm²**
- Cell breakdown: Flip-Flops 77.8% | Logic 17.8% | Inverters 4.3%
- Total power (best timing): **4.54 mW**

#### 3. Formal Equivalence Checking
- All three synthesized netlists verified against RTL — all PASS
- A manually corrupted "bad netlist" was created to study failure modes and error messages from the equivalence tool

#### 4. Static Timing Analysis
- STA performed on all three netlists using the mid-timing constraint file
- GBA (Graph-Based Analysis) vs. PBA (Path-Based Analysis) explored:
  - GBA is pessimistic — assumes worst-case slew at every stage
  - PBA is accurate — propagates real slew through the path
- Hold analysis: violations found at primary inputs (zero-cycle paths before buffering)

#### 5. Scan Insertion (DFT)
- Single scan chain inserted using RTL Compiler/Design Compiler
- New DFT ports: `DFT_sdi`, `DFT_sdo`, `scan_en`, `test_mode`
- Flip-flops replaced with scan-enabled variants (SDFFRHQX, SDFFRHOX)
- Area overhead post scan insertion: minor increase (~1–2%)
- Timing: scan path adds multiplexer on D-input, slightly increasing setup-critical path delays

---

## Part 2 — Physical Design (Cadence Innovus)

### Input
Post-scan-insertion netlist from Part 1, with constraints.sdc (clock period = 1.8 ns).

### Flow Overview
```
Floorplan → Power Network → Placement → CTS → Routing → GDS
```

### Two Floorplan Configurations

| Parameter | Utilization 0.5 | Utilization 0.8 |
|---|---|---|
| Core Density | 50% cells, 50% whitespace | 80% cells, 20% whitespace |
| Routing Ease | Better, less congested | More congested |
| Buffer Insertion | Minimal | More aggressive |
| CTS Shape | Umbrella / scattered | Umbrella / scattered (denser) |

---

### Reports Summary

#### Area (µm²)

| Stage | Util 0.5 | Util 0.8 |
|---|---|---|
| Placement | 6074.879 | 6074.879 |
| CTS | 6264.104 | 6130.133 |
| Post-Route | 5925.013 | 5797.854 |

Cell breakdown (post-route): Flip-Flops ~4412 | Combinational ~1243 | Inverters ~167 | Buffers ~101

#### Power (mW)

| Stage | Util 0.5 | Util 0.8 |
|---|---|---|
| Placement | 4.756 | 4.794 |
| CTS | 3.274 | 3.219 |
| Post-Route | 3.076 | 3.022 |

Power breakdown (post-route): Internal ~85% | Switching ~14% | Leakage ~1%

#### Timing

| Stage | Util 0.5 Setup Slack | Util 0.8 Setup Slack |
|---|---|---|
| Placement | −0.325 ns (violation) | −0.257 ns (violation) |
| CTS | +0.025 ns (MET) | +0.035 ns (MET) |
| Post-Route | +0.037 ns (MET) | +0.043 ns (MET) |

Hold slack: MET at all stages for both utilizations (≥ +0.07 ns).

---

### Key Observations

**Timing/Area/Power Trade-offs:**
- Lower utilization (0.5) provides more routing flexibility and easier timing closure, at the cost of a larger die footprint.
- Higher utilization (0.8) achieves a smaller die and marginally lower power due to shorter wire lengths, but requires more buffer insertion and tighter optimization to fix setup violations.
- Both configurations achieve timing closure (positive slack) after CTS and post-routing.

**Effect of Metal Layers on Timing:**
- Higher metal layers (M6–M9) have lower resistance and are used for long global nets, reducing RC delay.
- Lower layers (M1–M2) carry local/intra-cell connections; congestion here increases resistance and degrades timing.

**Clock Tree Synthesis:**
- CTS introduces clock network latency; setup required time adjusts accordingly.
- After CTS, the setup slack improved from negative (placement) to positive, demonstrating the importance of balanced clock tree buffering.
- CTS increases area slightly due to added clock buffers, but reduces dynamic power by minimizing clock skew.

**Routability:**
- Utilization 0.5: Fewer DRC/congestion issues; fly-lines resolve cleanly after global routing.
- Utilization 0.8: Higher layer utilization observed on M2–M4; more routing iterations needed.

---

## Pin Configuration

Total pins: **116** (29 per side — East, West, North, South)

| Side | Function |
|---|---|
| East | Clock, Reset, Temperature & Water Sensor Inputs, DFT Inputs |
| South | Light, Humidity, Security, Entertainment Command Inputs |
| West | Command Inputs, System Status Outputs, DFT I/O |
| North | Control Outputs (HVAC, Water, Security, Entertainment) |

---

## Library

- **Technology:** 90nm CMOS (GSCLIB090 / equivalent)
- **LEF:** `gsclib090_translated_ref.lef`
- **Timing Lib:** slow corner (`slow.lib`)
- **VDD:** 0.9 V

---

## How to Re-run

### Part 1 — Synthesis & STA
```tcsh
# Synthesis (example with Genus)
genus -f synthesis/run_synthesis.tcl

# STA (Tempus)
tempus -f sta/run_sta.tcl
```

### Part 2 — Physical Design (Innovus)
```tcsh
# Launch Innovus and source the TCL script
innovus -init encounter_script.tcl
```

All TCL scripts, log files, constraint files, and GDS outputs are included in the archived submission.

---

## Results at a Glance

| Metric | Value |
|---|---|
| Technology | 90nm CMOS |
| Clock Period | 1.8 ns (~556 MHz target) |
| Total Standard Cells | 446–469 (post-CTS) |
| Total Cell Area (post-route) | ~5797–5925 µm² |
| Total Power (post-route) | ~3.0–3.1 mW |
| Setup Slack (post-route) | +0.037 to +0.043 ns |
| Hold Slack (post-route) | +0.100 to +0.106 ns |
| GDS Files | HA.gds (×2, one per utilization) |
