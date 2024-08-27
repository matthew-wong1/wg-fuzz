struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<bool>) -> vec2<f32> {
    var var_0 = -_wgslsmith_div_vec3_i32(u_input.c, select(u_input.e.yyw, vec3<i32>(_wgslsmith_mod_i32(0i, u_input.d), 1i, -2147483647i), true));
    var_0 = u_input.e.wyx;
    var_0 = ~min(-firstLeadingBit(_wgslsmith_mult_vec3_i32(u_input.e.yww, u_input.c)), (vec3<i32>(-1i, -31222i, -71i) & select(u_input.c, u_input.e.wyy, false)) >> (_wgslsmith_div_vec3_u32(max(u_input.b.zxx, u_input.b.xww), vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x)) % vec3<u32>(32u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1278f), -372f, 459f, _wgslsmith_div_f32(-1000f, -244f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 2244f, 763f, 760f) + vec4<f32>(-104f, 723f, 989f, -593f))))), vec4<f32>(-703f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 259f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1158f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-2829f, 114f), -1160f))), (_wgslsmith_div_i32(u_input.d, u_input.c.x) < max(10283i, var_0.x)) && arg_0.x)));
    var_0 = -select(min(vec3<i32>(var_0.x, 585i, -14888i) << (~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.e.x, 1i, u_input.d), vec3<i32>(var_0.x, var_0.x, var_0.x), u_input.c | vec3<i32>(-1i, var_0.x, u_input.d))), u_input.c, select(!arg_0, arg_0, select(vec3<bool>(false, arg_0.x, arg_0.x), arg_0, all(vec3<bool>(false, false, false)))));
    return vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(-var_1.x))) + _wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(step(288f, var_1.x))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_1.x)), 621f, true)))));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: f32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false))))))));
    var var_1 = any(vec3<bool>(true, select(~4294967295u, u_input.b.x, true) >= ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 60102u, 90935u), u_input.b.yyw), select(!all(vec3<bool>(true, false, false)), false, true)));
    let var_2 = Struct_1(u_input.e << (u_input.b % vec4<u32>(32u)), ~(~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_1, 1u), vec3<u32>(4294967295u, 41640u, u_input.b.x)), 65805u)), ~_wgslsmith_mult_vec3_u32((vec3<u32>(u_input.b.x, 75337u, arg_1) | vec3<u32>(0u, u_input.b.x, u_input.b.x)) & vec3<u32>(112861u, 4294967295u, u_input.b.x), u_input.b.xwx), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, 2149f, 895f, var_0.x) - vec4<f32>(1292f, arg_2, arg_2, var_0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-348f, var_0.x, 872f, -247f)) + _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, arg_0, arg_2), vec4<f32>(287f, -607f, -109f, arg_0))))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_2, var_0.x)), _wgslsmith_f_op_f32(arg_2 * arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec3<bool>(true, false, true))).x), var_0.x, -1469f)));
    var_1 = all(!vec2<bool>(!all(vec4<bool>(false, true, false, true)), !(var_2.b < 1u)));
    var_1 = all(vec2<bool>(true, true));
    return ~var_2.a.x;
}

fn func_1(arg_0: vec4<u32>, arg_1: u32) -> Struct_3 {
    var var_0 = Struct_1(vec4<i32>(_wgslsmith_mult_i32(u_input.d, _wgslsmith_mod_i32(11684i, u_input.a.x)) & -13580i, func_2(1076f, u_input.b.x, 1f), ~(~_wgslsmith_mod_i32(-37723i, -28044i)), 2147483647i), 0u, ~vec3<u32>(0u, _wgslsmith_sub_u32(0u, ~arg_1), u_input.b.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-219f, 815f, -1213f, -469f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1140f, -1145f, -761f, -1045f))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.d.ww))));
    let var_2 = u_input.b;
    return Struct_3(Struct_1(max(vec4<i32>(u_input.e.x, -1i, u_input.e.x, u_input.e.x), ~var_0.a) << (~abs(var_2) % vec4<u32>(32u)), 14274u, ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.c.x, arg_1, u_input.b.x), u_input.b.wwz)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(866f * 480f), var_1.x), var_0.d.x, -1369f, _wgslsmith_f_op_f32(-var_0.d.x))), Struct_2(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.d.x, 998f, true)))), 4294967295u), Struct_2(_wgslsmith_f_op_f32(min(var_0.d.x, var_1.x)), -614f, abs(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_0.b, var_0.c.x, 13781u, 53685u)), vec4<u32>(var_0.c.x, var_0.b, 1u, 54762u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(vec4<bool>(true, true, true, true));
    var var_1 = func_1(vec4<u32>(~59355u, u_input.b.x, 17282u, u_input.b.x), ~_wgslsmith_add_u32(u_input.b.x, _wgslsmith_add_u32(u_input.b.x, ~28956u)));
    var var_2 = ~var_1.c.c;
    var_2 = abs(abs(u_input.b.x));
    var var_3 = vec4<bool>(false, true, _wgslsmith_sub_u32(~(~u_input.b.x), 36135u & _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 3341u), vec2<u32>(u_input.b.x, 1u))) < ~1u, any(!(!(!vec3<bool>(true, var_0, false)))));
    var_1 = func_1(u_input.b, firstTrailingBit(_wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(var_1.b.c, 86484u), 0u), 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -310f)))));
}

