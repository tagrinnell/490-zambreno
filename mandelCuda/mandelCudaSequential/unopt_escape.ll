; ModuleID = 'unopt_escape.cpp'
source_filename = "unopt_escape.cpp"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-gnu"

%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<Point, std::allocator<Point>>::_Vector_impl" }
%"struct.std::_Vector_base<Point, std::allocator<Point>>::_Vector_impl" = type { %"struct.std::_Vector_base<Point, std::allocator<Point>>::_Vector_impl_data" }
%"struct.std::_Vector_base<Point, std::allocator<Point>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::chrono::time_point" = type { %"class.std::chrono::duration" }
%"class.std::chrono::duration" = type { i64 }
%"class.std::basic_ofstream" = type { %"class.std::basic_ostream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::basic_filebuf" = type { %"class.std::basic_streambuf", i64, %"class.std::__basic_file", i32, %struct._Mbstatet, %struct._Mbstatet, %struct._Mbstatet, ptr, i64, i8, i8, i8, i8, ptr, ptr, i8, ptr, ptr, i64, ptr, ptr }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::__basic_file" = type <{ ptr, i8, [7 x i8] }>
%struct._Mbstatet = type { i32, i16, i16 }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type <{ ptr, i32, [4 x i8] }>
%"class.std::chrono::duration.0" = type { double }
%struct.Point = type { i32, i32, i32, i32, i32 }
%"class.__gnu_cxx::__normal_iterator" = type { ptr }
%struct._Guard = type { ptr, i64, ptr }

$_ZNSt6vectorI5PointSaIS0_EEC2Ev = comdat any

$_ZNKSt6vectorI5PointSaIS0_EE4sizeEv = comdat any

$_ZNSt6vectorI5PointSaIS0_EE2atEy = comdat any

$_ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE = comdat any

$_ZNSt6chrono8durationIdSt5ratioILx1ELx1000EEEC2IxS1_ILx1ELx1000000000EEvEERKNS0_IT_T0_EE = comdat any

$_ZNKSt6chrono8durationIdSt5ratioILx1ELx1000EEE5countEv = comdat any

$_ZNSt6vectorI5PointSaIS0_EED2Ev = comdat any

$_ZNSt6vectorI5PointSaIS0_EE9push_backERKS0_ = comdat any

$_ZNSt12_Vector_baseI5PointSaIS0_EEC2Ev = comdat any

$_ZNSt12_Vector_baseI5PointSaIS0_EE12_Vector_implC2Ev = comdat any

$_ZNSt12_Vector_baseI5PointSaIS0_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt6chronomiIxSt5ratioILx1ELx1000000000EExS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_ = comdat any

$_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEE16time_since_epochEv = comdat any

$_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000000EEE5countEv = comdat any

$_ZNSt6chrono8durationIxSt5ratioILx1ELx1000000000EEEC2IxvEERKT_ = comdat any

$_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILx1ELx1000EEEExS2_ILx1ELx1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE = comdat any

$_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILx1ELx1000EEEES2_ILx1ELx1000000EEdLb1ELb0EE6__castIxS2_ILx1ELx1000000000EEEES4_RKNS1_IT_T0_EE = comdat any

$_ZNSt6chrono8durationIdSt5ratioILx1ELx1000EEEC2IdvEERKT_ = comdat any

$_ZNSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv = comdat any

$__clang_call_terminate = comdat any

$_ZNSt12_Vector_baseI5PointSaIS0_EED2Ev = comdat any

$_ZSt8_DestroyIP5PointEvT_S2_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIP5PointEEvT_S4_ = comdat any

$_ZNSt12_Vector_baseI5PointSaIS0_EE13_M_deallocateEPS0_y = comdat any

$_ZNSt12_Vector_baseI5PointSaIS0_EE12_Vector_implD2Ev = comdat any

$_ZNSt15__new_allocatorI5PointE10deallocateEPS0_y = comdat any

$_ZNSt15__new_allocatorI5PointED2Ev = comdat any

$_ZNKSt6vectorI5PointSaIS0_EE14_M_range_checkEy = comdat any

$_ZNSt6vectorI5PointSaIS0_EEixEy = comdat any

$_ZNSt6vectorI5PointSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_ = comdat any

$_ZNKSt6vectorI5PointSaIS0_EE12_M_check_lenEyPKc = comdat any

$_ZN9__gnu_cxxmiIP5PointSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_ = comdat any

$_ZNSt6vectorI5PointSaIS0_EE3endEv = comdat any

$_ZNSt6vectorI5PointSaIS0_EE5beginEv = comdat any

$_ZNSt12_Vector_baseI5PointSaIS0_EE11_M_allocateEy = comdat any

$_ZZNSt6vectorI5PointSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_EN6_GuardC2EPS0_yRS1_ = comdat any

$_ZSt12__to_addressI5PointEPT_S2_ = comdat any

$_ZNSt6vectorI5PointSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_ = comdat any

$_ZZNSt6vectorI5PointSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_EN6_GuardD2Ev = comdat any

$_ZNKSt6vectorI5PointSaIS0_EE8max_sizeEv = comdat any

$_ZSt3maxIyERKT_S2_S2_ = comdat any

$_ZNSt6vectorI5PointSaIS0_EE11_S_max_sizeERKS1_ = comdat any

$_ZNKSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv = comdat any

$_ZSt3minIyERKT_S2_S2_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEE4baseEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEEC2ERKS2_ = comdat any

$_ZNSt15__new_allocatorI5PointE8allocateEyPKv = comdat any

$_ZSt12__relocate_aIP5PointS1_SaIS0_EET0_T_S4_S3_RT1_ = comdat any

$_ZSt14__relocate_a_1I5PointS0_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS2_E4typeES3_S3_S3_RSaIT0_E = comdat any

$_ZSt12__niter_baseIP5PointET_S2_ = comdat any

@numIterations = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"MandelSetOut.csv\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"timing_unopt.txt\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"X,Y,Iteration,sizeX,sizeY\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c",0,0\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c" Iterations in \00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"ms using params:\0A X = \00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c", Y = \00", align 1
@.str.8 = private unnamed_addr constant [74 x i8] c"vector::_M_range_check: __n (which is %zu) >= this->size() (which is %zu)\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_append\00", align 1

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #0 personality ptr @__gxx_personality_seh0 {
  %1 = alloca i32, align 4
  %2 = alloca %"class.std::vector", align 8
  %3 = alloca %"class.std::chrono::time_point", align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca %"class.std::chrono::time_point", align 8
  %7 = alloca %"class.std::basic_ofstream", align 8
  %8 = alloca %"class.std::basic_ofstream", align 8
  %9 = alloca i32, align 4
  %10 = alloca %"class.std::chrono::duration.0", align 8
  %11 = alloca %"class.std::chrono::duration", align 8
  store i32 0, ptr %1, align 4
  call void @_ZNSt6vectorI5PointSaIS0_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #12
  store i32 0, ptr @numIterations, align 4
  %12 = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #12
  %13 = getelementptr inbounds %"class.std::chrono::time_point", ptr %3, i32 0, i32 0
  %14 = getelementptr inbounds %"class.std::chrono::duration", ptr %13, i32 0, i32 0
  store i64 %12, ptr %14, align 8
  invoke void @_Z18unoptimized_EscapePSt6vectorI5PointSaIS0_EE(ptr noundef %2)
          to label %15 unwind label %84

15:                                               ; preds = %0
  %16 = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #12
  %17 = getelementptr inbounds %"class.std::chrono::time_point", ptr %6, i32 0, i32 0
  %18 = getelementptr inbounds %"class.std::chrono::duration", ptr %17, i32 0, i32 0
  store i64 %16, ptr %18, align 8
  invoke void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(216) %7, ptr noundef @.str, i32 noundef 16)
          to label %19 unwind label %84

19:                                               ; preds = %15
  invoke void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(216) %8, ptr noundef @.str.1, i32 noundef 16)
          to label %20 unwind label %88

20:                                               ; preds = %19
  %21 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef @.str.2)
          to label %22 unwind label %92

22:                                               ; preds = %20
  %23 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %24 unwind label %92

24:                                               ; preds = %22
  store i32 0, ptr %9, align 4
  br label %25

25:                                               ; preds = %129, %24
  %26 = load i32, ptr %9, align 4
  %27 = sext i32 %26 to i64
  %28 = call noundef i64 @_ZNKSt6vectorI5PointSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #12
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %132

30:                                               ; preds = %25
  %31 = load i32, ptr %9, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %96

33:                                               ; preds = %30
  %34 = load i32, ptr %9, align 4
  %35 = sext i32 %34 to i64
  %36 = invoke noundef nonnull align 4 dereferenceable(20) ptr @_ZNSt6vectorI5PointSaIS0_EE2atEy(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %35)
          to label %37 unwind label %92

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.Point, ptr %36, i32 0, i32 0
  %39 = load i32, ptr %38, align 4
  %40 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef %39)
          to label %41 unwind label %92

41:                                               ; preds = %37
  %42 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef @.str.3)
          to label %43 unwind label %92

43:                                               ; preds = %41
  %44 = load i32, ptr %9, align 4
  %45 = sext i32 %44 to i64
  %46 = invoke noundef nonnull align 4 dereferenceable(20) ptr @_ZNSt6vectorI5PointSaIS0_EE2atEy(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %45)
          to label %47 unwind label %92

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.Point, ptr %46, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %42, i32 noundef %49)
          to label %51 unwind label %92

51:                                               ; preds = %47
  %52 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef @.str.3)
          to label %53 unwind label %92

53:                                               ; preds = %51
  %54 = load i32, ptr %9, align 4
  %55 = sext i32 %54 to i64
  %56 = invoke noundef nonnull align 4 dereferenceable(20) ptr @_ZNSt6vectorI5PointSaIS0_EE2atEy(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %55)
          to label %57 unwind label %92

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.Point, ptr %56, i32 0, i32 2
  %59 = load i32, ptr %58, align 4
  %60 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %52, i32 noundef %59)
          to label %61 unwind label %92

61:                                               ; preds = %57
  %62 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef @.str.3)
          to label %63 unwind label %92

63:                                               ; preds = %61
  %64 = load i32, ptr %9, align 4
  %65 = sext i32 %64 to i64
  %66 = invoke noundef nonnull align 4 dereferenceable(20) ptr @_ZNSt6vectorI5PointSaIS0_EE2atEy(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %65)
          to label %67 unwind label %92

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.Point, ptr %66, i32 0, i32 3
  %69 = load i32, ptr %68, align 4
  %70 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %62, i32 noundef %69)
          to label %71 unwind label %92

71:                                               ; preds = %67
  %72 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %70, ptr noundef @.str.3)
          to label %73 unwind label %92

73:                                               ; preds = %71
  %74 = load i32, ptr %9, align 4
  %75 = sext i32 %74 to i64
  %76 = invoke noundef nonnull align 4 dereferenceable(20) ptr @_ZNSt6vectorI5PointSaIS0_EE2atEy(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %75)
          to label %77 unwind label %92

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.Point, ptr %76, i32 0, i32 4
  %79 = load i32, ptr %78, align 4
  %80 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %72, i32 noundef %79)
          to label %81 unwind label %92

81:                                               ; preds = %77
  %82 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %80, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %83 unwind label %92

83:                                               ; preds = %81
  br label %96

84:                                               ; preds = %15, %0
  %85 = landingpad { ptr, i32 }
          cleanup
  %86 = extractvalue { ptr, i32 } %85, 0
  store ptr %86, ptr %4, align 8
  %87 = extractvalue { ptr, i32 } %85, 1
  store i32 %87, ptr %5, align 4
  br label %160

88:                                               ; preds = %19
  %89 = landingpad { ptr, i32 }
          cleanup
  %90 = extractvalue { ptr, i32 } %89, 0
  store ptr %90, ptr %4, align 8
  %91 = extractvalue { ptr, i32 } %89, 1
  store i32 %91, ptr %5, align 4
  br label %159

92:                                               ; preds = %156, %154, %152, %150, %148, %146, %144, %142, %140, %137, %135, %133, %132, %126, %124, %120, %116, %114, %110, %106, %104, %100, %96, %81, %77, %73, %71, %67, %63, %61, %57, %53, %51, %47, %43, %41, %37, %33, %22, %20
  %93 = landingpad { ptr, i32 }
          cleanup
  %94 = extractvalue { ptr, i32 } %93, 0
  store ptr %94, ptr %4, align 8
  %95 = extractvalue { ptr, i32 } %93, 1
  store i32 %95, ptr %5, align 4
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(216) %8) #12
  br label %159

96:                                               ; preds = %83, %30
  %97 = load i32, ptr %9, align 4
  %98 = sext i32 %97 to i64
  %99 = invoke noundef nonnull align 4 dereferenceable(20) ptr @_ZNSt6vectorI5PointSaIS0_EE2atEy(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %98)
          to label %100 unwind label %92

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.Point, ptr %99, i32 0, i32 0
  %102 = load i32, ptr %101, align 4
  %103 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef %102)
          to label %104 unwind label %92

104:                                              ; preds = %100
  %105 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %103, ptr noundef @.str.3)
          to label %106 unwind label %92

106:                                              ; preds = %104
  %107 = load i32, ptr %9, align 4
  %108 = sext i32 %107 to i64
  %109 = invoke noundef nonnull align 4 dereferenceable(20) ptr @_ZNSt6vectorI5PointSaIS0_EE2atEy(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %108)
          to label %110 unwind label %92

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.Point, ptr %109, i32 0, i32 1
  %112 = load i32, ptr %111, align 4
  %113 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %105, i32 noundef %112)
          to label %114 unwind label %92

114:                                              ; preds = %110
  %115 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %113, ptr noundef @.str.3)
          to label %116 unwind label %92

116:                                              ; preds = %114
  %117 = load i32, ptr %9, align 4
  %118 = sext i32 %117 to i64
  %119 = invoke noundef nonnull align 4 dereferenceable(20) ptr @_ZNSt6vectorI5PointSaIS0_EE2atEy(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %118)
          to label %120 unwind label %92

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.Point, ptr %119, i32 0, i32 2
  %122 = load i32, ptr %121, align 4
  %123 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %115, i32 noundef %122)
          to label %124 unwind label %92

124:                                              ; preds = %120
  %125 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %123, ptr noundef @.str.4)
          to label %126 unwind label %92

126:                                              ; preds = %124
  %127 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %125, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %128 unwind label %92

128:                                              ; preds = %126
  br label %129

129:                                              ; preds = %128
  %130 = load i32, ptr %9, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, ptr %9, align 4
  br label %25, !llvm.loop !5

132:                                              ; preds = %25
  invoke void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(216) %7)
          to label %133 unwind label %92

133:                                              ; preds = %132
  %134 = invoke i64 @_ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %135 unwind label %92

135:                                              ; preds = %133
  %136 = getelementptr inbounds %"class.std::chrono::duration", ptr %11, i32 0, i32 0
  store i64 %134, ptr %136, align 8
  invoke void @_ZNSt6chrono8durationIdSt5ratioILx1ELx1000EEEC2IxS1_ILx1ELx1000000000EEvEERKNS0_IT_T0_EE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %137 unwind label %92

137:                                              ; preds = %135
  %138 = load i32, ptr @numIterations, align 4
  %139 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEl(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef %138)
          to label %140 unwind label %92

140:                                              ; preds = %137
  %141 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %139, ptr noundef @.str.5)
          to label %142 unwind label %92

142:                                              ; preds = %140
  %143 = invoke noundef double @_ZNKSt6chrono8durationIdSt5ratioILx1ELx1000EEE5countEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %144 unwind label %92

144:                                              ; preds = %142
  %145 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEd(ptr noundef nonnull align 8 dereferenceable(8) %141, double noundef %143)
          to label %146 unwind label %92

146:                                              ; preds = %144
  %147 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %145, ptr noundef @.str.6)
          to label %148 unwind label %92

148:                                              ; preds = %146
  %149 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %147, i32 noundef 1920)
          to label %150 unwind label %92

150:                                              ; preds = %148
  %151 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %149, ptr noundef @.str.7)
          to label %152 unwind label %92

152:                                              ; preds = %150
  %153 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %151, i32 noundef 1080)
          to label %154 unwind label %92

154:                                              ; preds = %152
  %155 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %153, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %156 unwind label %92

156:                                              ; preds = %154
  invoke void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(216) %8)
          to label %157 unwind label %92

157:                                              ; preds = %156
  store i32 0, ptr %1, align 4
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(216) %8) #12
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(216) %7) #12
  call void @_ZNSt6vectorI5PointSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #12
  %158 = load i32, ptr %1, align 4
  ret i32 %158

159:                                              ; preds = %92, %88
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(216) %7) #12
  br label %160

160:                                              ; preds = %159, %84
  call void @_ZNSt6vectorI5PointSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #12
  br label %161

161:                                              ; preds = %160
  %162 = load ptr, ptr %4, align 8
  %163 = load i32, ptr %5, align 4
  %164 = insertvalue { ptr, i32 } poison, ptr %162, 0
  %165 = insertvalue { ptr, i32 } %164, i32 %163, 1
  resume { ptr, i32 } %165
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI5PointSaIS0_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSt12_Vector_baseI5PointSaIS0_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #12
  ret void
}

; Function Attrs: nounwind
declare dso_local i64 @_ZNSt6chrono3_V212system_clock3nowEv() #2

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z18unoptimized_EscapePSt6vectorI5PointSaIS0_EE(ptr noundef %0) #3 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca %struct.Point, align 4
  %12 = alloca %struct.Point, align 4
  %13 = alloca %struct.Point, align 4
  store ptr %0, ptr %2, align 8
  store i32 0, ptr %3, align 4
  br label %14

14:                                               ; preds = %97, %1
  %15 = load i32, ptr %3, align 4
  %16 = icmp slt i32 %15, 1920
  br i1 %16, label %17, label %100

17:                                               ; preds = %14
  store i32 0, ptr %4, align 4
  br label %18

18:                                               ; preds = %91, %17
  %19 = load i32, ptr %4, align 4
  %20 = icmp slt i32 %19, 1080
  br i1 %20, label %21, label %94

21:                                               ; preds = %18
  %22 = load i32, ptr %3, align 4
  %23 = sitofp i32 %22 to double
  %24 = fdiv double %23, 1.920000e+03
  %25 = call double @llvm.fmuladd.f64(double %24, double 2.470000e+00, double -2.000000e+00)
  %26 = fptrunc double %25 to float
  store float %26, ptr %5, align 4
  %27 = load i32, ptr %4, align 4
  %28 = sitofp i32 %27 to double
  %29 = fdiv double %28, 1.080000e+03
  %30 = call double @llvm.fmuladd.f64(double %29, double 2.240000e+00, double -1.120000e+00)
  %31 = fptrunc double %30 to float
  store float %31, ptr %6, align 4
  store float 0.000000e+00, ptr %7, align 4
  store float 0.000000e+00, ptr %8, align 4
  store i32 0, ptr %9, align 4
  br label %32

32:                                               ; preds = %45, %21
  %33 = load float, ptr %7, align 4
  %34 = load float, ptr %7, align 4
  %35 = load float, ptr %8, align 4
  %36 = load float, ptr %8, align 4
  %37 = fmul float %35, %36
  %38 = call float @llvm.fmuladd.f32(float %33, float %34, float %37)
  %39 = fcmp ole float %38, 4.000000e+00
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i32, ptr %9, align 4
  %42 = icmp slt i32 %41, 5000
  br label %43

43:                                               ; preds = %40, %32
  %44 = phi i1 [ false, %32 ], [ %42, %40 ]
  br i1 %44, label %45, label %63

45:                                               ; preds = %43
  %46 = load float, ptr %7, align 4
  %47 = load float, ptr %7, align 4
  %48 = load float, ptr %8, align 4
  %49 = load float, ptr %8, align 4
  %50 = fmul float %48, %49
  %51 = fneg float %50
  %52 = call float @llvm.fmuladd.f32(float %46, float %47, float %51)
  %53 = load float, ptr %5, align 4
  %54 = fadd float %52, %53
  store float %54, ptr %10, align 4
  %55 = load float, ptr %7, align 4
  %56 = fmul float 2.000000e+00, %55
  %57 = load float, ptr %8, align 4
  %58 = load float, ptr %6, align 4
  %59 = call float @llvm.fmuladd.f32(float %56, float %57, float %58)
  store float %59, ptr %8, align 4
  %60 = load float, ptr %10, align 4
  store float %60, ptr %7, align 4
  %61 = load i32, ptr %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, ptr %9, align 4
  br label %32, !llvm.loop !7

63:                                               ; preds = %43
  %64 = load i32, ptr %3, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i32, ptr %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %66, %63
  %70 = getelementptr inbounds %struct.Point, ptr %12, i32 0, i32 0
  %71 = load i32, ptr %3, align 4
  store i32 %71, ptr %70, align 4
  %72 = getelementptr inbounds %struct.Point, ptr %12, i32 0, i32 1
  %73 = load i32, ptr %4, align 4
  store i32 %73, ptr %72, align 4
  %74 = getelementptr inbounds %struct.Point, ptr %12, i32 0, i32 2
  %75 = load i32, ptr %9, align 4
  store i32 %75, ptr %74, align 4
  %76 = getelementptr inbounds %struct.Point, ptr %12, i32 0, i32 3
  store i32 0, ptr %76, align 4
  %77 = getelementptr inbounds %struct.Point, ptr %12, i32 0, i32 4
  store i32 0, ptr %77, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %11, ptr align 4 %12, i64 20, i1 false)
  br label %87

78:                                               ; preds = %66
  %79 = getelementptr inbounds %struct.Point, ptr %13, i32 0, i32 0
  %80 = load i32, ptr %3, align 4
  store i32 %80, ptr %79, align 4
  %81 = getelementptr inbounds %struct.Point, ptr %13, i32 0, i32 1
  %82 = load i32, ptr %4, align 4
  store i32 %82, ptr %81, align 4
  %83 = getelementptr inbounds %struct.Point, ptr %13, i32 0, i32 2
  %84 = load i32, ptr %9, align 4
  store i32 %84, ptr %83, align 4
  %85 = getelementptr inbounds %struct.Point, ptr %13, i32 0, i32 3
  store i32 1920, ptr %85, align 4
  %86 = getelementptr inbounds %struct.Point, ptr %13, i32 0, i32 4
  store i32 1080, ptr %86, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %11, ptr align 4 %13, i64 20, i1 false)
  br label %87

87:                                               ; preds = %78, %69
  %88 = load ptr, ptr %2, align 8
  call void @_ZNSt6vectorI5PointSaIS0_EE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %88, ptr noundef nonnull align 4 dereferenceable(20) %11)
  %89 = load i32, ptr @numIterations, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, ptr @numIterations, align 4
  br label %91

91:                                               ; preds = %87
  %92 = load i32, ptr %4, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, ptr %4, align 4
  br label %18, !llvm.loop !8

94:                                               ; preds = %18
  %95 = load i32, ptr @numIterations, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, ptr @numIterations, align 4
  br label %97

97:                                               ; preds = %94
  %98 = load i32, ptr %3, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, ptr %3, align 4
  br label %14, !llvm.loop !9

100:                                              ; preds = %14
  ret void
}

declare dso_local i32 @__gxx_personality_seh0(...)

declare dso_local void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef, i32 noundef) unnamed_addr #4

declare dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #4

declare dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #4

declare dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI5PointSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Vector_base<Point, std::allocator<Point>>::_Vector_impl_data", ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.std::_Vector_base<Point, std::allocator<Point>>::_Vector_impl_data", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  %10 = ptrtoint ptr %6 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 20
  ret i64 %13
}

declare dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #4

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(20) ptr @_ZNSt6vectorI5PointSaIS0_EE2atEy(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #3 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load i64, ptr %4, align 8
  call void @_ZNKSt6vectorI5PointSaIS0_EE14_M_range_checkEy(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %6)
  %7 = load i64, ptr %4, align 8
  %8 = call noundef nonnull align 4 dereferenceable(20) ptr @_ZNSt6vectorI5PointSaIS0_EEixEy(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %7) #12
  ret ptr %8
}

declare dso_local void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(216)) #4

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #3 comdat {
  %3 = alloca %"class.std::chrono::duration", align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %"class.std::chrono::duration", align 8
  %7 = alloca %"class.std::chrono::duration", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = call i64 @_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEE16time_since_epochEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  %10 = getelementptr inbounds %"class.std::chrono::duration", ptr %6, i32 0, i32 0
  store i64 %9, ptr %10, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = call i64 @_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEE16time_since_epochEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
  %13 = getelementptr inbounds %"class.std::chrono::duration", ptr %7, i32 0, i32 0
  store i64 %12, ptr %13, align 8
  %14 = call i64 @_ZNSt6chronomiIxSt5ratioILx1ELx1000000000EExS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %15 = getelementptr inbounds %"class.std::chrono::duration", ptr %3, i32 0, i32 0
  store i64 %14, ptr %15, align 8
  %16 = getelementptr inbounds %"class.std::chrono::duration", ptr %3, i32 0, i32 0
  %17 = load i64, ptr %16, align 8
  ret i64 %17
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6chrono8durationIdSt5ratioILx1ELx1000EEEC2IxS1_ILx1ELx1000000000EEvEERKNS0_IT_T0_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"class.std::chrono::duration.0", align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %"class.std::chrono::duration.0", ptr %6, i32 0, i32 0
  %8 = load ptr, ptr %4, align 8
  %9 = call i64 @_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILx1ELx1000EEEExS2_ILx1ELx1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %8)
  %10 = getelementptr inbounds %"class.std::chrono::duration.0", ptr %5, i32 0, i32 0
  store i64 %9, ptr %10, align 8
  %11 = call noundef double @_ZNKSt6chrono8durationIdSt5ratioILx1ELx1000EEE5countEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
  store double %11, ptr %7, align 8
  ret void
}

declare dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEl(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #4

declare dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEd(ptr noundef nonnull align 8 dereferenceable(8), double noundef) #4

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef double @_ZNKSt6chrono8durationIdSt5ratioILx1ELx1000EEE5countEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::chrono::duration.0", ptr %3, i32 0, i32 0
  %5 = load double, ptr %4, align 8
  ret double %5
}

; Function Attrs: nounwind
declare dso_local void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI5PointSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %"struct.std::_Vector_base", ptr %6, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.std::_Vector_base<Point, std::allocator<Point>>::_Vector_impl_data", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %"struct.std::_Vector_base", ptr %6, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.std::_Vector_base<Point, std::allocator<Point>>::_Vector_impl_data", ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #12
  store ptr %9, ptr %2, align 8
  store ptr %12, ptr %3, align 8
  store ptr %13, ptr %4, align 8
  %14 = load ptr, ptr %2, align 8
  %15 = load ptr, ptr %3, align 8
  invoke void @_ZSt8_DestroyIP5PointEvT_S2_(ptr noundef %14, ptr noundef %15)
          to label %16 unwind label %18

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %16
  call void @_ZNSt12_Vector_baseI5PointSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #12
  ret void

18:                                               ; preds = %1
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  call void @__clang_call_terminate(ptr %20) #13
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI5PointSaIS0_EE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(20) %1) #3 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %9, align 8
  store ptr %1, ptr %10, align 8
  %11 = load ptr, ptr %9, align 8
  %12 = getelementptr inbounds %"struct.std::_Vector_base", ptr %11, i32 0, i32 0
  %13 = getelementptr inbounds %"struct.std::_Vector_base<Point, std::allocator<Point>>::_Vector_impl_data", ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %"struct.std::_Vector_base", ptr %11, i32 0, i32 0
  %16 = getelementptr inbounds %"struct.std::_Vector_base<Point, std::allocator<Point>>::_Vector_impl_data", ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = icmp ne ptr %14, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %2
  %20 = getelementptr inbounds %"struct.std::_Vector_base", ptr %11, i32 0, i32 0
  %21 = getelementptr inbounds %"struct.std::_Vector_base", ptr %11, i32 0, i32 0
  %22 = getelementptr inbounds %"struct.std::_Vector_base<Point, std::allocator<Point>>::_Vector_impl_data", ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8
  %24 = load ptr, ptr %10, align 8
  store ptr %20, ptr %6, align 8
  store ptr %23, ptr %7, align 8
  store ptr %24, ptr %8, align 8
  %25 = load ptr, ptr %6, align 8
  %26 = load ptr, ptr %7, align 8
  %27 = load ptr, ptr %8, align 8
  store ptr %25, ptr %3, align 8
  store ptr %26, ptr %4, align 8
  store ptr %27, ptr %5, align 8
  %28 = load ptr, ptr %3, align 8
  %29 = load ptr, ptr %4, align 8
  %30 = load ptr, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %29, ptr align 4 %30, i64 20, i1 false)
  %31 = getelementptr inbounds %"struct.std::_Vector_base", ptr %11, i32 0, i32 0
  %32 = getelementptr inbounds %"struct.std::_Vector_base<Point, std::allocator<Point>>::_Vector_impl_data", ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.Point, ptr %33, i32 1
  store ptr %34, ptr %32, align 8
  br label %37

35:                                               ; preds = %2
  %36 = load ptr, ptr %10, align 8
  call void @_ZNSt6vectorI5PointSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 4 dereferenceable(20) %36)
  br label %37

37:                                               ; preds = %35, %19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI5PointSaIS0_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0
  call void @_ZNSt12_Vector_baseI5PointSaIS0_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI5PointSaIS0_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  store ptr %5, ptr %3, align 8
  %6 = load ptr, ptr %3, align 8
  store ptr %6, ptr %2, align 8
  %7 = load ptr, ptr %2, align 8
  call void @_ZNSt12_Vector_baseI5PointSaIS0_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI5PointSaIS0_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base<Point, std::allocator<Point>>::_Vector_impl_data", ptr %3, i32 0, i32 0
  store ptr null, ptr %4, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base<Point, std::allocator<Point>>::_Vector_impl_data", ptr %3, i32 0, i32 1
  store ptr null, ptr %5, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base<Point, std::allocator<Point>>::_Vector_impl_data", ptr %3, i32 0, i32 2
  store ptr null, ptr %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt6chronomiIxSt5ratioILx1ELx1000000000EExS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #3 comdat {
  %3 = alloca %"class.std::chrono::duration", align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca %"class.std::chrono::duration", align 8
  %8 = alloca %"class.std::chrono::duration", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %9 = load ptr, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %9, i64 8, i1 false)
  %10 = call noundef i64 @_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000000EEE5countEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  %11 = load ptr, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %11, i64 8, i1 false)
  %12 = call noundef i64 @_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000000EEE5countEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  %13 = sub nsw i64 %10, %12
  store i64 %13, ptr %6, align 8
  call void @_ZNSt6chrono8durationIxSt5ratioILx1ELx1000000000EEEC2IxvEERKT_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %14 = getelementptr inbounds %"class.std::chrono::duration", ptr %3, i32 0, i32 0
  %15 = load i64, ptr %14, align 8
  ret i64 %15
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEE16time_since_epochEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #1 comdat align 2 {
  %2 = alloca %"class.std::chrono::duration", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"class.std::chrono::time_point", ptr %4, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %5, i64 8, i1 false)
  %6 = getelementptr inbounds %"class.std::chrono::duration", ptr %2, i32 0, i32 0
  %7 = load i64, ptr %6, align 8
  ret i64 %7
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000000EEE5countEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::chrono::duration", ptr %3, i32 0, i32 0
  %5 = load i64, ptr %4, align 8
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6chrono8durationIxSt5ratioILx1ELx1000000000EEEC2IxvEERKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.std::chrono::duration", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %4, align 8
  %8 = load i64, ptr %7, align 8
  store i64 %8, ptr %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILx1ELx1000EEEExS2_ILx1ELx1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0) #3 comdat {
  %2 = alloca %"class.std::chrono::duration.0", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = call i64 @_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILx1ELx1000EEEES2_ILx1ELx1000000EEdLb1ELb0EE6__castIxS2_ILx1ELx1000000000EEEES4_RKNS1_IT_T0_EE(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %6 = getelementptr inbounds %"class.std::chrono::duration.0", ptr %2, i32 0, i32 0
  store i64 %5, ptr %6, align 8
  %7 = getelementptr inbounds %"class.std::chrono::duration.0", ptr %2, i32 0, i32 0
  %8 = load i64, ptr %7, align 8
  ret i64 %8
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILx1ELx1000EEEES2_ILx1ELx1000000EEdLb1ELb0EE6__castIxS2_ILx1ELx1000000000EEEES4_RKNS1_IT_T0_EE(ptr noundef nonnull align 8 dereferenceable(8) %0) #3 comdat align 2 {
  %2 = alloca %"class.std::chrono::duration.0", align 8
  %3 = alloca ptr, align 8
  %4 = alloca double, align 8
  store ptr %0, ptr %3, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = call noundef i64 @_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000000EEE5countEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %7 = sitofp i64 %6 to double
  %8 = fdiv double %7, 1.000000e+06
  store double %8, ptr %4, align 8
  call void @_ZNSt6chrono8durationIdSt5ratioILx1ELx1000EEEC2IdvEERKT_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %9 = getelementptr inbounds %"class.std::chrono::duration.0", ptr %2, i32 0, i32 0
  %10 = load i64, ptr %9, align 8
  ret i64 %10
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6chrono8durationIdSt5ratioILx1ELx1000EEEC2IdvEERKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.std::chrono::duration.0", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %4, align 8
  %8 = load double, ptr %7, align 8
  store double %8, ptr %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0
  ret ptr %4
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) #7 comdat {
  %2 = call ptr @__cxa_begin_catch(ptr %0) #12
  call void @_ZSt9terminatev() #13
  unreachable
}

declare dso_local ptr @__cxa_begin_catch(ptr)

declare dso_local void @_ZSt9terminatev()

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI5PointSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Vector_base<Point, std::allocator<Point>>::_Vector_impl_data", ptr %4, i32 0, i32 0
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.std::_Vector_base<Point, std::allocator<Point>>::_Vector_impl_data", ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.std::_Vector_base<Point, std::allocator<Point>>::_Vector_impl_data", ptr %10, i32 0, i32 0
  %12 = load ptr, ptr %11, align 8
  %13 = ptrtoint ptr %9 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 20
  invoke void @_ZNSt12_Vector_baseI5PointSaIS0_EE13_M_deallocateEPS0_y(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %6, i64 noundef %16)
          to label %17 unwind label %19

17:                                               ; preds = %1
  %18 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0
  call void @_ZNSt12_Vector_baseI5PointSaIS0_EE12_Vector_implD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %18) #12
  ret void

19:                                               ; preds = %1
  %20 = landingpad { ptr, i32 }
          catch ptr null
  %21 = extractvalue { ptr, i32 } %20, 0
  call void @__clang_call_terminate(ptr %21) #13
  unreachable
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP5PointEvT_S2_(ptr noundef %0, ptr noundef %1) #3 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIP5PointEEvT_S4_(ptr noundef %5, ptr noundef %6)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIP5PointEEvT_S4_(ptr noundef %0, ptr noundef %1) #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI5PointSaIS0_EE13_M_deallocateEPS0_y(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) #3 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  store ptr %0, ptr %7, align 8
  store ptr %1, ptr %8, align 8
  store i64 %2, ptr %9, align 8
  %10 = load ptr, ptr %7, align 8
  %11 = load ptr, ptr %8, align 8
  %12 = icmp ne ptr %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = getelementptr inbounds %"struct.std::_Vector_base", ptr %10, i32 0, i32 0
  %15 = load ptr, ptr %8, align 8
  %16 = load i64, ptr %9, align 8
  store ptr %14, ptr %4, align 8
  store ptr %15, ptr %5, align 8
  store i64 %16, ptr %6, align 8
  %17 = load ptr, ptr %4, align 8
  %18 = load ptr, ptr %5, align 8
  %19 = load i64, ptr %6, align 8
  call void @_ZNSt15__new_allocatorI5PointE10deallocateEPS0_y(ptr noundef nonnull align 1 dereferenceable(1) %17, ptr noundef %18, i64 noundef %19)
  br label %20

20:                                               ; preds = %13, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI5PointSaIS0_EE12_Vector_implD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  store ptr %4, ptr %2, align 8
  %5 = load ptr, ptr %2, align 8
  call void @_ZNSt15__new_allocatorI5PointED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorI5PointE10deallocateEPS0_y(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #1 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  call void @_ZdlPv(ptr noundef %8) #14
  ret void
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(ptr noundef) #8

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorI5PointED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNKSt6vectorI5PointSaIS0_EE14_M_range_checkEy(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #3 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load i64, ptr %4, align 8
  %7 = call noundef i64 @_ZNKSt6vectorI5PointSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #12
  %8 = icmp uge i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i64, ptr %4, align 8
  %11 = call noundef i64 @_ZNKSt6vectorI5PointSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #12
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef @.str.8, i64 noundef %10, i64 noundef %11) #15
  unreachable

12:                                               ; preds = %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(20) ptr @_ZNSt6vectorI5PointSaIS0_EEixEy(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base", ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<Point, std::allocator<Point>>::_Vector_impl_data", ptr %6, i32 0, i32 0
  %8 = load ptr, ptr %7, align 8
  %9 = load i64, ptr %4, align 8
  %10 = getelementptr inbounds %struct.Point, ptr %8, i64 %9
  ret ptr %10
}

; Function Attrs: cold noreturn
declare dso_local void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) #9

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI5PointSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(20) %1) #3 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i64, align 8
  %15 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %16 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca %struct._Guard, align 8
  store ptr %0, ptr %9, align 8
  store ptr %1, ptr %10, align 8
  %20 = load ptr, ptr %9, align 8
  %21 = call noundef i64 @_ZNKSt6vectorI5PointSaIS0_EE12_M_check_lenEyPKc(ptr noundef nonnull align 8 dereferenceable(24) %20, i64 noundef 1, ptr noundef @.str.9)
  store i64 %21, ptr %11, align 8
  %22 = load i64, ptr %11, align 8
  %23 = icmp ule i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  unreachable

25:                                               ; preds = %2
  %26 = getelementptr inbounds %"struct.std::_Vector_base", ptr %20, i32 0, i32 0
  %27 = getelementptr inbounds %"struct.std::_Vector_base<Point, std::allocator<Point>>::_Vector_impl_data", ptr %26, i32 0, i32 0
  %28 = load ptr, ptr %27, align 8
  store ptr %28, ptr %12, align 8
  %29 = getelementptr inbounds %"struct.std::_Vector_base", ptr %20, i32 0, i32 0
  %30 = getelementptr inbounds %"struct.std::_Vector_base<Point, std::allocator<Point>>::_Vector_impl_data", ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8
  store ptr %31, ptr %13, align 8
  %32 = call i64 @_ZNSt6vectorI5PointSaIS0_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %20) #12
  %33 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %15, i32 0, i32 0
  %34 = inttoptr i64 %32 to ptr
  store ptr %34, ptr %33, align 8
  %35 = call i64 @_ZNSt6vectorI5PointSaIS0_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %20) #12
  %36 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %16, i32 0, i32 0
  %37 = inttoptr i64 %35 to ptr
  store ptr %37, ptr %36, align 8
  %38 = call noundef i64 @_ZN9__gnu_cxxmiIP5PointSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %16) #12
  store i64 %38, ptr %14, align 8
  %39 = load i64, ptr %11, align 8
  %40 = call noundef ptr @_ZNSt12_Vector_baseI5PointSaIS0_EE11_M_allocateEy(ptr noundef nonnull align 8 dereferenceable(24) %20, i64 noundef %39)
  store ptr %40, ptr %17, align 8
  %41 = load ptr, ptr %17, align 8
  store ptr %41, ptr %18, align 8
  %42 = load ptr, ptr %17, align 8
  %43 = load i64, ptr %11, align 8
  %44 = getelementptr inbounds %"struct.std::_Vector_base", ptr %20, i32 0, i32 0
  call void @_ZZNSt6vectorI5PointSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_EN6_GuardC2EPS0_yRS1_(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef %42, i64 noundef %43, ptr noundef nonnull align 1 dereferenceable(1) %44)
  %45 = getelementptr inbounds %"struct.std::_Vector_base", ptr %20, i32 0, i32 0
  %46 = load ptr, ptr %17, align 8
  %47 = load i64, ptr %14, align 8
  %48 = getelementptr inbounds %struct.Point, ptr %46, i64 %47
  %49 = call noundef ptr @_ZSt12__to_addressI5PointEPT_S2_(ptr noundef %48) #12
  %50 = load ptr, ptr %10, align 8
  store ptr %45, ptr %6, align 8
  store ptr %49, ptr %7, align 8
  store ptr %50, ptr %8, align 8
  %51 = load ptr, ptr %6, align 8
  %52 = load ptr, ptr %7, align 8
  %53 = load ptr, ptr %8, align 8
  store ptr %51, ptr %3, align 8
  store ptr %52, ptr %4, align 8
  store ptr %53, ptr %5, align 8
  %54 = load ptr, ptr %3, align 8
  %55 = load ptr, ptr %4, align 8
  %56 = load ptr, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %55, ptr align 4 %56, i64 20, i1 false)
  %57 = load ptr, ptr %12, align 8
  %58 = load ptr, ptr %13, align 8
  %59 = load ptr, ptr %17, align 8
  %60 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %20) #12
  %61 = call noundef ptr @_ZNSt6vectorI5PointSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_(ptr noundef %57, ptr noundef %58, ptr noundef %59, ptr noundef nonnull align 1 dereferenceable(1) %60) #12
  store ptr %61, ptr %18, align 8
  %62 = load ptr, ptr %18, align 8
  %63 = getelementptr inbounds %struct.Point, ptr %62, i32 1
  store ptr %63, ptr %18, align 8
  %64 = load ptr, ptr %12, align 8
  %65 = getelementptr inbounds %struct._Guard, ptr %19, i32 0, i32 0
  store ptr %64, ptr %65, align 8
  %66 = getelementptr inbounds %"struct.std::_Vector_base", ptr %20, i32 0, i32 0
  %67 = getelementptr inbounds %"struct.std::_Vector_base<Point, std::allocator<Point>>::_Vector_impl_data", ptr %66, i32 0, i32 2
  %68 = load ptr, ptr %67, align 8
  %69 = load ptr, ptr %12, align 8
  %70 = ptrtoint ptr %68 to i64
  %71 = ptrtoint ptr %69 to i64
  %72 = sub i64 %70, %71
  %73 = sdiv exact i64 %72, 20
  %74 = getelementptr inbounds %struct._Guard, ptr %19, i32 0, i32 1
  store i64 %73, ptr %74, align 8
  call void @_ZZNSt6vectorI5PointSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_EN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %19) #12
  %75 = load ptr, ptr %17, align 8
  %76 = getelementptr inbounds %"struct.std::_Vector_base", ptr %20, i32 0, i32 0
  %77 = getelementptr inbounds %"struct.std::_Vector_base<Point, std::allocator<Point>>::_Vector_impl_data", ptr %76, i32 0, i32 0
  store ptr %75, ptr %77, align 8
  %78 = load ptr, ptr %18, align 8
  %79 = getelementptr inbounds %"struct.std::_Vector_base", ptr %20, i32 0, i32 0
  %80 = getelementptr inbounds %"struct.std::_Vector_base<Point, std::allocator<Point>>::_Vector_impl_data", ptr %79, i32 0, i32 1
  store ptr %78, ptr %80, align 8
  %81 = load ptr, ptr %17, align 8
  %82 = load i64, ptr %11, align 8
  %83 = getelementptr inbounds %struct.Point, ptr %81, i64 %82
  %84 = getelementptr inbounds %"struct.std::_Vector_base", ptr %20, i32 0, i32 0
  %85 = getelementptr inbounds %"struct.std::_Vector_base<Point, std::allocator<Point>>::_Vector_impl_data", ptr %84, i32 0, i32 2
  store ptr %83, ptr %85, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI5PointSaIS0_EE12_M_check_lenEyPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) #3 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = call noundef i64 @_ZNKSt6vectorI5PointSaIS0_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #12
  %11 = call noundef i64 @_ZNKSt6vectorI5PointSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #12
  %12 = sub i64 %10, %11
  %13 = load i64, ptr %5, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load ptr, ptr %6, align 8
  call void @_ZSt20__throw_length_errorPKc(ptr noundef %16) #15
  unreachable

17:                                               ; preds = %3
  %18 = call noundef i64 @_ZNKSt6vectorI5PointSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #12
  %19 = call noundef i64 @_ZNKSt6vectorI5PointSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #12
  store i64 %19, ptr %8, align 8
  %20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIyERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %21 = load i64, ptr %20, align 8
  %22 = add i64 %18, %21
  store i64 %22, ptr %7, align 8
  %23 = load i64, ptr %7, align 8
  %24 = call noundef i64 @_ZNKSt6vectorI5PointSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #12
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %17
  %27 = load i64, ptr %7, align 8
  %28 = call noundef i64 @_ZNKSt6vectorI5PointSaIS0_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #12
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26, %17
  %31 = call noundef i64 @_ZNKSt6vectorI5PointSaIS0_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #12
  br label %34

32:                                               ; preds = %26
  %33 = load i64, ptr %7, align 8
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i64 [ %31, %30 ], [ %33, %32 ]
  ret i64 %35
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxxmiIP5PointSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #1 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #12
  %10 = load ptr, ptr %9, align 8
  %11 = ptrtoint ptr %7 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 20
  ret i64 %14
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt6vectorI5PointSaIS0_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base", ptr %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<Point, std::allocator<Point>>::_Vector_impl_data", ptr %5, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %6) #12
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %2, i32 0, i32 0
  %8 = load ptr, ptr %7, align 8
  %9 = ptrtoint ptr %8 to i64
  ret i64 %9
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt6vectorI5PointSaIS0_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base", ptr %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<Point, std::allocator<Point>>::_Vector_impl_data", ptr %5, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %6) #12
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %2, i32 0, i32 0
  %8 = load ptr, ptr %7, align 8
  %9 = ptrtoint ptr %8 to i64
  ret i64 %9
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseI5PointSaIS0_EE11_M_allocateEy(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #3 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  store i64 %1, ptr %6, align 8
  %7 = load ptr, ptr %5, align 8
  %8 = load i64, ptr %6, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"struct.std::_Vector_base", ptr %7, i32 0, i32 0
  %12 = load i64, ptr %6, align 8
  store ptr %11, ptr %3, align 8
  store i64 %12, ptr %4, align 8
  %13 = load ptr, ptr %3, align 8
  %14 = load i64, ptr %4, align 8
  %15 = call noundef ptr @_ZNSt15__new_allocatorI5PointE8allocateEyPKv(ptr noundef nonnull align 1 dereferenceable(1) %13, i64 noundef %14, ptr noundef null)
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %10
  %18 = phi ptr [ %15, %10 ], [ null, %16 ]
  ret ptr %18
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZZNSt6vectorI5PointSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_EN6_GuardC2EPS0_yRS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #1 comdat align 2 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = getelementptr inbounds %struct._Guard, ptr %9, i32 0, i32 0
  %11 = load ptr, ptr %6, align 8
  store ptr %11, ptr %10, align 8
  %12 = getelementptr inbounds %struct._Guard, ptr %9, i32 0, i32 1
  %13 = load i64, ptr %7, align 8
  store i64 %13, ptr %12, align 8
  %14 = getelementptr inbounds %struct._Guard, ptr %9, i32 0, i32 2
  %15 = load ptr, ptr %8, align 8
  store ptr %15, ptr %14, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__to_addressI5PointEPT_S2_(ptr noundef %0) #1 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorI5PointSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #1 comdat align 2 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load ptr, ptr %7, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = call noundef ptr @_ZSt12__relocate_aIP5PointS1_SaIS0_EET0_T_S4_S3_RT1_(ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef nonnull align 1 dereferenceable(1) %12) #12
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZZNSt6vectorI5PointSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_EN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct._Guard, ptr %6, i32 0, i32 0
  %8 = load ptr, ptr %7, align 8
  %9 = icmp ne ptr %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct._Guard, ptr %6, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct._Guard, ptr %6, i32 0, i32 0
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct._Guard, ptr %6, i32 0, i32 1
  %16 = load i64, ptr %15, align 8
  store ptr %12, ptr %2, align 8
  store ptr %14, ptr %3, align 8
  store i64 %16, ptr %4, align 8
  %17 = load ptr, ptr %2, align 8
  %18 = load ptr, ptr %3, align 8
  %19 = load i64, ptr %4, align 8
  call void @_ZNSt15__new_allocatorI5PointE10deallocateEPS0_y(ptr noundef nonnull align 1 dereferenceable(1) %17, ptr noundef %18, i64 noundef %19)
  br label %20

20:                                               ; preds = %10
  br label %21

21:                                               ; preds = %20, %1
  ret void

22:                                               ; No predecessors!
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  call void @__clang_call_terminate(ptr %24) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI5PointSaIS0_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #12
  %5 = call noundef i64 @_ZNSt6vectorI5PointSaIS0_EE11_S_max_sizeERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %4) #12
  ret i64 %5
}

; Function Attrs: cold noreturn
declare dso_local void @_ZSt20__throw_length_errorPKc(ptr noundef) #9

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIyERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #1 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load i64, ptr %6, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load i64, ptr %8, align 8
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 8
  store ptr %12, ptr %3, align 8
  br label %15

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8
  store ptr %14, ptr %3, align 8
  br label %15

15:                                               ; preds = %13, %11
  %16 = load ptr, ptr %3, align 8
  ret ptr %16
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorI5PointSaIS0_EE11_S_max_sizeERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %0) #1 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  store i64 461168601842738790, ptr %6, align 8
  %8 = load ptr, ptr %5, align 8
  store ptr %8, ptr %4, align 8
  %9 = load ptr, ptr %4, align 8
  store ptr %9, ptr %3, align 8
  %10 = load ptr, ptr %3, align 8
  store ptr %10, ptr %2, align 8
  %11 = load ptr, ptr %2, align 8
  store i64 461168601842738790, ptr %7, align 8
  %12 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIyERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %13 unwind label %15

13:                                               ; preds = %1
  %14 = load i64, ptr %12, align 8
  ret i64 %14

15:                                               ; preds = %1
  %16 = landingpad { ptr, i32 }
          catch ptr null
  %17 = extractvalue { ptr, i32 } %16, 0
  call void @__clang_call_terminate(ptr %17) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseI5PointSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIyERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #1 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = load i64, ptr %6, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = load i64, ptr %8, align 8
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 8
  store ptr %12, ptr %3, align 8
  br label %15

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8
  store ptr %14, ptr %3, align 8
  br label %15

15:                                               ; preds = %13, %11
  %16 = load ptr, ptr %3, align 8
  ret ptr %16
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %3, i32 0, i32 0
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIP5PointSt6vectorIS1_SaIS1_EEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %7, align 8
  store ptr %8, ptr %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorI5PointE8allocateEyPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) #3 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store i64 %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load i64, ptr %6, align 8
  store ptr %8, ptr %4, align 8
  %10 = load ptr, ptr %4, align 8
  %11 = icmp ugt i64 %9, 461168601842738790
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i64, ptr %6, align 8
  %14 = icmp ugt i64 %13, 922337203685477580
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  call void @_ZSt28__throw_bad_array_new_lengthv() #16
  unreachable

16:                                               ; preds = %12
  call void @_ZSt17__throw_bad_allocv() #16
  unreachable

17:                                               ; preds = %3
  %18 = load i64, ptr %6, align 8
  %19 = mul i64 %18, 20
  %20 = call noalias noundef nonnull ptr @_Znwy(i64 noundef %19) #17
  ret ptr %20
}

; Function Attrs: noreturn
declare dso_local void @_ZSt28__throw_bad_array_new_lengthv() #10

; Function Attrs: noreturn
declare dso_local void @_ZSt17__throw_bad_allocv() #10

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull ptr @_Znwy(i64 noundef) #11

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__relocate_aIP5PointS1_SaIS0_EET0_T_S4_S3_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #1 comdat {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = call noundef ptr @_ZSt12__niter_baseIP5PointET_S2_(ptr noundef %9) #12
  %11 = load ptr, ptr %6, align 8
  %12 = call noundef ptr @_ZSt12__niter_baseIP5PointET_S2_(ptr noundef %11) #12
  %13 = load ptr, ptr %7, align 8
  %14 = call noundef ptr @_ZSt12__niter_baseIP5PointET_S2_(ptr noundef %13) #12
  %15 = load ptr, ptr %8, align 8
  %16 = call noundef ptr @_ZSt14__relocate_a_1I5PointS0_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS2_E4typeES3_S3_S3_RSaIT0_E(ptr noundef %10, ptr noundef %12, ptr noundef %14, ptr noundef nonnull align 1 dereferenceable(1) %15) #12
  ret ptr %16
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__relocate_a_1I5PointS0_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS2_E4typeES3_S3_S3_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #1 comdat {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = ptrtoint ptr %10 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 20
  store i64 %15, ptr %9, align 8
  %16 = load i64, ptr %9, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load ptr, ptr %7, align 8
  %20 = load ptr, ptr %5, align 8
  %21 = load i64, ptr %9, align 8
  %22 = mul i64 %21, 20
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %19, ptr align 4 %20, i64 %22, i1 false)
  br label %23

23:                                               ; preds = %18, %4
  %24 = load ptr, ptr %7, align 8
  %25 = load i64, ptr %9, align 8
  %26 = getelementptr inbounds %struct.Point, ptr %24, i64 %25
  ret ptr %26
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIP5PointET_S2_(ptr noundef %0) #1 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

attributes #0 = { mustprogress noinline norecurse optnone uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optnone uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline optnone uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { builtin nounwind }
attributes #15 = { cold noreturn }
attributes #16 = { noreturn }
attributes #17 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 1, !"MaxTLSAlign", i32 65536}
!4 = !{!"clang version 18.1.8"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
