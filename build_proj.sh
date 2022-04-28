#!/bin/bash

OUTPUT_DIR="~/RV12_CPE521/verilator_output"
CORE_DIR="/home/aknapen/RV12_CPE521/rtl/verilog/core"
PKG_DIR="/home/aknapen/RV12_CPE521/rtl/verilog/pkg"
MEM_DIR="/home/aknapen/RV12_CPE521/memory/rtl/verilog"
AHB3_DIR="/home/aknapen/RV12_CPE521/ahb3lite_pkg/rtl/verilog"
EX_DIR="/home/aknapen/RV12_CPE521/rtl/verilog/core/ex"
PKGS=("riscv_bp.sv" "riscv_du.sv")

# "${PKG_DIR}riscv_core.sv", "${PKG_DIR}riscv_du.sv", \
#       "${PKG_DIR}riscv_ex.sv", "riscv_id.sv", "${PKG_DIR}riscv_if.sv", \
#       "${PKG_DIR}riscv_mem.sv", "${PKG_DIR}riscv_rf.sv", "${PKG_DIR}riscv_wb.sv", \
#       "${PKG_DIR}riscv_state1.7.sv", "${PKG_DIR}riscv_state1.9.sv", "${PKG_DIR}riscv_state1.10.sv")

# Run build command to build verilator output
verilator -Wno-WIDTH -Wno-UNSIGNED --cc --Mdir $OUTPUT_DIR -y ${AHB3_DIR} -y ${MEM_DIR} -y ${CORE_DIR} -y ${PKG_DIR} -y ${EX_DIR} $PKGS $CORE_DIR/riscv_core.sv > ~/out.txt