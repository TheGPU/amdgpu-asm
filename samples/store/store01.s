	.hsa_code_object_version 2,1
	.hsa_code_object_isa 9,0,0,"AMD","AMDGPU"
	.p2align	8
	.type	hello_world,@function
	.amdgpu_hsa_kernel hello_world
hello_world:
.Lfunc_begin0:
	.amd_kernel_code_t
                enable_sgpr_kernarg_segment_ptr = 1
                float_mode = 192
                enable_ieee_mode = 1
                enable_trap_handler = 1
                is_ptr64 = 1
                compute_pgm_rsrc1_vgprs = 0
                compute_pgm_rsrc1_sgprs = 0
                compute_pgm_rsrc2_user_sgpr = 2
                kernarg_segment_byte_size = 8
              wavefront_sgpr_count = 2
              workitem_vgpr_count = 3
	.end_amd_kernel_code_t
	s_load_dwordx2 s[0:1], s[0:1], 0x0
	v_lshlrev_b32 v0, 2, v0
	v_mov_b32 v2, 3.14159
	s_waitcnt lgkmcnt(0)
	v_mov_b32 v1, s1
	v_add_co_u32 v0, vcc, s0, v0
	v_addc_co_u32 v1, vcc, 0, v1, vcc
	global_store_dword v[0:1], v2 off
	s_endpgm
.Lfunc_end0:
	.size	hello_world, .Lfunc_end0-hello_world

