# Automatically generated by nMigen 0.2.dev12+g318274d. Do not edit.
if [ -n "$NMIGEN_ENV_Quartus" ]; then
    QUARTUS_ROOTDIR=$(dirname $(dirname "$NMIGEN_ENV_Quartus"))
    # Quartus' qenv.sh does not work with `set -e`.
    . "$NMIGEN_ENV_Quartus"
fi
set -e
: ${QUARTUS_MAP:=quartus_map}
: ${QUARTUS_FIT:=quartus_fit}
: ${QUARTUS_ASM:=quartus_asm}
: ${QUARTUS_STA:=quartus_sta}
"$QUARTUS_MAP" --rev=top top
"$QUARTUS_FIT" --rev=top top
"$QUARTUS_ASM" --rev=top top
"$QUARTUS_STA" --rev=top top