#!/bin/bash

REPO_PATH="/home/christian/Documents/University/AdvancedCS/FinalProject"
# REPO_PATH = "/home/aknapen"
OUTPUT_DIR="~/RV12_CPE521/verilator_output"
CORE_DIR="${REPO_PATH}/RV12_CPE521/rtl/verilog/core"
PKG_DIR="${REPO_PATH}/RV12_CPE521/rtl/verilog/pkg"
MEM_DIR="${REPO_PATH}/RV12_CPE521/memory/rtl/verilog"
AHB3_DIR="${REPO_PATH}/RV12_CPE521/ahb3lite_pkg/rtl/verilog"
EX_DIR="${REPO_PATH}/RV12_CPE521/rtl/verilog/core/ex"
BENCH_DIR="${REPO_PATH}/RV12_CPE521/bench/verilog/ahb3lite"
PKGS=("riscv_bp.sv" "riscv_du.sv")

# RUN_FILE="$CORE_DIR/riscv_core.sv"
RUN_FILE="${BENCH_DIR}/testbench_top.sv"

# "${PKG_DIR}riscv_core.sv", "${PKG_DIR}riscv_du.sv", \
#       "${PKG_DIR}riscv_ex.sv", "riscv_id.sv", "${PKG_DIR}riscv_if.sv", \
#       "${PKG_DIR}riscv_mem.sv", "${PKG_DIR}riscv_rf.sv", "${PKG_DIR}riscv_wb.sv", \
#       "${PKG_DIR}riscv_state1.7.sv", "${PKG_DIR}riscv_state1.9.sv", "${PKG_DIR}riscv_state1.10.sv")

# Run build command to build verilator output
verilator -Wno-WIDTH -Wno-UNSIGNED --cc --Mdir $OUTPUT_DIR -y ${AHB3_DIR} -y ${MEM_DIR} -y ${CORE_DIR} -y ${PKG_DIR} -y ${EX_DIR} $PKGS $RUN_FILE