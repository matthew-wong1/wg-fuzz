struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: bool,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: vec4<u32>) -> f32 {
    var var_0 = arg_0.x;
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1425f - _wgslsmith_f_op_f32(f32(-1f) * -1298f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -492f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(393f, 241f)) - 1593f))), false, arg_1.x, ~vec4<i32>(34997i, ~_wgslsmith_mult_i32(1i, 13094i), _wgslsmith_dot_vec4_i32(~vec4<i32>(-41742i, -5257i, 76234i, -1i), vec4<i32>(-66085i, 26839i, -38991i, 20783i)), ~0i));
    return 988f;
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    let var_0 = any(select(vec2<bool>(true, any(vec4<bool>(true, false, true, false))), vec2<bool>(false, true), !any(vec2<bool>(true, true))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -478f), -969f);
    var var_2 = 0i;
    var var_3 = _wgslsmith_clamp_vec2_u32(vec2<u32>(49060u, ~(~1u)), arg_0.zx, ~vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, 0u), u_input.c.x), u_input.a));
    var_3 = abs(u_input.c.xx);
    return _wgslsmith_f_op_f32(var_1.x + -1628f);
}

fn func_1() -> i32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-2096f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -158f) - 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1015f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 4294967295u), vec3<u32>(37394u, 18910u, u_input.a)), vec2<bool>(true, true), select(vec4<u32>(4832u, u_input.c.x, 820u, u_input.c.x), vec4<u32>(7707u, u_input.c.x, u_input.b, 71382u), true))) - _wgslsmith_f_op_f32(774f + -1641f))), _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(~u_input.c, vec2<bool>(true, false), abs(vec4<u32>(u_input.b, u_input.a, u_input.c.x, 12965u)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2224f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(702f))) - _wgslsmith_f_op_f32(func_3(~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.b, u_input.c.x), vec3<u32>(u_input.b, 1u, u_input.c.x))))));
    var var_1 = ~(~u_input.c);
    let var_2 = 1i;
    let var_3 = var_2;
    var var_4 = var_1.x | ~_wgslsmith_dot_vec2_u32(u_input.c.yz << (vec2<u32>(u_input.c.x, 34392u) % vec2<u32>(32u)), u_input.c.yy);
    return 2147483647i;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: vec2<bool>) -> vec4<i32> {
    var var_0 = Struct_1(arg_0, arg_2.x, true, vec4<i32>(_wgslsmith_mod_i32(1i, 1i), select(~abs(10854i), reverseBits(0i), true), _wgslsmith_mod_i32(arg_1.x, _wgslsmith_div_i32(i32(-1i) * -1i, -1i)), _wgslsmith_add_i32(arg_1.x, _wgslsmith_dot_vec2_i32(abs(arg_1.zx), -arg_1.yz))));
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)) * _wgslsmith_f_op_f32(round(var_0.a.x))), 532f), any(select(!(!vec3<bool>(var_0.c, arg_2.x, false)), vec3<bool>(1u < u_input.a, arg_2.x, !var_0.b), !(!vec3<bool>(arg_2.x, false, var_0.b)))), arg_0.x >= 305f, var_0.d);
    return var_0.d;
}

fn func_5(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = !((~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.b, 48368u, 0u), vec4<u32>(0u, u_input.b, 15532u, u_input.c.x)) << (~_wgslsmith_sub_u32(u_input.a, 1u) % 32u)) <= _wgslsmith_dot_vec4_u32(select(~vec4<u32>(10136u, 36356u, u_input.b, 1u), ~vec4<u32>(31166u, u_input.b, u_input.c.x, 34858u), arg_0.c), ~(~vec4<u32>(0u, u_input.b, u_input.a, u_input.b))));
    return select(vec3<bool>(arg_0.b, true, false), !(!vec3<bool>(any(vec4<bool>(false, true, false, arg_0.b)), all(vec2<bool>(arg_0.b, true)), true)), vec3<bool>(select(false, arg_0.c, u_input.a <= 13477u), u_input.c.x >= 1u, false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 804f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -845f))));
    var_0 = _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1808f * 241f) + 429f), -2398f, all(vec4<bool>(false, false, true, true)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f))))));
    var_0 = -1084f;
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1362f))) + -2250f))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1883f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -930f), -1010f, false))) + -240f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1745f))))));
    let var_1 = func_5(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -490f), 738f), (1u > u_input.a) && true, !any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true))), func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2108f, 286f)), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-32737i, 63312i, 6174i), vec3<i32>(-16099i, 2147483647i, 28106i)), firstLeadingBit(-2147483647i), func_1()), vec2<bool>(all(vec3<bool>(true, false, true)), true))));
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_add_u32(min(53475u, _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.c.x, u_input.b), _wgslsmith_sub_u32(u_input.a, 7565u))), 0u), vec2<i32>(func_1() << (_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(u_input.b, 12665u, u_input.b, 1u)), ~vec4<u32>(u_input.b, u_input.c.x, u_input.b, u_input.a)) % 32u), func_4(vec2<f32>(_wgslsmith_div_f32(-2771f, -842f), _wgslsmith_div_f32(462f, -941f)), ~(vec3<i32>(38037i, 7262i, 64071i) << (vec3<u32>(u_input.b, u_input.a, u_input.c.x) % vec3<u32>(32u))), select(select(vec2<bool>(var_1.x, false), var_1.xy, var_1.zy), select(vec2<bool>(true, false), var_1.xy, var_1.xz), vec2<bool>(true, true))).x));
}

