	.text
	.intel_syntax noprefix
	.file	"unopt_escape.cpp"
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90         # -- Begin function __cxx_global_var_init
	.type	__cxx_global_var_init,@function
__cxx_global_var_init:                  # @__cxx_global_var_init
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rdi, offset _ZStL8__ioinit
	call	_ZNSt8ios_base4InitC1Ev
	movabs	rax, offset _ZNSt8ios_base4InitD1Ev
	mov	rdi, rax
	movabs	rsi, offset _ZStL8__ioinit
	movabs	rdx, offset __dso_handle
	call	__cxa_atexit
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end0:
	.size	__cxx_global_var_init, .Lfunc_end0-__cxx_global_var_init
	.cfi_endproc
                                        # -- End function
	.text
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception0
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 1408
	mov	dword ptr [rbp - 4], 0
	lea	rax, [rbp - 32]
	mov	rdi, rax
	mov	qword ptr [rbp - 1120], rax # 8-byte Spill
	call	_ZNSt6vectorI5PointSaIS0_EEC2Ev
	mov	qword ptr [rip + numIterations], 0
	call	_ZNSt6chrono3_V212system_clock3nowEv
	mov	qword ptr [rbp - 40], rax
.Ltmp0:
	mov	rdi, qword ptr [rbp - 1120] # 8-byte Reload
	call	_Z18unoptimized_EscapePSt6vectorI5PointSaIS0_EE
.Ltmp1:
	jmp	.LBB1_1
.LBB1_1:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	mov	qword ptr [rbp - 64], rax
.Ltmp2:
	mov	esi, offset .L.str
	lea	rdi, [rbp - 576]
	mov	edx, 16
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.Ltmp3:
	jmp	.LBB1_2
.LBB1_2:
.Ltmp5:
	mov	esi, offset .L.str.1
	lea	rdi, [rbp - 1088]
	mov	edx, 16
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.Ltmp6:
	jmp	.LBB1_3
.LBB1_3:
.Ltmp8:
	mov	esi, offset .L.str.2
	lea	rdi, [rbp - 576]
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp9:
	mov	qword ptr [rbp - 1128], rax # 8-byte Spill
	jmp	.LBB1_4
.LBB1_4:
.Ltmp10:
	mov	esi, offset _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	mov	rdi, qword ptr [rbp - 1128] # 8-byte Reload
	call	_ZNSolsEPFRSoS_E
.Ltmp11:
	jmp	.LBB1_5
.LBB1_5:
	mov	dword ptr [rbp - 1092], 0
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	movsxd	rax, dword ptr [rbp - 1092]
	lea	rdi, [rbp - 32]
	mov	qword ptr [rbp - 1136], rax # 8-byte Spill
	call	_ZNKSt6vectorI5PointSaIS0_EE4sizeEv
	mov	rcx, qword ptr [rbp - 1136] # 8-byte Reload
	cmp	rcx, rax
	jae	.LBB1_39
# %bb.7:                                #   in Loop: Header=BB1_6 Depth=1
	cmp	dword ptr [rbp - 1092], 0
	jne	.LBB1_27
# %bb.8:                                #   in Loop: Header=BB1_6 Depth=1
	lea	rdi, [rbp - 576]
	movsxd	rsi, dword ptr [rbp - 1092]
.Ltmp38:
	lea	rax, [rbp - 32]
	mov	qword ptr [rbp - 1144], rdi # 8-byte Spill
	mov	rdi, rax
	call	_ZNSt6vectorI5PointSaIS0_EE2atEm
.Ltmp39:
	mov	qword ptr [rbp - 1152], rax # 8-byte Spill
	jmp	.LBB1_9
.LBB1_9:                                #   in Loop: Header=BB1_6 Depth=1
	mov	rax, qword ptr [rbp - 1152] # 8-byte Reload
	mov	esi, dword ptr [rax]
.Ltmp40:
	mov	rdi, qword ptr [rbp - 1144] # 8-byte Reload
	call	_ZNSolsEi
.Ltmp41:
	mov	qword ptr [rbp - 1160], rax # 8-byte Spill
	jmp	.LBB1_10
.LBB1_10:                               #   in Loop: Header=BB1_6 Depth=1
.Ltmp42:
	mov	esi, offset .L.str.3
	mov	rdi, qword ptr [rbp - 1160] # 8-byte Reload
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp43:
	mov	qword ptr [rbp - 1168], rax # 8-byte Spill
	jmp	.LBB1_11
.LBB1_11:                               #   in Loop: Header=BB1_6 Depth=1
	movsxd	rsi, dword ptr [rbp - 1092]
.Ltmp44:
	lea	rdi, [rbp - 32]
	call	_ZNSt6vectorI5PointSaIS0_EE2atEm
.Ltmp45:
	mov	qword ptr [rbp - 1176], rax # 8-byte Spill
	jmp	.LBB1_12
.LBB1_12:                               #   in Loop: Header=BB1_6 Depth=1
	mov	rax, qword ptr [rbp - 1176] # 8-byte Reload
	mov	esi, dword ptr [rax + 4]
.Ltmp46:
	mov	rdi, qword ptr [rbp - 1168] # 8-byte Reload
	call	_ZNSolsEi
.Ltmp47:
	mov	qword ptr [rbp - 1184], rax # 8-byte Spill
	jmp	.LBB1_13
.LBB1_13:                               #   in Loop: Header=BB1_6 Depth=1
.Ltmp48:
	mov	esi, offset .L.str.3
	mov	rdi, qword ptr [rbp - 1184] # 8-byte Reload
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp49:
	mov	qword ptr [rbp - 1192], rax # 8-byte Spill
	jmp	.LBB1_14
.LBB1_14:                               #   in Loop: Header=BB1_6 Depth=1
	movsxd	rsi, dword ptr [rbp - 1092]
.Ltmp50:
	lea	rdi, [rbp - 32]
	call	_ZNSt6vectorI5PointSaIS0_EE2atEm
.Ltmp51:
	mov	qword ptr [rbp - 1200], rax # 8-byte Spill
	jmp	.LBB1_15
.LBB1_15:                               #   in Loop: Header=BB1_6 Depth=1
	mov	rax, qword ptr [rbp - 1200] # 8-byte Reload
	mov	esi, dword ptr [rax + 8]
.Ltmp52:
	mov	rdi, qword ptr [rbp - 1192] # 8-byte Reload
	call	_ZNSolsEi
.Ltmp53:
	mov	qword ptr [rbp - 1208], rax # 8-byte Spill
	jmp	.LBB1_16
.LBB1_16:                               #   in Loop: Header=BB1_6 Depth=1
.Ltmp54:
	mov	esi, offset .L.str.3
	mov	rdi, qword ptr [rbp - 1208] # 8-byte Reload
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp55:
	mov	qword ptr [rbp - 1216], rax # 8-byte Spill
	jmp	.LBB1_17
.LBB1_17:                               #   in Loop: Header=BB1_6 Depth=1
	movsxd	rsi, dword ptr [rbp - 1092]
.Ltmp56:
	lea	rdi, [rbp - 32]
	call	_ZNSt6vectorI5PointSaIS0_EE2atEm
.Ltmp57:
	mov	qword ptr [rbp - 1224], rax # 8-byte Spill
	jmp	.LBB1_18
.LBB1_18:                               #   in Loop: Header=BB1_6 Depth=1
	mov	rax, qword ptr [rbp - 1224] # 8-byte Reload
	mov	esi, dword ptr [rax + 12]
.Ltmp58:
	mov	rdi, qword ptr [rbp - 1216] # 8-byte Reload
	call	_ZNSolsEi
.Ltmp59:
	mov	qword ptr [rbp - 1232], rax # 8-byte Spill
	jmp	.LBB1_19
.LBB1_19:                               #   in Loop: Header=BB1_6 Depth=1
.Ltmp60:
	mov	esi, offset .L.str.3
	mov	rdi, qword ptr [rbp - 1232] # 8-byte Reload
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp61:
	mov	qword ptr [rbp - 1240], rax # 8-byte Spill
	jmp	.LBB1_20
.LBB1_20:                               #   in Loop: Header=BB1_6 Depth=1
	movsxd	rsi, dword ptr [rbp - 1092]
.Ltmp62:
	lea	rdi, [rbp - 32]
	call	_ZNSt6vectorI5PointSaIS0_EE2atEm
.Ltmp63:
	mov	qword ptr [rbp - 1248], rax # 8-byte Spill
	jmp	.LBB1_21
.LBB1_21:                               #   in Loop: Header=BB1_6 Depth=1
	mov	rax, qword ptr [rbp - 1248] # 8-byte Reload
	mov	esi, dword ptr [rax + 16]
.Ltmp64:
	mov	rdi, qword ptr [rbp - 1240] # 8-byte Reload
	call	_ZNSolsEi
.Ltmp65:
	mov	qword ptr [rbp - 1256], rax # 8-byte Spill
	jmp	.LBB1_22
.LBB1_22:                               #   in Loop: Header=BB1_6 Depth=1
.Ltmp66:
	mov	esi, offset _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	mov	rdi, qword ptr [rbp - 1256] # 8-byte Reload
	call	_ZNSolsEPFRSoS_E
.Ltmp67:
	jmp	.LBB1_23
.LBB1_23:                               #   in Loop: Header=BB1_6 Depth=1
	jmp	.LBB1_27
.LBB1_24:
.Ltmp4:
                                        # kill: def $edx killed $edx killed $rdx
	mov	qword ptr [rbp - 48], rax
	mov	dword ptr [rbp - 52], edx
	jmp	.LBB1_54
.LBB1_25:
.Ltmp7:
                                        # kill: def $edx killed $edx killed $rdx
	mov	qword ptr [rbp - 48], rax
	mov	dword ptr [rbp - 52], edx
	jmp	.LBB1_53
.LBB1_26:
.Ltmp88:
                                        # kill: def $edx killed $edx killed $rdx
	mov	qword ptr [rbp - 48], rax
	mov	dword ptr [rbp - 52], edx
	lea	rdi, [rbp - 1088]
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	jmp	.LBB1_53
.LBB1_27:                               #   in Loop: Header=BB1_6 Depth=1
	lea	rdi, [rbp - 576]
	movsxd	rsi, dword ptr [rbp - 1092]
.Ltmp68:
	lea	rax, [rbp - 32]
	mov	qword ptr [rbp - 1264], rdi # 8-byte Spill
	mov	rdi, rax
	call	_ZNSt6vectorI5PointSaIS0_EE2atEm
.Ltmp69:
	mov	qword ptr [rbp - 1272], rax # 8-byte Spill
	jmp	.LBB1_28
.LBB1_28:                               #   in Loop: Header=BB1_6 Depth=1
	mov	rax, qword ptr [rbp - 1272] # 8-byte Reload
	mov	esi, dword ptr [rax]
.Ltmp70:
	mov	rdi, qword ptr [rbp - 1264] # 8-byte Reload
	call	_ZNSolsEi
.Ltmp71:
	mov	qword ptr [rbp - 1280], rax # 8-byte Spill
	jmp	.LBB1_29
.LBB1_29:                               #   in Loop: Header=BB1_6 Depth=1
.Ltmp72:
	mov	esi, offset .L.str.3
	mov	rdi, qword ptr [rbp - 1280] # 8-byte Reload
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp73:
	mov	qword ptr [rbp - 1288], rax # 8-byte Spill
	jmp	.LBB1_30
.LBB1_30:                               #   in Loop: Header=BB1_6 Depth=1
	movsxd	rsi, dword ptr [rbp - 1092]
.Ltmp74:
	lea	rdi, [rbp - 32]
	call	_ZNSt6vectorI5PointSaIS0_EE2atEm
.Ltmp75:
	mov	qword ptr [rbp - 1296], rax # 8-byte Spill
	jmp	.LBB1_31
.LBB1_31:                               #   in Loop: Header=BB1_6 Depth=1
	mov	rax, qword ptr [rbp - 1296] # 8-byte Reload
	mov	esi, dword ptr [rax + 4]
.Ltmp76:
	mov	rdi, qword ptr [rbp - 1288] # 8-byte Reload
	call	_ZNSolsEi
.Ltmp77:
	mov	qword ptr [rbp - 1304], rax # 8-byte Spill
	jmp	.LBB1_32
.LBB1_32:                               #   in Loop: Header=BB1_6 Depth=1
.Ltmp78:
	mov	esi, offset .L.str.3
	mov	rdi, qword ptr [rbp - 1304] # 8-byte Reload
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp79:
	mov	qword ptr [rbp - 1312], rax # 8-byte Spill
	jmp	.LBB1_33
.LBB1_33:                               #   in Loop: Header=BB1_6 Depth=1
	movsxd	rsi, dword ptr [rbp - 1092]
.Ltmp80:
	lea	rdi, [rbp - 32]
	call	_ZNSt6vectorI5PointSaIS0_EE2atEm
.Ltmp81:
	mov	qword ptr [rbp - 1320], rax # 8-byte Spill
	jmp	.LBB1_34
.LBB1_34:                               #   in Loop: Header=BB1_6 Depth=1
	mov	rax, qword ptr [rbp - 1320] # 8-byte Reload
	mov	esi, dword ptr [rax + 8]
.Ltmp82:
	mov	rdi, qword ptr [rbp - 1312] # 8-byte Reload
	call	_ZNSolsEi
.Ltmp83:
	mov	qword ptr [rbp - 1328], rax # 8-byte Spill
	jmp	.LBB1_35
.LBB1_35:                               #   in Loop: Header=BB1_6 Depth=1
.Ltmp84:
	mov	esi, offset .L.str.4
	mov	rdi, qword ptr [rbp - 1328] # 8-byte Reload
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp85:
	mov	qword ptr [rbp - 1336], rax # 8-byte Spill
	jmp	.LBB1_36
.LBB1_36:                               #   in Loop: Header=BB1_6 Depth=1
.Ltmp86:
	mov	esi, offset _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	mov	rdi, qword ptr [rbp - 1336] # 8-byte Reload
	call	_ZNSolsEPFRSoS_E
.Ltmp87:
	jmp	.LBB1_37
.LBB1_37:                               #   in Loop: Header=BB1_6 Depth=1
	jmp	.LBB1_38
.LBB1_38:                               #   in Loop: Header=BB1_6 Depth=1
	mov	eax, dword ptr [rbp - 1092]
	add	eax, 1
	mov	dword ptr [rbp - 1092], eax
	jmp	.LBB1_6
.LBB1_39:
.Ltmp12:
	lea	rdi, [rbp - 576]
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv
.Ltmp13:
	jmp	.LBB1_40
.LBB1_40:
.Ltmp14:
	lea	rdi, [rbp - 64]
	lea	rsi, [rbp - 40]
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
.Ltmp15:
	mov	qword ptr [rbp - 1344], rax # 8-byte Spill
	jmp	.LBB1_41
.LBB1_41:
	mov	rax, qword ptr [rbp - 1344] # 8-byte Reload
	mov	qword ptr [rbp - 1112], rax
.Ltmp16:
	lea	rdi, [rbp - 1104]
	lea	rsi, [rbp - 1112]
	call	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
.Ltmp17:
	jmp	.LBB1_42
.LBB1_42:
	mov	rsi, qword ptr [rip + numIterations]
.Ltmp18:
	lea	rdi, [rbp - 1088]
	call	_ZNSolsEl
.Ltmp19:
	mov	qword ptr [rbp - 1352], rax # 8-byte Spill
	jmp	.LBB1_43
.LBB1_43:
.Ltmp20:
	mov	esi, offset .L.str.5
	mov	rdi, qword ptr [rbp - 1352] # 8-byte Reload
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp21:
	mov	qword ptr [rbp - 1360], rax # 8-byte Spill
	jmp	.LBB1_44
.LBB1_44:
.Ltmp22:
	lea	rdi, [rbp - 1104]
	call	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv
.Ltmp23:
	movsd	qword ptr [rbp - 1368], xmm0 # 8-byte Spill
	jmp	.LBB1_45
.LBB1_45:
.Ltmp24:
	mov	rdi, qword ptr [rbp - 1360] # 8-byte Reload
	movsd	xmm0, qword ptr [rbp - 1368] # 8-byte Reload
                                        # xmm0 = mem[0],zero
	call	_ZNSolsEd
.Ltmp25:
	mov	qword ptr [rbp - 1376], rax # 8-byte Spill
	jmp	.LBB1_46
.LBB1_46:
.Ltmp26:
	mov	esi, offset .L.str.6
	mov	rdi, qword ptr [rbp - 1376] # 8-byte Reload
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp27:
	mov	qword ptr [rbp - 1384], rax # 8-byte Spill
	jmp	.LBB1_47
.LBB1_47:
.Ltmp28:
	mov	esi, 1920
	mov	rdi, qword ptr [rbp - 1384] # 8-byte Reload
	call	_ZNSolsEi
.Ltmp29:
	mov	qword ptr [rbp - 1392], rax # 8-byte Spill
	jmp	.LBB1_48
.LBB1_48:
.Ltmp30:
	mov	esi, offset .L.str.7
	mov	rdi, qword ptr [rbp - 1392] # 8-byte Reload
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp31:
	mov	qword ptr [rbp - 1400], rax # 8-byte Spill
	jmp	.LBB1_49
.LBB1_49:
.Ltmp32:
	mov	esi, 1080
	mov	rdi, qword ptr [rbp - 1400] # 8-byte Reload
	call	_ZNSolsEi
.Ltmp33:
	mov	qword ptr [rbp - 1408], rax # 8-byte Spill
	jmp	.LBB1_50
.LBB1_50:
.Ltmp34:
	mov	esi, offset _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	mov	rdi, qword ptr [rbp - 1408] # 8-byte Reload
	call	_ZNSolsEPFRSoS_E
.Ltmp35:
	jmp	.LBB1_51
.LBB1_51:
.Ltmp36:
	lea	rdi, [rbp - 1088]
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv
.Ltmp37:
	jmp	.LBB1_52
.LBB1_52:
	mov	dword ptr [rbp - 4], 0
	lea	rdi, [rbp - 1088]
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	lea	rdi, [rbp - 576]
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	lea	rdi, [rbp - 32]
	call	_ZNSt6vectorI5PointSaIS0_EED2Ev
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 1408
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.LBB1_53:
	.cfi_def_cfa rbp, 16
	lea	rdi, [rbp - 576]
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
.LBB1_54:
	lea	rdi, [rbp - 32]
	call	_ZNSt6vectorI5PointSaIS0_EED2Ev
# %bb.55:
	mov	rdi, qword ptr [rbp - 48]
	call	_Unwind_Resume
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table1:
.Lexception0:
	.byte	255                     # @LPStart Encoding = omit
	.byte	255                     # @TType Encoding = omit
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0   # >> Call Site 1 <<
	.uleb128 .Ltmp3-.Ltmp0          #   Call between .Ltmp0 and .Ltmp3
	.uleb128 .Ltmp4-.Lfunc_begin0   #     jumps to .Ltmp4
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp5-.Lfunc_begin0   # >> Call Site 2 <<
	.uleb128 .Ltmp6-.Ltmp5          #   Call between .Ltmp5 and .Ltmp6
	.uleb128 .Ltmp7-.Lfunc_begin0   #     jumps to .Ltmp7
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp8-.Lfunc_begin0   # >> Call Site 3 <<
	.uleb128 .Ltmp37-.Ltmp8         #   Call between .Ltmp8 and .Ltmp37
	.uleb128 .Ltmp88-.Lfunc_begin0  #     jumps to .Ltmp88
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin0  # >> Call Site 4 <<
	.uleb128 .Lfunc_end1-.Ltmp37    #   Call between .Ltmp37 and .Lfunc_end1
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lcst_end0:
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt6vectorI5PointSaIS0_EEC2Ev,"axG",@progbits,_ZNSt6vectorI5PointSaIS0_EEC2Ev,comdat
	.weak	_ZNSt6vectorI5PointSaIS0_EEC2Ev # -- Begin function _ZNSt6vectorI5PointSaIS0_EEC2Ev
	.p2align	4, 0x90
	.type	_ZNSt6vectorI5PointSaIS0_EEC2Ev,@function
_ZNSt6vectorI5PointSaIS0_EEC2Ev:        # @_ZNSt6vectorI5PointSaIS0_EEC2Ev
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseI5PointSaIS0_EEC2Ev
	add	rsp, 16
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end2:
	.size	_ZNSt6vectorI5PointSaIS0_EEC2Ev, .Lfunc_end2-_ZNSt6vectorI5PointSaIS0_EEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function _Z18unoptimized_EscapePSt6vectorI5PointSaIS0_EE
.LCPI3_0:
	.quad	4607722850755301868     # double 1.1200000000000001
.LCPI3_1:
	.quad	4612226450382672364     # double 2.2400000000000002
.LCPI3_2:
	.quad	4652464705678344192     # double 1080
.LCPI3_3:
	.quad	4611686018427387904     # double 2
.LCPI3_4:
	.quad	4612744364339819971     # double 2.4700000000000002
.LCPI3_5:
	.quad	4656159064747671552     # double 1920
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI3_6:
	.long	1082130432              # float 4
.LCPI3_7:
	.long	1073741824              # float 2
	.text
	.globl	_Z18unoptimized_EscapePSt6vectorI5PointSaIS0_EE
	.p2align	4, 0x90
	.type	_Z18unoptimized_EscapePSt6vectorI5PointSaIS0_EE,@function
_Z18unoptimized_EscapePSt6vectorI5PointSaIS0_EE: # @_Z18unoptimized_EscapePSt6vectorI5PointSaIS0_EE
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 128
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], 0
.LBB3_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
                                        #       Child Loop BB3_5 Depth 3
	cmp	dword ptr [rbp - 12], 1920
	jge	.LBB3_17
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	mov	dword ptr [rbp - 16], 0
.LBB3_3:                                #   Parent Loop BB3_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_5 Depth 3
	cmp	dword ptr [rbp - 16], 1080
	jge	.LBB3_15
# %bb.4:                                #   in Loop: Header=BB3_3 Depth=2
	movsd	xmm0, qword ptr [rip + .LCPI3_0] # xmm0 = mem[0],zero
	movsd	xmm1, qword ptr [rip + .LCPI3_1] # xmm1 = mem[0],zero
	movsd	xmm2, qword ptr [rip + .LCPI3_2] # xmm2 = mem[0],zero
	movsd	xmm3, qword ptr [rip + .LCPI3_3] # xmm3 = mem[0],zero
	movsd	xmm4, qword ptr [rip + .LCPI3_4] # xmm4 = mem[0],zero
	movsd	xmm5, qword ptr [rip + .LCPI3_5] # xmm5 = mem[0],zero
	cvtsi2sd	xmm6, dword ptr [rbp - 12]
	divsd	xmm6, xmm5
	mulsd	xmm6, xmm4
	subsd	xmm6, xmm3
	cvtsd2ss	xmm3, xmm6
	movss	dword ptr [rbp - 20], xmm3
	cvtsi2sd	xmm3, dword ptr [rbp - 16]
	divsd	xmm3, xmm2
	mulsd	xmm3, xmm1
	subsd	xmm3, xmm0
	cvtsd2ss	xmm0, xmm3
	movss	dword ptr [rbp - 24], xmm0
	xorps	xmm0, xmm0
	movss	dword ptr [rbp - 28], xmm0
	movss	dword ptr [rbp - 32], xmm0
	mov	dword ptr [rbp - 36], 0
.LBB3_5:                                #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	movss	xmm0, dword ptr [rip + .LCPI3_6] # xmm0 = mem[0],zero,zero,zero
	movss	xmm1, dword ptr [rbp - 28] # xmm1 = mem[0],zero,zero,zero
	mulss	xmm1, dword ptr [rbp - 28]
	movss	xmm2, dword ptr [rbp - 32] # xmm2 = mem[0],zero,zero,zero
	mulss	xmm2, dword ptr [rbp - 32]
	addss	xmm1, xmm2
	ucomiss	xmm0, xmm1
	mov	byte ptr [rbp - 113], al # 1-byte Spill
	jb	.LBB3_7
# %bb.6:                                #   in Loop: Header=BB3_5 Depth=3
	cmp	dword ptr [rbp - 36], 5000
	setl	al
	mov	byte ptr [rbp - 113], al # 1-byte Spill
.LBB3_7:                                #   in Loop: Header=BB3_5 Depth=3
	mov	al, byte ptr [rbp - 113] # 1-byte Reload
	test	al, 1
	jne	.LBB3_8
	jmp	.LBB3_9
.LBB3_8:                                #   in Loop: Header=BB3_5 Depth=3
	movss	xmm0, dword ptr [rip + .LCPI3_7] # xmm0 = mem[0],zero,zero,zero
	movss	xmm1, dword ptr [rbp - 28] # xmm1 = mem[0],zero,zero,zero
	mulss	xmm1, dword ptr [rbp - 28]
	movss	xmm2, dword ptr [rbp - 32] # xmm2 = mem[0],zero,zero,zero
	mulss	xmm2, dword ptr [rbp - 32]
	subss	xmm1, xmm2
	addss	xmm1, dword ptr [rbp - 20]
	movss	dword ptr [rbp - 40], xmm1
	mulss	xmm0, dword ptr [rbp - 28]
	mulss	xmm0, dword ptr [rbp - 32]
	addss	xmm0, dword ptr [rbp - 24]
	movss	dword ptr [rbp - 32], xmm0
	movss	xmm0, dword ptr [rbp - 40] # xmm0 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 28], xmm0
	mov	eax, dword ptr [rbp - 36]
	add	eax, 1
	mov	dword ptr [rbp - 36], eax
	jmp	.LBB3_5
.LBB3_9:                                #   in Loop: Header=BB3_3 Depth=2
	cmp	dword ptr [rbp - 12], 0
	jne	.LBB3_11
# %bb.10:                               #   in Loop: Header=BB3_3 Depth=2
	cmp	dword ptr [rbp - 16], 0
	je	.LBB3_12
.LBB3_11:                               #   in Loop: Header=BB3_3 Depth=2
	mov	eax, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 88], eax
	mov	eax, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 84], eax
	mov	eax, dword ptr [rbp - 36]
	mov	dword ptr [rbp - 80], eax
	mov	dword ptr [rbp - 76], 0
	mov	dword ptr [rbp - 72], 0
	mov	rcx, qword ptr [rbp - 88]
	mov	qword ptr [rbp - 64], rcx
	mov	rcx, qword ptr [rbp - 80]
	mov	qword ptr [rbp - 56], rcx
	mov	eax, dword ptr [rbp - 72]
	mov	dword ptr [rbp - 48], eax
	jmp	.LBB3_13
.LBB3_12:                               #   in Loop: Header=BB3_3 Depth=2
	mov	eax, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 112], eax
	mov	eax, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 108], eax
	mov	eax, dword ptr [rbp - 36]
	mov	dword ptr [rbp - 104], eax
	mov	dword ptr [rbp - 100], 1920
	mov	dword ptr [rbp - 96], 1080
	mov	rcx, qword ptr [rbp - 112]
	mov	qword ptr [rbp - 64], rcx
	mov	rcx, qword ptr [rbp - 104]
	mov	qword ptr [rbp - 56], rcx
	mov	eax, dword ptr [rbp - 96]
	mov	dword ptr [rbp - 48], eax
.LBB3_13:                               #   in Loop: Header=BB3_3 Depth=2
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rbp - 64]
	call	_ZNSt6vectorI5PointSaIS0_EE9push_backERKS0_
	mov	rax, qword ptr [numIterations]
	add	rax, 1
	mov	qword ptr [numIterations], rax
# %bb.14:                               #   in Loop: Header=BB3_3 Depth=2
	mov	eax, dword ptr [rbp - 16]
	add	eax, 1
	mov	dword ptr [rbp - 16], eax
	jmp	.LBB3_3
.LBB3_15:                               #   in Loop: Header=BB3_1 Depth=1
	mov	rax, qword ptr [numIterations]
	add	rax, 1
	mov	qword ptr [numIterations], rax
# %bb.16:                               #   in Loop: Header=BB3_1 Depth=1
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
	jmp	.LBB3_1
.LBB3_17:
	add	rsp, 128
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end3:
	.size	_Z18unoptimized_EscapePSt6vectorI5PointSaIS0_EE, .Lfunc_end3-_Z18unoptimized_EscapePSt6vectorI5PointSaIS0_EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6vectorI5PointSaIS0_EE4sizeEv,"axG",@progbits,_ZNKSt6vectorI5PointSaIS0_EE4sizeEv,comdat
	.weak	_ZNKSt6vectorI5PointSaIS0_EE4sizeEv # -- Begin function _ZNKSt6vectorI5PointSaIS0_EE4sizeEv
	.p2align	4, 0x90
	.type	_ZNKSt6vectorI5PointSaIS0_EE4sizeEv,@function
_ZNKSt6vectorI5PointSaIS0_EE4sizeEv:    # @_ZNKSt6vectorI5PointSaIS0_EE4sizeEv
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	sub	rcx, rax
	mov	rax, rcx
	cqo
	mov	ecx, 20
	idiv	rcx
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end4:
	.size	_ZNKSt6vectorI5PointSaIS0_EE4sizeEv, .Lfunc_end4-_ZNKSt6vectorI5PointSaIS0_EE4sizeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorI5PointSaIS0_EE2atEm,"axG",@progbits,_ZNSt6vectorI5PointSaIS0_EE2atEm,comdat
	.weak	_ZNSt6vectorI5PointSaIS0_EE2atEm # -- Begin function _ZNSt6vectorI5PointSaIS0_EE2atEm
	.p2align	4, 0x90
	.type	_ZNSt6vectorI5PointSaIS0_EE2atEm,@function
_ZNSt6vectorI5PointSaIS0_EE2atEm:       # @_ZNSt6vectorI5PointSaIS0_EE2atEm
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rax, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 16]
	mov	rdi, rax
	mov	qword ptr [rbp - 24], rax # 8-byte Spill
	call	_ZNKSt6vectorI5PointSaIS0_EE14_M_range_checkEm
	mov	rsi, qword ptr [rbp - 16]
	mov	rdi, qword ptr [rbp - 24] # 8-byte Reload
	call	_ZNSt6vectorI5PointSaIS0_EEixEm
	add	rsp, 32
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end5:
	.size	_ZNSt6vectorI5PointSaIS0_EE2atEm, .Lfunc_end5-_ZNSt6vectorI5PointSaIS0_EE2atEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE,"axG",@progbits,_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE,comdat
	.weak	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE # -- Begin function _ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.p2align	4, 0x90
	.type	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE,@function
_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE: # @_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 24], rsi
	mov	rdi, qword ptr [rbp - 16]
	call	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	mov	qword ptr [rbp - 32], rax
	mov	rdi, qword ptr [rbp - 24]
	call	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	mov	qword ptr [rbp - 40], rax
	lea	rdi, [rbp - 32]
	lea	rsi, [rbp - 40]
	call	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 48
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end6:
	.size	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE, .Lfunc_end6-_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE,"axG",@progbits,_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE,comdat
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE # -- Begin function _ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.p2align	4, 0x90
	.type	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE,@function
_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE: # @_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 32], rax # 8-byte Spill
	call	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE
	movsd	qword ptr [rbp - 24], xmm0
	lea	rdi, [rbp - 24]
	call	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv
	mov	rax, qword ptr [rbp - 32] # 8-byte Reload
	movsd	qword ptr [rax], xmm0
	add	rsp, 32
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end7:
	.size	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE, .Lfunc_end7-_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv,"axG",@progbits,_ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv,comdat
	.weak	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv # -- Begin function _ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv
	.p2align	4, 0x90
	.type	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv,@function
_ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv: # @_ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	movsd	xmm0, qword ptr [rax]   # xmm0 = mem[0],zero
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end8:
	.size	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv, .Lfunc_end8-_ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorI5PointSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI5PointSaIS0_EED2Ev,comdat
	.weak	_ZNSt6vectorI5PointSaIS0_EED2Ev # -- Begin function _ZNSt6vectorI5PointSaIS0_EED2Ev
	.p2align	4, 0x90
	.type	_ZNSt6vectorI5PointSaIS0_EED2Ev,@function
_ZNSt6vectorI5PointSaIS0_EED2Ev:        # @_ZNSt6vectorI5PointSaIS0_EED2Ev
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception1
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rax + 8]
	mov	qword ptr [rbp - 32], rdi # 8-byte Spill
	mov	rdi, rax
	mov	qword ptr [rbp - 40], rax # 8-byte Spill
	mov	qword ptr [rbp - 48], rsi # 8-byte Spill
	call	_ZNSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv
.Ltmp89:
	mov	rdi, qword ptr [rbp - 32] # 8-byte Reload
	mov	rsi, qword ptr [rbp - 48] # 8-byte Reload
	mov	rdx, rax
	call	_ZSt8_DestroyIP5PointS0_EvT_S2_RSaIT0_E
.Ltmp90:
	jmp	.LBB9_1
.LBB9_1:
	mov	rax, qword ptr [rbp - 40] # 8-byte Reload
	mov	rdi, rax
	call	_ZNSt12_Vector_baseI5PointSaIS0_EED2Ev
	add	rsp, 48
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.LBB9_2:
	.cfi_def_cfa rbp, 16
.Ltmp91:
                                        # kill: def $edx killed $edx killed $rdx
	mov	qword ptr [rbp - 16], rax
	mov	dword ptr [rbp - 20], edx
	mov	rax, qword ptr [rbp - 40] # 8-byte Reload
	mov	rdi, rax
	call	_ZNSt12_Vector_baseI5PointSaIS0_EED2Ev
# %bb.3:
	mov	rdi, qword ptr [rbp - 16]
	call	__clang_call_terminate
.Lfunc_end9:
	.size	_ZNSt6vectorI5PointSaIS0_EED2Ev, .Lfunc_end9-_ZNSt6vectorI5PointSaIS0_EED2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table9:
.Lexception1:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp89-.Lfunc_begin1  # >> Call Site 1 <<
	.uleb128 .Ltmp90-.Ltmp89        #   Call between .Ltmp89 and .Ltmp90
	.uleb128 .Ltmp91-.Lfunc_begin1  #     jumps to .Ltmp91
	.byte	1                       #   On action: 1
.Lcst_end1:
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
.Lttbase0:
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt6vectorI5PointSaIS0_EE9push_backERKS0_,"axG",@progbits,_ZNSt6vectorI5PointSaIS0_EE9push_backERKS0_,comdat
	.weak	_ZNSt6vectorI5PointSaIS0_EE9push_backERKS0_ # -- Begin function _ZNSt6vectorI5PointSaIS0_EE9push_backERKS0_
	.p2align	4, 0x90
	.type	_ZNSt6vectorI5PointSaIS0_EE9push_backERKS0_,@function
_ZNSt6vectorI5PointSaIS0_EE9push_backERKS0_: # @_ZNSt6vectorI5PointSaIS0_EE9push_backERKS0_
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 8]
	cmp	rcx, qword ptr [rax + 16]
	mov	qword ptr [rbp - 32], rax # 8-byte Spill
	je	.LBB10_2
# %bb.1:
	mov	rax, qword ptr [rbp - 32] # 8-byte Reload
	mov	rcx, qword ptr [rbp - 32] # 8-byte Reload
	mov	rsi, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rbp - 16]
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaI5PointEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_
	mov	rax, qword ptr [rbp - 32] # 8-byte Reload
	mov	rcx, qword ptr [rax + 8]
	add	rcx, 20
	mov	qword ptr [rax + 8], rcx
	jmp	.LBB10_3
.LBB10_2:
	mov	rdi, qword ptr [rbp - 32] # 8-byte Reload
	call	_ZNSt6vectorI5PointSaIS0_EE3endEv
	mov	qword ptr [rbp - 24], rax
	mov	rdx, qword ptr [rbp - 16]
	mov	rsi, qword ptr [rbp - 24]
	mov	rdi, qword ptr [rbp - 32] # 8-byte Reload
	call	_ZNSt6vectorI5PointSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
.LBB10_3:
	add	rsp, 32
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end10:
	.size	_ZNSt6vectorI5PointSaIS0_EE9push_backERKS0_, .Lfunc_end10-_ZNSt6vectorI5PointSaIS0_EE9push_backERKS0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseI5PointSaIS0_EEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI5PointSaIS0_EEC2Ev,comdat
	.weak	_ZNSt12_Vector_baseI5PointSaIS0_EEC2Ev # -- Begin function _ZNSt12_Vector_baseI5PointSaIS0_EEC2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseI5PointSaIS0_EEC2Ev,@function
_ZNSt12_Vector_baseI5PointSaIS0_EEC2Ev: # @_ZNSt12_Vector_baseI5PointSaIS0_EEC2Ev
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	_ZNSt12_Vector_baseI5PointSaIS0_EE12_Vector_implC2Ev
	add	rsp, 16
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end11:
	.size	_ZNSt12_Vector_baseI5PointSaIS0_EEC2Ev, .Lfunc_end11-_ZNSt12_Vector_baseI5PointSaIS0_EEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseI5PointSaIS0_EE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI5PointSaIS0_EE12_Vector_implC2Ev,comdat
	.weak	_ZNSt12_Vector_baseI5PointSaIS0_EE12_Vector_implC2Ev # -- Begin function _ZNSt12_Vector_baseI5PointSaIS0_EE12_Vector_implC2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseI5PointSaIS0_EE12_Vector_implC2Ev,@function
_ZNSt12_Vector_baseI5PointSaIS0_EE12_Vector_implC2Ev: # @_ZNSt12_Vector_baseI5PointSaIS0_EE12_Vector_implC2Ev
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	mov	rdi, rcx
	mov	qword ptr [rbp - 16], rax # 8-byte Spill
	call	_ZNSaI5PointEC2Ev
	mov	rax, qword ptr [rbp - 16] # 8-byte Reload
	mov	rdi, rax
	call	_ZNSt12_Vector_baseI5PointSaIS0_EE17_Vector_impl_dataC2Ev
	add	rsp, 16
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end12:
	.size	_ZNSt12_Vector_baseI5PointSaIS0_EE12_Vector_implC2Ev, .Lfunc_end12-_ZNSt12_Vector_baseI5PointSaIS0_EE12_Vector_implC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSaI5PointEC2Ev,"axG",@progbits,_ZNSaI5PointEC2Ev,comdat
	.weak	_ZNSaI5PointEC2Ev       # -- Begin function _ZNSaI5PointEC2Ev
	.p2align	4, 0x90
	.type	_ZNSaI5PointEC2Ev,@function
_ZNSaI5PointEC2Ev:                      # @_ZNSaI5PointEC2Ev
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	_ZN9__gnu_cxx13new_allocatorI5PointEC2Ev
	add	rsp, 16
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end13:
	.size	_ZNSaI5PointEC2Ev, .Lfunc_end13-_ZNSaI5PointEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseI5PointSaIS0_EE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI5PointSaIS0_EE17_Vector_impl_dataC2Ev,comdat
	.weak	_ZNSt12_Vector_baseI5PointSaIS0_EE17_Vector_impl_dataC2Ev # -- Begin function _ZNSt12_Vector_baseI5PointSaIS0_EE17_Vector_impl_dataC2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseI5PointSaIS0_EE17_Vector_impl_dataC2Ev,@function
_ZNSt12_Vector_baseI5PointSaIS0_EE17_Vector_impl_dataC2Ev: # @_ZNSt12_Vector_baseI5PointSaIS0_EE17_Vector_impl_dataC2Ev
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax], 0
	mov	qword ptr [rax + 8], 0
	mov	qword ptr [rax + 16], 0
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end14:
	.size	_ZNSt12_Vector_baseI5PointSaIS0_EE17_Vector_impl_dataC2Ev, .Lfunc_end14-_ZNSt12_Vector_baseI5PointSaIS0_EE17_Vector_impl_dataC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorI5PointEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI5PointEC2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorI5PointEC2Ev # -- Begin function _ZN9__gnu_cxx13new_allocatorI5PointEC2Ev
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorI5PointEC2Ev,@function
_ZN9__gnu_cxx13new_allocatorI5PointEC2Ev: # @_ZN9__gnu_cxx13new_allocatorI5PointEC2Ev
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end15:
	.size	_ZN9__gnu_cxx13new_allocatorI5PointEC2Ev, .Lfunc_end15-_ZN9__gnu_cxx13new_allocatorI5PointEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,"axG",@progbits,_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,comdat
	.weak	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_ # -- Begin function _ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.p2align	4, 0x90
	.type	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,@function
_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_: # @_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 64
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 24], rsi
	mov	rax, qword ptr [rbp - 16]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 40], rax
	lea	rdi, [rbp - 40]
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	mov	rcx, qword ptr [rbp - 24]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 48], rcx
	lea	rdi, [rbp - 48]
	mov	qword ptr [rbp - 56], rax # 8-byte Spill
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	mov	rcx, qword ptr [rbp - 56] # 8-byte Reload
	sub	rcx, rax
	mov	qword ptr [rbp - 32], rcx
	lea	rdi, [rbp - 8]
	lea	rsi, [rbp - 32]
	call	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 64
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end16:
	.size	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_, .Lfunc_end16-_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv,"axG",@progbits,_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv,comdat
	.weak	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv # -- Begin function _ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.p2align	4, 0x90
	.type	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv,@function
_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv: # @_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 16], rdi
	mov	rax, qword ptr [rbp - 16]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end17:
	.size	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv, .Lfunc_end17-_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv,"axG",@progbits,_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv,comdat
	.weak	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv # -- Begin function _ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	.p2align	4, 0x90
	.type	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv,@function
_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv: # @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end18:
	.size	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv, .Lfunc_end18-_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_,"axG",@progbits,_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_,comdat
	.weak	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_ # -- Begin function _ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_
	.p2align	4, 0x90
	.type	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_,@function
_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_: # @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 16]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rax], rcx
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end19:
	.size	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_, .Lfunc_end19-_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE,"axG",@progbits,_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE,comdat
	.weak	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE # -- Begin function _ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE
	.p2align	4, 0x90
	.type	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE,@function
_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE: # @_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 16], rdi
	mov	rdi, qword ptr [rbp - 16]
	call	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE
	movsd	qword ptr [rbp - 8], xmm0
	movsd	xmm0, qword ptr [rbp - 8] # xmm0 = mem[0],zero
	add	rsp, 16
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end20:
	.size	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE, .Lfunc_end20-_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function _ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE
.LCPI21_0:
	.quad	4696837146684686336     # double 1.0E+6
	.section	.text._ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE,"axG",@progbits,_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE,comdat
	.weak	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE
	.p2align	4, 0x90
	.type	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE,@function
_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE: # @_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 16], rdi
	mov	rdi, qword ptr [rbp - 16]
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	movsd	xmm0, qword ptr [rip + .LCPI21_0] # xmm0 = mem[0],zero
	cvtsi2sd	xmm1, rax
	divsd	xmm1, xmm0
	movsd	qword ptr [rbp - 24], xmm1
	lea	rdi, [rbp - 8]
	lea	rsi, [rbp - 24]
	call	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IdvEERKT_
	movsd	xmm0, qword ptr [rbp - 8] # xmm0 = mem[0],zero
	add	rsp, 32
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end21:
	.size	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE, .Lfunc_end21-_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IdvEERKT_,"axG",@progbits,_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IdvEERKT_,comdat
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IdvEERKT_ # -- Begin function _ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IdvEERKT_
	.p2align	4, 0x90
	.type	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IdvEERKT_,@function
_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IdvEERKT_: # @_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IdvEERKT_
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 16]
	movsd	xmm0, qword ptr [rcx]   # xmm0 = mem[0],zero
	movsd	qword ptr [rax], xmm0
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end22:
	.size	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IdvEERKT_, .Lfunc_end22-_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IdvEERKT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt8_DestroyIP5PointS0_EvT_S2_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIP5PointS0_EvT_S2_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIP5PointS0_EvT_S2_RSaIT0_E # -- Begin function _ZSt8_DestroyIP5PointS0_EvT_S2_RSaIT0_E
	.p2align	4, 0x90
	.type	_ZSt8_DestroyIP5PointS0_EvT_S2_RSaIT0_E,@function
_ZSt8_DestroyIP5PointS0_EvT_S2_RSaIT0_E: # @_ZSt8_DestroyIP5PointS0_EvT_S2_RSaIT0_E
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 16]
	call	_ZSt8_DestroyIP5PointEvT_S2_
	add	rsp, 32
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end23:
	.size	_ZSt8_DestroyIP5PointS0_EvT_S2_RSaIT0_E, .Lfunc_end23-_ZSt8_DestroyIP5PointS0_EvT_S2_RSaIT0_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv,comdat
	.weak	_ZNSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv # -- Begin function _ZNSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv,@function
_ZNSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv: # @_ZNSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end24:
	.size	_ZNSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv, .Lfunc_end24-_ZNSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseI5PointSaIS0_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseI5PointSaIS0_EED2Ev,comdat
	.weak	_ZNSt12_Vector_baseI5PointSaIS0_EED2Ev # -- Begin function _ZNSt12_Vector_baseI5PointSaIS0_EED2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseI5PointSaIS0_EED2Ev,@function
_ZNSt12_Vector_baseI5PointSaIS0_EED2Ev: # @_ZNSt12_Vector_baseI5PointSaIS0_EED2Ev
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception2
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax]
	mov	rdx, qword ptr [rax + 16]
	sub	rdx, rcx
	sar	rdx, 2
	movabs	rsi, -3689348814741910323
	imul	rdx, rsi
.Ltmp92:
	mov	rdi, rax
	mov	rsi, rcx
	mov	qword ptr [rbp - 32], rax # 8-byte Spill
	call	_ZNSt12_Vector_baseI5PointSaIS0_EE13_M_deallocateEPS0_m
.Ltmp93:
	jmp	.LBB25_1
.LBB25_1:
	mov	rdi, qword ptr [rbp - 32] # 8-byte Reload
	call	_ZNSt12_Vector_baseI5PointSaIS0_EE12_Vector_implD2Ev
	add	rsp, 32
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.LBB25_2:
	.cfi_def_cfa rbp, 16
.Ltmp94:
                                        # kill: def $edx killed $edx killed $rdx
	mov	qword ptr [rbp - 16], rax
	mov	dword ptr [rbp - 20], edx
	mov	rdi, qword ptr [rbp - 32] # 8-byte Reload
	call	_ZNSt12_Vector_baseI5PointSaIS0_EE12_Vector_implD2Ev
# %bb.3:
	mov	rdi, qword ptr [rbp - 16]
	call	__clang_call_terminate
.Lfunc_end25:
	.size	_ZNSt12_Vector_baseI5PointSaIS0_EED2Ev, .Lfunc_end25-_ZNSt12_Vector_baseI5PointSaIS0_EED2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table25:
.Lexception2:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp92-.Lfunc_begin2  # >> Call Site 1 <<
	.uleb128 .Ltmp93-.Ltmp92        #   Call between .Ltmp92 and .Ltmp93
	.uleb128 .Ltmp94-.Lfunc_begin2  #     jumps to .Ltmp94
	.byte	1                       #   On action: 1
.Lcst_end2:
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
.Lttbase1:
	.p2align	2
                                        # -- End function
	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate  # -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	4, 0x90
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
# %bb.0:
	push	rax
	call	__cxa_begin_catch
	mov	qword ptr [rsp], rax    # 8-byte Spill
	call	_ZSt9terminatev
.Lfunc_end26:
	.size	__clang_call_terminate, .Lfunc_end26-__clang_call_terminate
                                        # -- End function
	.section	.text._ZSt8_DestroyIP5PointEvT_S2_,"axG",@progbits,_ZSt8_DestroyIP5PointEvT_S2_,comdat
	.weak	_ZSt8_DestroyIP5PointEvT_S2_ # -- Begin function _ZSt8_DestroyIP5PointEvT_S2_
	.p2align	4, 0x90
	.type	_ZSt8_DestroyIP5PointEvT_S2_,@function
_ZSt8_DestroyIP5PointEvT_S2_:           # @_ZSt8_DestroyIP5PointEvT_S2_
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 16]
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIP5PointEEvT_S4_
	add	rsp, 16
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end27:
	.size	_ZSt8_DestroyIP5PointEvT_S2_, .Lfunc_end27-_ZSt8_DestroyIP5PointEvT_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIP5PointEEvT_S4_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIP5PointEEvT_S4_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIP5PointEEvT_S4_ # -- Begin function _ZNSt12_Destroy_auxILb1EE9__destroyIP5PointEEvT_S4_
	.p2align	4, 0x90
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIP5PointEEvT_S4_,@function
_ZNSt12_Destroy_auxILb1EE9__destroyIP5PointEEvT_S4_: # @_ZNSt12_Destroy_auxILb1EE9__destroyIP5PointEEvT_S4_
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end28:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIP5PointEEvT_S4_, .Lfunc_end28-_ZNSt12_Destroy_auxILb1EE9__destroyIP5PointEEvT_S4_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseI5PointSaIS0_EE13_M_deallocateEPS0_m,"axG",@progbits,_ZNSt12_Vector_baseI5PointSaIS0_EE13_M_deallocateEPS0_m,comdat
	.weak	_ZNSt12_Vector_baseI5PointSaIS0_EE13_M_deallocateEPS0_m # -- Begin function _ZNSt12_Vector_baseI5PointSaIS0_EE13_M_deallocateEPS0_m
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseI5PointSaIS0_EE13_M_deallocateEPS0_m,@function
_ZNSt12_Vector_baseI5PointSaIS0_EE13_M_deallocateEPS0_m: # @_ZNSt12_Vector_baseI5PointSaIS0_EE13_M_deallocateEPS0_m
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], rdx
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rbp - 16], 0
	mov	qword ptr [rbp - 32], rax # 8-byte Spill
	je	.LBB29_2
# %bb.1:
	mov	rax, qword ptr [rbp - 32] # 8-byte Reload
	mov	rsi, qword ptr [rbp - 16]
	mov	rdx, qword ptr [rbp - 24]
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaI5PointEE10deallocateERS1_PS0_m
.LBB29_2:
	add	rsp, 32
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end29:
	.size	_ZNSt12_Vector_baseI5PointSaIS0_EE13_M_deallocateEPS0_m, .Lfunc_end29-_ZNSt12_Vector_baseI5PointSaIS0_EE13_M_deallocateEPS0_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseI5PointSaIS0_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseI5PointSaIS0_EE12_Vector_implD2Ev,comdat
	.weak	_ZNSt12_Vector_baseI5PointSaIS0_EE12_Vector_implD2Ev # -- Begin function _ZNSt12_Vector_baseI5PointSaIS0_EE12_Vector_implD2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseI5PointSaIS0_EE12_Vector_implD2Ev,@function
_ZNSt12_Vector_baseI5PointSaIS0_EE12_Vector_implD2Ev: # @_ZNSt12_Vector_baseI5PointSaIS0_EE12_Vector_implD2Ev
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	_ZNSaI5PointED2Ev
	add	rsp, 16
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end30:
	.size	_ZNSt12_Vector_baseI5PointSaIS0_EE12_Vector_implD2Ev, .Lfunc_end30-_ZNSt12_Vector_baseI5PointSaIS0_EE12_Vector_implD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaI5PointEE10deallocateERS1_PS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaI5PointEE10deallocateERS1_PS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaI5PointEE10deallocateERS1_PS0_m # -- Begin function _ZNSt16allocator_traitsISaI5PointEE10deallocateERS1_PS0_m
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaI5PointEE10deallocateERS1_PS0_m,@function
_ZNSt16allocator_traitsISaI5PointEE10deallocateERS1_PS0_m: # @_ZNSt16allocator_traitsISaI5PointEE10deallocateERS1_PS0_m
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], rdx
	mov	rax, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 16]
	mov	rdx, qword ptr [rbp - 24]
	mov	rdi, rax
	call	_ZN9__gnu_cxx13new_allocatorI5PointE10deallocateEPS1_m
	add	rsp, 32
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end31:
	.size	_ZNSt16allocator_traitsISaI5PointEE10deallocateERS1_PS0_m, .Lfunc_end31-_ZNSt16allocator_traitsISaI5PointEE10deallocateERS1_PS0_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorI5PointE10deallocateEPS1_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI5PointE10deallocateEPS1_m,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorI5PointE10deallocateEPS1_m # -- Begin function _ZN9__gnu_cxx13new_allocatorI5PointE10deallocateEPS1_m
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorI5PointE10deallocateEPS1_m,@function
_ZN9__gnu_cxx13new_allocatorI5PointE10deallocateEPS1_m: # @_ZN9__gnu_cxx13new_allocatorI5PointE10deallocateEPS1_m
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], rdx
	mov	rax, qword ptr [rbp - 16]
	mov	rdi, rax
	call	_ZdlPv
	add	rsp, 32
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end32:
	.size	_ZN9__gnu_cxx13new_allocatorI5PointE10deallocateEPS1_m, .Lfunc_end32-_ZN9__gnu_cxx13new_allocatorI5PointE10deallocateEPS1_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSaI5PointED2Ev,"axG",@progbits,_ZNSaI5PointED2Ev,comdat
	.weak	_ZNSaI5PointED2Ev       # -- Begin function _ZNSaI5PointED2Ev
	.p2align	4, 0x90
	.type	_ZNSaI5PointED2Ev,@function
_ZNSaI5PointED2Ev:                      # @_ZNSaI5PointED2Ev
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	_ZN9__gnu_cxx13new_allocatorI5PointED2Ev
	add	rsp, 16
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end33:
	.size	_ZNSaI5PointED2Ev, .Lfunc_end33-_ZNSaI5PointED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorI5PointED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI5PointED2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorI5PointED2Ev # -- Begin function _ZN9__gnu_cxx13new_allocatorI5PointED2Ev
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorI5PointED2Ev,@function
_ZN9__gnu_cxx13new_allocatorI5PointED2Ev: # @_ZN9__gnu_cxx13new_allocatorI5PointED2Ev
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end34:
	.size	_ZN9__gnu_cxx13new_allocatorI5PointED2Ev, .Lfunc_end34-_ZN9__gnu_cxx13new_allocatorI5PointED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6vectorI5PointSaIS0_EE14_M_range_checkEm,"axG",@progbits,_ZNKSt6vectorI5PointSaIS0_EE14_M_range_checkEm,comdat
	.weak	_ZNKSt6vectorI5PointSaIS0_EE14_M_range_checkEm # -- Begin function _ZNKSt6vectorI5PointSaIS0_EE14_M_range_checkEm
	.p2align	4, 0x90
	.type	_ZNKSt6vectorI5PointSaIS0_EE14_M_range_checkEm,@function
_ZNKSt6vectorI5PointSaIS0_EE14_M_range_checkEm: # @_ZNKSt6vectorI5PointSaIS0_EE14_M_range_checkEm
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 16]
	mov	rdi, rax
	mov	qword ptr [rbp - 24], rax # 8-byte Spill
	mov	qword ptr [rbp - 32], rcx # 8-byte Spill
	call	_ZNKSt6vectorI5PointSaIS0_EE4sizeEv
	mov	rcx, qword ptr [rbp - 32] # 8-byte Reload
	cmp	rcx, rax
	jb	.LBB35_2
# %bb.1:
	mov	rsi, qword ptr [rbp - 16]
	mov	rdi, qword ptr [rbp - 24] # 8-byte Reload
	mov	qword ptr [rbp - 40], rsi # 8-byte Spill
	call	_ZNKSt6vectorI5PointSaIS0_EE4sizeEv
	movabs	rdi, offset .L.str.8
	mov	rsi, qword ptr [rbp - 40] # 8-byte Reload
	mov	rdx, rax
	mov	al, 0
	call	_ZSt24__throw_out_of_range_fmtPKcz
.LBB35_2:
	add	rsp, 48
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end35:
	.size	_ZNKSt6vectorI5PointSaIS0_EE14_M_range_checkEm, .Lfunc_end35-_ZNKSt6vectorI5PointSaIS0_EE14_M_range_checkEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorI5PointSaIS0_EEixEm,"axG",@progbits,_ZNSt6vectorI5PointSaIS0_EEixEm,comdat
	.weak	_ZNSt6vectorI5PointSaIS0_EEixEm # -- Begin function _ZNSt6vectorI5PointSaIS0_EEixEm
	.p2align	4, 0x90
	.type	_ZNSt6vectorI5PointSaIS0_EEixEm,@function
_ZNSt6vectorI5PointSaIS0_EEixEm:        # @_ZNSt6vectorI5PointSaIS0_EEixEm
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	imul	rcx, qword ptr [rbp - 16], 20
	add	rax, rcx
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end36:
	.size	_ZNSt6vectorI5PointSaIS0_EEixEm, .Lfunc_end36-_ZNSt6vectorI5PointSaIS0_EEixEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaI5PointEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaI5PointEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_,comdat
	.weak	_ZNSt16allocator_traitsISaI5PointEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_ # -- Begin function _ZNSt16allocator_traitsISaI5PointEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaI5PointEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_,@function
_ZNSt16allocator_traitsISaI5PointEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_: # @_ZNSt16allocator_traitsISaI5PointEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], rdx
	mov	rax, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 16]
	mov	rdi, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 32], rax # 8-byte Spill
	mov	qword ptr [rbp - 40], rsi # 8-byte Spill
	call	_ZSt7forwardIRK5PointEOT_RNSt16remove_referenceIS3_E4typeE
	mov	rdi, qword ptr [rbp - 32] # 8-byte Reload
	mov	rsi, qword ptr [rbp - 40] # 8-byte Reload
	mov	rdx, rax
	call	_ZN9__gnu_cxx13new_allocatorI5PointE9constructIS1_JRKS1_EEEvPT_DpOT0_
	add	rsp, 48
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end37:
	.size	_ZNSt16allocator_traitsISaI5PointEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_, .Lfunc_end37-_ZNSt16allocator_traitsISaI5PointEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorI5PointSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_,"axG",@progbits,_ZNSt6vectorI5PointSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_,comdat
	.weak	_ZNSt6vectorI5PointSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_ # -- Begin function _ZNSt6vectorI5PointSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
	.p2align	4, 0x90
	.type	_ZNSt6vectorI5PointSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_,@function
_ZNSt6vectorI5PointSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_: # @_ZNSt6vectorI5PointSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 160
	mov	qword ptr [rbp - 8], rsi
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 24], rdx
	mov	rax, qword ptr [rbp - 16]
	mov	rdi, rax
	mov	esi, 1
	movabs	rdx, offset .L.str.9
	mov	qword ptr [rbp - 88], rax # 8-byte Spill
	call	_ZNKSt6vectorI5PointSaIS0_EE12_M_check_lenEmPKc
	mov	qword ptr [rbp - 32], rax
	mov	rax, qword ptr [rbp - 88] # 8-byte Reload
	mov	rcx, qword ptr [rax]
	mov	qword ptr [rbp - 40], rcx
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp - 48], rcx
	mov	rdi, rax
	call	_ZNSt6vectorI5PointSaIS0_EE5beginEv
	mov	qword ptr [rbp - 64], rax
	lea	rdi, [rbp - 8]
	lea	rsi, [rbp - 64]
	call	_ZN9__gnu_cxxmiIP5PointSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	mov	qword ptr [rbp - 56], rax
	mov	rax, qword ptr [rbp - 88] # 8-byte Reload
	mov	rsi, qword ptr [rbp - 32]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseI5PointSaIS0_EE11_M_allocateEm
	mov	qword ptr [rbp - 72], rax
	mov	rax, qword ptr [rbp - 72]
	mov	qword ptr [rbp - 80], rax
	mov	rax, qword ptr [rbp - 88] # 8-byte Reload
	mov	rcx, qword ptr [rbp - 72]
	imul	rdx, qword ptr [rbp - 56], 20
	add	rcx, rdx
	mov	rdi, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 96], rax # 8-byte Spill
	mov	qword ptr [rbp - 104], rcx # 8-byte Spill
	call	_ZSt7forwardIRK5PointEOT_RNSt16remove_referenceIS3_E4typeE
	mov	rdi, qword ptr [rbp - 96] # 8-byte Reload
	mov	rsi, qword ptr [rbp - 104] # 8-byte Reload
	mov	rdx, rax
	call	_ZNSt16allocator_traitsISaI5PointEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_
	mov	qword ptr [rbp - 80], 0
	mov	rdi, qword ptr [rbp - 40]
	lea	rax, [rbp - 8]
	mov	qword ptr [rbp - 112], rdi # 8-byte Spill
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEE4baseEv
	mov	rsi, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 72]
	mov	rax, qword ptr [rbp - 88] # 8-byte Reload
	mov	rdi, rax
	mov	qword ptr [rbp - 120], rsi # 8-byte Spill
	mov	qword ptr [rbp - 128], rdx # 8-byte Spill
	call	_ZNSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv
	mov	rdi, qword ptr [rbp - 112] # 8-byte Reload
	mov	rsi, qword ptr [rbp - 120] # 8-byte Reload
	mov	rdx, qword ptr [rbp - 128] # 8-byte Reload
	mov	rcx, rax
	call	_ZNSt6vectorI5PointSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	mov	qword ptr [rbp - 80], rax
	mov	rax, qword ptr [rbp - 80]
	add	rax, 20
	mov	qword ptr [rbp - 80], rax
	lea	rdi, [rbp - 8]
	call	_ZNK9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEE4baseEv
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rbp - 48]
	mov	rdx, qword ptr [rbp - 80]
	mov	rax, qword ptr [rbp - 88] # 8-byte Reload
	mov	qword ptr [rbp - 136], rdi # 8-byte Spill
	mov	rdi, rax
	mov	qword ptr [rbp - 144], rsi # 8-byte Spill
	mov	qword ptr [rbp - 152], rdx # 8-byte Spill
	call	_ZNSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv
	mov	rdi, qword ptr [rbp - 136] # 8-byte Reload
	mov	rsi, qword ptr [rbp - 144] # 8-byte Reload
	mov	rdx, qword ptr [rbp - 152] # 8-byte Reload
	mov	rcx, rax
	call	_ZNSt6vectorI5PointSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	mov	qword ptr [rbp - 80], rax
	mov	rax, qword ptr [rbp - 88] # 8-byte Reload
	mov	rsi, qword ptr [rbp - 40]
	mov	rcx, qword ptr [rbp - 88] # 8-byte Reload
	mov	rdx, qword ptr [rcx + 16]
	mov	rdi, qword ptr [rbp - 40]
	sub	rdx, rdi
	mov	qword ptr [rbp - 160], rax # 8-byte Spill
	mov	rax, rdx
	cqo
	mov	edi, 20
	idiv	rdi
	mov	rdi, qword ptr [rbp - 160] # 8-byte Reload
	mov	rdx, rax
	call	_ZNSt12_Vector_baseI5PointSaIS0_EE13_M_deallocateEPS0_m
	mov	rax, qword ptr [rbp - 72]
	mov	rcx, qword ptr [rbp - 88] # 8-byte Reload
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 80]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 72]
	imul	rdx, qword ptr [rbp - 32], 20
	add	rax, rdx
	mov	qword ptr [rcx + 16], rax
	add	rsp, 160
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end38:
	.size	_ZNSt6vectorI5PointSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_, .Lfunc_end38-_ZNSt6vectorI5PointSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorI5PointSaIS0_EE3endEv,"axG",@progbits,_ZNSt6vectorI5PointSaIS0_EE3endEv,comdat
	.weak	_ZNSt6vectorI5PointSaIS0_EE3endEv # -- Begin function _ZNSt6vectorI5PointSaIS0_EE3endEv
	.p2align	4, 0x90
	.type	_ZNSt6vectorI5PointSaIS0_EE3endEv,@function
_ZNSt6vectorI5PointSaIS0_EE3endEv:      # @_ZNSt6vectorI5PointSaIS0_EE3endEv
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 16], rdi
	mov	rax, qword ptr [rbp - 16]
	add	rax, 8
	lea	rdi, [rbp - 8]
	mov	rsi, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEEC2ERKS2_
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 16
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end39:
	.size	_ZNSt6vectorI5PointSaIS0_EE3endEv, .Lfunc_end39-_ZNSt6vectorI5PointSaIS0_EE3endEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorI5PointE9constructIS1_JRKS1_EEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI5PointE9constructIS1_JRKS1_EEEvPT_DpOT0_,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorI5PointE9constructIS1_JRKS1_EEEvPT_DpOT0_ # -- Begin function _ZN9__gnu_cxx13new_allocatorI5PointE9constructIS1_JRKS1_EEEvPT_DpOT0_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorI5PointE9constructIS1_JRKS1_EEEvPT_DpOT0_,@function
_ZN9__gnu_cxx13new_allocatorI5PointE9constructIS1_JRKS1_EEEvPT_DpOT0_: # @_ZN9__gnu_cxx13new_allocatorI5PointE9constructIS1_JRKS1_EEEvPT_DpOT0_
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], rdx
	mov	rax, qword ptr [rbp - 16]
	mov	rdi, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 32], rax # 8-byte Spill
	call	_ZSt7forwardIRK5PointEOT_RNSt16remove_referenceIS3_E4typeE
	mov	rcx, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 32] # 8-byte Reload
	mov	qword ptr [rdx], rcx
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rdx + 8], rcx
	mov	r8d, dword ptr [rax + 16]
	mov	dword ptr [rdx + 16], r8d
	add	rsp, 32
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end40:
	.size	_ZN9__gnu_cxx13new_allocatorI5PointE9constructIS1_JRKS1_EEEvPT_DpOT0_, .Lfunc_end40-_ZN9__gnu_cxx13new_allocatorI5PointE9constructIS1_JRKS1_EEEvPT_DpOT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt7forwardIRK5PointEOT_RNSt16remove_referenceIS3_E4typeE,"axG",@progbits,_ZSt7forwardIRK5PointEOT_RNSt16remove_referenceIS3_E4typeE,comdat
	.weak	_ZSt7forwardIRK5PointEOT_RNSt16remove_referenceIS3_E4typeE # -- Begin function _ZSt7forwardIRK5PointEOT_RNSt16remove_referenceIS3_E4typeE
	.p2align	4, 0x90
	.type	_ZSt7forwardIRK5PointEOT_RNSt16remove_referenceIS3_E4typeE,@function
_ZSt7forwardIRK5PointEOT_RNSt16remove_referenceIS3_E4typeE: # @_ZSt7forwardIRK5PointEOT_RNSt16remove_referenceIS3_E4typeE
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end41:
	.size	_ZSt7forwardIRK5PointEOT_RNSt16remove_referenceIS3_E4typeE, .Lfunc_end41-_ZSt7forwardIRK5PointEOT_RNSt16remove_referenceIS3_E4typeE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6vectorI5PointSaIS0_EE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorI5PointSaIS0_EE12_M_check_lenEmPKc,comdat
	.weak	_ZNKSt6vectorI5PointSaIS0_EE12_M_check_lenEmPKc # -- Begin function _ZNKSt6vectorI5PointSaIS0_EE12_M_check_lenEmPKc
	.p2align	4, 0x90
	.type	_ZNKSt6vectorI5PointSaIS0_EE12_M_check_lenEmPKc,@function
_ZNKSt6vectorI5PointSaIS0_EE12_M_check_lenEmPKc: # @_ZNKSt6vectorI5PointSaIS0_EE12_M_check_lenEmPKc
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 96
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], rdx
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	qword ptr [rbp - 48], rax # 8-byte Spill
	call	_ZNKSt6vectorI5PointSaIS0_EE8max_sizeEv
	mov	rdi, qword ptr [rbp - 48] # 8-byte Reload
	mov	qword ptr [rbp - 56], rax # 8-byte Spill
	call	_ZNKSt6vectorI5PointSaIS0_EE4sizeEv
	mov	rcx, qword ptr [rbp - 56] # 8-byte Reload
	sub	rcx, rax
	cmp	rcx, qword ptr [rbp - 16]
	jae	.LBB42_2
# %bb.1:
	mov	rdi, qword ptr [rbp - 24]
	call	_ZSt20__throw_length_errorPKc
.LBB42_2:
	mov	rdi, qword ptr [rbp - 48] # 8-byte Reload
	call	_ZNKSt6vectorI5PointSaIS0_EE4sizeEv
	mov	rdi, qword ptr [rbp - 48] # 8-byte Reload
	mov	qword ptr [rbp - 64], rax # 8-byte Spill
	call	_ZNKSt6vectorI5PointSaIS0_EE4sizeEv
	mov	qword ptr [rbp - 40], rax
	lea	rdi, [rbp - 40]
	lea	rsi, [rbp - 16]
	call	_ZSt3maxImERKT_S2_S2_
	mov	rcx, qword ptr [rbp - 64] # 8-byte Reload
	add	rcx, qword ptr [rax]
	mov	qword ptr [rbp - 32], rcx
	mov	rax, qword ptr [rbp - 32]
	mov	rdi, qword ptr [rbp - 48] # 8-byte Reload
	mov	qword ptr [rbp - 72], rax # 8-byte Spill
	call	_ZNKSt6vectorI5PointSaIS0_EE4sizeEv
	mov	rcx, qword ptr [rbp - 72] # 8-byte Reload
	cmp	rcx, rax
	jb	.LBB42_4
# %bb.3:
	mov	rax, qword ptr [rbp - 32]
	mov	rdi, qword ptr [rbp - 48] # 8-byte Reload
	mov	qword ptr [rbp - 80], rax # 8-byte Spill
	call	_ZNKSt6vectorI5PointSaIS0_EE8max_sizeEv
	mov	rcx, qword ptr [rbp - 80] # 8-byte Reload
	cmp	rcx, rax
	jbe	.LBB42_5
.LBB42_4:
	mov	rdi, qword ptr [rbp - 48] # 8-byte Reload
	call	_ZNKSt6vectorI5PointSaIS0_EE8max_sizeEv
	mov	qword ptr [rbp - 88], rax # 8-byte Spill
	jmp	.LBB42_6
.LBB42_5:
	mov	rax, qword ptr [rbp - 32]
	mov	qword ptr [rbp - 88], rax # 8-byte Spill
.LBB42_6:
	mov	rax, qword ptr [rbp - 88] # 8-byte Reload
	add	rsp, 96
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end42:
	.size	_ZNKSt6vectorI5PointSaIS0_EE12_M_check_lenEmPKc, .Lfunc_end42-_ZNKSt6vectorI5PointSaIS0_EE12_M_check_lenEmPKc
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxxmiIP5PointSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_,"axG",@progbits,_ZN9__gnu_cxxmiIP5PointSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_,comdat
	.weak	_ZN9__gnu_cxxmiIP5PointSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_ # -- Begin function _ZN9__gnu_cxxmiIP5PointSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxxmiIP5PointSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_,@function
_ZN9__gnu_cxxmiIP5PointSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_: # @_ZN9__gnu_cxxmiIP5PointSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rdi, qword ptr [rbp - 8]
	call	_ZNK9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEE4baseEv
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 24], rax # 8-byte Spill
	call	_ZNK9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEE4baseEv
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 24] # 8-byte Reload
	sub	rcx, rax
	mov	rax, rcx
	cqo
	mov	ecx, 20
	idiv	rcx
	add	rsp, 32
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end43:
	.size	_ZN9__gnu_cxxmiIP5PointSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_, .Lfunc_end43-_ZN9__gnu_cxxmiIP5PointSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorI5PointSaIS0_EE5beginEv,"axG",@progbits,_ZNSt6vectorI5PointSaIS0_EE5beginEv,comdat
	.weak	_ZNSt6vectorI5PointSaIS0_EE5beginEv # -- Begin function _ZNSt6vectorI5PointSaIS0_EE5beginEv
	.p2align	4, 0x90
	.type	_ZNSt6vectorI5PointSaIS0_EE5beginEv,@function
_ZNSt6vectorI5PointSaIS0_EE5beginEv:    # @_ZNSt6vectorI5PointSaIS0_EE5beginEv
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 16], rdi
	mov	rax, qword ptr [rbp - 16]
	lea	rdi, [rbp - 8]
	mov	rsi, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEEC2ERKS2_
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 16
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end44:
	.size	_ZNSt6vectorI5PointSaIS0_EE5beginEv, .Lfunc_end44-_ZNSt6vectorI5PointSaIS0_EE5beginEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseI5PointSaIS0_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseI5PointSaIS0_EE11_M_allocateEm,comdat
	.weak	_ZNSt12_Vector_baseI5PointSaIS0_EE11_M_allocateEm # -- Begin function _ZNSt12_Vector_baseI5PointSaIS0_EE11_M_allocateEm
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseI5PointSaIS0_EE11_M_allocateEm,@function
_ZNSt12_Vector_baseI5PointSaIS0_EE11_M_allocateEm: # @_ZNSt12_Vector_baseI5PointSaIS0_EE11_M_allocateEm
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rbp - 16], 0
	mov	qword ptr [rbp - 24], rax # 8-byte Spill
	je	.LBB45_2
# %bb.1:
	mov	rax, qword ptr [rbp - 24] # 8-byte Reload
	mov	rsi, qword ptr [rbp - 16]
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaI5PointEE8allocateERS1_m
	mov	qword ptr [rbp - 32], rax # 8-byte Spill
	jmp	.LBB45_3
.LBB45_2:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 32], rcx # 8-byte Spill
	jmp	.LBB45_3
.LBB45_3:
	mov	rax, qword ptr [rbp - 32] # 8-byte Reload
	add	rsp, 32
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end45:
	.size	_ZNSt12_Vector_baseI5PointSaIS0_EE11_M_allocateEm, .Lfunc_end45-_ZNSt12_Vector_baseI5PointSaIS0_EE11_M_allocateEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorI5PointSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_,"axG",@progbits,_ZNSt6vectorI5PointSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_,comdat
	.weak	_ZNSt6vectorI5PointSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_ # -- Begin function _ZNSt6vectorI5PointSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	.p2align	4, 0x90
	.type	_ZNSt6vectorI5PointSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_,@function
_ZNSt6vectorI5PointSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_: # @_ZNSt6vectorI5PointSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], rdx
	mov	qword ptr [rbp - 32], rcx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 16]
	mov	rdx, qword ptr [rbp - 24]
	mov	rcx, qword ptr [rbp - 32]
	call	_ZNSt6vectorI5PointSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE
	add	rsp, 48
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end46:
	.size	_ZNSt6vectorI5PointSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_, .Lfunc_end46-_ZNSt6vectorI5PointSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEE4baseEv,comdat
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEE4baseEv # -- Begin function _ZNK9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEE4baseEv
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEE4baseEv,@function
_ZNK9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEE4baseEv: # @_ZNK9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEE4baseEv
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end47:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEE4baseEv, .Lfunc_end47-_ZNK9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEE4baseEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6vectorI5PointSaIS0_EE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorI5PointSaIS0_EE8max_sizeEv,comdat
	.weak	_ZNKSt6vectorI5PointSaIS0_EE8max_sizeEv # -- Begin function _ZNKSt6vectorI5PointSaIS0_EE8max_sizeEv
	.p2align	4, 0x90
	.type	_ZNKSt6vectorI5PointSaIS0_EE8max_sizeEv,@function
_ZNKSt6vectorI5PointSaIS0_EE8max_sizeEv: # @_ZNKSt6vectorI5PointSaIS0_EE8max_sizeEv
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	_ZNKSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv
	mov	rdi, rax
	call	_ZNSt6vectorI5PointSaIS0_EE11_S_max_sizeERKS1_
	add	rsp, 16
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end48:
	.size	_ZNKSt6vectorI5PointSaIS0_EE8max_sizeEv, .Lfunc_end48-_ZNKSt6vectorI5PointSaIS0_EE8max_sizeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.weak	_ZSt3maxImERKT_S2_S2_   # -- Begin function _ZSt3maxImERKT_S2_S2_
	.p2align	4, 0x90
	.type	_ZSt3maxImERKT_S2_S2_,@function
_ZSt3maxImERKT_S2_S2_:                  # @_ZSt3maxImERKT_S2_S2_
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 24], rsi
	mov	rax, qword ptr [rbp - 16]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 24]
	cmp	rax, qword ptr [rcx]
	jae	.LBB49_2
# %bb.1:
	mov	rax, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB49_3
.LBB49_2:
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 8], rax
.LBB49_3:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end49:
	.size	_ZSt3maxImERKT_S2_S2_, .Lfunc_end49-_ZSt3maxImERKT_S2_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorI5PointSaIS0_EE11_S_max_sizeERKS1_,"axG",@progbits,_ZNSt6vectorI5PointSaIS0_EE11_S_max_sizeERKS1_,comdat
	.weak	_ZNSt6vectorI5PointSaIS0_EE11_S_max_sizeERKS1_ # -- Begin function _ZNSt6vectorI5PointSaIS0_EE11_S_max_sizeERKS1_
	.p2align	4, 0x90
	.type	_ZNSt6vectorI5PointSaIS0_EE11_S_max_sizeERKS1_,@function
_ZNSt6vectorI5PointSaIS0_EE11_S_max_sizeERKS1_: # @_ZNSt6vectorI5PointSaIS0_EE11_S_max_sizeERKS1_
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception3
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	qword ptr [rbp - 8], rdi
	movabs	rax, 461168601842738790
	mov	qword ptr [rbp - 16], rax
	mov	rdi, qword ptr [rbp - 8]
	call	_ZNSt16allocator_traitsISaI5PointEE8max_sizeERKS1_
	mov	qword ptr [rbp - 24], rax
.Ltmp95:
	lea	rdi, [rbp - 16]
	lea	rsi, [rbp - 24]
	call	_ZSt3minImERKT_S2_S2_
.Ltmp96:
	mov	qword ptr [rbp - 32], rax # 8-byte Spill
	jmp	.LBB50_1
.LBB50_1:
	mov	rax, qword ptr [rbp - 32] # 8-byte Reload
	mov	rax, qword ptr [rax]
	add	rsp, 48
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.LBB50_2:
	.cfi_def_cfa rbp, 16
.Ltmp97:
                                        # kill: def $edx killed $edx killed $rdx
	mov	rdi, rax
	mov	dword ptr [rbp - 36], edx # 4-byte Spill
	call	__clang_call_terminate
.Lfunc_end50:
	.size	_ZNSt6vectorI5PointSaIS0_EE11_S_max_sizeERKS1_, .Lfunc_end50-_ZNSt6vectorI5PointSaIS0_EE11_S_max_sizeERKS1_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table50:
.Lexception3:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp95-.Lfunc_begin3  # >> Call Site 1 <<
	.uleb128 .Ltmp96-.Ltmp95        #   Call between .Ltmp95 and .Ltmp96
	.uleb128 .Ltmp97-.Lfunc_begin3  #     jumps to .Ltmp97
	.byte	1                       #   On action: 1
.Lcst_end3:
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
.Lttbase2:
	.p2align	2
                                        # -- End function
	.section	.text._ZNKSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv,comdat
	.weak	_ZNKSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv # -- Begin function _ZNKSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv
	.p2align	4, 0x90
	.type	_ZNKSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv,@function
_ZNKSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv: # @_ZNKSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end51:
	.size	_ZNKSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv, .Lfunc_end51-_ZNKSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaI5PointEE8max_sizeERKS1_,"axG",@progbits,_ZNSt16allocator_traitsISaI5PointEE8max_sizeERKS1_,comdat
	.weak	_ZNSt16allocator_traitsISaI5PointEE8max_sizeERKS1_ # -- Begin function _ZNSt16allocator_traitsISaI5PointEE8max_sizeERKS1_
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaI5PointEE8max_sizeERKS1_,@function
_ZNSt16allocator_traitsISaI5PointEE8max_sizeERKS1_: # @_ZNSt16allocator_traitsISaI5PointEE8max_sizeERKS1_
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx13new_allocatorI5PointE8max_sizeEv
	add	rsp, 16
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end52:
	.size	_ZNSt16allocator_traitsISaI5PointEE8max_sizeERKS1_, .Lfunc_end52-_ZNSt16allocator_traitsISaI5PointEE8max_sizeERKS1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt3minImERKT_S2_S2_,"axG",@progbits,_ZSt3minImERKT_S2_S2_,comdat
	.weak	_ZSt3minImERKT_S2_S2_   # -- Begin function _ZSt3minImERKT_S2_S2_
	.p2align	4, 0x90
	.type	_ZSt3minImERKT_S2_S2_,@function
_ZSt3minImERKT_S2_S2_:                  # @_ZSt3minImERKT_S2_S2_
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 24], rsi
	mov	rax, qword ptr [rbp - 24]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 16]
	cmp	rax, qword ptr [rcx]
	jae	.LBB53_2
# %bb.1:
	mov	rax, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB53_3
.LBB53_2:
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 8], rax
.LBB53_3:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end53:
	.size	_ZSt3minImERKT_S2_S2_, .Lfunc_end53-_ZSt3minImERKT_S2_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9__gnu_cxx13new_allocatorI5PointE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorI5PointE8max_sizeEv,comdat
	.weak	_ZNK9__gnu_cxx13new_allocatorI5PointE8max_sizeEv # -- Begin function _ZNK9__gnu_cxx13new_allocatorI5PointE8max_sizeEv
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx13new_allocatorI5PointE8max_sizeEv,@function
_ZNK9__gnu_cxx13new_allocatorI5PointE8max_sizeEv: # @_ZNK9__gnu_cxx13new_allocatorI5PointE8max_sizeEv
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	movabs	rax, 461168601842738790
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end54:
	.size	_ZNK9__gnu_cxx13new_allocatorI5PointE8max_sizeEv, .Lfunc_end54-_ZNK9__gnu_cxx13new_allocatorI5PointE8max_sizeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEEC2ERKS2_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEEC2ERKS2_,comdat
	.weak	_ZN9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEEC2ERKS2_ # -- Begin function _ZN9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEEC2ERKS2_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEEC2ERKS2_,@function
_ZN9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEEC2ERKS2_: # @_ZN9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEEC2ERKS2_
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 16]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rax], rcx
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end55:
	.size	_ZN9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEEC2ERKS2_, .Lfunc_end55-_ZN9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEEC2ERKS2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaI5PointEE8allocateERS1_m,"axG",@progbits,_ZNSt16allocator_traitsISaI5PointEE8allocateERS1_m,comdat
	.weak	_ZNSt16allocator_traitsISaI5PointEE8allocateERS1_m # -- Begin function _ZNSt16allocator_traitsISaI5PointEE8allocateERS1_m
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaI5PointEE8allocateERS1_m,@function
_ZNSt16allocator_traitsISaI5PointEE8allocateERS1_m: # @_ZNSt16allocator_traitsISaI5PointEE8allocateERS1_m
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	xor	eax, eax
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rcx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 16]
	mov	rdi, rcx
	call	_ZN9__gnu_cxx13new_allocatorI5PointE8allocateEmPKv
	add	rsp, 16
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end56:
	.size	_ZNSt16allocator_traitsISaI5PointEE8allocateERS1_m, .Lfunc_end56-_ZNSt16allocator_traitsISaI5PointEE8allocateERS1_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorI5PointE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI5PointE8allocateEmPKv,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorI5PointE8allocateEmPKv # -- Begin function _ZN9__gnu_cxx13new_allocatorI5PointE8allocateEmPKv
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorI5PointE8allocateEmPKv,@function
_ZN9__gnu_cxx13new_allocatorI5PointE8allocateEmPKv: # @_ZN9__gnu_cxx13new_allocatorI5PointE8allocateEmPKv
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 32], rax # 8-byte Spill
	call	_ZNK9__gnu_cxx13new_allocatorI5PointE8max_sizeEv
	mov	rcx, qword ptr [rbp - 32] # 8-byte Reload
	cmp	rcx, rax
	jbe	.LBB57_2
# %bb.1:
	call	_ZSt17__throw_bad_allocv
.LBB57_2:
	imul	rdi, qword ptr [rbp - 16], 20
	call	_Znwm
	add	rsp, 32
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end57:
	.size	_ZN9__gnu_cxx13new_allocatorI5PointE8allocateEmPKv, .Lfunc_end57-_ZN9__gnu_cxx13new_allocatorI5PointE8allocateEmPKv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorI5PointSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE,"axG",@progbits,_ZNSt6vectorI5PointSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE,comdat
	.weak	_ZNSt6vectorI5PointSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE # -- Begin function _ZNSt6vectorI5PointSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE
	.p2align	4, 0x90
	.type	_ZNSt6vectorI5PointSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE,@function
_ZNSt6vectorI5PointSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE: # @_ZNSt6vectorI5PointSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 24], rsi
	mov	qword ptr [rbp - 32], rdx
	mov	qword ptr [rbp - 40], rcx
	mov	rdi, qword ptr [rbp - 16]
	mov	rsi, qword ptr [rbp - 24]
	mov	rdx, qword ptr [rbp - 32]
	mov	rcx, qword ptr [rbp - 40]
	call	_ZSt12__relocate_aIP5PointS1_SaIS0_EET0_T_S4_S3_RT1_
	add	rsp, 48
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end58:
	.size	_ZNSt6vectorI5PointSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE, .Lfunc_end58-_ZNSt6vectorI5PointSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt12__relocate_aIP5PointS1_SaIS0_EET0_T_S4_S3_RT1_,"axG",@progbits,_ZSt12__relocate_aIP5PointS1_SaIS0_EET0_T_S4_S3_RT1_,comdat
	.weak	_ZSt12__relocate_aIP5PointS1_SaIS0_EET0_T_S4_S3_RT1_ # -- Begin function _ZSt12__relocate_aIP5PointS1_SaIS0_EET0_T_S4_S3_RT1_
	.p2align	4, 0x90
	.type	_ZSt12__relocate_aIP5PointS1_SaIS0_EET0_T_S4_S3_RT1_,@function
_ZSt12__relocate_aIP5PointS1_SaIS0_EET0_T_S4_S3_RT1_: # @_ZSt12__relocate_aIP5PointS1_SaIS0_EET0_T_S4_S3_RT1_
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], rdx
	mov	qword ptr [rbp - 32], rcx
	mov	rdi, qword ptr [rbp - 8]
	call	_ZSt12__niter_baseIP5PointET_S2_
	mov	rdi, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 40], rax # 8-byte Spill
	call	_ZSt12__niter_baseIP5PointET_S2_
	mov	rdi, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 48], rax # 8-byte Spill
	call	_ZSt12__niter_baseIP5PointET_S2_
	mov	rcx, qword ptr [rbp - 32]
	mov	rdi, qword ptr [rbp - 40] # 8-byte Reload
	mov	rsi, qword ptr [rbp - 48] # 8-byte Reload
	mov	rdx, rax
	call	_ZSt14__relocate_a_1I5PointS0_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS2_E4typeES3_S3_S3_RSaIT0_E
	add	rsp, 48
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end59:
	.size	_ZSt12__relocate_aIP5PointS1_SaIS0_EET0_T_S4_S3_RT1_, .Lfunc_end59-_ZSt12__relocate_aIP5PointS1_SaIS0_EET0_T_S4_S3_RT1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt14__relocate_a_1I5PointS0_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS2_E4typeES3_S3_S3_RSaIT0_E,"axG",@progbits,_ZSt14__relocate_a_1I5PointS0_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS2_E4typeES3_S3_S3_RSaIT0_E,comdat
	.weak	_ZSt14__relocate_a_1I5PointS0_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS2_E4typeES3_S3_S3_RSaIT0_E # -- Begin function _ZSt14__relocate_a_1I5PointS0_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS2_E4typeES3_S3_S3_RSaIT0_E
	.p2align	4, 0x90
	.type	_ZSt14__relocate_a_1I5PointS0_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS2_E4typeES3_S3_S3_RSaIT0_E,@function
_ZSt14__relocate_a_1I5PointS0_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS2_E4typeES3_S3_S3_RSaIT0_E: # @_ZSt14__relocate_a_1I5PointS0_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS2_E4typeES3_S3_S3_RSaIT0_E
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], rdx
	mov	qword ptr [rbp - 32], rcx
	mov	rax, qword ptr [rbp - 16]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cqo
	mov	ecx, 20
	idiv	rcx
	mov	qword ptr [rbp - 40], rax
	cmp	qword ptr [rbp - 40], 0
	jle	.LBB60_2
# %bb.1:
	mov	rax, qword ptr [rbp - 24]
	mov	rcx, qword ptr [rbp - 8]
	imul	rdx, qword ptr [rbp - 40], 20
	mov	rdi, rax
	mov	rsi, rcx
	call	memmove
.LBB60_2:
	mov	rax, qword ptr [rbp - 24]
	imul	rcx, qword ptr [rbp - 40], 20
	add	rax, rcx
	add	rsp, 48
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end60:
	.size	_ZSt14__relocate_a_1I5PointS0_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS2_E4typeES3_S3_S3_RSaIT0_E, .Lfunc_end60-_ZSt14__relocate_a_1I5PointS0_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS2_E4typeES3_S3_S3_RSaIT0_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt12__niter_baseIP5PointET_S2_,"axG",@progbits,_ZSt12__niter_baseIP5PointET_S2_,comdat
	.weak	_ZSt12__niter_baseIP5PointET_S2_ # -- Begin function _ZSt12__niter_baseIP5PointET_S2_
	.p2align	4, 0x90
	.type	_ZSt12__niter_baseIP5PointET_S2_,@function
_ZSt12__niter_baseIP5PointET_S2_:       # @_ZSt12__niter_baseIP5PointET_S2_
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end61:
	.size	_ZSt12__niter_baseIP5PointET_S2_, .Lfunc_end61-_ZSt12__niter_baseIP5PointET_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90         # -- Begin function _GLOBAL__sub_I_unopt_escape.cpp
	.type	_GLOBAL__sub_I_unopt_escape.cpp,@function
_GLOBAL__sub_I_unopt_escape.cpp:        # @_GLOBAL__sub_I_unopt_escape.cpp
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	call	__cxx_global_var_init
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end62:
	.size	_GLOBAL__sub_I_unopt_escape.cpp, .Lfunc_end62-_GLOBAL__sub_I_unopt_escape.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object  # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	numIterations,@object   # @numIterations
	.bss
	.globl	numIterations
	.p2align	3
numIterations:
	.quad	0                       # 0x0
	.size	numIterations, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"MandelSetOut.csv"
	.size	.L.str, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"timing_unopt.txt"
	.size	.L.str.1, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"X,Y,Iteration,sizeX,sizeY"
	.size	.L.str.2, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	","
	.size	.L.str.3, 2

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	",0,0"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	" Iterations in "
	.size	.L.str.5, 16

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"ms using params:\n X = "
	.size	.L.str.6, 23

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	", Y = "
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"vector::_M_range_check: __n (which is %zu) >= this->size() (which is %zu)"
	.size	.L.str.8, 74

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"vector::_M_realloc_insert"
	.size	.L.str.9, 26

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_unopt_escape.cpp
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __cxx_global_var_init
	.addrsig_sym __cxa_atexit
	.addrsig_sym _ZNSt6chrono3_V212system_clock3nowEv
	.addrsig_sym _Z18unoptimized_EscapePSt6vectorI5PointSaIS0_EE
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	.addrsig_sym _ZNSolsEPFRSoS_E
	.addrsig_sym _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.addrsig_sym _ZNKSt6vectorI5PointSaIS0_EE4sizeEv
	.addrsig_sym _ZNSolsEi
	.addrsig_sym _ZNSt6vectorI5PointSaIS0_EE2atEm
	.addrsig_sym _ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv
	.addrsig_sym _ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.addrsig_sym _ZNSolsEl
	.addrsig_sym _ZNSolsEd
	.addrsig_sym _ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv
	.addrsig_sym _ZNSt6vectorI5PointSaIS0_EE9push_backERKS0_
	.addrsig_sym _ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.addrsig_sym _ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.addrsig_sym _ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	.addrsig_sym _ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE
	.addrsig_sym _ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE
	.addrsig_sym _ZSt8_DestroyIP5PointS0_EvT_S2_RSaIT0_E
	.addrsig_sym _ZNSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv
	.addrsig_sym __clang_call_terminate
	.addrsig_sym __cxa_begin_catch
	.addrsig_sym _ZSt9terminatev
	.addrsig_sym _ZSt8_DestroyIP5PointEvT_S2_
	.addrsig_sym _ZNSt12_Destroy_auxILb1EE9__destroyIP5PointEEvT_S4_
	.addrsig_sym _ZNSt12_Vector_baseI5PointSaIS0_EE13_M_deallocateEPS0_m
	.addrsig_sym _ZNSt16allocator_traitsISaI5PointEE10deallocateERS1_PS0_m
	.addrsig_sym _ZN9__gnu_cxx13new_allocatorI5PointE10deallocateEPS1_m
	.addrsig_sym _ZdlPv
	.addrsig_sym _ZNKSt6vectorI5PointSaIS0_EE14_M_range_checkEm
	.addrsig_sym _ZNSt6vectorI5PointSaIS0_EEixEm
	.addrsig_sym _ZSt24__throw_out_of_range_fmtPKcz
	.addrsig_sym _ZNSt16allocator_traitsISaI5PointEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_
	.addrsig_sym _ZNSt6vectorI5PointSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
	.addrsig_sym _ZNSt6vectorI5PointSaIS0_EE3endEv
	.addrsig_sym _ZN9__gnu_cxx13new_allocatorI5PointE9constructIS1_JRKS1_EEEvPT_DpOT0_
	.addrsig_sym _ZSt7forwardIRK5PointEOT_RNSt16remove_referenceIS3_E4typeE
	.addrsig_sym _ZNKSt6vectorI5PointSaIS0_EE12_M_check_lenEmPKc
	.addrsig_sym _ZN9__gnu_cxxmiIP5PointSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	.addrsig_sym _ZNSt6vectorI5PointSaIS0_EE5beginEv
	.addrsig_sym _ZNSt12_Vector_baseI5PointSaIS0_EE11_M_allocateEm
	.addrsig_sym _ZNSt6vectorI5PointSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	.addrsig_sym _ZNK9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEE4baseEv
	.addrsig_sym _ZNKSt6vectorI5PointSaIS0_EE8max_sizeEv
	.addrsig_sym _ZSt20__throw_length_errorPKc
	.addrsig_sym _ZSt3maxImERKT_S2_S2_
	.addrsig_sym _ZNSt6vectorI5PointSaIS0_EE11_S_max_sizeERKS1_
	.addrsig_sym _ZNKSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv
	.addrsig_sym _ZNSt16allocator_traitsISaI5PointEE8max_sizeERKS1_
	.addrsig_sym _ZSt3minImERKT_S2_S2_
	.addrsig_sym _ZNK9__gnu_cxx13new_allocatorI5PointE8max_sizeEv
	.addrsig_sym _ZNSt16allocator_traitsISaI5PointEE8allocateERS1_m
	.addrsig_sym _ZN9__gnu_cxx13new_allocatorI5PointE8allocateEmPKv
	.addrsig_sym _ZSt17__throw_bad_allocv
	.addrsig_sym _Znwm
	.addrsig_sym _ZNSt6vectorI5PointSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE
	.addrsig_sym _ZSt12__relocate_aIP5PointS1_SaIS0_EET0_T_S4_S3_RT1_
	.addrsig_sym _ZSt14__relocate_a_1I5PointS0_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS2_E4typeES3_S3_S3_RSaIT0_E
	.addrsig_sym _ZSt12__niter_baseIP5PointET_S2_
	.addrsig_sym _GLOBAL__sub_I_unopt_escape.cpp
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym numIterations
