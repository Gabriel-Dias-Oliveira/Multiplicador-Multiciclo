transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/User/Desktop/Multiplicador_Editado_quase/Componentes/FlipFlop/FlipFlop.vhd}
vcom -93 -work work {C:/Users/User/Desktop/Multiplicador_Editado_quase/Componentes/RegistradorProduto/RegistradorProduto.vhd}

