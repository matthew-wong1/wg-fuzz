struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<bool>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2025f))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1086f - 224f)))))) + _wgslsmith_f_op_f32(470f + 1000f));
    let var_1 = arg_0.x && arg_0.x;
    let var_2 = Struct_1(vec2<u32>(1u >> (~u_input.b % 32u), abs(4294967295u)), !arg_0.xxx, vec2<u32>((~4294967295u << (u_input.b % 32u)) << (firstLeadingBit(~36737u) % 32u), countOneBits(_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.d.x, u_input.c), u_input.c))), reverseBits(u_input.e.x), ~firstLeadingBit(59350u));
    var var_3 = !(!arg_0.zzx);
    var var_4 = Struct_1(u_input.a.xz, select(vec3<bool>(true, any(select(arg_0, vec4<bool>(false, true, var_1, true), vec4<bool>(arg_0.x, false, var_3.x, true))), any(!var_2.b.yx)), arg_0.wzz, true), ~var_2.a, var_2.d, ~(select(var_2.a.x, ~2902u, all(vec2<bool>(false, arg_0.x))) ^ 0u));
    return reverseBits(max(_wgslsmith_add_vec4_u32(abs(vec4<u32>(7471u, u_input.a.x, 1u, u_input.a.x)), ~vec4<u32>(1u, u_input.d.x, var_2.e, var_4.c.x)), ~vec4<u32>(46358u, var_4.a.x, 4294967295u, 0u)) ^ vec4<u32>(reverseBits(~0u), 1u, ~1u, ~reverseBits(u_input.b)));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: vec4<f32>) -> bool {
    let var_0 = vec3<u32>(4294967295u, 57009u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(~0u, arg_0.x), ~_wgslsmith_sub_u32(arg_0.x ^ 0u, u_input.c)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, -553f)) * vec2<f32>(-1133f, arg_2.x)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + arg_2.x)), _wgslsmith_f_op_f32(min(-285f, var_1.x)))));
    return all(vec4<bool>(all(select(!vec4<bool>(arg_1.x, arg_1.x, false, true), vec4<bool>(false, true, true, false), arg_1.x)), arg_1.x, false, false));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: i32, arg_3: vec3<f32>) -> vec2<f32> {
    let var_0 = true;
    var var_1 = Struct_1(min(arg_0.a, u_input.a.xy), select(vec3<bool>(any(select(vec4<bool>(arg_0.b.x, false, var_0, var_0), vec4<bool>(arg_0.b.x, arg_0.b.x, var_0, false), arg_0.b.x)), 1i == _wgslsmith_add_i32(arg_1, 4586i), true | var_0), arg_0.b, !arg_0.b), vec2<u32>(49935u, _wgslsmith_clamp_u32(u_input.a.x & 1u, ~arg_0.e, arg_0.e)) << (vec2<u32>(4294967295u, select(~arg_0.e, _wgslsmith_dot_vec2_u32(arg_0.a, arg_0.a), true)) % vec2<u32>(32u)), -_wgslsmith_clamp_i32(-_wgslsmith_mult_i32(arg_0.d, -2147483647i), 2147483647i, ~1i), arg_0.c.x);
    let var_2 = arg_0;
    let var_3 = func_4(~func_3(vec4<bool>(!var_0, arg_0.b.x, arg_0.b.x, all(vec2<bool>(var_0, var_0)))), vec4<bool>(true, any(select(!vec4<bool>(false, var_2.b.x, var_1.b.x, var_0), !vec4<bool>(false, arg_0.b.x, var_2.b.x, true), select(vec4<bool>(true, var_1.b.x, var_0, true), vec4<bool>(false, arg_0.b.x, var_0, var_0), vec4<bool>(true, false, false, true)))), all(vec3<bool>(true, false, true)) & all(var_2.b.yx), var_1.b.x), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_3.x, 342f, arg_3.x, 364f), vec4<f32>(arg_3.x, arg_3.x, arg_3.x, -617f), var_2.b.x)), vec4<f32>(-1026f, -1428f, arg_3.x, arg_3.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2050f, arg_3.x, -641f, -1366f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2293f, arg_3.x, 1621f, 2011f)))))));
    var_1 = arg_0;
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(arg_3.zx + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.x, -867f)))));
}

fn func_1(arg_0: vec4<i32>, arg_1: i32) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-1517f + -622f), 349f), vec2<f32>(-881f, -579f), true)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(Struct_1(u_input.d, vec3<bool>(false, true, false), vec2<u32>(0u, u_input.a.x), arg_1, 8553u), arg_1, -2147483647i, vec3<f32>(1067f, 1183f, 1510f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(Struct_1(u_input.d, vec3<bool>(false, true, false), vec2<u32>(0u, u_input.d.x), -63761i, u_input.d.x), arg_1, arg_1, vec3<f32>(-779f, 1149f, -1000f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-655f, -124f) - vec2<f32>(-665f, 1104f))))));
    let var_1 = Struct_1(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u | u_input.d.x, 0u), vec2<u32>(u_input.d.x, max(13520u, u_input.a.x))), ~select(_wgslsmith_sub_vec2_u32(vec2<u32>(81480u, 0u), u_input.a.zy), u_input.d, arg_1 >= -1i)), select(!vec3<bool>(true, arg_0.x == u_input.e.x, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), -2020f < _wgslsmith_f_op_f32(trunc(var_0.x))), vec3<bool>(true, true, true)), ~vec2<u32>(11921u, reverseBits(53018u) >> (0u % 32u)), 1i, _wgslsmith_dot_vec3_u32(~u_input.a, max(vec3<u32>(u_input.a.x >> (u_input.a.x % 32u), func_3(vec4<bool>(true, false, false, true)).x, abs(1u)), vec3<u32>(u_input.d.x, abs(u_input.d.x), 20766u))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(select(var_0.x, 533f, var_1.b.x))) + var_0.x)), var_0.x);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-424f * 483f) + _wgslsmith_f_op_vec2_f32(func_2(Struct_1(_wgslsmith_mult_vec2_u32(u_input.a.yx, select(vec2<u32>(4294967295u, 0u), u_input.d, true)), var_1.b, ~u_input.d, ~24780i, min(func_3(vec4<bool>(false, var_1.b.x, false, false)).x, 4294967295u)), var_1.d, reverseBits(arg_1 >> (_wgslsmith_dot_vec3_u32(u_input.a, u_input.a) % 32u)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -466f), -1288f, var_0.x))).x);
    var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(var_1, var_1.d, arg_0.x, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, var_0.x, 2426f), vec3<f32>(247f, var_0.x, var_0.x))), vec3<f32>(var_0.x, var_0.x, 587f))))))));
    return !var_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(!(countOneBits(u_input.b) > ~22049u) == func_1(max(vec4<i32>(u_input.e.x, u_input.e.x, 4129i, -36422i) | vec4<i32>(u_input.e.x, 1i, -12854i, 4732i), -vec4<i32>(u_input.e.x, -51730i, 1i, 90251i)), -15724i), true);
    var_0 = vec2<bool>(true, false);
    var_0 = !vec2<bool>(u_input.e.x <= 28935i, 4294967295u < countOneBits(~u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(-select(2147483647i, -2147483647i, true & var_0.x));
}

