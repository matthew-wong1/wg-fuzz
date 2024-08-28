struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: u32,
    d: Struct_2,
    e: vec2<bool>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_1,
    c: bool,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9> = array<i32, 9>(-1i, 0i, 2147483647i, 6499i, 20465i, -80738i, 1i, -1i, 0i);

var<private> global1: array<f32, 20>;

var<private> global2: array<vec4<f32>, 9> = array<vec4<f32>, 9>(vec4<f32>(625f, 747f, 327f, 1389f), vec4<f32>(1000f, -1528f, 1000f, -751f), vec4<f32>(888f, -1456f, 2594f, 322f), vec4<f32>(990f, -499f, -751f, -2284f), vec4<f32>(1220f, 718f, 1319f, -318f), vec4<f32>(549f, -915f, 1379f, 480f), vec4<f32>(386f, 860f, -1000f, 121f), vec4<f32>(-671f, -912f, -2015f, 1162f), vec4<f32>(143f, -599f, -437f, -1000f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> vec3<f32> {
    return vec3<f32>(-412f, -905f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-817f * -453f) * global1[_wgslsmith_index_u32(~66811u, 20u)]) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-596f)) - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 20u)] * global1[_wgslsmith_index_u32(0u, 20u)]))))));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = -73267i;
    let var_1 = vec4<bool>(true, false, ~_wgslsmith_div_u32(abs(arg_0.a.x), ~0u) <= arg_0.a.x, arg_0.c);
    var var_2 = -93871i;
    let var_3 = arg_1.yy;
    var var_4 = ~_wgslsmith_sub_u32(~(~firstLeadingBit(arg_0.a.x)), _wgslsmith_sub_u32(41427u, 31000u));
    return arg_0.b;
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec3<f32>) -> u32 {
    var var_0 = Struct_4(firstLeadingBit(vec2<u32>(1u, 3756u)), func_3(Struct_4(max(max(vec2<u32>(0u, 107264u), vec2<u32>(4294967295u, 29933u)), reverseBits(vec2<u32>(30607u, 59230u))), Struct_1(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(4294967295u, 20u)])), -vec4<i32>(u_input.a.x, 1424i, -3627i, -20545i)), true, false, -(u_input.b.x >> (8503u % 32u))), _wgslsmith_f_op_vec3_f32(func_2())), false || any(vec3<bool>(true, true, true)), any(!vec2<bool>(all(vec3<bool>(true, true, false)), true)), -20325i);
    global0 = array<i32, 9>();
    var var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(func_2()).x, abs(reverseBits(vec4<i32>(var_0.b.b.x, 14708i, -2147483647i, var_0.e)))), Struct_1(arg_1, firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.b.b.x, 5041i, u_input.b.x, 12750i), vec4<i32>(u_input.a.x, -1i, -27950i, -13107i))))), var_0.a, _wgslsmith_mult_u32(1u, 26945u), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 20u)])), ~vec4<i32>(-31337i, var_0.b.b.x, var_0.e, var_0.b.b.x)), func_3(Struct_4(~var_0.a, func_3(Struct_4(var_0.a, Struct_1(global1[_wgslsmith_index_u32(0u, 20u)], vec4<i32>(global0[_wgslsmith_index_u32(15318u, 9u)], -19954i, -2147483647i, var_0.b.b.x)), false, true, 24890i), arg_2), var_0.c, !var_0.d, -u_input.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2 - vec3<f32>(arg_0, arg_0, 267f))))), !(!select(select(vec2<bool>(var_0.c, true), vec2<bool>(var_0.c, var_0.c), vec2<bool>(var_0.c, var_0.d)), select(vec2<bool>(false, false), vec2<bool>(var_0.d, var_0.d), false), true)));
    let var_2 = Struct_4(vec2<u32>(var_0.a.x, abs(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c, var_1.b.x, 135326u), vec3<u32>(4294967295u, 34870u, var_1.c))))), var_0.b, var_1.e.x, var_0.d, global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.c, 0u, 4294967295u, 39184u), vec4<u32>(0u, var_1.b.x, 0u, 0u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.c, var_1.b.x, var_1.b.x, 15284u), vec4<u32>(4294967295u, var_0.a.x, 0u, 33172u), vec4<u32>(100436u, 123553u, var_1.b.x, var_0.a.x)))), 9u)]);
    var var_3 = false;
    return var_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(~(firstTrailingBit(1u) << (1u % 32u)), select(~1u, _wgslsmith_mult_u32(~0u, func_1(-1540f, global1[_wgslsmith_index_u32(139698u, 20u)], vec3<f32>(-1000f, global1[_wgslsmith_index_u32(4294967295u, 20u)], -1345f))), !all(vec3<bool>(true, true, true)))), vec2<u32>(1u, 1u), vec2<u32>(59779u, 1u));
    let var_1 = any(select(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), !(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true)), -1456f > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1051f * global1[_wgslsmith_index_u32(var_0.x, 20u)])))));
    global0 = array<i32, 9>();
    global1 = array<f32, 20>();
    let var_2 = Struct_3(Struct_2(Struct_1(763f, -(~vec4<i32>(1i, u_input.b.x, u_input.a.x, u_input.b.x))), func_3(Struct_4(select(var_0, vec2<u32>(var_0.x, 729u), true), func_3(Struct_4(var_0, Struct_1(global1[_wgslsmith_index_u32(var_0.x, 20u)], vec4<i32>(7762i, -3306i, global0[_wgslsmith_index_u32(var_0.x, 9u)], u_input.a.x)), false, var_1, u_input.b.x), vec3<f32>(634f, global1[_wgslsmith_index_u32(46689u, 20u)], global1[_wgslsmith_index_u32(8235u, 20u)])), true, true, -1111i), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_2()))))), ~vec2<u32>(~_wgslsmith_div_u32(0u, 1u), ~var_0.x), max(var_0.x >> (var_0.x % 32u), max(~_wgslsmith_dot_vec3_u32(vec3<u32>(5989u, 0u, 7341u), vec3<u32>(1u, 4294967295u, var_0.x)), 4294967295u)), Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(331f, global1[_wgslsmith_index_u32(var_0.x, 20u)]), _wgslsmith_f_op_f32(-1815f + global1[_wgslsmith_index_u32(var_0.x, 20u)])), vec4<i32>(-u_input.b.x, global0[_wgslsmith_index_u32(reverseBits(42288u), 9u)], func_3(Struct_4(var_0, Struct_1(-692f, vec4<i32>(global0[_wgslsmith_index_u32(var_0.x, 9u)], u_input.a.x, -2147483647i, u_input.b.x)), var_1, false, global0[_wgslsmith_index_u32(4294967295u, 9u)]), vec3<f32>(global1[_wgslsmith_index_u32(var_0.x, 20u)], global1[_wgslsmith_index_u32(var_0.x, 20u)], global1[_wgslsmith_index_u32(var_0.x, 20u)])).b.x, 1i)), func_3(Struct_4(min(vec2<u32>(var_0.x, 4294967295u), var_0), Struct_1(408f, vec4<i32>(-2147483647i, 2147483647i, u_input.b.x, -1i)), any(vec4<bool>(true, true, false, false)), var_1, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.x, var_0.x), 9u)]), vec3<f32>(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.x, 0u), 20u)], _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(1u, 20u)])), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 20u)])))), !(!(!select(vec2<bool>(true, var_1), vec2<bool>(var_1, true), false))));
    global0 = array<i32, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(func_3(Struct_4(firstLeadingBit(vec2<u32>(var_2.c, var_2.c)), var_2.a.b, var_2.a.a.b.x != 2147483647i, !var_1, global0[_wgslsmith_index_u32(reverseBits(var_0.x), 9u)]), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1066f, -1322f, global1[_wgslsmith_index_u32(29307u, 20u)]) + vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 20u)], -547f, global1[_wgslsmith_index_u32(var_0.x, 20u)])) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1000f, global1[_wgslsmith_index_u32(var_2.c, 20u)], -661f))))).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(firstLeadingBit(var_2.c), 20u)] * 2305f)), -1080f), ~countOneBits(~max(vec3<u32>(var_0.x, var_2.b.x, var_2.b.x), vec3<u32>(1u, 31007u, var_2.b.x))), _wgslsmith_mult_u32(~_wgslsmith_mult_u32(var_0.x, _wgslsmith_mod_u32(var_0.x, 1u)), ~min(42366u, var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(365f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_2.c, 20u)]) - 189f)) * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-119f)), global1[_wgslsmith_index_u32(11862u, 20u)]), -247f))));
}

