struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: vec2<f32>,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: i32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32) -> vec4<bool> {
    var var_0 = any(select(select(select(vec3<bool>(true, false, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), vec3<bool>(true, all(vec2<bool>(true, false)), all(vec3<bool>(true, true, true))), all(vec2<bool>(true, false)) && false), vec3<bool>(any(select(vec2<bool>(false, false), vec2<bool>(true, true), false)), true, true), !vec3<bool>(false, all(vec2<bool>(true, true)), true)));
    let var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-1350f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-678f, 458f, false)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(round(arg_0))), _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(max(arg_0, 1137f))))), arg_0, _wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_div_f32(arg_0, -1290f));
    let var_2 = vec2<bool>(!all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true))), true);
    var_0 = !var_2.x;
    var_0 = any(!select(vec3<bool>(all(vec4<bool>(true, true, true, false)), true, true), select(!vec3<bool>(var_2.x, false, var_2.x), select(vec3<bool>(true, false, var_2.x), vec3<bool>(true, var_2.x, false), var_2.x), vec3<bool>(var_2.x, var_2.x, false)), false));
    return select(select(vec4<bool>(var_2.x, var_2.x, u_input.c > -u_input.c, true || var_2.x), vec4<bool>(!(!var_2.x), var_2.x, var_2.x, !(!var_2.x)), any(vec3<bool>(true, var_2.x, false))), !select(select(select(vec4<bool>(false, false, var_2.x, false), vec4<bool>(var_2.x, false, false, var_2.x), false), vec4<bool>(var_2.x, var_2.x, var_2.x, false), true), !(!vec4<bool>(false, false, var_2.x, var_2.x)), true), vec4<bool>(false, all(!select(vec3<bool>(var_2.x, true, var_2.x), vec3<bool>(true, var_2.x, var_2.x), vec3<bool>(true, false, true))), all(!select(vec4<bool>(var_2.x, false, var_2.x, var_2.x), vec4<bool>(var_2.x, false, var_2.x, false), false)), var_2.x));
}

fn func_2(arg_0: vec3<bool>) -> bool {
    let var_0 = Struct_3(~countOneBits(min(27270u, ~2662u)), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1648f)))), -1i);
    let var_1 = Struct_2(0u, select(func_3(_wgslsmith_f_op_f32(var_0.c * var_0.c)), !select(!vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), !vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), select(vec4<bool>(false, arg_0.x, false, arg_0.x), vec4<bool>(false, true, arg_0.x, arg_0.x), arg_0.x)), false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(var_0.c, var_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c + -1000f)))), Struct_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1017f, _wgslsmith_f_op_f32(round(-1000f))), vec2<f32>(_wgslsmith_f_op_f32(step(355f, var_0.c)), 2932f))), ~74455u), ~vec3<u32>(firstTrailingBit(64920u), _wgslsmith_mult_u32(7087u, 54568u), 1u) << (abs(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.a, 4294967295u, 19886u), vec3<u32>(var_0.a, var_0.a, 12395u)) & vec3<u32>(var_0.a, 4294967295u, 0u)) % vec3<u32>(32u)));
    var var_2 = abs(~vec3<u32>(max(abs(var_0.a), ~0u), ~64115u, _wgslsmith_dot_vec2_u32(var_1.e.xz, vec2<u32>(var_0.a, 12680u))));
    let var_3 = var_2.x;
    let var_4 = true;
    return any(var_1.b);
}

fn func_4(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_4) -> vec3<u32> {
    let var_0 = ~(-(_wgslsmith_div_vec4_i32(~vec4<i32>(30829i, u_input.c, u_input.c, -32986i), select(vec4<i32>(u_input.a.x, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.a.x, u_input.c, -40021i, -1i), arg_0)) ^ vec4<i32>(u_input.c, u_input.a.x, -1i, 2147483647i)));
    var var_1 = -64193i;
    var_1 = ~var_0.x;
    let var_2 = !(!select(select(select(vec4<bool>(arg_1.x, false, true, arg_1.x), vec4<bool>(arg_1.x, false, true, arg_2.b.x), vec4<bool>(arg_1.x, arg_2.b.x, false, false)), !vec4<bool>(false, true, arg_0, false), !arg_1.x), select(select(vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(arg_1.x, arg_1.x, arg_0, arg_1.x), vec4<bool>(arg_1.x, false, false, arg_0)), select(vec4<bool>(arg_0, arg_2.b.x, true, arg_1.x), vec4<bool>(true, true, arg_1.x, arg_0), vec4<bool>(arg_0, false, arg_2.b.x, true)), !vec4<bool>(arg_1.x, arg_1.x, arg_2.b.x, false)), func_3(-1792f)));
    let var_3 = select(vec3<i32>(firstLeadingBit(~_wgslsmith_mult_i32(1i, -17359i)), firstTrailingBit(_wgslsmith_dot_vec2_i32(var_0.yw ^ vec2<i32>(46103i, 11006i), vec2<i32>(-2147483647i, -2147483647i))), _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(u_input.b, u_input.a.x, firstTrailingBit(-84176i)))), -(~vec3<i32>(var_0.x << (arg_2.c % 32u), ~20940i, _wgslsmith_dot_vec4_i32(var_0, var_0))), select(vec3<bool>(any(select(arg_1.xx, var_2.zx, vec2<bool>(true, true))), var_0.x < (u_input.a.x | var_0.x), false), arg_2.b, select(vec3<bool>(!arg_2.b.x, select(var_2.x, arg_2.b.x, false), any(vec2<bool>(arg_0, var_2.x))), !select(vec3<bool>(var_2.x, false, false), vec3<bool>(false, false, true), var_2.wxy), var_2.x | (arg_1.x & arg_1.x))));
    return ~_wgslsmith_mod_vec3_u32(countOneBits(select(vec3<u32>(36840u, arg_2.c, 0u), vec3<u32>(arg_2.c, arg_2.a.x, 19037u) & arg_2.a, var_2.x && false)), ~_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, arg_2.c, 4294967295u), vec3<u32>(arg_2.a.x, arg_2.a.x, 115333u), vec3<u32>(72186u, arg_2.a.x, arg_2.a.x)), ~vec3<u32>(arg_2.c, 0u, arg_2.a.x), arg_2.a));
}

fn func_5(arg_0: vec3<u32>) -> Struct_4 {
    let var_0 = countOneBits(arg_0.x);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1263f, 1000f) * _wgslsmith_div_f32(-826f, 1330f)) + -1145f))));
    let var_2 = Struct_3(~10639u >> (_wgslsmith_dot_vec4_u32(~(~vec4<u32>(arg_0.x, 4294967295u, 27133u, arg_0.x)), ~vec4<u32>(arg_0.x, var_0, 53996u, arg_0.x) | select(vec4<u32>(arg_0.x, var_0, 5856u, arg_0.x), vec4<u32>(var_0, 1234u, var_0, 1u), vec4<bool>(false, true, false, true))) % 32u), arg_0.zx, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -222f) - _wgslsmith_f_op_f32(select(-1000f, -272f, true))))), _wgslsmith_f_op_f32(f32(-1f) * -1044f))), i32(-1i) * -(i32(-1i) * -1i));
    var_1 = _wgslsmith_f_op_f32(-var_2.c);
    var var_3 = Struct_4(arg_0, select(!vec3<bool>(true, any(vec2<bool>(true, false)), true), select(vec3<bool>(false, true, func_3(var_2.c).x), func_3(_wgslsmith_f_op_f32(-372f * var_2.c)).zxx, vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), ~arg_0.x);
    return Struct_4(countOneBits(vec3<u32>(0u, arg_0.x, ~var_3.a.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 98582u)) % 32u))), vec3<bool>(true, all(vec3<bool>(var_3.b.x, false, !var_3.b.x)), false), arg_0.x);
}

fn func_1(arg_0: f32, arg_1: Struct_4, arg_2: vec4<i32>, arg_3: bool) -> Struct_4 {
    let var_0 = ~(firstTrailingBit(max(arg_1.c, 0u)) ^ countOneBits(0u)) ^ ~_wgslsmith_mult_u32(4294967295u, ~arg_1.a.x);
    let var_1 = func_5(func_4(false, !vec3<bool>(func_2(vec3<bool>(true, arg_3, arg_3)), all(arg_1.b.xz), func_3(arg_0).x), arg_1));
    var var_2 = func_5(~arg_1.a);
    var_2 = Struct_4(~_wgslsmith_sub_vec3_u32(~(~vec3<u32>(var_2.a.x, var_1.a.x, var_0)), vec3<u32>(var_2.c, ~var_1.c, max(0u, arg_1.a.x))), !vec3<bool>(-1i > firstTrailingBit(1i), all(var_2.b), false), _wgslsmith_mod_u32(51187u, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(arg_1.a.x, var_0, 0u)), var_2.a)));
    var_2 = Struct_4(var_1.a, var_1.b, 1u);
    return Struct_4(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, var_0, 0u), var_2.a), arg_1.c, select(74152u, _wgslsmith_clamp_u32(arg_1.a.x, 1u, 1u), true)), arg_1.a), vec3<bool>(arg_1.b.x, (true & (arg_2.x >= u_input.a.x)) || all(vec3<bool>(false, arg_3, false)), !(!(arg_1.a.x >= 36009u))), var_1.c);
}

fn func_6(arg_0: i32, arg_1: Struct_4, arg_2: vec2<u32>) -> Struct_4 {
    var var_0 = Struct_3(arg_1.c, ~select(vec2<u32>(_wgslsmith_mult_u32(0u, 2224u), ~59944u), vec2<u32>(~arg_1.a.x, 0u >> (arg_1.c % 32u)), !vec2<bool>(arg_1.b.x, arg_1.b.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -763f))))), arg_0);
    var_0 = Struct_3(58989u, ~countOneBits(~arg_1.a.xy), var_0.c, arg_0);
    var_0 = Struct_3(_wgslsmith_clamp_u32(1u, ~func_1(-968f, func_5(arg_1.a), -vec4<i32>(0i, 24549i, -1i, 0i), true).c, func_1(_wgslsmith_f_op_f32(-1000f * var_0.c), arg_1, -vec4<i32>(-1i, 2432i, u_input.c, -1i), true).c | 18031u), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(494u, 4294967295u)), arg_1.a.yx), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.c, _wgslsmith_f_op_f32(f32(-1f) * -143f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.c)) + _wgslsmith_f_op_f32(f32(-1f) * -1103f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.c)) * _wgslsmith_f_op_f32(-var_0.c)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c + -119f)))), i32(-1i) * -(~_wgslsmith_mod_i32(21234i, arg_0)));
    var_0 = Struct_3(func_5(arg_1.a).c, vec2<u32>(~(~arg_2.x), ~_wgslsmith_sub_u32(_wgslsmith_sub_u32(arg_2.x, arg_1.a.x), arg_2.x | 12993u)), _wgslsmith_div_f32(1165f, _wgslsmith_f_op_f32(var_0.c - var_0.c)), -_wgslsmith_div_i32(_wgslsmith_mod_i32(arg_0 ^ var_0.d, min(u_input.c, u_input.a.x)), u_input.c));
    var_0 = Struct_3(arg_2.x, var_0.b, var_0.c, -var_0.d);
    return Struct_4(_wgslsmith_mod_vec3_u32(~vec3<u32>(~1u, func_5(vec3<u32>(86463u, 47154u, arg_1.a.x)).a.x, 0u), firstTrailingBit(_wgslsmith_clamp_vec3_u32(~arg_1.a, arg_1.a, vec3<u32>(1u, var_0.b.x, arg_2.x)))), arg_1.b, ~arg_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec2<bool>(true, true));
    var_0 = true;
    var var_1 = Struct_3(18866u, vec2<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, 6636u, 1u, 4294967295u)), abs(firstLeadingBit(vec4<u32>(1u, 29353u, 4294967295u, 47474u)))), 112560u), 1000f, _wgslsmith_mult_i32(abs(u_input.a.x) | _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.b, 2147483647i, 0i), vec4<i32>(1i, 6337i, -2147483647i, u_input.a.x)), ~23736i) ^ -(~_wgslsmith_mod_i32(-27327i, 15804i)));
    var var_2 = func_6(-1i, func_1(var_1.c, Struct_4(~_wgslsmith_mod_vec3_u32(vec3<u32>(67302u, var_1.b.x, 24700u), vec3<u32>(var_1.a, var_1.b.x, 35982u)), vec3<bool>(true, u_input.b >= -1i, true), var_1.b.x), countOneBits(~(vec4<i32>(var_1.d, var_1.d, u_input.b, 2147483647i) ^ vec4<i32>(var_1.d, var_1.d, u_input.b, 17679i))), select(true, true, any(vec2<bool>(false, true)) || all(vec4<bool>(true, false, true, false)))), _wgslsmith_div_vec2_u32(vec2<u32>(var_1.a ^ ~1u, var_1.b.x), ~(~(~vec2<u32>(var_1.b.x, var_1.b.x)))));
    var var_3 = select(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1543f))), select(vec4<bool>(false, _wgslsmith_f_op_f32(-var_1.c) <= _wgslsmith_f_op_f32(var_1.c * -223f), !var_2.b.x, var_2.b.x), !vec4<bool>(!var_2.b.x, var_2.b.x, var_2.b.x || var_2.b.x, func_6(-2147483647i, Struct_4(vec3<u32>(var_1.b.x, 23774u, var_1.a), vec3<bool>(var_2.b.x, var_2.b.x, true), var_1.b.x), vec2<u32>(var_2.a.x, 1u)).b.x), select(!vec4<bool>(var_2.b.x, var_2.b.x, var_2.b.x, var_2.b.x), vec4<bool>(func_2(var_2.b), var_2.b.x, false, true), true && var_2.b.x)), vec4<bool>(!((var_1.c == var_1.c) | var_2.b.x), any(!vec4<bool>(false, var_2.b.x, true, false)) & var_2.b.x, false, !func_5(var_2.a).b.x));
    var var_4 = !select(!(!select(vec4<bool>(var_2.b.x, false, var_3.x, true), vec4<bool>(var_2.b.x, var_2.b.x, false, var_3.x), true)), func_3(-1090f), var_2.b.x);
    let var_5 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c * _wgslsmith_f_op_f32(1112f - 223f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(632f - var_1.c)))), Struct_4(~var_2.a, !(!(!vec3<bool>(false, var_2.b.x, var_2.b.x))), firstLeadingBit(var_2.c)), reverseBits(abs(vec4<i32>(1i, ~var_1.d, 1i, 0i))), var_1.c > var_1.c).b;
    var_3 = vec4<bool>(var_3.x, true, !all(vec4<bool>(var_4.x, true, var_4.x, var_1.d != u_input.c)), !(!(-1304f >= var_1.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-455f, _wgslsmith_f_op_f32(var_1.c * -978f))) + var_1.c));
}

