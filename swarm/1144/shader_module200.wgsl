struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: Struct_1,
    d: f32,
    e: u32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec3<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: vec4<bool>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 16> = array<vec3<bool>, 16>(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true));

var<private> global1: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(vec3<i32>(i32(-2147483648), -14673i, 2566i)), Struct_2(vec3<i32>(9429i, 0i, 44909i)), Struct_2(vec3<i32>(-22279i, i32(-2147483648), i32(-2147483648))), Struct_2(vec3<i32>(-54988i, 5900i, -20786i)), Struct_2(vec3<i32>(i32(-2147483648), 11613i, -20732i)), Struct_2(vec3<i32>(21008i, 2147483647i, 2147483647i)), Struct_2(vec3<i32>(8417i, -49749i, 2456i)), Struct_2(vec3<i32>(0i, 5930i, 2147483647i)), Struct_2(vec3<i32>(i32(-2147483648), -1i, 0i)), Struct_2(vec3<i32>(0i, 0i, -1i)), Struct_2(vec3<i32>(1i, 26013i, i32(-2147483648))), Struct_2(vec3<i32>(-21047i, -1i, 31674i)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: vec3<f32>) -> vec4<i32> {
    var var_0 = u_input.b.x;
    var_0 = u_input.b.x;
    let var_1 = firstLeadingBit(u_input.b.x);
    global0 = array<vec3<bool>, 16>();
    let var_2 = 661f;
    return vec4<i32>(-60798i, reverseBits(_wgslsmith_mod_i32(~min(12429i, u_input.a.x), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 0i, -1i), vec3<i32>(u_input.a.x, 1i, u_input.a.x)), ~u_input.a.x))), _wgslsmith_div_i32(u_input.a.x >> ((10052u >> (1u % 32u)) % 32u), -61047i), _wgslsmith_add_i32(~1i, 34109i));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: i32) -> i32 {
    global1 = array<Struct_2, 12>();
    global0 = array<vec3<bool>, 16>();
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1480f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.d - arg_1.d))))))));
    let var_1 = vec3<bool>(!(!select(!arg_1.b.x, !arg_1.b.x, !arg_0.x)), arg_0.x || !all(arg_0), true);
    var var_2 = arg_0;
    return -(~arg_2);
}

fn func_2() -> Struct_1 {
    global1 = array<Struct_2, 12>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(507f, _wgslsmith_f_op_f32(f32(-1f) * -425f)))));
    let var_1 = Struct_2(vec3<i32>(-1i, ~(~func_3(vec4<bool>(true, false, true, true), Struct_3(vec2<u32>(0u, 4294967295u), vec2<bool>(true, false), Struct_1(u_input.a.wxw), -648f, u_input.b.x), u_input.a.x)), ~(-(u_input.a.x ^ u_input.a.x))));
    let var_2 = select(select(select(select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true)), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, false), any(vec2<bool>(true, true)))), select(vec2<bool>(true, true), vec2<bool>(true, true), true & all(vec4<bool>(false, true, true, false))), any(select(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, u_input.b.x), 16u)], global0[_wgslsmith_index_u32(63842u, 16u)], vec3<bool>(true, true, true)))), vec2<bool>(any(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(false, false))), any(global0[_wgslsmith_index_u32(4294967295u, 16u)])), vec2<bool>(any(select(!global0[_wgslsmith_index_u32(u_input.b.x, 16u)], vec3<bool>(true, true, true), true)), true));
    global1 = array<Struct_2, 12>();
    return Struct_1(firstLeadingBit(~(vec3<i32>(-1i) * -u_input.a.zyy)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = vec4<u32>(u_input.b.x >> (abs(u_input.b.x) % 32u), _wgslsmith_dot_vec3_u32(select(~(vec3<u32>(u_input.b.x, 11363u, u_input.b.x) & vec3<u32>(u_input.b.x, 0u, u_input.b.x)), _wgslsmith_clamp_vec3_u32(select(vec3<u32>(39127u, u_input.b.x, 4294967295u), vec3<u32>(46061u, 8414u, u_input.b.x), true), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 0u), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), ~vec3<u32>(u_input.b.x, 6528u, 72365u)), !(!global0[_wgslsmith_index_u32(u_input.b.x, 16u)])), ~(~vec3<u32>(u_input.b.x, 4294967295u, 0u))), max(_wgslsmith_div_u32(_wgslsmith_mult_u32(40734u, u_input.b.x), ~1u), 4294967295u), u_input.b.x);
    global1 = array<Struct_2, 12>();
    var_0 = _wgslsmith_mod_vec4_u32(~select(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b.x, var_0.x, var_0.x, 55171u), countOneBits(vec4<u32>(u_input.b.x, 7602u, var_0.x, u_input.b.x))), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 0u, u_input.b.x, 28452u), select(vec4<u32>(4294967295u, 0u, 38427u, var_0.x), vec4<u32>(u_input.b.x, 1u, 8302u, 70894u), vec4<bool>(false, false, false, false))), !any(vec2<bool>(true, false))), ~countOneBits(vec4<u32>(u_input.b.x, min(u_input.b.x, 4294967295u), 0u, 1u)));
    global1 = array<Struct_2, 12>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-457f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2394f - _wgslsmith_div_f32(1908f, 142f)) + 864f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(ceil(-1603f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -753f) + _wgslsmith_f_op_f32(143f * 1509f)))));
    return func_2();
}

fn func_5(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: bool) -> f32 {
    var var_0 = arg_2;
    var_0 = Struct_3(vec2<u32>(~abs(~var_0.e), countOneBits(4294967295u)), select(vec2<bool>(any(global0[_wgslsmith_index_u32(~u_input.b.x, 16u)]), arg_2.b.x), vec2<bool>(true, true), select(var_0.b, select(select(vec2<bool>(arg_2.b.x, true), arg_2.b, vec2<bool>(false, var_0.b.x)), vec2<bool>(true, true), select(vec2<bool>(arg_3, false), var_0.b, true)), arg_2.b)), var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.d), -1300f))), select(min(_wgslsmith_mult_u32(u_input.b.x, ~u_input.b.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 93947u, 11795u), vec3<u32>(var_0.e, u_input.b.x, u_input.b.x))), _wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.e, 16848u, 65610u, 1u), vec4<u32>(u_input.b.x, var_0.a.x, var_0.a.x, arg_2.a.x)), ~vec4<u32>(4294967295u, 0u, arg_2.e, u_input.b.x) | ~vec4<u32>(var_0.e, 69823u, 4294967295u, 1u)), var_0.b.x));
    let var_1 = true;
    return var_0.d;
}

fn func_6(arg_0: f32, arg_1: f32, arg_2: Struct_3) -> Struct_3 {
    global1 = array<Struct_2, 12>();
    var var_0 = Struct_5(Struct_1(-countOneBits(~u_input.a.wyx)), arg_2.c, !vec4<bool>(u_input.a.x > ~7983i, select(all(vec2<bool>(arg_2.b.x, arg_2.b.x)), !arg_2.b.x, true), true, arg_2.b.x), select(!select(!vec4<bool>(arg_2.b.x, true, arg_2.b.x, true), !vec4<bool>(arg_2.b.x, arg_2.b.x, true, false), !vec4<bool>(false, true, arg_2.b.x, false)), !select(vec4<bool>(true, arg_2.b.x, arg_2.b.x, arg_2.b.x), !vec4<bool>(true, true, arg_2.b.x, true), !vec4<bool>(false, arg_2.b.x, arg_2.b.x, true)), arg_2.d >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(240f - arg_1) * _wgslsmith_f_op_f32(arg_0 + arg_1))), (-(~arg_2.c.a.x) >> (_wgslsmith_sub_u32(~0u, max(0u, 1u)) % 32u)) & max(arg_2.c.a.x, arg_2.c.a.x | (-13679i ^ arg_2.c.a.x)));
    var var_1 = !any(vec3<bool>(false, var_0.d.x, !any(arg_2.b)));
    global0 = array<vec3<bool>, 16>();
    var_0 = Struct_5(var_0.a, var_0.b, var_0.c, var_0.d, -7424i);
    return Struct_3(u_input.b, !(!select(select(vec2<bool>(var_0.c.x, var_0.c.x), vec2<bool>(false, arg_2.b.x), true), select(var_0.d.wy, vec2<bool>(arg_2.b.x, arg_2.b.x), var_0.c.xy), var_0.d.xx)), arg_2.c, arg_1, _wgslsmith_mult_u32(~4294967295u, 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec2<bool>(!all(vec3<bool>(false, true, true)), !(!all(vec2<bool>(false, false))));
    global0 = array<vec3<bool>, 16>();
    global0 = array<vec3<bool>, 16>();
    global1 = array<Struct_2, 12>();
    var var_1 = vec4<bool>(var_0.x != var_0.x, u_input.a.x > u_input.a.x, var_0.x, !var_0.x);
    var var_2 = u_input.a.x;
    var var_3 = func_6(_wgslsmith_f_op_f32(func_5(true, func_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(400f, -974f, 757f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-297f, 1069f, -586f)))), Struct_3(vec2<u32>(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x), u_input.b.x >> (u_input.b.x % 32u)), vec2<bool>(!var_0.x, true), func_4(func_2(), Struct_1(vec3<i32>(15130i, -9868i, -50042i)), max(2147483647i, u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-994f, -932f)), 90282u), -_wgslsmith_mult_i32(u_input.a.x, 1211i) > (1i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 87837i, u_input.a.x, 20310i), u_input.a)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -486f))))), Struct_3(_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.b.x, u_input.b.x), abs(~u_input.b)), select(select(select(vec2<bool>(true, var_1.x), var_0, var_0), select(vec2<bool>(var_0.x, var_0.x), var_0, true), select(vec2<bool>(true, false), vec2<bool>(var_1.x, var_0.x), var_1.wx)), select(!vec2<bool>(true, var_1.x), !vec2<bool>(var_0.x, var_1.x), vec2<bool>(var_0.x, var_1.x)), var_0.x), Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, -467i) & abs(u_input.a.zwz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-973f * -1000f) - _wgslsmith_f_op_f32(min(-303f, -849f)))), u_input.b.x));
    let var_4 = Struct_3(vec2<u32>(u_input.b.x, firstLeadingBit(abs(var_3.e))), select(!var_3.b, func_6(1f, _wgslsmith_f_op_f32(131f + 734f), func_6(_wgslsmith_f_op_f32(round(452f)), _wgslsmith_f_op_f32(f32(-1f) * -574f), Struct_3(var_3.a, var_0, var_3.c, 2415f, 0u))).b, var_3.a.x != 21901u), Struct_1(var_3.c.a), var_3.d, var_3.e);
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

