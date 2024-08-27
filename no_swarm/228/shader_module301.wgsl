struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec4<i32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18>;

var<private> global1: array<Struct_2, 17>;

var<private> global2: i32 = 13524i;

var<private> global3: array<Struct_1, 19>;

var<private> global4: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(Struct_1(vec4<i32>(0i, -21798i, -8277i, 42939i), vec3<bool>(false, true, false)), vec4<i32>(5960i, 0i, -1i, i32(-2147483648)), vec3<f32>(1050f, -1962f, 252f), vec4<i32>(13527i, 15811i, 75206i, -1i), vec2<bool>(false, true)), Struct_2(Struct_1(vec4<i32>(98i, 0i, 50948i, -10820i), vec3<bool>(true, false, false)), vec4<i32>(0i, 0i, 31909i, 47554i), vec3<f32>(-646f, 1184f, 805f), vec4<i32>(-1i, 0i, 24853i, i32(-2147483648)), vec2<bool>(true, false)), Struct_2(Struct_1(vec4<i32>(1i, -1i, 2147483647i, 29617i), vec3<bool>(false, true, false)), vec4<i32>(2147483647i, 2167i, i32(-2147483648), 0i), vec3<f32>(-555f, -1797f, 992f), vec4<i32>(17310i, i32(-2147483648), 7486i, i32(-2147483648)), vec2<bool>(true, false)), Struct_2(Struct_1(vec4<i32>(0i, 0i, 0i, 1i), vec3<bool>(false, true, true)), vec4<i32>(-1i, 7597i, 1i, 0i), vec3<f32>(-1979f, 495f, 437f), vec4<i32>(-608i, 1731i, 2147483647i, 2147483647i), vec2<bool>(true, false)), Struct_2(Struct_1(vec4<i32>(2147483647i, 2147483647i, 2147483647i, -7653i), vec3<bool>(false, true, false)), vec4<i32>(-85547i, 2147483647i, -34623i, 0i), vec3<f32>(1000f, -692f, -688f), vec4<i32>(-17520i, 8806i, i32(-2147483648), 2147483647i), vec2<bool>(false, false)), Struct_2(Struct_1(vec4<i32>(-8996i, 0i, 0i, 42850i), vec3<bool>(true, true, false)), vec4<i32>(-1611i, i32(-2147483648), 10689i, 1i), vec3<f32>(-2436f, -614f, -1551f), vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), 8452i), vec2<bool>(true, false)), Struct_2(Struct_1(vec4<i32>(6643i, 47652i, 16619i, -1i), vec3<bool>(false, false, true)), vec4<i32>(2147483647i, 40183i, -52369i, 37403i), vec3<f32>(574f, 1267f, 1588f), vec4<i32>(17473i, 2147483647i, 41408i, i32(-2147483648)), vec2<bool>(false, true)), Struct_2(Struct_1(vec4<i32>(-1i, 13265i, 1430i, -3747i), vec3<bool>(true, true, true)), vec4<i32>(1943i, 0i, -1i, 2147483647i), vec3<f32>(-261f, 1045f, -759f), vec4<i32>(1i, -24320i, -16442i, 30036i), vec2<bool>(true, false)), Struct_2(Struct_1(vec4<i32>(29010i, 10955i, 26585i, 75551i), vec3<bool>(true, false, false)), vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), 2147483647i), vec3<f32>(-819f, 1258f, 1214f), vec4<i32>(49304i, -46126i, 2147483647i, 12629i), vec2<bool>(false, false)), Struct_2(Struct_1(vec4<i32>(-1i, 22370i, 31669i, -14106i), vec3<bool>(false, true, true)), vec4<i32>(-1i, 27146i, 2147483647i, 4413i), vec3<f32>(422f, -300f, -1000f), vec4<i32>(38019i, 0i, -51916i, -47439i), vec2<bool>(false, true)), Struct_2(Struct_1(vec4<i32>(-40480i, -24459i, -1i, 1i), vec3<bool>(true, true, false)), vec4<i32>(5144i, 49767i, 6109i, 2147483647i), vec3<f32>(784f, -353f, 984f), vec4<i32>(29424i, -66796i, -10478i, 0i), vec2<bool>(true, false)), Struct_2(Struct_1(vec4<i32>(26825i, 1i, 0i, 11i), vec3<bool>(true, false, false)), vec4<i32>(i32(-2147483648), 2147483647i, -1i, 54749i), vec3<f32>(-1537f, 1000f, -185f), vec4<i32>(35099i, -1i, 31117i, 0i), vec2<bool>(true, false)), Struct_2(Struct_1(vec4<i32>(3556i, 2147483647i, 34166i, -1i), vec3<bool>(false, false, true)), vec4<i32>(i32(-2147483648), -34581i, i32(-2147483648), -13303i), vec3<f32>(963f, 283f, -1670f), vec4<i32>(2349i, 24815i, 0i, 14907i), vec2<bool>(true, false)), Struct_2(Struct_1(vec4<i32>(2147483647i, 2147483647i, 200i, 2147483647i), vec3<bool>(true, true, true)), vec4<i32>(7523i, -17188i, 2147483647i, 2147483647i), vec3<f32>(270f, -976f, -881f), vec4<i32>(i32(-2147483648), 2147483647i, 1i, -47724i), vec2<bool>(true, true)), Struct_2(Struct_1(vec4<i32>(-25889i, i32(-2147483648), 2147483647i, 68972i), vec3<bool>(true, true, true)), vec4<i32>(0i, 1i, 20539i, 0i), vec3<f32>(2339f, 1000f, 525f), vec4<i32>(37924i, 2147483647i, -27304i, 1i), vec2<bool>(false, false)), Struct_2(Struct_1(vec4<i32>(-52846i, -40518i, -10758i, 24265i), vec3<bool>(false, false, false)), vec4<i32>(0i, -19009i, 19885i, 0i), vec3<f32>(-114f, -305f, 491f), vec4<i32>(-25407i, -31598i, -16145i, i32(-2147483648)), vec2<bool>(true, true)), Struct_2(Struct_1(vec4<i32>(1i, 70947i, -59622i, 70618i), vec3<bool>(true, true, true)), vec4<i32>(1i, i32(-2147483648), 20727i, 2147483647i), vec3<f32>(566f, 1120f, 1839f), vec4<i32>(2147483647i, 11357i, 2147483647i, 1i), vec2<bool>(true, false)), Struct_2(Struct_1(vec4<i32>(1i, 13042i, 1i, 1i), vec3<bool>(true, false, true)), vec4<i32>(i32(-2147483648), 54336i, i32(-2147483648), 16401i), vec3<f32>(1721f, -285f, -1378f), vec4<i32>(2147483647i, 2147483647i, 0i, 0i), vec2<bool>(true, true)), Struct_2(Struct_1(vec4<i32>(-48861i, -1i, i32(-2147483648), -8340i), vec3<bool>(false, false, false)), vec4<i32>(i32(-2147483648), -51696i, 14240i, -21527i), vec3<f32>(2636f, 207f, 450f), vec4<i32>(-1i, 0i, -23809i, 2147483647i), vec2<bool>(false, true)), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), -11212i, i32(-2147483648), 1i), vec3<bool>(true, false, false)), vec4<i32>(-33737i, 0i, 1255i, 42344i), vec3<f32>(-997f, -1062f, -186f), vec4<i32>(-1i, 0i, 13867i, 461i), vec2<bool>(false, false)), Struct_2(Struct_1(vec4<i32>(0i, 44966i, -19091i, -5001i), vec3<bool>(true, true, true)), vec4<i32>(-648i, -18317i, 1i, -46481i), vec3<f32>(-505f, -533f, -1045f), vec4<i32>(-22570i, 14638i, 0i, 0i), vec2<bool>(false, false)), Struct_2(Struct_1(vec4<i32>(4898i, 2345i, -7979i, i32(-2147483648)), vec3<bool>(false, false, false)), vec4<i32>(i32(-2147483648), 22510i, 0i, 5201i), vec3<f32>(1000f, -781f, 291f), vec4<i32>(19980i, 2147483647i, i32(-2147483648), 15322i), vec2<bool>(false, false)), Struct_2(Struct_1(vec4<i32>(1i, -517i, 4598i, 35984i), vec3<bool>(true, false, true)), vec4<i32>(-1i, i32(-2147483648), 2147483647i, 3753i), vec3<f32>(287f, -1743f, -173f), vec4<i32>(9484i, 1i, 0i, -1i), vec2<bool>(true, false)), Struct_2(Struct_1(vec4<i32>(-1756i, 12704i, i32(-2147483648), -3906i), vec3<bool>(false, false, false)), vec4<i32>(3673i, 46900i, -71990i, -13447i), vec3<f32>(1000f, -931f, 1544f), vec4<i32>(20256i, i32(-2147483648), 38611i, 0i), vec2<bool>(false, true)));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> vec4<i32> {
    var var_0 = Struct_1(arg_0.d, !select(select(arg_1.a.b, arg_1.a.b, select(vec3<bool>(arg_1.e.x, arg_0.e.x, arg_0.e.x), vec3<bool>(arg_0.a.b.x, arg_1.e.x, false), arg_0.a.b)), arg_0.a.b, false));
    let var_1 = Struct_2(Struct_1(-arg_0.b, arg_1.a.b), ~(~countOneBits(~arg_1.b)), vec3<f32>(359f, -1078f, -1035f), min(var_0.a, var_0.a), vec2<bool>(var_0.b.x, arg_1.e.x));
    global2 = 6230i;
    let var_2 = var_1.e.x;
    let var_3 = vec2<i32>(~abs(_wgslsmith_dot_vec3_i32(var_0.a.xyw, max(var_0.a.yyx, var_1.d.xzx))), -(~abs(var_0.a.x)) | firstTrailingBit(-(arg_0.d.x >> (3578u % 32u))));
    return -_wgslsmith_sub_vec4_i32(-arg_0.a.a, arg_1.d);
}

fn func_2() -> Struct_1 {
    global1 = array<Struct_2, 17>();
    global4 = array<Struct_2, 24>();
    return Struct_1(max(vec4<i32>(12848i & ~global0[_wgslsmith_index_u32(117020u, 18u)], max(u_input.a, u_input.a), global0[_wgslsmith_index_u32(1u, 18u)], -77454i), _wgslsmith_mult_vec4_i32(firstTrailingBit(func_3(global4[_wgslsmith_index_u32(1u, 24u)], Struct_2(global3[_wgslsmith_index_u32(6875u, 19u)], vec4<i32>(u_input.a, 60947i, 2147483647i, 0i), vec3<f32>(796f, -2106f, 137f), vec4<i32>(37998i, 2147483647i, u_input.a, u_input.a), vec2<bool>(false, false)))), select(vec4<i32>(global0[_wgslsmith_index_u32(0u, 18u)], -34164i, -12456i, 18031i), vec4<i32>(global0[_wgslsmith_index_u32(3881u, 18u)], -1318i, -2147483647i, 34046i), true))), vec3<bool>(all(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true))), true, true));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: i32) -> f32 {
    var var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(select(arg_1, _wgslsmith_dot_vec3_u32(vec3<u32>(43601u, arg_1, arg_1) << (vec3<u32>(arg_1, 0u, 4294967295u) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(arg_1, arg_1, 90465u), vec3<u32>(arg_1, arg_1, arg_1))), arg_1 != 0u), arg_1, arg_1 << (arg_1 % 32u), firstLeadingBit(arg_1)), vec4<u32>(~arg_1, ~4294967295u, arg_1, arg_1));
    var var_1 = func_2();
    global0 = array<i32, 18>();
    return _wgslsmith_f_op_f32(max(729f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1606f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
}

fn func_4(arg_0: f32, arg_1: vec3<bool>) -> u32 {
    var var_0 = -max(~(-_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 1i, 0i), vec3<i32>(global0[_wgslsmith_index_u32(1u, 18u)], u_input.a, global0[_wgslsmith_index_u32(16218u, 18u)]))), -select(vec3<i32>(global0[_wgslsmith_index_u32(98802u, 18u)], global0[_wgslsmith_index_u32(0u, 18u)], -7496i), vec3<i32>(-1i, global0[_wgslsmith_index_u32(30275u, 18u)], 0i), select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(false, arg_1.x, true), arg_1.x)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -144f)), 228f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(arg_0))))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(arg_0, arg_0), arg_0, _wgslsmith_f_op_f32(924f * -1088f)), vec3<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0), arg_0), true))));
    var var_2 = vec3<u32>(abs(62011u >> (~4294967295u % 32u)), 0u, ~_wgslsmith_div_u32(0u, min(~0u, select(16175u, 94999u, false))));
    let var_3 = u_input.a >> ((~(~(~42238u)) >> (countOneBits(_wgslsmith_div_u32(_wgslsmith_mult_u32(var_2.x, var_2.x), 4294967295u)) % 32u)) % 32u);
    var_0 = vec3<i32>(u_input.a, var_3, 1i >> (select(~var_2.x, var_2.x, all(vec4<bool>(arg_1.x, false, true, arg_1.x)) != true) % 32u));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(~func_4(_wgslsmith_f_op_f32(func_1(global3[_wgslsmith_index_u32(7703u, 19u)], 29279u, false, 1i)), func_2().b), 4294967295u, _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(4294967295u, 100838u, 50959u), vec3<u32>(57908u, 4294967295u, 14935u), true), vec3<u32>(14569u, 20074u, 13143u))), ~func_4(_wgslsmith_f_op_f32(-150f - 1851f), vec3<bool>(true, true, true))) << ((~vec4<u32>(0u, ~0u, 1u, ~73447u) >> (firstTrailingBit(firstTrailingBit(vec4<u32>(1u, 0u, 1u, 0u))) % vec4<u32>(32u))) % vec4<u32>(32u));
    var var_1 = any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 1i, -2147483647i, -23235i), vec4<i32>(u_input.a, u_input.a, 0i, 5921i)) >= global0[_wgslsmith_index_u32(51798u, 18u)]));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -245f) - _wgslsmith_f_op_f32(f32(-1f) * -1820f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(371f, -719f))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(244f)) - _wgslsmith_f_op_f32(-161f * -770f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1253f * -722f)))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1043f - 269f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-404f)), _wgslsmith_f_op_f32(2172f * -1128f))))));
    global2 = -reverseBits(max(~u_input.a, 1i));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(1474f - -1336f), -385f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -300f), _wgslsmith_f_op_f32(1f + -1239f))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3, vec2<f32>(831f, _wgslsmith_f_op_f32(sign(-1000f))));
}

