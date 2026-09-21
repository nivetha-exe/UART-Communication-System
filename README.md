# UART Communication System - Verilog

A complete UART communication system connecting a Verilog UART transmitter and receiver.

## Features
- 50 MHz clock
- 9600 baud rate
- 8-bit data
- LSB-first transmission
- Start and stop bits
- FSM-based UART TX and RX
- TX-to-RX serial connection
- Simulation verified

## Files
- `uart_communication.v` - Top-level UART communication module
- `uart_tx.v` - UART transmitter
- `uart_rx.v` - UART receiver
- `uart_communication_tb.v` - Testbench

## Data Flow

`8-bit Data → UART TX → Serial Line → UART RX → 8-bit Data`

## Simulation Result

Input:
`10110010`

Received:
`10110010`

Result: **Successful UART communication**
