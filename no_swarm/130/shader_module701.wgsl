struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: i32,
    e: f32,
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<bool>, arg_1: i32) -> bool {
    var var_0 = Struct_2(Struct_1(-1i, true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-326f, 300f)))))), Struct_1(u_input.a.x, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1001f - 214f)) - 634f)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1376f)));
    var var_2 = -511f;
    let var_3 = all(!(!(!vec2<bool>(arg_0.x, arg_0.x))));
    var var_4 = var_0.a;
    return false;
}

fn func_4(arg_0: i32, arg_1: vec3<bool>, arg_2: vec4<u32>) -> f32 {
    var var_0 = Struct_3(arg_1.x);
    let var_1 = Struct_1(arg_0, var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-946f, -1270f, true))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -317f) - 1000f)) * -414f));
    var_0 = Struct_3(_wgslsmith_f_op_f32(-var_1.c) == _wgslsmith_f_op_f32(-209f + -299f));
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(var_1.c)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(586f)), _wgslsmith_f_op_f32(-var_1.c)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.c))))));
    let var_3 = Struct_3(!(!arg_1.x));
    return var_1.c;
}

fn func_2(arg_0: vec3<u32>, arg_1: i32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(func_4(-21418i, select(vec3<bool>(true, true, u_input.e > max(-1i, 15776i)), vec3<bool>(true == func_3(vec4<bool>(false, true, false, false), arg_1), true, any(vec4<bool>(false, false, true, false)) && false), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), u_input.d));
    var var_1 = Struct_3(true);
    var_1 = Struct_3(!all(vec2<bool>(!var_1.a, var_1.a)));
    var_0 = _wgslsmith_div_f32(1764f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(484f))) * 1f)));
    var var_2 = vec3<i32>(arg_1, _wgslsmith_mod_i32(firstTrailingBit(1i), countOneBits(u_input.e)), arg_1);
    return Struct_3(true);
}

fn func_5(arg_0: Struct_3) -> bool {
    var var_0 = Struct_2(Struct_1(min(u_input.e, 34650i), any(!select(vec3<bool>(true, arg_0.a, arg_0.a), vec3<bool>(arg_0.a, arg_0.a, true), vec3<bool>(true, arg_0.a, arg_0.a))), _wgslsmith_div_f32(1211f, -331f)), Struct_1(-39143i, arg_0.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(547f, _wgslsmith_f_op_f32(-550f + 354f)))))));
    let var_1 = arg_0;
    var_0 = Struct_2(var_0.a, var_0.a);
    let var_2 = var_0.b;
    var var_3 = !(!select(!select(vec2<bool>(var_2.b, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), true));
    return false;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: bool, arg_3: f32) -> vec4<bool> {
    let var_0 = select(vec2<u32>(u_input.c.x, abs(_wgslsmith_mod_u32(u_input.c.x, select(u_input.c.x, 1u, arg_2)))), vec2<u32>(u_input.d.x, u_input.d.x), true & (func_5(func_2(vec3<u32>(u_input.d.x, 27434u, 0u), -16672i)) && true));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(sign(arg_1.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-135f - 965f))), arg_3);
    var var_2 = func_2(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(~u_input.d.zwz, ~vec3<u32>(4294967295u, 12171u, 33u)), select(_wgslsmith_sub_vec3_u32(u_input.d.xzx, u_input.d.yzx), vec3<u32>(u_input.d.x, 15411u, u_input.c.x), true)) << (~(~vec3<u32>(0u, 12797u, 6951u)) % vec3<u32>(32u)), _wgslsmith_clamp_i32(34468i | u_input.b.x, i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, arg_0.x, -14667i), vec3<i32>(34095i, 0i, u_input.e)), arg_0.x));
    var_1 = _wgslsmith_f_op_f32(round(arg_3));
    let var_3 = func_2(_wgslsmith_sub_vec3_u32(~(~u_input.d.xyz ^ select(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<u32>(78690u, var_0.x, var_0.x), var_2.a)), ~select(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, u_input.d.x, u_input.d.x) | vec3<u32>(4294967295u, 1u, 8775u), arg_3 == arg_1.x)), ~(-53025i));
    return select(vec4<bool>(all(vec2<bool>(arg_2, true)) && true, true, arg_2, false), select(!(!select(vec4<bool>(var_3.a, arg_2, var_3.a, var_2.a), vec4<bool>(arg_2, false, var_2.a, true), var_2.a)), select(!vec4<bool>(true, false, var_2.a, arg_2), !select(vec4<bool>(var_2.a, true, false, true), vec4<bool>(true, var_3.a, var_3.a, arg_2), vec4<bool>(false, false, false, var_2.a)), !select(vec4<bool>(arg_2, arg_2, true, var_2.a), vec4<bool>(false, var_3.a, var_2.a, false), arg_2)), !select(vec4<bool>(arg_2, var_3.a, true, false), select(vec4<bool>(true, var_3.a, true, true), vec4<bool>(false, true, var_2.a, true), var_3.a), select(vec4<bool>(var_3.a, var_3.a, true, arg_2), vec4<bool>(true, var_2.a, arg_2, var_2.a), vec4<bool>(arg_2, var_2.a, true, arg_2)))), !vec4<bool>(var_3.a & var_3.a, true, false, (var_3.a & true) | var_2.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(all(!vec4<bool>(true, true, false, u_input.d.x < u_input.d.x)));
    var var_1 = Struct_1(-1i, all(vec2<bool>(var_0.a, var_0.a)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2498f), _wgslsmith_f_op_f32(f32(-1f) * -1583f))), 1000f) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(513f)) - -1955f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(486f, 1009f) - 1010f)))));
    let var_2 = select(func_1(_wgslsmith_sub_vec2_i32(u_input.b, ~u_input.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1087f, var_1.c)))), var_0.a, _wgslsmith_f_op_f32(abs(var_1.c))), vec4<bool>(((false & var_0.a) & !var_0.a) || var_0.a, true, ~firstTrailingBit(39410u) < 5418u, !var_0.a), !var_0.a);
    let var_3 = func_2(abs(u_input.d.yxw), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(select(vec3<i32>(var_1.a, var_1.a, -84841i), vec3<i32>(25053i, 1i, -2147483647i), var_0.a), min(vec3<i32>(-17026i, -2147483647i, var_1.a), vec3<i32>(-2147483647i, -2147483647i, 23503i))), abs(abs(vec3<i32>(-62934i, u_input.e, 51753i)))) & (((u_input.e | u_input.a.x) ^ 2147483647i) << (u_input.c.x % 32u)));
    var var_4 = firstLeadingBit(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(1u), _wgslsmith_add_u32(u_input.d.x, u_input.c.x)), abs(~vec2<u32>(u_input.d.x, u_input.d.x))), ~u_input.d.x << (_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.c.x, 4294967295u), u_input.c.x) % 32u)));
    var var_5 = Struct_3(true);
    var_4 = _wgslsmith_mod_vec2_u32(vec2<u32>(~150046u, _wgslsmith_dot_vec3_u32(abs(~vec3<u32>(var_4.x, var_4.x, 1u)), vec3<u32>(4294967295u, 1u, var_4.x))), u_input.d.zz);
    let x = u_input.a;
    s_output = StorageBuffer(802f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, -527f, -2123f, var_1.c)))))), ~u_input.d.ywz, _wgslsmith_div_i32(var_1.a, _wgslsmith_add_i32(~(var_1.a & -2147483647i), min(u_input.e, _wgslsmith_div_i32(var_1.a, -20965i)))), _wgslsmith_f_op_f32(var_1.c * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
}

