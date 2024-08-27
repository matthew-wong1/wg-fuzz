struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(369f, vec2<bool>(false, true), false, Struct_2(vec2<i32>(70141i, 19602i), true)), Struct_3(572f, vec2<bool>(true, true), false, Struct_2(vec2<i32>(-168i, -33772i), false)), Struct_3(-250f, vec2<bool>(false, true), false, Struct_2(vec2<i32>(0i, -24612i), true)), Struct_3(-1571f, vec2<bool>(false, false), false, Struct_2(vec2<i32>(0i, 2147483647i), false)), Struct_3(111f, vec2<bool>(true, true), false, Struct_2(vec2<i32>(i32(-2147483648), 0i), true)), Struct_3(142f, vec2<bool>(true, false), true, Struct_2(vec2<i32>(11576i, 0i), true)), Struct_3(-523f, vec2<bool>(false, false), false, Struct_2(vec2<i32>(0i, -21174i), false)), Struct_3(-1717f, vec2<bool>(true, true), true, Struct_2(vec2<i32>(-11031i, -1i), true)), Struct_3(-1141f, vec2<bool>(true, false), false, Struct_2(vec2<i32>(0i, -1i), true)), Struct_3(126f, vec2<bool>(false, true), true, Struct_2(vec2<i32>(32217i, -2687i), true)), Struct_3(575f, vec2<bool>(true, false), false, Struct_2(vec2<i32>(-6312i, -2128i), true)), Struct_3(1470f, vec2<bool>(false, false), true, Struct_2(vec2<i32>(2147483647i, i32(-2147483648)), false)), Struct_3(1000f, vec2<bool>(false, true), true, Struct_2(vec2<i32>(-40317i, 2147483647i), true)), Struct_3(192f, vec2<bool>(false, true), false, Struct_2(vec2<i32>(-2651i, -1i), true)), Struct_3(-378f, vec2<bool>(true, false), true, Struct_2(vec2<i32>(13769i, i32(-2147483648)), true)), Struct_3(439f, vec2<bool>(true, false), false, Struct_2(vec2<i32>(-27245i, i32(-2147483648)), false)), Struct_3(-332f, vec2<bool>(true, false), true, Struct_2(vec2<i32>(-3586i, 35867i), true)), Struct_3(263f, vec2<bool>(false, true), false, Struct_2(vec2<i32>(-15346i, 2147483647i), false)), Struct_3(-345f, vec2<bool>(false, true), true, Struct_2(vec2<i32>(0i, i32(-2147483648)), true)), Struct_3(-640f, vec2<bool>(true, true), false, Struct_2(vec2<i32>(5800i, -1i), true)));

var<private> global2: u32 = 1u;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<i32>, arg_1: bool, arg_2: vec3<bool>, arg_3: vec2<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f)));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0)) * -1136f)) + _wgslsmith_f_op_f32(-var_0)), var_0, var_0, var_0);
    var var_2 = !arg_1 | arg_3.x;
    global0 = 4294967295u;
    var var_3 = u_input.d.x;
    return _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * _wgslsmith_f_op_f32(var_1.x + -819f))));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: u32) -> Struct_2 {
    var var_0 = u_input.b;
    let var_1 = Struct_1(_wgslsmith_dot_vec3_u32(u_input.b, countOneBits(vec3<u32>(~var_0.x, 49990u, _wgslsmith_div_u32(0u, 52383u)))), true, arg_0.x, _wgslsmith_f_op_f32(func_3(vec2<i32>(arg_1.d.a.x, -6569i), !all(vec3<bool>(true, true, true)), vec3<bool>(all(vec4<bool>(arg_1.c, arg_1.d.b, arg_1.b.x, true)), u_input.b.x < _wgslsmith_mod_u32(var_0.x, 8184u), true), vec2<bool>(arg_1.b.x, !any(vec3<bool>(true, arg_1.c, false))))), true);
    var_0 = vec3<u32>(firstLeadingBit(46236u), var_0.x, ~arg_2 << (firstTrailingBit(10099u) % 32u));
    let var_2 = true;
    let var_3 = arg_1.d.a.x;
    return Struct_2(max(vec2<i32>(arg_1.d.a.x << (var_0.x % 32u), firstTrailingBit(var_3)), _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, -1281i), _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, -1i), u_input.c.xw)), u_input.c.zy)), arg_1.c);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = any(select(select(vec4<bool>(!arg_0.x, select(arg_0.x, arg_0.x, false), true, arg_0.x), !(!vec4<bool>(arg_1.b.x, false, arg_2.b, false)), _wgslsmith_sub_i32(u_input.e, 21635i) != _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(arg_2.a.x, 2147483647i, arg_2.a.x, 2147483647i))), select(!select(vec4<bool>(arg_2.b, arg_0.x, false, true), vec4<bool>(arg_1.d.b, true, true, arg_1.d.b), vec4<bool>(arg_0.x, arg_2.b, false, true)), !select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), vec4<bool>(arg_2.b, false, true, true), vec4<bool>(arg_1.b.x, true, true, true)), select(vec4<bool>(arg_0.x, true, arg_1.c, arg_1.c), vec4<bool>(arg_2.b, arg_0.x, true, false), true)), all(vec4<bool>(false, arg_0.x, any(vec3<bool>(false, arg_0.x, arg_1.c)), true))));
    var var_1 = -7628i;
    var_1 = -4458i;
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1223f))), _wgslsmith_f_op_f32(-arg_1.a)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -470f)) - vec2<f32>(_wgslsmith_f_op_f32(trunc(-1688f)), _wgslsmith_div_f32(1005f, arg_1.a)))));
    let var_3 = !arg_1.b.x;
    return !vec4<bool>(!arg_1.b.x | (all(arg_1.b) && arg_2.b), (arg_2.b || false) | var_3, var_3, arg_2.b);
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_2 {
    global0 = u_input.d.x;
    var var_0 = Struct_2(-countOneBits(vec2<i32>(-24185i, 28533i << (0u % 32u))), true);
    let var_1 = vec3<u32>(abs(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(arg_2, vec4<u32>(u_input.b.x, 47951u, arg_1.a, arg_1.a)), arg_1.a ^ 29320u)), countOneBits(1u), 4294967295u) ^ vec3<u32>(~u_input.d.x, 4294967295u, arg_2.x);
    return func_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-411f, _wgslsmith_f_op_f32(floor(428f)), select(var_0.b, var_0.b, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(arg_1.d)), _wgslsmith_f_op_f32(arg_1.d + arg_1.d)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.c - 717f))) * 1000f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.d)) - arg_1.c)))), Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.c * arg_1.c))), vec2<bool>(var_0.b, false), arg_0.x != u_input.c.x, Struct_2(var_0.a, func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-610f, 549f, arg_1.d, arg_1.c)), global1[_wgslsmith_index_u32(22192u, 20u)], _wgslsmith_mod_u32(var_1.x, 64677u)).b)), ~var_1.x & ~22222u);
}

fn func_1() -> f32 {
    let var_0 = func_5(abs(reverseBits(-vec3<i32>(u_input.c.x, -44658i, u_input.c.x))), Struct_1(_wgslsmith_mod_u32(u_input.b.x, u_input.d.x), any(func_4(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), global1[_wgslsmith_index_u32(u_input.d.x, 20u)], func_2(vec4<f32>(-139f, 1000f, 308f, 455f), global1[_wgslsmith_index_u32(u_input.d.x, 20u)], 71541u))), _wgslsmith_f_op_f32(-858f + _wgslsmith_div_f32(1787f, -537f)), _wgslsmith_f_op_f32(trunc(-213f)), false), _wgslsmith_add_vec4_u32(~vec4<u32>(select(u_input.b.x, 0u, true), reverseBits(u_input.b.x), u_input.d.x << (1u % 32u), 4294967295u), ~(~abs(vec4<u32>(1u, u_input.d.x, u_input.d.x, 1u)))));
    global1 = array<Struct_3, 20>();
    let var_1 = 0u;
    global2 = min(~(~(~1u)), ~(~4294967295u));
    let var_2 = var_1;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1128f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(600f, 916f, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 940f)) + -675f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(221f, _wgslsmith_f_op_f32(func_3(u_input.c.xw, false, vec3<bool>(false, false, true), vec2<bool>(true, true))), func_5(u_input.c.wyy, Struct_1(u_input.a, false, -552f, -119f, true), vec4<u32>(4950u, u_input.d.x, 17317u, u_input.a)).b))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-419f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1157f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -450f), _wgslsmith_f_op_f32(f32(-1f) * -1636f)))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2389f, -1000f) - _wgslsmith_f_op_f32(abs(638f))), 1364f, any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false))))));
    global0 = u_input.d.x;
    global0 = u_input.b.x | 0u;
    let var_1 = _wgslsmith_clamp_vec2_u32(u_input.b.xz, firstLeadingBit(_wgslsmith_clamp_vec2_u32(abs(u_input.d.xx), vec2<u32>(0u, u_input.d.x), _wgslsmith_sub_vec2_u32(vec2<u32>(46153u, 4294967295u), u_input.b.zy))) ^ vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(4294967295u, u_input.a), 31017u), u_input.a), ~vec2<u32>(1u, ~u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer((firstLeadingBit(u_input.d.yx) & _wgslsmith_clamp_vec2_u32(abs(vec2<u32>(4294967295u, 56485u)), ~vec2<u32>(u_input.b.x, 25715u), firstLeadingBit(vec2<u32>(var_1.x, 4294967295u)))) & ~vec2<u32>(max(u_input.b.x, var_1.x), var_1.x), vec4<u32>(var_1.x, max(4599u, ~u_input.b.x), _wgslsmith_div_u32(reverseBits(~27133u), 84520u), u_input.b.x), vec4<u32>(_wgslsmith_div_u32(u_input.b.x, 1u >> (firstTrailingBit(u_input.a) % 32u)), 1u, 1u, abs(1u)));
}

