struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: vec4<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: Struct_2,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec3<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32, arg_1: vec3<bool>, arg_2: u32) -> vec3<bool> {
    var var_0 = _wgslsmith_add_u32(_wgslsmith_add_u32(~_wgslsmith_mod_u32(1u, select(4294967295u, 1u, false)), arg_0), abs(~_wgslsmith_mult_u32(0u, 1u)));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, -787f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(465f * -925f)))))), !vec3<bool>(all(select(arg_1, arg_1, arg_1.x)), all(select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true), vec4<bool>(false, arg_1.x, false, false), false)), any(arg_1)), Struct_1(_wgslsmith_f_op_f32(836f + _wgslsmith_f_op_f32(f32(-1f) * -517f)), _wgslsmith_f_op_f32(abs(-544f))));
    var var_2 = 29468u;
    let var_3 = Struct_3(var_1.c, 35697u, arg_2, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1298f, 1779f, var_1.c.b, var_1.a.x))))), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(566f, var_1.a.x, var_1.c.a) + var_1.a) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -533f, var_1.a.x) + vec3<f32>(841f, -630f, -1000f))))), !(!(!var_1.b)), Struct_1(_wgslsmith_f_op_f32(412f + 524f), var_1.a.x)));
    var var_4 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_1.c.a, var_3.d.x, true)), 828f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.d.x - 635f) + _wgslsmith_f_op_f32(var_3.a.b * var_3.a.b)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.a) - _wgslsmith_f_op_f32(var_1.a.x - 1520f)))), abs(_wgslsmith_sub_u32(arg_0, arg_0)), 46749u << (~arg_0 % 32u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(432f, var_1.a.x, var_1.c.a, 449f), var_3.d)), vec4<f32>(_wgslsmith_f_op_f32(2115f + var_1.c.b), _wgslsmith_f_op_f32(var_3.d.x * -1651f), _wgslsmith_f_op_f32(abs(973f)), -1296f))) + _wgslsmith_f_op_vec4_f32(round(var_3.d))), var_3.e);
    return var_4.e.b;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_4(Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1859f))), 271f), 24688u, ~17140u, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2061f), -716f, _wgslsmith_f_op_f32(sign(-226f)), 1168f))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(152f, 1187f, -1601f) - vec3<f32>(540f, -782f, -524f))), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), func_3(u_input.c, vec3<bool>(true, false, true), 0u)), Struct_1(_wgslsmith_f_op_f32(3532f + 1469f), _wgslsmith_f_op_f32(1183f * -2394f)))), select(select(vec2<bool>(true, true), vec2<bool>(false, all(vec3<bool>(false, false, true))), false | any(vec4<bool>(true, true, false, false))), vec2<bool>(!select(false, true, true), true), true), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1371f * 1683f)), _wgslsmith_f_op_f32(round(-791f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(992f * 2947f), 1f)), func_3(abs(abs(1u)), vec3<bool>(true, false, true), max(u_input.c, ~41106u)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-234f, 1055f, true))), -786f)), Struct_2(vec3<f32>(-899f, 1f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1468f + 904f)))), !vec3<bool>(u_input.b >= -10225i, true, func_3(u_input.c, vec3<bool>(true, true, false), u_input.c).x), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1018f, 1145f)), _wgslsmith_f_op_f32(abs(516f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1667f), -268f)));
    let var_1 = vec2<f32>(var_0.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c.a.x, 832f) - var_0.e)));
    var var_2 = u_input.e;
    return Struct_2(var_0.d.a, vec3<bool>(_wgslsmith_f_op_f32(trunc(217f)) >= 908f, ~abs(var_0.a.b) >= 4294967295u, true), Struct_1(-623f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(var_0.c.a.x, -2141f), true)) + _wgslsmith_f_op_f32(1211f * _wgslsmith_f_op_f32(sign(108f))))));
}

fn func_1(arg_0: i32, arg_1: i32) -> f32 {
    var var_0 = 279f;
    let var_1 = func_2();
    let var_2 = Struct_4(Struct_3(var_1.c, countOneBits(reverseBits(10975u | u_input.a)), firstLeadingBit(29020u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -720f), var_1.a.x, var_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1191f))), Struct_2(func_2().a, vec3<bool>(var_1.b.x, var_1.b.x, all(vec3<bool>(var_1.b.x, false, true))), var_1.c)), var_1.b.yy, Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(var_1.a, var_1.a), var_1.a, !vec3<bool>(var_1.b.x, var_1.b.x, true)))), var_1.b, func_2().c), var_1, _wgslsmith_f_op_f32(f32(-1f) * -961f));
    return _wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(var_2.a.d.x + 1440f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(func_1(max(_wgslsmith_mod_i32(u_input.e, -5653i), 47039i), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -7606i, u_input.b), _wgslsmith_mult_vec3_i32(vec3<i32>(29964i, u_input.b, u_input.b), vec3<i32>(-1i, -1i, 1i))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * -921f))), u_input.a, abs(abs(u_input.c)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 127f, -187f, -191f)) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -823f), _wgslsmith_f_op_f32(2946f + 846f), _wgslsmith_f_op_f32(func_1(u_input.e, u_input.b)), 906f)))), func_2());
    let var_1 = var_0.c;
    let var_2 = _wgslsmith_mult_i32(-reverseBits(select(u_input.b, reverseBits(-52005i), var_0.e.b.x)), 43437i);
    let var_3 = _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -31087i, -2147483647i, ~_wgslsmith_div_i32(0i, ~11229i)), reverseBits(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(-20980i, u_input.b, 23153i, u_input.e), vec4<i32>(var_2, u_input.b, -25440i, 10397i)))));
    let var_4 = var_0.e.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(var_1, 40649u) << (var_0.b % 32u), ~select(vec3<u32>(u_input.d.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(4294967295u, var_0.c)), _wgslsmith_mult_u32(6776u, var_0.b)), _wgslsmith_mult_vec3_u32(abs(vec3<u32>(var_0.c, 53057u, var_1)), reverseBits(vec3<u32>(1u, 33668u, var_1))), !any(var_0.e.b.xx)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(var_0.d - vec4<f32>(843f, var_0.e.c.a, 399f, 1335f)))))) + var_0.d), var_0.e.a, vec4<u32>(~27838u, ~(~u_input.a >> ((46674u << (u_input.a % 32u)) % 32u)), select(countOneBits(_wgslsmith_add_u32(76081u, u_input.c)), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 8445u), u_input.d), var_4), abs(countOneBits(_wgslsmith_add_u32(u_input.d.x, var_0.b)))));
}

