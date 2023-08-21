#!/bin/sh

SCRIPT_FILE=nds-gnu-toolchain/build_elf_toolchain.sh

VARIANT=$1
ARCH=
ABI=
CPU=
TARGET=

case "${VARIANT}" in
	"v5" )
		ARCH="rv32imcxandes"
		ABI="ilp32"
		CPU="andes-25-series"
		TARGET="riscv32-elf"
		break
		;;

	"v5f" )
		ARCH="rv32imfcxandes"
		ABI="ilp32f"
		CPU="andes-25-series"
		TARGET="riscv32-elf"
		break
		;;

	"v5d" )
		ARCH="rv32imfdcxandes"
		ABI="ilp32d"
		CPU="andes-25-series"
		TARGET="riscv32-elf"
		break
		;;

	* )
		echo "Unknown variant ${VARIANT}"
		exit -1
		;;
esac

sed -i -E "s/(^PREFIX=\`pwd\`\\/)(.*)$/\\1nds32le-elf-newlib-${VARIANT}/g" ${SCRIPT_FILE}
sed -i -E "s/(^BUILD=\`pwd\`\\/build-)(.*)$/\\1nds32le-elf-newlib-${VARIANT}/g" ${SCRIPT_FILE}
sed -i -E "s/(^ARCH=)(.*)$/\\1${ARCH}/g" ${SCRIPT_FILE}
sed -i -E "s/(^ABI=)(.*)$/\\1${ABI}/g" ${SCRIPT_FILE}
sed -i -E "s/(^CPU=)(.*)$/\\1${CPU}/g" ${SCRIPT_FILE}
sed -i -E "s/(^TARGET=)(.*)$/\\1${TARGET}/g" ${SCRIPT_FILE}
