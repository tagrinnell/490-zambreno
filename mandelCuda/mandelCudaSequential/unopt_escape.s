	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.intel_syntax noprefix
	.file	"unopt_escape.cpp"
	.def	main;
	.scl	2;
	.type	32;
	.endef
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
main:                                   # @main
.Lfunc_begin0:
.seh_proc main
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	push	rbp
	.seh_pushreg rbp
	sub	rsp, 1360
	.seh_stackalloc 1360
	lea	rbp, [rsp + 128]
	.seh_setframe rbp, 128
	.seh_endprologue
	call	__main
	mov	dword ptr [rbp + 1228], 0
	lea	rcx, [rbp + 1200]
	mov	qword ptr [rbp + 176], rcx      # 8-byte Spill
	call	_ZNSt6vectorI5PointSaIS0_EEC2Ev
	mov	dword ptr [rip + numIterations], 0
	call	_ZNSt6chrono3_V212system_clock3nowEv
	mov	rcx, qword ptr [rbp + 176]      # 8-byte Reload
	mov	qword ptr [rbp + 1192], rax
.Ltmp0:
	call	_Z18unoptimized_EscapePSt6vectorI5PointSaIS0_EE
.Ltmp1:
	jmp	.LBB0_1
.LBB0_1:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	mov	qword ptr [rbp + 1168], rax
.Ltmp2:
	lea	rdx, [rip + .L.str]
	lea	rcx, [rbp + 688]
	mov	r8d, 16
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.Ltmp3:
	jmp	.LBB0_2
.LBB0_2:
.Ltmp5:
	lea	rdx, [rip + .L.str.1]
	lea	rcx, [rbp + 208]
	mov	r8d, 16
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.Ltmp6:
	jmp	.LBB0_3
.LBB0_3:
.Ltmp8:
	lea	rdx, [rip + .L.str.2]
	lea	rcx, [rbp + 688]
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp9:
	mov	qword ptr [rbp + 168], rax      # 8-byte Spill
	jmp	.LBB0_4
.LBB0_4:
.Ltmp10:
	mov	rcx, qword ptr [rbp + 168]      # 8-byte Reload
	lea	rdx, [rip + _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_]
	call	_ZNSolsEPFRSoS_E
.Ltmp11:
	jmp	.LBB0_5
.LBB0_5:
	mov	dword ptr [rbp + 204], 0
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movsxd	rax, dword ptr [rbp + 204]
	mov	qword ptr [rbp + 160], rax      # 8-byte Spill
	lea	rcx, [rbp + 1200]
	call	_ZNKSt6vectorI5PointSaIS0_EE4sizeEv
	mov	rcx, rax
	mov	rax, qword ptr [rbp + 160]      # 8-byte Reload
	cmp	rax, rcx
	jae	.LBB0_39
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	cmp	dword ptr [rbp + 204], 0
	jne	.LBB0_27
# %bb.8:                                #   in Loop: Header=BB0_6 Depth=1
	movsxd	rdx, dword ptr [rbp + 204]
.Ltmp38:
	lea	rcx, [rbp + 1200]
	call	_ZNSt6vectorI5PointSaIS0_EE2atEy
.Ltmp39:
	mov	qword ptr [rbp + 152], rax      # 8-byte Spill
	jmp	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_6 Depth=1
	mov	rax, qword ptr [rbp + 152]      # 8-byte Reload
	mov	edx, dword ptr [rax]
.Ltmp40:
	lea	rcx, [rbp + 688]
	call	_ZNSolsEi
.Ltmp41:
	mov	qword ptr [rbp + 144], rax      # 8-byte Spill
	jmp	.LBB0_10
.LBB0_10:                               #   in Loop: Header=BB0_6 Depth=1
.Ltmp42:
	mov	rcx, qword ptr [rbp + 144]      # 8-byte Reload
	lea	rdx, [rip + .L.str.3]
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp43:
	mov	qword ptr [rbp + 136], rax      # 8-byte Spill
	jmp	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_6 Depth=1
	movsxd	rdx, dword ptr [rbp + 204]
.Ltmp44:
	lea	rcx, [rbp + 1200]
	call	_ZNSt6vectorI5PointSaIS0_EE2atEy
.Ltmp45:
	mov	qword ptr [rbp + 128], rax      # 8-byte Spill
	jmp	.LBB0_12
.LBB0_12:                               #   in Loop: Header=BB0_6 Depth=1
	mov	rcx, qword ptr [rbp + 136]      # 8-byte Reload
	mov	rax, qword ptr [rbp + 128]      # 8-byte Reload
	mov	edx, dword ptr [rax + 4]
.Ltmp46:
	call	_ZNSolsEi
.Ltmp47:
	mov	qword ptr [rbp + 120], rax      # 8-byte Spill
	jmp	.LBB0_13
.LBB0_13:                               #   in Loop: Header=BB0_6 Depth=1
.Ltmp48:
	mov	rcx, qword ptr [rbp + 120]      # 8-byte Reload
	lea	rdx, [rip + .L.str.3]
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp49:
	mov	qword ptr [rbp + 112], rax      # 8-byte Spill
	jmp	.LBB0_14
.LBB0_14:                               #   in Loop: Header=BB0_6 Depth=1
	movsxd	rdx, dword ptr [rbp + 204]
.Ltmp50:
	lea	rcx, [rbp + 1200]
	call	_ZNSt6vectorI5PointSaIS0_EE2atEy
.Ltmp51:
	mov	qword ptr [rbp + 104], rax      # 8-byte Spill
	jmp	.LBB0_15
.LBB0_15:                               #   in Loop: Header=BB0_6 Depth=1
	mov	rcx, qword ptr [rbp + 112]      # 8-byte Reload
	mov	rax, qword ptr [rbp + 104]      # 8-byte Reload
	mov	edx, dword ptr [rax + 8]
.Ltmp52:
	call	_ZNSolsEi
.Ltmp53:
	mov	qword ptr [rbp + 96], rax       # 8-byte Spill
	jmp	.LBB0_16
.LBB0_16:                               #   in Loop: Header=BB0_6 Depth=1
.Ltmp54:
	mov	rcx, qword ptr [rbp + 96]       # 8-byte Reload
	lea	rdx, [rip + .L.str.3]
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp55:
	mov	qword ptr [rbp + 88], rax       # 8-byte Spill
	jmp	.LBB0_17
.LBB0_17:                               #   in Loop: Header=BB0_6 Depth=1
	movsxd	rdx, dword ptr [rbp + 204]
.Ltmp56:
	lea	rcx, [rbp + 1200]
	call	_ZNSt6vectorI5PointSaIS0_EE2atEy
.Ltmp57:
	mov	qword ptr [rbp + 80], rax       # 8-byte Spill
	jmp	.LBB0_18
.LBB0_18:                               #   in Loop: Header=BB0_6 Depth=1
	mov	rcx, qword ptr [rbp + 88]       # 8-byte Reload
	mov	rax, qword ptr [rbp + 80]       # 8-byte Reload
	mov	edx, dword ptr [rax + 12]
.Ltmp58:
	call	_ZNSolsEi
.Ltmp59:
	mov	qword ptr [rbp + 72], rax       # 8-byte Spill
	jmp	.LBB0_19
.LBB0_19:                               #   in Loop: Header=BB0_6 Depth=1
.Ltmp60:
	mov	rcx, qword ptr [rbp + 72]       # 8-byte Reload
	lea	rdx, [rip + .L.str.3]
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp61:
	mov	qword ptr [rbp + 64], rax       # 8-byte Spill
	jmp	.LBB0_20
.LBB0_20:                               #   in Loop: Header=BB0_6 Depth=1
	movsxd	rdx, dword ptr [rbp + 204]
.Ltmp62:
	lea	rcx, [rbp + 1200]
	call	_ZNSt6vectorI5PointSaIS0_EE2atEy
.Ltmp63:
	mov	qword ptr [rbp + 56], rax       # 8-byte Spill
	jmp	.LBB0_21
.LBB0_21:                               #   in Loop: Header=BB0_6 Depth=1
	mov	rcx, qword ptr [rbp + 64]       # 8-byte Reload
	mov	rax, qword ptr [rbp + 56]       # 8-byte Reload
	mov	edx, dword ptr [rax + 16]
.Ltmp64:
	call	_ZNSolsEi
.Ltmp65:
	mov	qword ptr [rbp + 48], rax       # 8-byte Spill
	jmp	.LBB0_22
.LBB0_22:                               #   in Loop: Header=BB0_6 Depth=1
.Ltmp66:
	mov	rcx, qword ptr [rbp + 48]       # 8-byte Reload
	lea	rdx, [rip + _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_]
	call	_ZNSolsEPFRSoS_E
.Ltmp67:
	jmp	.LBB0_23
.LBB0_23:                               #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_27
.LBB0_24:
.Ltmp4:
	mov	rcx, rax
	mov	eax, edx
	mov	qword ptr [rbp + 1184], rcx
	mov	dword ptr [rbp + 1180], eax
	jmp	.LBB0_54
.LBB0_25:
.Ltmp7:
	mov	rcx, rax
	mov	eax, edx
	mov	qword ptr [rbp + 1184], rcx
	mov	dword ptr [rbp + 1180], eax
	jmp	.LBB0_53
.LBB0_26:
.Ltmp88:
	mov	rcx, rax
	mov	eax, edx
	mov	qword ptr [rbp + 1184], rcx
	mov	dword ptr [rbp + 1180], eax
	lea	rcx, [rbp + 208]
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	jmp	.LBB0_53
.LBB0_27:                               #   in Loop: Header=BB0_6 Depth=1
	movsxd	rdx, dword ptr [rbp + 204]
.Ltmp68:
	lea	rcx, [rbp + 1200]
	call	_ZNSt6vectorI5PointSaIS0_EE2atEy
.Ltmp69:
	mov	qword ptr [rbp + 40], rax       # 8-byte Spill
	jmp	.LBB0_28
.LBB0_28:                               #   in Loop: Header=BB0_6 Depth=1
	mov	rax, qword ptr [rbp + 40]       # 8-byte Reload
	mov	edx, dword ptr [rax]
.Ltmp70:
	lea	rcx, [rbp + 688]
	call	_ZNSolsEi
.Ltmp71:
	mov	qword ptr [rbp + 32], rax       # 8-byte Spill
	jmp	.LBB0_29
.LBB0_29:                               #   in Loop: Header=BB0_6 Depth=1
.Ltmp72:
	mov	rcx, qword ptr [rbp + 32]       # 8-byte Reload
	lea	rdx, [rip + .L.str.3]
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp73:
	mov	qword ptr [rbp + 24], rax       # 8-byte Spill
	jmp	.LBB0_30
.LBB0_30:                               #   in Loop: Header=BB0_6 Depth=1
	movsxd	rdx, dword ptr [rbp + 204]
.Ltmp74:
	lea	rcx, [rbp + 1200]
	call	_ZNSt6vectorI5PointSaIS0_EE2atEy
.Ltmp75:
	mov	qword ptr [rbp + 16], rax       # 8-byte Spill
	jmp	.LBB0_31
.LBB0_31:                               #   in Loop: Header=BB0_6 Depth=1
	mov	rcx, qword ptr [rbp + 24]       # 8-byte Reload
	mov	rax, qword ptr [rbp + 16]       # 8-byte Reload
	mov	edx, dword ptr [rax + 4]
.Ltmp76:
	call	_ZNSolsEi
.Ltmp77:
	mov	qword ptr [rbp + 8], rax        # 8-byte Spill
	jmp	.LBB0_32
.LBB0_32:                               #   in Loop: Header=BB0_6 Depth=1
.Ltmp78:
	mov	rcx, qword ptr [rbp + 8]        # 8-byte Reload
	lea	rdx, [rip + .L.str.3]
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp79:
	mov	qword ptr [rbp], rax            # 8-byte Spill
	jmp	.LBB0_33
.LBB0_33:                               #   in Loop: Header=BB0_6 Depth=1
	movsxd	rdx, dword ptr [rbp + 204]
.Ltmp80:
	lea	rcx, [rbp + 1200]
	call	_ZNSt6vectorI5PointSaIS0_EE2atEy
.Ltmp81:
	mov	qword ptr [rbp - 8], rax        # 8-byte Spill
	jmp	.LBB0_34
.LBB0_34:                               #   in Loop: Header=BB0_6 Depth=1
	mov	rcx, qword ptr [rbp]            # 8-byte Reload
	mov	rax, qword ptr [rbp - 8]        # 8-byte Reload
	mov	edx, dword ptr [rax + 8]
.Ltmp82:
	call	_ZNSolsEi
.Ltmp83:
	mov	qword ptr [rbp - 16], rax       # 8-byte Spill
	jmp	.LBB0_35
.LBB0_35:                               #   in Loop: Header=BB0_6 Depth=1
.Ltmp84:
	mov	rcx, qword ptr [rbp - 16]       # 8-byte Reload
	lea	rdx, [rip + .L.str.4]
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp85:
	mov	qword ptr [rbp - 24], rax       # 8-byte Spill
	jmp	.LBB0_36
.LBB0_36:                               #   in Loop: Header=BB0_6 Depth=1
.Ltmp86:
	mov	rcx, qword ptr [rbp - 24]       # 8-byte Reload
	lea	rdx, [rip + _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_]
	call	_ZNSolsEPFRSoS_E
.Ltmp87:
	jmp	.LBB0_37
.LBB0_37:                               #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_38
.LBB0_38:                               #   in Loop: Header=BB0_6 Depth=1
	mov	eax, dword ptr [rbp + 204]
	add	eax, 1
	mov	dword ptr [rbp + 204], eax
	jmp	.LBB0_6
.LBB0_39:
.Ltmp12:
	lea	rcx, [rbp + 688]
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv
.Ltmp13:
	jmp	.LBB0_40
.LBB0_40:
.Ltmp14:
	lea	rcx, [rbp + 1168]
	lea	rdx, [rbp + 1192]
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
.Ltmp15:
	mov	qword ptr [rbp - 32], rax       # 8-byte Spill
	jmp	.LBB0_41
.LBB0_41:
	mov	rax, qword ptr [rbp - 32]       # 8-byte Reload
	mov	qword ptr [rbp + 184], rax
.Ltmp16:
	lea	rcx, [rbp + 192]
	lea	rdx, [rbp + 184]
	call	_ZNSt6chrono8durationIdSt5ratioILx1ELx1000EEEC2IxS1_ILx1ELx1000000000EEvEERKNS0_IT_T0_EE
.Ltmp17:
	jmp	.LBB0_42
.LBB0_42:
	mov	edx, dword ptr [rip + numIterations]
.Ltmp18:
	lea	rcx, [rbp + 208]
	call	_ZNSolsEl
.Ltmp19:
	mov	qword ptr [rbp - 40], rax       # 8-byte Spill
	jmp	.LBB0_43
.LBB0_43:
.Ltmp20:
	mov	rcx, qword ptr [rbp - 40]       # 8-byte Reload
	lea	rdx, [rip + .L.str.5]
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp21:
	mov	qword ptr [rbp - 48], rax       # 8-byte Spill
	jmp	.LBB0_44
.LBB0_44:
.Ltmp22:
	lea	rcx, [rbp + 192]
	call	_ZNKSt6chrono8durationIdSt5ratioILx1ELx1000EEE5countEv
.Ltmp23:
	movsd	qword ptr [rbp - 56], xmm0      # 8-byte Spill
	jmp	.LBB0_45
.LBB0_45:
.Ltmp24:
	movsd	xmm1, qword ptr [rbp - 56]      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mov	rcx, qword ptr [rbp - 48]       # 8-byte Reload
	call	_ZNSolsEd
.Ltmp25:
	mov	qword ptr [rbp - 64], rax       # 8-byte Spill
	jmp	.LBB0_46
.LBB0_46:
.Ltmp26:
	mov	rcx, qword ptr [rbp - 64]       # 8-byte Reload
	lea	rdx, [rip + .L.str.6]
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp27:
	mov	qword ptr [rbp - 72], rax       # 8-byte Spill
	jmp	.LBB0_47
.LBB0_47:
.Ltmp28:
	mov	rcx, qword ptr [rbp - 72]       # 8-byte Reload
	mov	edx, 1920
	call	_ZNSolsEi
.Ltmp29:
	mov	qword ptr [rbp - 80], rax       # 8-byte Spill
	jmp	.LBB0_48
.LBB0_48:
.Ltmp30:
	mov	rcx, qword ptr [rbp - 80]       # 8-byte Reload
	lea	rdx, [rip + .L.str.7]
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp31:
	mov	qword ptr [rbp - 88], rax       # 8-byte Spill
	jmp	.LBB0_49
.LBB0_49:
.Ltmp32:
	mov	rcx, qword ptr [rbp - 88]       # 8-byte Reload
	mov	edx, 1080
	call	_ZNSolsEi
.Ltmp33:
	mov	qword ptr [rbp - 96], rax       # 8-byte Spill
	jmp	.LBB0_50
.LBB0_50:
.Ltmp34:
	mov	rcx, qword ptr [rbp - 96]       # 8-byte Reload
	lea	rdx, [rip + _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_]
	call	_ZNSolsEPFRSoS_E
.Ltmp35:
	jmp	.LBB0_51
.LBB0_51:
.Ltmp36:
	lea	rcx, [rbp + 208]
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv
.Ltmp37:
	jmp	.LBB0_52
.LBB0_52:
	mov	dword ptr [rbp + 1228], 0
	lea	rcx, [rbp + 208]
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	lea	rcx, [rbp + 688]
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	lea	rcx, [rbp + 1200]
	call	_ZNSt6vectorI5PointSaIS0_EED2Ev
	mov	eax, dword ptr [rbp + 1228]
	add	rsp, 1360
	pop	rbp
	ret
.LBB0_53:
	lea	rcx, [rbp + 688]
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
.LBB0_54:
	lea	rcx, [rbp + 1200]
	call	_ZNSt6vectorI5PointSaIS0_EED2Ev
# %bb.55:
	mov	rcx, qword ptr [rbp + 1184]
	call	_Unwind_Resume
	int3
.Lfunc_end0:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table0:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp3-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp3
	.uleb128 .Ltmp4-.Lfunc_begin0           #     jumps to .Ltmp4
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp5-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp6-.Ltmp5                  #   Call between .Ltmp5 and .Ltmp6
	.uleb128 .Ltmp7-.Lfunc_begin0           #     jumps to .Ltmp7
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp8-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp37-.Ltmp8                 #   Call between .Ltmp8 and .Ltmp37
	.uleb128 .Ltmp88-.Lfunc_begin0          #     jumps to .Ltmp88
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Lfunc_end0-.Ltmp37            #   Call between .Ltmp37 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZNSt6vectorI5PointSaIS0_EEC2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt6vectorI5PointSaIS0_EEC2Ev,"xr",discard,_ZNSt6vectorI5PointSaIS0_EEC2Ev
	.globl	_ZNSt6vectorI5PointSaIS0_EEC2Ev # -- Begin function _ZNSt6vectorI5PointSaIS0_EEC2Ev
	.p2align	4, 0x90
_ZNSt6vectorI5PointSaIS0_EEC2Ev:        # @_ZNSt6vectorI5PointSaIS0_EEC2Ev
.seh_proc _ZNSt6vectorI5PointSaIS0_EEC2Ev
# %bb.0:
	sub	rsp, 40
	.seh_stackalloc 40
	.seh_endprologue
	mov	qword ptr [rsp + 32], rcx
	mov	rcx, qword ptr [rsp + 32]
	call	_ZNSt12_Vector_baseI5PointSaIS0_EEC2Ev
	nop
	add	rsp, 40
	ret
	.seh_endproc
                                        # -- End function
	.def	_Z18unoptimized_EscapePSt6vectorI5PointSaIS0_EE;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.p2align	3, 0x0                          # -- Begin function _Z18unoptimized_EscapePSt6vectorI5PointSaIS0_EE
.LCPI2_0:
	.quad	0x4001eb851eb851ec              # double 2.2400000000000002
.LCPI2_1:
	.quad	0xbff1eb851eb851ec              # double -1.1200000000000001
.LCPI2_2:
	.quad	0x4090e00000000000              # double 1080
.LCPI2_3:
	.quad	0x4003c28f5c28f5c3              # double 2.4700000000000002
.LCPI2_4:
	.quad	0xc000000000000000              # double -2
.LCPI2_5:
	.quad	0x409e000000000000              # double 1920
.LCPI2_6:
	.long	0x40800000                      # float 4
.LCPI2_7:
	.long	0x40000000                      # float 2
	.text
	.globl	_Z18unoptimized_EscapePSt6vectorI5PointSaIS0_EE
	.p2align	4, 0x90
_Z18unoptimized_EscapePSt6vectorI5PointSaIS0_EE: # @_Z18unoptimized_EscapePSt6vectorI5PointSaIS0_EE
.seh_proc _Z18unoptimized_EscapePSt6vectorI5PointSaIS0_EE
# %bb.0:
	sub	rsp, 136
	.seh_stackalloc 136
	.seh_endprologue
	mov	qword ptr [rsp + 128], rcx
	mov	dword ptr [rsp + 124], 0
.LBB2_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_3 Depth 2
                                        #       Child Loop BB2_5 Depth 3
	cmp	dword ptr [rsp + 124], 1920
	jge	.LBB2_17
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	mov	dword ptr [rsp + 120], 0
.LBB2_3:                                #   Parent Loop BB2_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_5 Depth 3
	cmp	dword ptr [rsp + 120], 1080
	jge	.LBB2_15
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=2
	cvtsi2sd	xmm0, dword ptr [rsp + 124]
	movsd	xmm1, qword ptr [rip + .LCPI2_5] # xmm1 = [1.92E+3,0.0E+0]
	divsd	xmm0, xmm1
	movsd	xmm1, qword ptr [rip + .LCPI2_3] # xmm1 = [2.4700000000000002E+0,0.0E+0]
	mulsd	xmm0, xmm1
	movsd	xmm1, qword ptr [rip + .LCPI2_4] # xmm1 = [-2.0E+0,0.0E+0]
	addsd	xmm0, xmm1
	cvtsd2ss	xmm0, xmm0
	movss	dword ptr [rsp + 116], xmm0
	cvtsi2sd	xmm0, dword ptr [rsp + 120]
	movsd	xmm1, qword ptr [rip + .LCPI2_2] # xmm1 = [1.08E+3,0.0E+0]
	divsd	xmm0, xmm1
	movsd	xmm1, qword ptr [rip + .LCPI2_0] # xmm1 = [2.2400000000000002E+0,0.0E+0]
	mulsd	xmm0, xmm1
	movsd	xmm1, qword ptr [rip + .LCPI2_1] # xmm1 = [-1.1200000000000001E+0,0.0E+0]
	addsd	xmm0, xmm1
	cvtsd2ss	xmm0, xmm0
	movss	dword ptr [rsp + 112], xmm0
	xorps	xmm0, xmm0
	movss	dword ptr [rsp + 108], xmm0
	xorps	xmm0, xmm0
	movss	dword ptr [rsp + 104], xmm0
	mov	dword ptr [rsp + 100], 0
.LBB2_5:                                #   Parent Loop BB2_1 Depth=1
                                        #     Parent Loop BB2_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movss	xmm1, dword ptr [rsp + 108]     # xmm1 = mem[0],zero,zero,zero
	movss	xmm2, dword ptr [rsp + 108]     # xmm2 = mem[0],zero,zero,zero
	movss	xmm0, dword ptr [rsp + 104]     # xmm0 = mem[0],zero,zero,zero
	mulss	xmm0, dword ptr [rsp + 104]
	mulss	xmm1, xmm2
	addss	xmm1, xmm0
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	movss	xmm0, dword ptr [rip + .LCPI2_6] # xmm0 = [4.0E+0,0.0E+0,0.0E+0,0.0E+0]
	ucomiss	xmm0, xmm1
	mov	byte ptr [rsp + 35], al         # 1-byte Spill
	jb	.LBB2_7
# %bb.6:                                #   in Loop: Header=BB2_5 Depth=3
	cmp	dword ptr [rsp + 100], 5000
	setl	al
	mov	byte ptr [rsp + 35], al         # 1-byte Spill
.LBB2_7:                                #   in Loop: Header=BB2_5 Depth=3
	mov	al, byte ptr [rsp + 35]         # 1-byte Reload
	test	al, 1
	jne	.LBB2_8
	jmp	.LBB2_9
.LBB2_8:                                #   in Loop: Header=BB2_5 Depth=3
	movss	xmm0, dword ptr [rsp + 108]     # xmm0 = mem[0],zero,zero,zero
	movss	xmm2, dword ptr [rsp + 108]     # xmm2 = mem[0],zero,zero,zero
	movss	xmm1, dword ptr [rsp + 104]     # xmm1 = mem[0],zero,zero,zero
	mulss	xmm1, dword ptr [rsp + 104]
	movd	eax, xmm1
	xor	eax, 2147483648
	movd	xmm1, eax
	mulss	xmm0, xmm2
	addss	xmm0, xmm1
	addss	xmm0, dword ptr [rsp + 116]
	movss	dword ptr [rsp + 96], xmm0
	movss	xmm0, dword ptr [rip + .LCPI2_7] # xmm0 = [2.0E+0,0.0E+0,0.0E+0,0.0E+0]
	mulss	xmm0, dword ptr [rsp + 108]
	movss	xmm2, dword ptr [rsp + 104]     # xmm2 = mem[0],zero,zero,zero
	movss	xmm1, dword ptr [rsp + 112]     # xmm1 = mem[0],zero,zero,zero
	mulss	xmm0, xmm2
	addss	xmm0, xmm1
	movss	dword ptr [rsp + 104], xmm0
	movss	xmm0, dword ptr [rsp + 96]      # xmm0 = mem[0],zero,zero,zero
	movss	dword ptr [rsp + 108], xmm0
	mov	eax, dword ptr [rsp + 100]
	add	eax, 1
	mov	dword ptr [rsp + 100], eax
	jmp	.LBB2_5
.LBB2_9:                                #   in Loop: Header=BB2_3 Depth=2
	cmp	dword ptr [rsp + 124], 0
	jne	.LBB2_11
# %bb.10:                               #   in Loop: Header=BB2_3 Depth=2
	cmp	dword ptr [rsp + 120], 0
	je	.LBB2_12
.LBB2_11:                               #   in Loop: Header=BB2_3 Depth=2
	mov	eax, dword ptr [rsp + 124]
	mov	dword ptr [rsp + 56], eax
	mov	eax, dword ptr [rsp + 120]
	mov	dword ptr [rsp + 60], eax
	mov	eax, dword ptr [rsp + 100]
	mov	dword ptr [rsp + 64], eax
	mov	dword ptr [rsp + 68], 0
	mov	dword ptr [rsp + 72], 0
	mov	rax, qword ptr [rsp + 56]
	mov	qword ptr [rsp + 76], rax
	mov	rax, qword ptr [rsp + 64]
	mov	qword ptr [rsp + 84], rax
	mov	eax, dword ptr [rsp + 72]
	mov	dword ptr [rsp + 92], eax
	jmp	.LBB2_13
.LBB2_12:                               #   in Loop: Header=BB2_3 Depth=2
	mov	eax, dword ptr [rsp + 124]
	mov	dword ptr [rsp + 36], eax
	mov	eax, dword ptr [rsp + 120]
	mov	dword ptr [rsp + 40], eax
	mov	eax, dword ptr [rsp + 100]
	mov	dword ptr [rsp + 44], eax
	mov	dword ptr [rsp + 48], 1920
	mov	dword ptr [rsp + 52], 1080
	mov	rax, qword ptr [rsp + 36]
	mov	qword ptr [rsp + 76], rax
	mov	rax, qword ptr [rsp + 44]
	mov	qword ptr [rsp + 84], rax
	mov	eax, dword ptr [rsp + 52]
	mov	dword ptr [rsp + 92], eax
.LBB2_13:                               #   in Loop: Header=BB2_3 Depth=2
	mov	rcx, qword ptr [rsp + 128]
	lea	rdx, [rsp + 76]
	call	_ZNSt6vectorI5PointSaIS0_EE9push_backERKS0_
	mov	eax, dword ptr [rip + numIterations]
	add	eax, 1
	mov	dword ptr [rip + numIterations], eax
# %bb.14:                               #   in Loop: Header=BB2_3 Depth=2
	mov	eax, dword ptr [rsp + 120]
	add	eax, 1
	mov	dword ptr [rsp + 120], eax
	jmp	.LBB2_3
.LBB2_15:                               #   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [rip + numIterations]
	add	eax, 1
	mov	dword ptr [rip + numIterations], eax
# %bb.16:                               #   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [rsp + 124]
	add	eax, 1
	mov	dword ptr [rsp + 124], eax
	jmp	.LBB2_1
.LBB2_17:
	add	rsp, 136
	ret
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt6vectorI5PointSaIS0_EE4sizeEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt6vectorI5PointSaIS0_EE4sizeEv,"xr",discard,_ZNKSt6vectorI5PointSaIS0_EE4sizeEv
	.globl	_ZNKSt6vectorI5PointSaIS0_EE4sizeEv # -- Begin function _ZNKSt6vectorI5PointSaIS0_EE4sizeEv
	.p2align	4, 0x90
_ZNKSt6vectorI5PointSaIS0_EE4sizeEv:    # @_ZNKSt6vectorI5PointSaIS0_EE4sizeEv
.seh_proc _ZNKSt6vectorI5PointSaIS0_EE4sizeEv
# %bb.0:
	push	rax
	.seh_stackalloc 8
	.seh_endprologue
	mov	qword ptr [rsp], rcx
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rcx]
	sub	rax, rcx
	mov	ecx, 20
	cqo
	idiv	rcx
	pop	rcx
	ret
	.seh_endproc
                                        # -- End function
	.def	_ZNSt6vectorI5PointSaIS0_EE2atEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt6vectorI5PointSaIS0_EE2atEy,"xr",discard,_ZNSt6vectorI5PointSaIS0_EE2atEy
	.globl	_ZNSt6vectorI5PointSaIS0_EE2atEy # -- Begin function _ZNSt6vectorI5PointSaIS0_EE2atEy
	.p2align	4, 0x90
_ZNSt6vectorI5PointSaIS0_EE2atEy:       # @_ZNSt6vectorI5PointSaIS0_EE2atEy
.seh_proc _ZNSt6vectorI5PointSaIS0_EE2atEy
# %bb.0:
	sub	rsp, 56
	.seh_stackalloc 56
	.seh_endprologue
	mov	qword ptr [rsp + 48], rcx
	mov	qword ptr [rsp + 40], rdx
	mov	rcx, qword ptr [rsp + 48]
	mov	qword ptr [rsp + 32], rcx       # 8-byte Spill
	mov	rdx, qword ptr [rsp + 40]
	call	_ZNKSt6vectorI5PointSaIS0_EE14_M_range_checkEy
	mov	rcx, qword ptr [rsp + 32]       # 8-byte Reload
	mov	rdx, qword ptr [rsp + 40]
	call	_ZNSt6vectorI5PointSaIS0_EEixEy
	nop
	add	rsp, 56
	ret
	.seh_endproc
                                        # -- End function
	.def	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE,"xr",discard,_ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.globl	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE # -- Begin function _ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.p2align	4, 0x90
_ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE: # @_ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
.seh_proc _ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
# %bb.0:
	sub	rsp, 72
	.seh_stackalloc 72
	.seh_endprologue
	mov	qword ptr [rsp + 56], rcx
	mov	qword ptr [rsp + 48], rdx
	mov	rcx, qword ptr [rsp + 56]
	call	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEE16time_since_epochEv
	mov	qword ptr [rsp + 40], rax
	mov	rcx, qword ptr [rsp + 48]
	call	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEE16time_since_epochEv
	mov	qword ptr [rsp + 32], rax
	lea	rcx, [rsp + 40]
	lea	rdx, [rsp + 32]
	call	_ZNSt6chronomiIxSt5ratioILx1ELx1000000000EExS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	mov	qword ptr [rsp + 64], rax
	mov	rax, qword ptr [rsp + 64]
	add	rsp, 72
	ret
	.seh_endproc
                                        # -- End function
	.def	_ZNSt6chrono8durationIdSt5ratioILx1ELx1000EEEC2IxS1_ILx1ELx1000000000EEvEERKNS0_IT_T0_EE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt6chrono8durationIdSt5ratioILx1ELx1000EEEC2IxS1_ILx1ELx1000000000EEvEERKNS0_IT_T0_EE,"xr",discard,_ZNSt6chrono8durationIdSt5ratioILx1ELx1000EEEC2IxS1_ILx1ELx1000000000EEvEERKNS0_IT_T0_EE
	.globl	_ZNSt6chrono8durationIdSt5ratioILx1ELx1000EEEC2IxS1_ILx1ELx1000000000EEvEERKNS0_IT_T0_EE # -- Begin function _ZNSt6chrono8durationIdSt5ratioILx1ELx1000EEEC2IxS1_ILx1ELx1000000000EEvEERKNS0_IT_T0_EE
	.p2align	4, 0x90
_ZNSt6chrono8durationIdSt5ratioILx1ELx1000EEEC2IxS1_ILx1ELx1000000000EEvEERKNS0_IT_T0_EE: # @_ZNSt6chrono8durationIdSt5ratioILx1ELx1000EEEC2IxS1_ILx1ELx1000000000EEvEERKNS0_IT_T0_EE
.seh_proc _ZNSt6chrono8durationIdSt5ratioILx1ELx1000EEEC2IxS1_ILx1ELx1000000000EEvEERKNS0_IT_T0_EE
# %bb.0:
	sub	rsp, 72
	.seh_stackalloc 72
	.seh_endprologue
	mov	qword ptr [rsp + 64], rcx
	mov	qword ptr [rsp + 56], rdx
	mov	rax, qword ptr [rsp + 64]
	mov	qword ptr [rsp + 40], rax       # 8-byte Spill
	mov	rcx, qword ptr [rsp + 56]
	call	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILx1ELx1000EEEExS2_ILx1ELx1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE
	mov	qword ptr [rsp + 48], rax
	lea	rcx, [rsp + 48]
	call	_ZNKSt6chrono8durationIdSt5ratioILx1ELx1000EEE5countEv
	mov	rax, qword ptr [rsp + 40]       # 8-byte Reload
	movsd	qword ptr [rax], xmm0
	add	rsp, 72
	ret
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt6chrono8durationIdSt5ratioILx1ELx1000EEE5countEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt6chrono8durationIdSt5ratioILx1ELx1000EEE5countEv,"xr",discard,_ZNKSt6chrono8durationIdSt5ratioILx1ELx1000EEE5countEv
	.globl	_ZNKSt6chrono8durationIdSt5ratioILx1ELx1000EEE5countEv # -- Begin function _ZNKSt6chrono8durationIdSt5ratioILx1ELx1000EEE5countEv
	.p2align	4, 0x90
_ZNKSt6chrono8durationIdSt5ratioILx1ELx1000EEE5countEv: # @_ZNKSt6chrono8durationIdSt5ratioILx1ELx1000EEE5countEv
.seh_proc _ZNKSt6chrono8durationIdSt5ratioILx1ELx1000EEE5countEv
# %bb.0:
	push	rax
	.seh_stackalloc 8
	.seh_endprologue
	mov	qword ptr [rsp], rcx
	mov	rax, qword ptr [rsp]
	movsd	xmm0, qword ptr [rax]           # xmm0 = mem[0],zero
	pop	rax
	ret
	.seh_endproc
                                        # -- End function
	.def	_ZNSt6vectorI5PointSaIS0_EED2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt6vectorI5PointSaIS0_EED2Ev,"xr",discard,_ZNSt6vectorI5PointSaIS0_EED2Ev
	.globl	_ZNSt6vectorI5PointSaIS0_EED2Ev # -- Begin function _ZNSt6vectorI5PointSaIS0_EED2Ev
	.p2align	4, 0x90
_ZNSt6vectorI5PointSaIS0_EED2Ev:        # @_ZNSt6vectorI5PointSaIS0_EED2Ev
.Lfunc_begin1:
.seh_proc _ZNSt6vectorI5PointSaIS0_EED2Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	sub	rsp, 88
	.seh_stackalloc 88
	.seh_endprologue
	mov	qword ptr [rsp + 56], rcx
	mov	rcx, qword ptr [rsp + 56]
	mov	qword ptr [rsp + 32], rcx       # 8-byte Spill
	mov	rax, qword ptr [rcx]
	mov	qword ptr [rsp + 40], rax       # 8-byte Spill
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rsp + 48], rax       # 8-byte Spill
	call	_ZNSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv
	mov	rdx, qword ptr [rsp + 40]       # 8-byte Reload
	mov	rcx, qword ptr [rsp + 48]       # 8-byte Reload
	mov	qword ptr [rsp + 80], rdx
	mov	qword ptr [rsp + 72], rcx
	mov	qword ptr [rsp + 64], rax
	mov	rcx, qword ptr [rsp + 80]
	mov	rdx, qword ptr [rsp + 72]
.Ltmp89:
	call	_ZSt8_DestroyIP5PointEvT_S2_
.Ltmp90:
	jmp	.LBB8_1
.LBB8_1:
	jmp	.LBB8_2
.LBB8_2:
	mov	rcx, qword ptr [rsp + 32]       # 8-byte Reload
	call	_ZNSt12_Vector_baseI5PointSaIS0_EED2Ev
	nop
	add	rsp, 88
	ret
.LBB8_3:
.Ltmp91:
	mov	rcx, rax
                                        # kill: def $eax killed $edx killed $rdx
	call	__clang_call_terminate
	int3
.Lfunc_end1:
	.seh_handlerdata
	.section	.text$_ZNSt6vectorI5PointSaIS0_EED2Ev,"xr",discard,_ZNSt6vectorI5PointSaIS0_EED2Ev
	.seh_endproc
	.section	.xdata$_ZNSt6vectorI5PointSaIS0_EED2Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table8:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp89-.Lfunc_begin1          # >> Call Site 1 <<
	.uleb128 .Ltmp90-.Ltmp89                #   Call between .Ltmp89 and .Ltmp90
	.uleb128 .Ltmp91-.Lfunc_begin1          #     jumps to .Ltmp91
	.byte	1                               #   On action: 1
.Lcst_end1:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2, 0x0
	.section	.text$_ZNSt6vectorI5PointSaIS0_EED2Ev,"xr",discard,_ZNSt6vectorI5PointSaIS0_EED2Ev
                                        # -- End function
	.def	_ZNSt6vectorI5PointSaIS0_EE9push_backERKS0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt6vectorI5PointSaIS0_EE9push_backERKS0_,"xr",discard,_ZNSt6vectorI5PointSaIS0_EE9push_backERKS0_
	.globl	_ZNSt6vectorI5PointSaIS0_EE9push_backERKS0_ # -- Begin function _ZNSt6vectorI5PointSaIS0_EE9push_backERKS0_
	.p2align	4, 0x90
_ZNSt6vectorI5PointSaIS0_EE9push_backERKS0_: # @_ZNSt6vectorI5PointSaIS0_EE9push_backERKS0_
.seh_proc _ZNSt6vectorI5PointSaIS0_EE9push_backERKS0_
# %bb.0:
	sub	rsp, 104
	.seh_stackalloc 104
	.seh_endprologue
	mov	qword ptr [rsp + 48], rcx
	mov	qword ptr [rsp + 40], rdx
	mov	rcx, qword ptr [rsp + 48]
	mov	qword ptr [rsp + 32], rcx       # 8-byte Spill
	mov	rax, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rcx + 16]
	je	.LBB9_2
# %bb.1:
	mov	rax, qword ptr [rsp + 32]       # 8-byte Reload
	mov	rdx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rsp + 40]
	mov	qword ptr [rsp + 72], rax
	mov	qword ptr [rsp + 64], rdx
	mov	qword ptr [rsp + 56], rcx
	mov	r8, qword ptr [rsp + 72]
	mov	rdx, qword ptr [rsp + 64]
	mov	rcx, qword ptr [rsp + 56]
	mov	qword ptr [rsp + 96], r8
	mov	qword ptr [rsp + 88], rdx
	mov	qword ptr [rsp + 80], rcx
	mov	rcx, qword ptr [rsp + 88]
	mov	rdx, qword ptr [rsp + 80]
	mov	r8, qword ptr [rdx]
	mov	qword ptr [rcx], r8
	mov	r8, qword ptr [rdx + 8]
	mov	qword ptr [rcx + 8], r8
	mov	edx, dword ptr [rdx + 16]
	mov	dword ptr [rcx + 16], edx
	mov	rcx, qword ptr [rax + 8]
	add	rcx, 20
	mov	qword ptr [rax + 8], rcx
	jmp	.LBB9_3
.LBB9_2:
	mov	rcx, qword ptr [rsp + 32]       # 8-byte Reload
	mov	rdx, qword ptr [rsp + 40]
	call	_ZNSt6vectorI5PointSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_
.LBB9_3:
	nop
	add	rsp, 104
	ret
	.seh_endproc
                                        # -- End function
	.def	_ZNSt12_Vector_baseI5PointSaIS0_EEC2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt12_Vector_baseI5PointSaIS0_EEC2Ev,"xr",discard,_ZNSt12_Vector_baseI5PointSaIS0_EEC2Ev
	.globl	_ZNSt12_Vector_baseI5PointSaIS0_EEC2Ev # -- Begin function _ZNSt12_Vector_baseI5PointSaIS0_EEC2Ev
	.p2align	4, 0x90
_ZNSt12_Vector_baseI5PointSaIS0_EEC2Ev: # @_ZNSt12_Vector_baseI5PointSaIS0_EEC2Ev
.seh_proc _ZNSt12_Vector_baseI5PointSaIS0_EEC2Ev
# %bb.0:
	sub	rsp, 40
	.seh_stackalloc 40
	.seh_endprologue
	mov	qword ptr [rsp + 32], rcx
	mov	rcx, qword ptr [rsp + 32]
	call	_ZNSt12_Vector_baseI5PointSaIS0_EE12_Vector_implC2Ev
	nop
	add	rsp, 40
	ret
	.seh_endproc
                                        # -- End function
	.def	_ZNSt12_Vector_baseI5PointSaIS0_EE12_Vector_implC2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt12_Vector_baseI5PointSaIS0_EE12_Vector_implC2Ev,"xr",discard,_ZNSt12_Vector_baseI5PointSaIS0_EE12_Vector_implC2Ev
	.globl	_ZNSt12_Vector_baseI5PointSaIS0_EE12_Vector_implC2Ev # -- Begin function _ZNSt12_Vector_baseI5PointSaIS0_EE12_Vector_implC2Ev
	.p2align	4, 0x90
_ZNSt12_Vector_baseI5PointSaIS0_EE12_Vector_implC2Ev: # @_ZNSt12_Vector_baseI5PointSaIS0_EE12_Vector_implC2Ev
.seh_proc _ZNSt12_Vector_baseI5PointSaIS0_EE12_Vector_implC2Ev
# %bb.0:
	sub	rsp, 56
	.seh_stackalloc 56
	.seh_endprologue
	mov	qword ptr [rsp + 32], rcx
	mov	rcx, qword ptr [rsp + 32]
	mov	qword ptr [rsp + 40], rcx
	mov	rax, qword ptr [rsp + 40]
	mov	qword ptr [rsp + 48], rax
	call	_ZNSt12_Vector_baseI5PointSaIS0_EE17_Vector_impl_dataC2Ev
	nop
	add	rsp, 56
	ret
	.seh_endproc
                                        # -- End function
	.def	_ZNSt12_Vector_baseI5PointSaIS0_EE17_Vector_impl_dataC2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt12_Vector_baseI5PointSaIS0_EE17_Vector_impl_dataC2Ev,"xr",discard,_ZNSt12_Vector_baseI5PointSaIS0_EE17_Vector_impl_dataC2Ev
	.globl	_ZNSt12_Vector_baseI5PointSaIS0_EE17_Vector_impl_dataC2Ev # -- Begin function _ZNSt12_Vector_baseI5PointSaIS0_EE17_Vector_impl_dataC2Ev
	.p2align	4, 0x90
_ZNSt12_Vector_baseI5PointSaIS0_EE17_Vector_impl_dataC2Ev: # @_ZNSt12_Vector_baseI5PointSaIS0_EE17_Vector_impl_dataC2Ev
.seh_proc _ZNSt12_Vector_baseI5PointSaIS0_EE17_Vector_impl_dataC2Ev
# %bb.0:
	push	rax
	.seh_stackalloc 8
	.seh_endprologue
	mov	qword ptr [rsp], rcx
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], 0
	mov	qword ptr [rax + 8], 0
	mov	qword ptr [rax + 16], 0
	pop	rax
	ret
	.seh_endproc
                                        # -- End function
	.def	_ZNSt6chronomiIxSt5ratioILx1ELx1000000000EExS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt6chronomiIxSt5ratioILx1ELx1000000000EExS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,"xr",discard,_ZNSt6chronomiIxSt5ratioILx1ELx1000000000EExS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.globl	_ZNSt6chronomiIxSt5ratioILx1ELx1000000000EExS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_ # -- Begin function _ZNSt6chronomiIxSt5ratioILx1ELx1000000000EExS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.p2align	4, 0x90
_ZNSt6chronomiIxSt5ratioILx1ELx1000000000EExS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_: # @_ZNSt6chronomiIxSt5ratioILx1ELx1000000000EExS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
.seh_proc _ZNSt6chronomiIxSt5ratioILx1ELx1000000000EExS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
# %bb.0:
	sub	rsp, 88
	.seh_stackalloc 88
	.seh_endprologue
	mov	qword ptr [rsp + 72], rcx
	mov	qword ptr [rsp + 64], rdx
	mov	rax, qword ptr [rsp + 72]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rsp + 48], rax
	lea	rcx, [rsp + 48]
	call	_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000000EEE5countEv
	mov	qword ptr [rsp + 32], rax       # 8-byte Spill
	mov	rax, qword ptr [rsp + 64]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rsp + 40], rax
	lea	rcx, [rsp + 40]
	call	_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000000EEE5countEv
	mov	rcx, rax
	mov	rax, qword ptr [rsp + 32]       # 8-byte Reload
	sub	rax, rcx
	mov	qword ptr [rsp + 56], rax
	lea	rcx, [rsp + 80]
	lea	rdx, [rsp + 56]
	call	_ZNSt6chrono8durationIxSt5ratioILx1ELx1000000000EEEC2IxvEERKT_
	mov	rax, qword ptr [rsp + 80]
	add	rsp, 88
	ret
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEE16time_since_epochEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEE16time_since_epochEv,"xr",discard,_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEE16time_since_epochEv
	.globl	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEE16time_since_epochEv # -- Begin function _ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEE16time_since_epochEv
	.p2align	4, 0x90
_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEE16time_since_epochEv: # @_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEE16time_since_epochEv
.seh_proc _ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEE16time_since_epochEv
# %bb.0:
	sub	rsp, 16
	.seh_stackalloc 16
	.seh_endprologue
	mov	qword ptr [rsp], rcx
	mov	rax, qword ptr [rsp]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 8]
	add	rsp, 16
	ret
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000000EEE5countEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000000EEE5countEv,"xr",discard,_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000000EEE5countEv
	.globl	_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000000EEE5countEv # -- Begin function _ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000000EEE5countEv
	.p2align	4, 0x90
_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000000EEE5countEv: # @_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000000EEE5countEv
.seh_proc _ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000000EEE5countEv
# %bb.0:
	push	rax
	.seh_stackalloc 8
	.seh_endprologue
	mov	qword ptr [rsp], rcx
	mov	rax, qword ptr [rsp]
	mov	rax, qword ptr [rax]
	pop	rcx
	ret
	.seh_endproc
                                        # -- End function
	.def	_ZNSt6chrono8durationIxSt5ratioILx1ELx1000000000EEEC2IxvEERKT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt6chrono8durationIxSt5ratioILx1ELx1000000000EEEC2IxvEERKT_,"xr",discard,_ZNSt6chrono8durationIxSt5ratioILx1ELx1000000000EEEC2IxvEERKT_
	.globl	_ZNSt6chrono8durationIxSt5ratioILx1ELx1000000000EEEC2IxvEERKT_ # -- Begin function _ZNSt6chrono8durationIxSt5ratioILx1ELx1000000000EEEC2IxvEERKT_
	.p2align	4, 0x90
_ZNSt6chrono8durationIxSt5ratioILx1ELx1000000000EEEC2IxvEERKT_: # @_ZNSt6chrono8durationIxSt5ratioILx1ELx1000000000EEEC2IxvEERKT_
.seh_proc _ZNSt6chrono8durationIxSt5ratioILx1ELx1000000000EEEC2IxvEERKT_
# %bb.0:
	sub	rsp, 16
	.seh_stackalloc 16
	.seh_endprologue
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp], rdx
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rax], rcx
	add	rsp, 16
	ret
	.seh_endproc
                                        # -- End function
	.def	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILx1ELx1000EEEExS2_ILx1ELx1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILx1ELx1000EEEExS2_ILx1ELx1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE,"xr",discard,_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILx1ELx1000EEEExS2_ILx1ELx1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE
	.globl	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILx1ELx1000EEEExS2_ILx1ELx1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE # -- Begin function _ZNSt6chrono13duration_castINS_8durationIdSt5ratioILx1ELx1000EEEExS2_ILx1ELx1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE
	.p2align	4, 0x90
_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILx1ELx1000EEEExS2_ILx1ELx1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE: # @_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILx1ELx1000EEEExS2_ILx1ELx1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE
.seh_proc _ZNSt6chrono13duration_castINS_8durationIdSt5ratioILx1ELx1000EEEExS2_ILx1ELx1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE
# %bb.0:
	sub	rsp, 56
	.seh_stackalloc 56
	.seh_endprologue
	mov	qword ptr [rsp + 40], rcx
	mov	rcx, qword ptr [rsp + 40]
	call	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILx1ELx1000EEEES2_ILx1ELx1000000EEdLb1ELb0EE6__castIxS2_ILx1ELx1000000000EEEES4_RKNS1_IT_T0_EE
	mov	qword ptr [rsp + 48], rax
	mov	rax, qword ptr [rsp + 48]
	add	rsp, 56
	ret
	.seh_endproc
                                        # -- End function
	.def	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILx1ELx1000EEEES2_ILx1ELx1000000EEdLb1ELb0EE6__castIxS2_ILx1ELx1000000000EEEES4_RKNS1_IT_T0_EE;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.p2align	3, 0x0                          # -- Begin function _ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILx1ELx1000EEEES2_ILx1ELx1000000EEdLb1ELb0EE6__castIxS2_ILx1ELx1000000000EEEES4_RKNS1_IT_T0_EE
.LCPI18_0:
	.quad	0x412e848000000000              # double 1.0E+6
	.section	.text$_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILx1ELx1000EEEES2_ILx1ELx1000000EEdLb1ELb0EE6__castIxS2_ILx1ELx1000000000EEEES4_RKNS1_IT_T0_EE,"xr",discard,_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILx1ELx1000EEEES2_ILx1ELx1000000EEdLb1ELb0EE6__castIxS2_ILx1ELx1000000000EEEES4_RKNS1_IT_T0_EE
	.globl	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILx1ELx1000EEEES2_ILx1ELx1000000EEdLb1ELb0EE6__castIxS2_ILx1ELx1000000000EEEES4_RKNS1_IT_T0_EE
	.p2align	4, 0x90
_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILx1ELx1000EEEES2_ILx1ELx1000000EEdLb1ELb0EE6__castIxS2_ILx1ELx1000000000EEEES4_RKNS1_IT_T0_EE: # @_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILx1ELx1000EEEES2_ILx1ELx1000000EEdLb1ELb0EE6__castIxS2_ILx1ELx1000000000EEEES4_RKNS1_IT_T0_EE
.seh_proc _ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILx1ELx1000EEEES2_ILx1ELx1000000EEdLb1ELb0EE6__castIxS2_ILx1ELx1000000000EEEES4_RKNS1_IT_T0_EE
# %bb.0:
	sub	rsp, 56
	.seh_stackalloc 56
	.seh_endprologue
	mov	qword ptr [rsp + 40], rcx
	mov	rcx, qword ptr [rsp + 40]
	call	_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000000EEE5countEv
	cvtsi2sd	xmm0, rax
	movsd	xmm1, qword ptr [rip + .LCPI18_0] # xmm1 = [1.0E+6,0.0E+0]
	divsd	xmm0, xmm1
	movsd	qword ptr [rsp + 32], xmm0
	lea	rcx, [rsp + 48]
	lea	rdx, [rsp + 32]
	call	_ZNSt6chrono8durationIdSt5ratioILx1ELx1000EEEC2IdvEERKT_
	mov	rax, qword ptr [rsp + 48]
	add	rsp, 56
	ret
	.seh_endproc
                                        # -- End function
	.def	_ZNSt6chrono8durationIdSt5ratioILx1ELx1000EEEC2IdvEERKT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt6chrono8durationIdSt5ratioILx1ELx1000EEEC2IdvEERKT_,"xr",discard,_ZNSt6chrono8durationIdSt5ratioILx1ELx1000EEEC2IdvEERKT_
	.globl	_ZNSt6chrono8durationIdSt5ratioILx1ELx1000EEEC2IdvEERKT_ # -- Begin function _ZNSt6chrono8durationIdSt5ratioILx1ELx1000EEEC2IdvEERKT_
	.p2align	4, 0x90
_ZNSt6chrono8durationIdSt5ratioILx1ELx1000EEEC2IdvEERKT_: # @_ZNSt6chrono8durationIdSt5ratioILx1ELx1000EEEC2IdvEERKT_
.seh_proc _ZNSt6chrono8durationIdSt5ratioILx1ELx1000EEEC2IdvEERKT_
# %bb.0:
	sub	rsp, 16
	.seh_stackalloc 16
	.seh_endprologue
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp], rdx
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	movsd	xmm0, qword ptr [rcx]           # xmm0 = mem[0],zero
	movsd	qword ptr [rax], xmm0
	add	rsp, 16
	ret
	.seh_endproc
                                        # -- End function
	.def	_ZNSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv,"xr",discard,_ZNSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv
	.globl	_ZNSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv # -- Begin function _ZNSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv
	.p2align	4, 0x90
_ZNSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv: # @_ZNSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv
.seh_proc _ZNSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv
# %bb.0:
	push	rax
	.seh_stackalloc 8
	.seh_endprologue
	mov	qword ptr [rsp], rcx
	mov	rax, qword ptr [rsp]
	pop	rcx
	ret
	.seh_endproc
                                        # -- End function
	.def	__clang_call_terminate;
	.scl	2;
	.type	32;
	.endef
	.section	.text$__clang_call_terminate,"xr",discard,__clang_call_terminate
	.globl	__clang_call_terminate          # -- Begin function __clang_call_terminate
	.p2align	4, 0x90
__clang_call_terminate:                 # @__clang_call_terminate
.seh_proc __clang_call_terminate
# %bb.0:
	sub	rsp, 40
	.seh_stackalloc 40
	.seh_endprologue
	call	__cxa_begin_catch
	call	_ZSt9terminatev
	int3
	.seh_endproc
                                        # -- End function
	.def	_ZNSt12_Vector_baseI5PointSaIS0_EED2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt12_Vector_baseI5PointSaIS0_EED2Ev,"xr",discard,_ZNSt12_Vector_baseI5PointSaIS0_EED2Ev
	.globl	_ZNSt12_Vector_baseI5PointSaIS0_EED2Ev # -- Begin function _ZNSt12_Vector_baseI5PointSaIS0_EED2Ev
	.p2align	4, 0x90
_ZNSt12_Vector_baseI5PointSaIS0_EED2Ev: # @_ZNSt12_Vector_baseI5PointSaIS0_EED2Ev
.Lfunc_begin2:
.seh_proc _ZNSt12_Vector_baseI5PointSaIS0_EED2Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	sub	rsp, 56
	.seh_stackalloc 56
	.seh_endprologue
	mov	qword ptr [rsp + 48], rcx
	mov	rcx, qword ptr [rsp + 48]
	mov	qword ptr [rsp + 40], rcx       # 8-byte Spill
	mov	rdx, qword ptr [rcx]
	mov	r8, qword ptr [rcx + 16]
	sub	r8, rdx
	sar	r8, 2
	movabs	rax, -3689348814741910323
	imul	r8, rax
.Ltmp92:
	call	_ZNSt12_Vector_baseI5PointSaIS0_EE13_M_deallocateEPS0_y
.Ltmp93:
	jmp	.LBB22_1
.LBB22_1:
	mov	rcx, qword ptr [rsp + 40]       # 8-byte Reload
	call	_ZNSt12_Vector_baseI5PointSaIS0_EE12_Vector_implD2Ev
	nop
	add	rsp, 56
	ret
.LBB22_2:
.Ltmp94:
	mov	rcx, rax
                                        # kill: def $eax killed $edx killed $rdx
	call	__clang_call_terminate
	int3
.Lfunc_end2:
	.seh_handlerdata
	.section	.text$_ZNSt12_Vector_baseI5PointSaIS0_EED2Ev,"xr",discard,_ZNSt12_Vector_baseI5PointSaIS0_EED2Ev
	.seh_endproc
	.section	.xdata$_ZNSt12_Vector_baseI5PointSaIS0_EED2Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table22:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp92-.Lfunc_begin2          # >> Call Site 1 <<
	.uleb128 .Ltmp93-.Ltmp92                #   Call between .Ltmp92 and .Ltmp93
	.uleb128 .Ltmp94-.Lfunc_begin2          #     jumps to .Ltmp94
	.byte	1                               #   On action: 1
.Lcst_end2:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2, 0x0
	.section	.text$_ZNSt12_Vector_baseI5PointSaIS0_EED2Ev,"xr",discard,_ZNSt12_Vector_baseI5PointSaIS0_EED2Ev
                                        # -- End function
	.def	_ZSt8_DestroyIP5PointEvT_S2_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZSt8_DestroyIP5PointEvT_S2_,"xr",discard,_ZSt8_DestroyIP5PointEvT_S2_
	.globl	_ZSt8_DestroyIP5PointEvT_S2_    # -- Begin function _ZSt8_DestroyIP5PointEvT_S2_
	.p2align	4, 0x90
_ZSt8_DestroyIP5PointEvT_S2_:           # @_ZSt8_DestroyIP5PointEvT_S2_
.seh_proc _ZSt8_DestroyIP5PointEvT_S2_
# %bb.0:
	sub	rsp, 56
	.seh_stackalloc 56
	.seh_endprologue
	mov	qword ptr [rsp + 48], rcx
	mov	qword ptr [rsp + 40], rdx
	mov	rcx, qword ptr [rsp + 48]
	mov	rdx, qword ptr [rsp + 40]
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIP5PointEEvT_S4_
	nop
	add	rsp, 56
	ret
	.seh_endproc
                                        # -- End function
	.def	_ZNSt12_Destroy_auxILb1EE9__destroyIP5PointEEvT_S4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt12_Destroy_auxILb1EE9__destroyIP5PointEEvT_S4_,"xr",discard,_ZNSt12_Destroy_auxILb1EE9__destroyIP5PointEEvT_S4_
	.globl	_ZNSt12_Destroy_auxILb1EE9__destroyIP5PointEEvT_S4_ # -- Begin function _ZNSt12_Destroy_auxILb1EE9__destroyIP5PointEEvT_S4_
	.p2align	4, 0x90
_ZNSt12_Destroy_auxILb1EE9__destroyIP5PointEEvT_S4_: # @_ZNSt12_Destroy_auxILb1EE9__destroyIP5PointEEvT_S4_
.seh_proc _ZNSt12_Destroy_auxILb1EE9__destroyIP5PointEEvT_S4_
# %bb.0:
	sub	rsp, 16
	.seh_stackalloc 16
	.seh_endprologue
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp], rdx
	add	rsp, 16
	ret
	.seh_endproc
                                        # -- End function
	.def	_ZNSt12_Vector_baseI5PointSaIS0_EE13_M_deallocateEPS0_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt12_Vector_baseI5PointSaIS0_EE13_M_deallocateEPS0_y,"xr",discard,_ZNSt12_Vector_baseI5PointSaIS0_EE13_M_deallocateEPS0_y
	.globl	_ZNSt12_Vector_baseI5PointSaIS0_EE13_M_deallocateEPS0_y # -- Begin function _ZNSt12_Vector_baseI5PointSaIS0_EE13_M_deallocateEPS0_y
	.p2align	4, 0x90
_ZNSt12_Vector_baseI5PointSaIS0_EE13_M_deallocateEPS0_y: # @_ZNSt12_Vector_baseI5PointSaIS0_EE13_M_deallocateEPS0_y
.seh_proc _ZNSt12_Vector_baseI5PointSaIS0_EE13_M_deallocateEPS0_y
# %bb.0:
	sub	rsp, 88
	.seh_stackalloc 88
	.seh_endprologue
	mov	qword ptr [rsp + 56], rcx
	mov	qword ptr [rsp + 48], rdx
	mov	qword ptr [rsp + 40], r8
	mov	rax, qword ptr [rsp + 56]
	mov	qword ptr [rsp + 32], rax       # 8-byte Spill
	cmp	qword ptr [rsp + 48], 0
	je	.LBB25_2
# %bb.1:
	mov	rdx, qword ptr [rsp + 32]       # 8-byte Reload
	mov	rcx, qword ptr [rsp + 48]
	mov	rax, qword ptr [rsp + 40]
	mov	qword ptr [rsp + 80], rdx
	mov	qword ptr [rsp + 72], rcx
	mov	qword ptr [rsp + 64], rax
	mov	rcx, qword ptr [rsp + 80]
	mov	rdx, qword ptr [rsp + 72]
	mov	r8, qword ptr [rsp + 64]
	call	_ZNSt15__new_allocatorI5PointE10deallocateEPS0_y
.LBB25_2:
	nop
	add	rsp, 88
	ret
	.seh_endproc
                                        # -- End function
	.def	_ZNSt12_Vector_baseI5PointSaIS0_EE12_Vector_implD2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt12_Vector_baseI5PointSaIS0_EE12_Vector_implD2Ev,"xr",discard,_ZNSt12_Vector_baseI5PointSaIS0_EE12_Vector_implD2Ev
	.globl	_ZNSt12_Vector_baseI5PointSaIS0_EE12_Vector_implD2Ev # -- Begin function _ZNSt12_Vector_baseI5PointSaIS0_EE12_Vector_implD2Ev
	.p2align	4, 0x90
_ZNSt12_Vector_baseI5PointSaIS0_EE12_Vector_implD2Ev: # @_ZNSt12_Vector_baseI5PointSaIS0_EE12_Vector_implD2Ev
.seh_proc _ZNSt12_Vector_baseI5PointSaIS0_EE12_Vector_implD2Ev
# %bb.0:
	sub	rsp, 56
	.seh_stackalloc 56
	.seh_endprologue
	mov	qword ptr [rsp + 40], rcx
	mov	rax, qword ptr [rsp + 40]
	mov	qword ptr [rsp + 48], rax
	mov	rcx, qword ptr [rsp + 48]
	call	_ZNSt15__new_allocatorI5PointED2Ev
	nop
	add	rsp, 56
	ret
	.seh_endproc
                                        # -- End function
	.def	_ZNSt15__new_allocatorI5PointE10deallocateEPS0_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt15__new_allocatorI5PointE10deallocateEPS0_y,"xr",discard,_ZNSt15__new_allocatorI5PointE10deallocateEPS0_y
	.globl	_ZNSt15__new_allocatorI5PointE10deallocateEPS0_y # -- Begin function _ZNSt15__new_allocatorI5PointE10deallocateEPS0_y
	.p2align	4, 0x90
_ZNSt15__new_allocatorI5PointE10deallocateEPS0_y: # @_ZNSt15__new_allocatorI5PointE10deallocateEPS0_y
.seh_proc _ZNSt15__new_allocatorI5PointE10deallocateEPS0_y
# %bb.0:
	sub	rsp, 56
	.seh_stackalloc 56
	.seh_endprologue
	mov	qword ptr [rsp + 48], rcx
	mov	qword ptr [rsp + 40], rdx
	mov	qword ptr [rsp + 32], r8
	mov	rcx, qword ptr [rsp + 40]
	call	_ZdlPv
	nop
	add	rsp, 56
	ret
	.seh_endproc
                                        # -- End function
	.def	_ZNSt15__new_allocatorI5PointED2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt15__new_allocatorI5PointED2Ev,"xr",discard,_ZNSt15__new_allocatorI5PointED2Ev
	.globl	_ZNSt15__new_allocatorI5PointED2Ev # -- Begin function _ZNSt15__new_allocatorI5PointED2Ev
	.p2align	4, 0x90
_ZNSt15__new_allocatorI5PointED2Ev:     # @_ZNSt15__new_allocatorI5PointED2Ev
.seh_proc _ZNSt15__new_allocatorI5PointED2Ev
# %bb.0:
	push	rax
	.seh_stackalloc 8
	.seh_endprologue
	mov	qword ptr [rsp], rcx
	pop	rax
	ret
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt6vectorI5PointSaIS0_EE14_M_range_checkEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt6vectorI5PointSaIS0_EE14_M_range_checkEy,"xr",discard,_ZNKSt6vectorI5PointSaIS0_EE14_M_range_checkEy
	.globl	_ZNKSt6vectorI5PointSaIS0_EE14_M_range_checkEy # -- Begin function _ZNKSt6vectorI5PointSaIS0_EE14_M_range_checkEy
	.p2align	4, 0x90
_ZNKSt6vectorI5PointSaIS0_EE14_M_range_checkEy: # @_ZNKSt6vectorI5PointSaIS0_EE14_M_range_checkEy
.seh_proc _ZNKSt6vectorI5PointSaIS0_EE14_M_range_checkEy
# %bb.0:
	sub	rsp, 72
	.seh_stackalloc 72
	.seh_endprologue
	mov	qword ptr [rsp + 64], rcx
	mov	qword ptr [rsp + 56], rdx
	mov	rcx, qword ptr [rsp + 64]
	mov	qword ptr [rsp + 40], rcx       # 8-byte Spill
	mov	rax, qword ptr [rsp + 56]
	mov	qword ptr [rsp + 48], rax       # 8-byte Spill
	call	_ZNKSt6vectorI5PointSaIS0_EE4sizeEv
	mov	rcx, rax
	mov	rax, qword ptr [rsp + 48]       # 8-byte Reload
	cmp	rax, rcx
	jb	.LBB29_2
# %bb.1:
	mov	rcx, qword ptr [rsp + 40]       # 8-byte Reload
	mov	rax, qword ptr [rsp + 56]
	mov	qword ptr [rsp + 32], rax       # 8-byte Spill
	call	_ZNKSt6vectorI5PointSaIS0_EE4sizeEv
	mov	rdx, qword ptr [rsp + 32]       # 8-byte Reload
	mov	r8, rax
	lea	rcx, [rip + .L.str.8]
	call	_ZSt24__throw_out_of_range_fmtPKcz
.LBB29_2:
	nop
	add	rsp, 72
	ret
	.seh_endproc
                                        # -- End function
	.def	_ZNSt6vectorI5PointSaIS0_EEixEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt6vectorI5PointSaIS0_EEixEy,"xr",discard,_ZNSt6vectorI5PointSaIS0_EEixEy
	.globl	_ZNSt6vectorI5PointSaIS0_EEixEy # -- Begin function _ZNSt6vectorI5PointSaIS0_EEixEy
	.p2align	4, 0x90
_ZNSt6vectorI5PointSaIS0_EEixEy:        # @_ZNSt6vectorI5PointSaIS0_EEixEy
.seh_proc _ZNSt6vectorI5PointSaIS0_EEixEy
# %bb.0:
	sub	rsp, 16
	.seh_stackalloc 16
	.seh_endprologue
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp], rdx
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax]
	imul	rcx, qword ptr [rsp], 20
	add	rax, rcx
	add	rsp, 16
	ret
	.seh_endproc
                                        # -- End function
	.def	_ZNSt6vectorI5PointSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt6vectorI5PointSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_,"xr",discard,_ZNSt6vectorI5PointSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_
	.globl	_ZNSt6vectorI5PointSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_ # -- Begin function _ZNSt6vectorI5PointSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_
	.p2align	4, 0x90
_ZNSt6vectorI5PointSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_: # @_ZNSt6vectorI5PointSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_
.seh_proc _ZNSt6vectorI5PointSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_
# %bb.0:
	sub	rsp, 216
	.seh_stackalloc 216
	.seh_endprologue
	mov	qword ptr [rsp + 160], rcx
	mov	qword ptr [rsp + 152], rdx
	mov	rcx, qword ptr [rsp + 160]
	mov	qword ptr [rsp + 56], rcx       # 8-byte Spill
	mov	edx, 1
	lea	r8, [rip + .L.str.9]
	call	_ZNKSt6vectorI5PointSaIS0_EE12_M_check_lenEyPKc
	mov	qword ptr [rsp + 144], rax
	cmp	qword ptr [rsp + 144], 0
	ja	.LBB31_2
# %bb.1:
.LBB31_2:
	mov	rcx, qword ptr [rsp + 56]       # 8-byte Reload
	mov	rax, qword ptr [rcx]
	mov	qword ptr [rsp + 136], rax
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rsp + 128], rax
	call	_ZNSt6vectorI5PointSaIS0_EE3endEv
	mov	rcx, qword ptr [rsp + 56]       # 8-byte Reload
	mov	qword ptr [rsp + 112], rax
	call	_ZNSt6vectorI5PointSaIS0_EE5beginEv
	mov	qword ptr [rsp + 104], rax
	lea	rcx, [rsp + 112]
	lea	rdx, [rsp + 104]
	call	_ZN9__gnu_cxxmiIP5PointSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	mov	rcx, qword ptr [rsp + 56]       # 8-byte Reload
	mov	qword ptr [rsp + 120], rax
	mov	rdx, qword ptr [rsp + 144]
	call	_ZNSt12_Vector_baseI5PointSaIS0_EE11_M_allocateEy
	mov	r9, qword ptr [rsp + 56]        # 8-byte Reload
	mov	qword ptr [rsp + 96], rax
	mov	rax, qword ptr [rsp + 96]
	mov	qword ptr [rsp + 88], rax
	mov	rdx, qword ptr [rsp + 96]
	mov	r8, qword ptr [rsp + 144]
	lea	rcx, [rsp + 64]
	call	_ZZNSt6vectorI5PointSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_EN6_GuardC2EPS0_yRS1_
	mov	rcx, qword ptr [rsp + 96]
	imul	rax, qword ptr [rsp + 120], 20
	add	rcx, rax
	call	_ZSt12__to_addressI5PointEPT_S2_
	mov	rcx, qword ptr [rsp + 56]       # 8-byte Reload
	mov	rdx, rax
	mov	rax, qword ptr [rsp + 152]
	mov	qword ptr [rsp + 184], rcx
	mov	qword ptr [rsp + 176], rdx
	mov	qword ptr [rsp + 168], rax
	mov	r8, qword ptr [rsp + 184]
	mov	rdx, qword ptr [rsp + 176]
	mov	rax, qword ptr [rsp + 168]
	mov	qword ptr [rsp + 208], r8
	mov	qword ptr [rsp + 200], rdx
	mov	qword ptr [rsp + 192], rax
	mov	rax, qword ptr [rsp + 200]
	mov	rdx, qword ptr [rsp + 192]
	mov	r8, qword ptr [rdx]
	mov	qword ptr [rax], r8
	mov	r8, qword ptr [rdx + 8]
	mov	qword ptr [rax + 8], r8
	mov	edx, dword ptr [rdx + 16]
	mov	dword ptr [rax + 16], edx
	mov	rax, qword ptr [rsp + 136]
	mov	qword ptr [rsp + 32], rax       # 8-byte Spill
	mov	rax, qword ptr [rsp + 128]
	mov	qword ptr [rsp + 40], rax       # 8-byte Spill
	mov	rax, qword ptr [rsp + 96]
	mov	qword ptr [rsp + 48], rax       # 8-byte Spill
	call	_ZNSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv
	mov	rcx, qword ptr [rsp + 32]       # 8-byte Reload
	mov	rdx, qword ptr [rsp + 40]       # 8-byte Reload
	mov	r8, qword ptr [rsp + 48]        # 8-byte Reload
	mov	r9, rax
	call	_ZNSt6vectorI5PointSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	mov	rcx, rax
	mov	rax, qword ptr [rsp + 56]       # 8-byte Reload
	mov	qword ptr [rsp + 88], rcx
	mov	rcx, qword ptr [rsp + 88]
	add	rcx, 20
	mov	qword ptr [rsp + 88], rcx
	mov	rcx, qword ptr [rsp + 136]
	mov	qword ptr [rsp + 64], rcx
	mov	rax, qword ptr [rax + 16]
	mov	rcx, qword ptr [rsp + 136]
	sub	rax, rcx
	mov	ecx, 20
	cqo
	idiv	rcx
	mov	qword ptr [rsp + 72], rax
	lea	rcx, [rsp + 64]
	call	_ZZNSt6vectorI5PointSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_EN6_GuardD2Ev
	mov	rax, qword ptr [rsp + 56]       # 8-byte Reload
	mov	rcx, qword ptr [rsp + 96]
	mov	qword ptr [rax], rcx
	mov	rcx, qword ptr [rsp + 88]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rsp + 96]
	imul	rdx, qword ptr [rsp + 144], 20
	add	rcx, rdx
	mov	qword ptr [rax + 16], rcx
	add	rsp, 216
	ret
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt6vectorI5PointSaIS0_EE12_M_check_lenEyPKc;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt6vectorI5PointSaIS0_EE12_M_check_lenEyPKc,"xr",discard,_ZNKSt6vectorI5PointSaIS0_EE12_M_check_lenEyPKc
	.globl	_ZNKSt6vectorI5PointSaIS0_EE12_M_check_lenEyPKc # -- Begin function _ZNKSt6vectorI5PointSaIS0_EE12_M_check_lenEyPKc
	.p2align	4, 0x90
_ZNKSt6vectorI5PointSaIS0_EE12_M_check_lenEyPKc: # @_ZNKSt6vectorI5PointSaIS0_EE12_M_check_lenEyPKc
.seh_proc _ZNKSt6vectorI5PointSaIS0_EE12_M_check_lenEyPKc
# %bb.0:
	sub	rsp, 120
	.seh_stackalloc 120
	.seh_endprologue
	mov	qword ptr [rsp + 112], rcx
	mov	qword ptr [rsp + 104], rdx
	mov	qword ptr [rsp + 96], r8
	mov	rcx, qword ptr [rsp + 112]
	mov	qword ptr [rsp + 64], rcx       # 8-byte Spill
	call	_ZNKSt6vectorI5PointSaIS0_EE8max_sizeEv
	mov	rcx, qword ptr [rsp + 64]       # 8-byte Reload
	mov	qword ptr [rsp + 72], rax       # 8-byte Spill
	call	_ZNKSt6vectorI5PointSaIS0_EE4sizeEv
	mov	rcx, rax
	mov	rax, qword ptr [rsp + 72]       # 8-byte Reload
	sub	rax, rcx
	cmp	rax, qword ptr [rsp + 104]
	jae	.LBB32_2
# %bb.1:
	mov	rcx, qword ptr [rsp + 96]
	call	_ZSt20__throw_length_errorPKc
.LBB32_2:
	mov	rcx, qword ptr [rsp + 64]       # 8-byte Reload
	call	_ZNKSt6vectorI5PointSaIS0_EE4sizeEv
	mov	rcx, qword ptr [rsp + 64]       # 8-byte Reload
	mov	qword ptr [rsp + 48], rax       # 8-byte Spill
	call	_ZNKSt6vectorI5PointSaIS0_EE4sizeEv
	mov	qword ptr [rsp + 80], rax
	lea	rcx, [rsp + 80]
	lea	rdx, [rsp + 104]
	call	_ZSt3maxIyERKT_S2_S2_
	mov	rcx, qword ptr [rsp + 64]       # 8-byte Reload
	mov	rdx, rax
	mov	rax, qword ptr [rsp + 48]       # 8-byte Reload
	add	rax, qword ptr [rdx]
	mov	qword ptr [rsp + 88], rax
	mov	rax, qword ptr [rsp + 88]
	mov	qword ptr [rsp + 56], rax       # 8-byte Spill
	call	_ZNKSt6vectorI5PointSaIS0_EE4sizeEv
	mov	rcx, rax
	mov	rax, qword ptr [rsp + 56]       # 8-byte Reload
	cmp	rax, rcx
	jb	.LBB32_4
# %bb.3:
	mov	rcx, qword ptr [rsp + 64]       # 8-byte Reload
	mov	rax, qword ptr [rsp + 88]
	mov	qword ptr [rsp + 40], rax       # 8-byte Spill
	call	_ZNKSt6vectorI5PointSaIS0_EE8max_sizeEv
	mov	rcx, rax
	mov	rax, qword ptr [rsp + 40]       # 8-byte Reload
	cmp	rax, rcx
	jbe	.LBB32_5
.LBB32_4:
	mov	rcx, qword ptr [rsp + 64]       # 8-byte Reload
	call	_ZNKSt6vectorI5PointSaIS0_EE8max_sizeEv
	mov	qword ptr [rsp + 32], rax       # 8-byte Spill
	jmp	.LBB32_6
.LBB32_5:
	mov	rax, qword ptr [rsp + 88]
	mov	qword ptr [rsp + 32], rax       # 8-byte Spill
.LBB32_6:
	mov	rax, qword ptr [rsp + 32]       # 8-byte Reload
	add	rsp, 120
	ret
	.seh_endproc
                                        # -- End function
	.def	_ZN9__gnu_cxxmiIP5PointSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN9__gnu_cxxmiIP5PointSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_,"xr",discard,_ZN9__gnu_cxxmiIP5PointSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	.globl	_ZN9__gnu_cxxmiIP5PointSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_ # -- Begin function _ZN9__gnu_cxxmiIP5PointSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	.p2align	4, 0x90
_ZN9__gnu_cxxmiIP5PointSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_: # @_ZN9__gnu_cxxmiIP5PointSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
.seh_proc _ZN9__gnu_cxxmiIP5PointSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
# %bb.0:
	sub	rsp, 56
	.seh_stackalloc 56
	.seh_endprologue
	mov	qword ptr [rsp + 48], rcx
	mov	qword ptr [rsp + 40], rdx
	mov	rcx, qword ptr [rsp + 48]
	call	_ZNK9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEE4baseEv
	mov	rax, qword ptr [rax]
	mov	qword ptr [rsp + 32], rax       # 8-byte Spill
	mov	rcx, qword ptr [rsp + 40]
	call	_ZNK9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEE4baseEv
	mov	rcx, rax
	mov	rax, qword ptr [rsp + 32]       # 8-byte Reload
	mov	rcx, qword ptr [rcx]
	sub	rax, rcx
	mov	ecx, 20
	cqo
	idiv	rcx
	add	rsp, 56
	ret
	.seh_endproc
                                        # -- End function
	.def	_ZNSt6vectorI5PointSaIS0_EE3endEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt6vectorI5PointSaIS0_EE3endEv,"xr",discard,_ZNSt6vectorI5PointSaIS0_EE3endEv
	.globl	_ZNSt6vectorI5PointSaIS0_EE3endEv # -- Begin function _ZNSt6vectorI5PointSaIS0_EE3endEv
	.p2align	4, 0x90
_ZNSt6vectorI5PointSaIS0_EE3endEv:      # @_ZNSt6vectorI5PointSaIS0_EE3endEv
.seh_proc _ZNSt6vectorI5PointSaIS0_EE3endEv
# %bb.0:
	sub	rsp, 56
	.seh_stackalloc 56
	.seh_endprologue
	mov	qword ptr [rsp + 40], rcx
	mov	rdx, qword ptr [rsp + 40]
	add	rdx, 8
	lea	rcx, [rsp + 48]
	call	_ZN9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEEC2ERKS2_
	mov	rax, qword ptr [rsp + 48]
	add	rsp, 56
	ret
	.seh_endproc
                                        # -- End function
	.def	_ZNSt6vectorI5PointSaIS0_EE5beginEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt6vectorI5PointSaIS0_EE5beginEv,"xr",discard,_ZNSt6vectorI5PointSaIS0_EE5beginEv
	.globl	_ZNSt6vectorI5PointSaIS0_EE5beginEv # -- Begin function _ZNSt6vectorI5PointSaIS0_EE5beginEv
	.p2align	4, 0x90
_ZNSt6vectorI5PointSaIS0_EE5beginEv:    # @_ZNSt6vectorI5PointSaIS0_EE5beginEv
.seh_proc _ZNSt6vectorI5PointSaIS0_EE5beginEv
# %bb.0:
	sub	rsp, 56
	.seh_stackalloc 56
	.seh_endprologue
	mov	qword ptr [rsp + 40], rcx
	mov	rdx, qword ptr [rsp + 40]
	lea	rcx, [rsp + 48]
	call	_ZN9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEEC2ERKS2_
	mov	rax, qword ptr [rsp + 48]
	add	rsp, 56
	ret
	.seh_endproc
                                        # -- End function
	.def	_ZNSt12_Vector_baseI5PointSaIS0_EE11_M_allocateEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt12_Vector_baseI5PointSaIS0_EE11_M_allocateEy,"xr",discard,_ZNSt12_Vector_baseI5PointSaIS0_EE11_M_allocateEy
	.globl	_ZNSt12_Vector_baseI5PointSaIS0_EE11_M_allocateEy # -- Begin function _ZNSt12_Vector_baseI5PointSaIS0_EE11_M_allocateEy
	.p2align	4, 0x90
_ZNSt12_Vector_baseI5PointSaIS0_EE11_M_allocateEy: # @_ZNSt12_Vector_baseI5PointSaIS0_EE11_M_allocateEy
.seh_proc _ZNSt12_Vector_baseI5PointSaIS0_EE11_M_allocateEy
# %bb.0:
	sub	rsp, 88
	.seh_stackalloc 88
	.seh_endprologue
	mov	qword ptr [rsp + 64], rcx
	mov	qword ptr [rsp + 56], rdx
	mov	rax, qword ptr [rsp + 64]
	mov	qword ptr [rsp + 48], rax       # 8-byte Spill
	cmp	qword ptr [rsp + 56], 0
	je	.LBB36_2
# %bb.1:
	mov	rcx, qword ptr [rsp + 48]       # 8-byte Reload
	mov	rax, qword ptr [rsp + 56]
	mov	qword ptr [rsp + 80], rcx
	mov	qword ptr [rsp + 72], rax
	mov	rcx, qword ptr [rsp + 80]
	mov	rdx, qword ptr [rsp + 72]
	xor	eax, eax
	mov	r8d, eax
	call	_ZNSt15__new_allocatorI5PointE8allocateEyPKv
	mov	qword ptr [rsp + 40], rax       # 8-byte Spill
	jmp	.LBB36_3
.LBB36_2:
	xor	eax, eax
                                        # kill: def $rax killed $eax
	mov	qword ptr [rsp + 40], rax       # 8-byte Spill
	jmp	.LBB36_3
.LBB36_3:
	mov	rax, qword ptr [rsp + 40]       # 8-byte Reload
	add	rsp, 88
	ret
	.seh_endproc
                                        # -- End function
	.def	_ZZNSt6vectorI5PointSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_EN6_GuardC2EPS0_yRS1_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZZNSt6vectorI5PointSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_EN6_GuardC2EPS0_yRS1_,"xr",discard,_ZZNSt6vectorI5PointSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_EN6_GuardC2EPS0_yRS1_
	.globl	_ZZNSt6vectorI5PointSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_EN6_GuardC2EPS0_yRS1_ # -- Begin function _ZZNSt6vectorI5PointSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_EN6_GuardC2EPS0_yRS1_
	.p2align	4, 0x90
_ZZNSt6vectorI5PointSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_EN6_GuardC2EPS0_yRS1_: # @_ZZNSt6vectorI5PointSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_EN6_GuardC2EPS0_yRS1_
.seh_proc _ZZNSt6vectorI5PointSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_EN6_GuardC2EPS0_yRS1_
# %bb.0:
	sub	rsp, 32
	.seh_stackalloc 32
	.seh_endprologue
	mov	qword ptr [rsp + 24], rcx
	mov	qword ptr [rsp + 16], rdx
	mov	qword ptr [rsp + 8], r8
	mov	qword ptr [rsp], r9
	mov	rax, qword ptr [rsp + 24]
	mov	rcx, qword ptr [rsp + 16]
	mov	qword ptr [rax], rcx
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rax + 16], rcx
	add	rsp, 32
	ret
	.seh_endproc
                                        # -- End function
	.def	_ZSt12__to_addressI5PointEPT_S2_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZSt12__to_addressI5PointEPT_S2_,"xr",discard,_ZSt12__to_addressI5PointEPT_S2_
	.globl	_ZSt12__to_addressI5PointEPT_S2_ # -- Begin function _ZSt12__to_addressI5PointEPT_S2_
	.p2align	4, 0x90
_ZSt12__to_addressI5PointEPT_S2_:       # @_ZSt12__to_addressI5PointEPT_S2_
.seh_proc _ZSt12__to_addressI5PointEPT_S2_
# %bb.0:
	push	rax
	.seh_stackalloc 8
	.seh_endprologue
	mov	qword ptr [rsp], rcx
	mov	rax, qword ptr [rsp]
	pop	rcx
	ret
	.seh_endproc
                                        # -- End function
	.def	_ZNSt6vectorI5PointSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt6vectorI5PointSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_,"xr",discard,_ZNSt6vectorI5PointSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	.globl	_ZNSt6vectorI5PointSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_ # -- Begin function _ZNSt6vectorI5PointSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	.p2align	4, 0x90
_ZNSt6vectorI5PointSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_: # @_ZNSt6vectorI5PointSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
.seh_proc _ZNSt6vectorI5PointSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
# %bb.0:
	sub	rsp, 72
	.seh_stackalloc 72
	.seh_endprologue
	mov	qword ptr [rsp + 64], rcx
	mov	qword ptr [rsp + 56], rdx
	mov	qword ptr [rsp + 48], r8
	mov	qword ptr [rsp + 40], r9
	mov	rcx, qword ptr [rsp + 64]
	mov	rdx, qword ptr [rsp + 56]
	mov	r8, qword ptr [rsp + 48]
	mov	r9, qword ptr [rsp + 40]
	call	_ZSt12__relocate_aIP5PointS1_SaIS0_EET0_T_S4_S3_RT1_
	nop
	add	rsp, 72
	ret
	.seh_endproc
                                        # -- End function
	.def	_ZZNSt6vectorI5PointSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_EN6_GuardD2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZZNSt6vectorI5PointSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_EN6_GuardD2Ev,"xr",discard,_ZZNSt6vectorI5PointSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_EN6_GuardD2Ev
	.globl	_ZZNSt6vectorI5PointSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_EN6_GuardD2Ev # -- Begin function _ZZNSt6vectorI5PointSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_EN6_GuardD2Ev
	.p2align	4, 0x90
_ZZNSt6vectorI5PointSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_EN6_GuardD2Ev: # @_ZZNSt6vectorI5PointSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_EN6_GuardD2Ev
.seh_proc _ZZNSt6vectorI5PointSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_EN6_GuardD2Ev
# %bb.0:
	sub	rsp, 72
	.seh_stackalloc 72
	.seh_endprologue
	mov	qword ptr [rsp + 40], rcx
	mov	rax, qword ptr [rsp + 40]
	mov	qword ptr [rsp + 32], rax       # 8-byte Spill
	cmp	qword ptr [rax], 0
	je	.LBB40_3
# %bb.1:
	mov	rax, qword ptr [rsp + 32]       # 8-byte Reload
	mov	rdx, qword ptr [rax + 16]
	mov	rcx, qword ptr [rax]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rsp + 64], rdx
	mov	qword ptr [rsp + 56], rcx
	mov	qword ptr [rsp + 48], rax
	mov	rcx, qword ptr [rsp + 64]
	mov	rdx, qword ptr [rsp + 56]
	mov	r8, qword ptr [rsp + 48]
	call	_ZNSt15__new_allocatorI5PointE10deallocateEPS0_y
# %bb.2:
	jmp	.LBB40_3
.LBB40_3:
	add	rsp, 72
	ret
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt6vectorI5PointSaIS0_EE8max_sizeEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt6vectorI5PointSaIS0_EE8max_sizeEv,"xr",discard,_ZNKSt6vectorI5PointSaIS0_EE8max_sizeEv
	.globl	_ZNKSt6vectorI5PointSaIS0_EE8max_sizeEv # -- Begin function _ZNKSt6vectorI5PointSaIS0_EE8max_sizeEv
	.p2align	4, 0x90
_ZNKSt6vectorI5PointSaIS0_EE8max_sizeEv: # @_ZNKSt6vectorI5PointSaIS0_EE8max_sizeEv
.seh_proc _ZNKSt6vectorI5PointSaIS0_EE8max_sizeEv
# %bb.0:
	sub	rsp, 40
	.seh_stackalloc 40
	.seh_endprologue
	mov	qword ptr [rsp + 32], rcx
	mov	rcx, qword ptr [rsp + 32]
	call	_ZNKSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv
	mov	rcx, rax
	call	_ZNSt6vectorI5PointSaIS0_EE11_S_max_sizeERKS1_
	nop
	add	rsp, 40
	ret
	.seh_endproc
                                        # -- End function
	.def	_ZSt3maxIyERKT_S2_S2_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZSt3maxIyERKT_S2_S2_,"xr",discard,_ZSt3maxIyERKT_S2_S2_
	.globl	_ZSt3maxIyERKT_S2_S2_           # -- Begin function _ZSt3maxIyERKT_S2_S2_
	.p2align	4, 0x90
_ZSt3maxIyERKT_S2_S2_:                  # @_ZSt3maxIyERKT_S2_S2_
.seh_proc _ZSt3maxIyERKT_S2_S2_
# %bb.0:
	sub	rsp, 24
	.seh_stackalloc 24
	.seh_endprologue
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp], rdx
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rsp]
	cmp	rax, qword ptr [rcx]
	jae	.LBB42_2
# %bb.1:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rsp + 16], rax
	jmp	.LBB42_3
.LBB42_2:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 16], rax
.LBB42_3:
	mov	rax, qword ptr [rsp + 16]
	add	rsp, 24
	ret
	.seh_endproc
                                        # -- End function
	.def	_ZNSt6vectorI5PointSaIS0_EE11_S_max_sizeERKS1_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt6vectorI5PointSaIS0_EE11_S_max_sizeERKS1_,"xr",discard,_ZNSt6vectorI5PointSaIS0_EE11_S_max_sizeERKS1_
	.globl	_ZNSt6vectorI5PointSaIS0_EE11_S_max_sizeERKS1_ # -- Begin function _ZNSt6vectorI5PointSaIS0_EE11_S_max_sizeERKS1_
	.p2align	4, 0x90
_ZNSt6vectorI5PointSaIS0_EE11_S_max_sizeERKS1_: # @_ZNSt6vectorI5PointSaIS0_EE11_S_max_sizeERKS1_
.Lfunc_begin3:
.seh_proc _ZNSt6vectorI5PointSaIS0_EE11_S_max_sizeERKS1_
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	sub	rsp, 88
	.seh_stackalloc 88
	.seh_endprologue
	mov	qword ptr [rsp + 56], rcx
	movabs	rax, 461168601842738790
	mov	qword ptr [rsp + 48], rax
	mov	rcx, qword ptr [rsp + 56]
	mov	qword ptr [rsp + 64], rcx
	mov	rcx, qword ptr [rsp + 64]
	mov	qword ptr [rsp + 72], rcx
	mov	rcx, qword ptr [rsp + 72]
	mov	qword ptr [rsp + 80], rcx
	mov	qword ptr [rsp + 40], rax
.Ltmp95:
	lea	rcx, [rsp + 48]
	lea	rdx, [rsp + 40]
	call	_ZSt3minIyERKT_S2_S2_
.Ltmp96:
	mov	qword ptr [rsp + 32], rax       # 8-byte Spill
	jmp	.LBB43_1
.LBB43_1:
	mov	rax, qword ptr [rsp + 32]       # 8-byte Reload
	mov	rax, qword ptr [rax]
	add	rsp, 88
	ret
.LBB43_2:
.Ltmp97:
	mov	rcx, rax
                                        # kill: def $eax killed $edx killed $rdx
	call	__clang_call_terminate
	int3
.Lfunc_end3:
	.seh_handlerdata
	.section	.text$_ZNSt6vectorI5PointSaIS0_EE11_S_max_sizeERKS1_,"xr",discard,_ZNSt6vectorI5PointSaIS0_EE11_S_max_sizeERKS1_
	.seh_endproc
	.section	.xdata$_ZNSt6vectorI5PointSaIS0_EE11_S_max_sizeERKS1_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table43:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp95-.Lfunc_begin3          # >> Call Site 1 <<
	.uleb128 .Ltmp96-.Ltmp95                #   Call between .Ltmp95 and .Ltmp96
	.uleb128 .Ltmp97-.Lfunc_begin3          #     jumps to .Ltmp97
	.byte	1                               #   On action: 1
.Lcst_end3:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2, 0x0
	.section	.text$_ZNSt6vectorI5PointSaIS0_EE11_S_max_sizeERKS1_,"xr",discard,_ZNSt6vectorI5PointSaIS0_EE11_S_max_sizeERKS1_
                                        # -- End function
	.def	_ZNKSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv,"xr",discard,_ZNKSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv
	.globl	_ZNKSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv # -- Begin function _ZNKSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv
	.p2align	4, 0x90
_ZNKSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv: # @_ZNKSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv
.seh_proc _ZNKSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv
# %bb.0:
	push	rax
	.seh_stackalloc 8
	.seh_endprologue
	mov	qword ptr [rsp], rcx
	mov	rax, qword ptr [rsp]
	pop	rcx
	ret
	.seh_endproc
                                        # -- End function
	.def	_ZSt3minIyERKT_S2_S2_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZSt3minIyERKT_S2_S2_,"xr",discard,_ZSt3minIyERKT_S2_S2_
	.globl	_ZSt3minIyERKT_S2_S2_           # -- Begin function _ZSt3minIyERKT_S2_S2_
	.p2align	4, 0x90
_ZSt3minIyERKT_S2_S2_:                  # @_ZSt3minIyERKT_S2_S2_
.seh_proc _ZSt3minIyERKT_S2_S2_
# %bb.0:
	sub	rsp, 24
	.seh_stackalloc 24
	.seh_endprologue
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp], rdx
	mov	rax, qword ptr [rsp]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rsp + 8]
	cmp	rax, qword ptr [rcx]
	jae	.LBB45_2
# %bb.1:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rsp + 16], rax
	jmp	.LBB45_3
.LBB45_2:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 16], rax
.LBB45_3:
	mov	rax, qword ptr [rsp + 16]
	add	rsp, 24
	ret
	.seh_endproc
                                        # -- End function
	.def	_ZNK9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEE4baseEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEE4baseEv,"xr",discard,_ZNK9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEE4baseEv
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEE4baseEv # -- Begin function _ZNK9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEE4baseEv
	.p2align	4, 0x90
_ZNK9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEE4baseEv: # @_ZNK9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEE4baseEv
.seh_proc _ZNK9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEE4baseEv
# %bb.0:
	push	rax
	.seh_stackalloc 8
	.seh_endprologue
	mov	qword ptr [rsp], rcx
	mov	rax, qword ptr [rsp]
	pop	rcx
	ret
	.seh_endproc
                                        # -- End function
	.def	_ZN9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEEC2ERKS2_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEEC2ERKS2_,"xr",discard,_ZN9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEEC2ERKS2_
	.globl	_ZN9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEEC2ERKS2_ # -- Begin function _ZN9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEEC2ERKS2_
	.p2align	4, 0x90
_ZN9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEEC2ERKS2_: # @_ZN9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEEC2ERKS2_
.seh_proc _ZN9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEEC2ERKS2_
# %bb.0:
	sub	rsp, 16
	.seh_stackalloc 16
	.seh_endprologue
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp], rdx
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rax], rcx
	add	rsp, 16
	ret
	.seh_endproc
                                        # -- End function
	.def	_ZNSt15__new_allocatorI5PointE8allocateEyPKv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt15__new_allocatorI5PointE8allocateEyPKv,"xr",discard,_ZNSt15__new_allocatorI5PointE8allocateEyPKv
	.globl	_ZNSt15__new_allocatorI5PointE8allocateEyPKv # -- Begin function _ZNSt15__new_allocatorI5PointE8allocateEyPKv
	.p2align	4, 0x90
_ZNSt15__new_allocatorI5PointE8allocateEyPKv: # @_ZNSt15__new_allocatorI5PointE8allocateEyPKv
.seh_proc _ZNSt15__new_allocatorI5PointE8allocateEyPKv
# %bb.0:
	sub	rsp, 72
	.seh_stackalloc 72
	.seh_endprologue
	mov	qword ptr [rsp + 56], rcx
	mov	qword ptr [rsp + 48], rdx
	mov	qword ptr [rsp + 40], r8
	mov	rcx, qword ptr [rsp + 56]
	mov	rax, qword ptr [rsp + 48]
	mov	qword ptr [rsp + 64], rcx
	movabs	rcx, 461168601842738790
	cmp	rax, rcx
	jbe	.LBB48_4
# %bb.1:
	movabs	rax, 922337203685477580
	cmp	qword ptr [rsp + 48], rax
	jbe	.LBB48_3
# %bb.2:
	call	_ZSt28__throw_bad_array_new_lengthv
.LBB48_3:
	call	_ZSt17__throw_bad_allocv
.LBB48_4:
	imul	rcx, qword ptr [rsp + 48], 20
	call	_Znwy
	nop
	add	rsp, 72
	ret
	.seh_endproc
                                        # -- End function
	.def	_ZSt12__relocate_aIP5PointS1_SaIS0_EET0_T_S4_S3_RT1_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZSt12__relocate_aIP5PointS1_SaIS0_EET0_T_S4_S3_RT1_,"xr",discard,_ZSt12__relocate_aIP5PointS1_SaIS0_EET0_T_S4_S3_RT1_
	.globl	_ZSt12__relocate_aIP5PointS1_SaIS0_EET0_T_S4_S3_RT1_ # -- Begin function _ZSt12__relocate_aIP5PointS1_SaIS0_EET0_T_S4_S3_RT1_
	.p2align	4, 0x90
_ZSt12__relocate_aIP5PointS1_SaIS0_EET0_T_S4_S3_RT1_: # @_ZSt12__relocate_aIP5PointS1_SaIS0_EET0_T_S4_S3_RT1_
.seh_proc _ZSt12__relocate_aIP5PointS1_SaIS0_EET0_T_S4_S3_RT1_
# %bb.0:
	sub	rsp, 88
	.seh_stackalloc 88
	.seh_endprologue
	mov	qword ptr [rsp + 80], rcx
	mov	qword ptr [rsp + 72], rdx
	mov	qword ptr [rsp + 64], r8
	mov	qword ptr [rsp + 56], r9
	mov	rcx, qword ptr [rsp + 80]
	call	_ZSt12__niter_baseIP5PointET_S2_
	mov	qword ptr [rsp + 40], rax       # 8-byte Spill
	mov	rcx, qword ptr [rsp + 72]
	call	_ZSt12__niter_baseIP5PointET_S2_
	mov	qword ptr [rsp + 48], rax       # 8-byte Spill
	mov	rcx, qword ptr [rsp + 64]
	call	_ZSt12__niter_baseIP5PointET_S2_
	mov	rcx, qword ptr [rsp + 40]       # 8-byte Reload
	mov	rdx, qword ptr [rsp + 48]       # 8-byte Reload
	mov	r8, rax
	mov	r9, qword ptr [rsp + 56]
	call	_ZSt14__relocate_a_1I5PointS0_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS2_E4typeES3_S3_S3_RSaIT0_E
	nop
	add	rsp, 88
	ret
	.seh_endproc
                                        # -- End function
	.def	_ZSt14__relocate_a_1I5PointS0_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS2_E4typeES3_S3_S3_RSaIT0_E;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZSt14__relocate_a_1I5PointS0_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS2_E4typeES3_S3_S3_RSaIT0_E,"xr",discard,_ZSt14__relocate_a_1I5PointS0_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS2_E4typeES3_S3_S3_RSaIT0_E
	.globl	_ZSt14__relocate_a_1I5PointS0_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS2_E4typeES3_S3_S3_RSaIT0_E # -- Begin function _ZSt14__relocate_a_1I5PointS0_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS2_E4typeES3_S3_S3_RSaIT0_E
	.p2align	4, 0x90
_ZSt14__relocate_a_1I5PointS0_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS2_E4typeES3_S3_S3_RSaIT0_E: # @_ZSt14__relocate_a_1I5PointS0_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS2_E4typeES3_S3_S3_RSaIT0_E
.seh_proc _ZSt14__relocate_a_1I5PointS0_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS2_E4typeES3_S3_S3_RSaIT0_E
# %bb.0:
	sub	rsp, 72
	.seh_stackalloc 72
	.seh_endprologue
	mov	qword ptr [rsp + 64], rcx
	mov	qword ptr [rsp + 56], rdx
	mov	qword ptr [rsp + 48], r8
	mov	qword ptr [rsp + 40], r9
	mov	rax, qword ptr [rsp + 56]
	mov	rcx, qword ptr [rsp + 64]
	sub	rax, rcx
	mov	ecx, 20
	cqo
	idiv	rcx
	mov	qword ptr [rsp + 32], rax
	cmp	qword ptr [rsp + 32], 0
	jle	.LBB50_2
# %bb.1:
	mov	rcx, qword ptr [rsp + 48]
	mov	rdx, qword ptr [rsp + 64]
	imul	r8, qword ptr [rsp + 32], 20
	call	memcpy
.LBB50_2:
	mov	rax, qword ptr [rsp + 48]
	imul	rcx, qword ptr [rsp + 32], 20
	add	rax, rcx
	add	rsp, 72
	ret
	.seh_endproc
                                        # -- End function
	.def	_ZSt12__niter_baseIP5PointET_S2_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZSt12__niter_baseIP5PointET_S2_,"xr",discard,_ZSt12__niter_baseIP5PointET_S2_
	.globl	_ZSt12__niter_baseIP5PointET_S2_ # -- Begin function _ZSt12__niter_baseIP5PointET_S2_
	.p2align	4, 0x90
_ZSt12__niter_baseIP5PointET_S2_:       # @_ZSt12__niter_baseIP5PointET_S2_
.seh_proc _ZSt12__niter_baseIP5PointET_S2_
# %bb.0:
	push	rax
	.seh_stackalloc 8
	.seh_endprologue
	mov	qword ptr [rsp], rcx
	mov	rax, qword ptr [rsp]
	pop	rcx
	ret
	.seh_endproc
                                        # -- End function
	.bss
	.globl	numIterations                   # @numIterations
	.p2align	2, 0x0
numIterations:
	.long	0                               # 0x0

	.section	.rdata,"dr"
.L.str:                                 # @.str
	.asciz	"MandelSetOut.csv"

.L.str.1:                               # @.str.1
	.asciz	"timing_unopt.txt"

.L.str.2:                               # @.str.2
	.asciz	"X,Y,Iteration,sizeX,sizeY"

.L.str.3:                               # @.str.3
	.asciz	","

.L.str.4:                               # @.str.4
	.asciz	",0,0"

.L.str.5:                               # @.str.5
	.asciz	" Iterations in "

.L.str.6:                               # @.str.6
	.asciz	"ms using params:\n X = "

.L.str.7:                               # @.str.7
	.asciz	", Y = "

.L.str.8:                               # @.str.8
	.asciz	"vector::_M_range_check: __n (which is %zu) >= this->size() (which is %zu)"

.L.str.9:                               # @.str.9
	.asciz	"vector::_M_realloc_append"

	.section	.drectve,"yni"
	.ascii	" -exclude-symbols:__clang_call_terminate"
	.addrsig
	.addrsig_sym _ZNSt6chrono3_V212system_clock3nowEv
	.addrsig_sym _Z18unoptimized_EscapePSt6vectorI5PointSaIS0_EE
	.addrsig_sym __gxx_personality_seh0
	.addrsig_sym _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	.addrsig_sym _ZNSolsEPFRSoS_E
	.addrsig_sym _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.addrsig_sym _ZNKSt6vectorI5PointSaIS0_EE4sizeEv
	.addrsig_sym _ZNSolsEi
	.addrsig_sym _ZNSt6vectorI5PointSaIS0_EE2atEy
	.addrsig_sym _ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv
	.addrsig_sym _ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.addrsig_sym _ZNSolsEl
	.addrsig_sym _ZNSolsEd
	.addrsig_sym _ZNKSt6chrono8durationIdSt5ratioILx1ELx1000EEE5countEv
	.addrsig_sym _ZNSt6vectorI5PointSaIS0_EE9push_backERKS0_
	.addrsig_sym _ZNSt6chronomiIxSt5ratioILx1ELx1000000000EExS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.addrsig_sym _ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEE16time_since_epochEv
	.addrsig_sym _ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000000EEE5countEv
	.addrsig_sym _ZNSt6chrono13duration_castINS_8durationIdSt5ratioILx1ELx1000EEEExS2_ILx1ELx1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE
	.addrsig_sym _ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILx1ELx1000EEEES2_ILx1ELx1000000EEdLb1ELb0EE6__castIxS2_ILx1ELx1000000000EEEES4_RKNS1_IT_T0_EE
	.addrsig_sym _ZNSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv
	.addrsig_sym __clang_call_terminate
	.addrsig_sym __cxa_begin_catch
	.addrsig_sym _ZSt9terminatev
	.addrsig_sym _ZSt8_DestroyIP5PointEvT_S2_
	.addrsig_sym _ZNSt12_Destroy_auxILb1EE9__destroyIP5PointEEvT_S4_
	.addrsig_sym _ZNSt12_Vector_baseI5PointSaIS0_EE13_M_deallocateEPS0_y
	.addrsig_sym _ZNSt15__new_allocatorI5PointE10deallocateEPS0_y
	.addrsig_sym _ZdlPv
	.addrsig_sym _ZNKSt6vectorI5PointSaIS0_EE14_M_range_checkEy
	.addrsig_sym _ZNSt6vectorI5PointSaIS0_EEixEy
	.addrsig_sym _ZSt24__throw_out_of_range_fmtPKcz
	.addrsig_sym _ZNSt6vectorI5PointSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_
	.addrsig_sym _ZNKSt6vectorI5PointSaIS0_EE12_M_check_lenEyPKc
	.addrsig_sym _ZN9__gnu_cxxmiIP5PointSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	.addrsig_sym _ZNSt6vectorI5PointSaIS0_EE3endEv
	.addrsig_sym _ZNSt6vectorI5PointSaIS0_EE5beginEv
	.addrsig_sym _ZNSt12_Vector_baseI5PointSaIS0_EE11_M_allocateEy
	.addrsig_sym _ZSt12__to_addressI5PointEPT_S2_
	.addrsig_sym _ZNSt6vectorI5PointSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	.addrsig_sym _ZNKSt6vectorI5PointSaIS0_EE8max_sizeEv
	.addrsig_sym _ZSt20__throw_length_errorPKc
	.addrsig_sym _ZSt3maxIyERKT_S2_S2_
	.addrsig_sym _ZNSt6vectorI5PointSaIS0_EE11_S_max_sizeERKS1_
	.addrsig_sym _ZNKSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv
	.addrsig_sym _ZSt3minIyERKT_S2_S2_
	.addrsig_sym _ZNK9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEE4baseEv
	.addrsig_sym _ZNSt15__new_allocatorI5PointE8allocateEyPKv
	.addrsig_sym _ZSt28__throw_bad_array_new_lengthv
	.addrsig_sym _ZSt17__throw_bad_allocv
	.addrsig_sym _Znwy
	.addrsig_sym _ZSt12__relocate_aIP5PointS1_SaIS0_EET0_T_S4_S3_RT1_
	.addrsig_sym _ZSt14__relocate_a_1I5PointS0_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS2_E4typeES3_S3_S3_RSaIT0_E
	.addrsig_sym _ZSt12__niter_baseIP5PointET_S2_
	.addrsig_sym _Unwind_Resume
	.addrsig_sym numIterations
