transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/User/Desktop/Multiplicador_Editado_quase/Componentes/FlipFlop/FlipFlop.vhd}
vcom -93 -work work {C:/Users/User/Desktop/Multiplicador_Editado_quase/Componentes/Multiplexador/Multiplexador.vhd}
vcom -93 -work work {C:/Users/User/Desktop/Multiplicador_Editado_quase/Componentes/UnidadeControle/UnidadeControle.vhd}
vcom -93 -work work {C:/Users/User/Desktop/Multiplicador_Editado_quase/Componentes/RegistradorProduto/RegistradorProduto.vhd}
vcom -93 -work work {C:/Users/User/Desktop/Multiplicador_Editado_quase/Componentes/RegistradorMultiplicando/RegistradorMultiplicando.vhd}
vcom -93 -work work {C:/Users/User/Desktop/Multiplicador_Editado_quase/Componentes/RegistradorMultiplicador/RegistradorMultiplicador.vhd}
vcom -93 -work work {C:/Users/User/Desktop/Multiplicador_Editado_quase/Componentes/Multiplexador_16/Multiplexador_16.vhd}
vcom -93 -work work {C:/Users/User/Desktop/Multiplicador_Editado_quase/Componentes/Multiplexador_8/Multiplexador_8.vhd}
vcom -93 -work work {C:/Users/User/Desktop/Multiplicador_Editado_quase/Componentes/FullAdder/FullAdder.vhd}
vcom -93 -work work {C:/Users/User/Desktop/Multiplicador_Editado_quase/Componentes/DeslocadorEsq/DeslocadorEsq.vhd}
vcom -93 -work work {C:/Users/User/Desktop/Multiplicador_Editado_quase/Componentes/DeslocadorDir/DeslocadorDir.vhd}
vcom -93 -work work {C:/Users/User/Desktop/Multiplicador_Editado_quase/Componentes/BitsAdder/BitsAdder.vhd}
vcom -93 -work work {C:/Users/User/Desktop/Multiplicador_Editado_quase/Componentes/Multiplicador/Multiplicador.vhd}

