struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
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

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-794f)))))), -1000f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(max(1f, 1762f))), _wgslsmith_f_op_f32(select(531f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1696f, 1176f), _wgslsmith_f_op_f32(f32(-1f) * -106f)))), all(select(select(vec2<bool>(arg_0.a.x, false), arg_0.a.zy, arg_0.a.zy), arg_0.a.xx, arg_0.a.x)))));
    let var_1 = ~2147483647i;
    let var_2 = Struct_3(arg_0, ~min(-vec4<i32>(-2147483647i, u_input.b.x, 2147483647i, 1i) & ~vec4<i32>(2147483647i, 2147483647i, -1i, var_1), vec4<i32>(var_1, u_input.b.x, -1i, 44319i) & vec4<i32>(u_input.b.x, var_1, u_input.b.x, 1i)), _wgslsmith_mult_vec4_u32(vec4<u32>(firstTrailingBit(u_input.a), ~u_input.a, u_input.a, u_input.a), firstLeadingBit(vec4<u32>(~u_input.a, select(1u, u_input.a, arg_0.a.x), min(1u, u_input.a), max(u_input.a, 29595u)))), arg_0.a, Struct_1(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1261f, 1091f, var_0.x, -2832f) - vec4<f32>(var_0.x, -858f, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(992f, var_0.x, 133f, 1370f))), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(sign(var_0.x)), var_0.x, _wgslsmith_f_op_f32(-1115f + var_0.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(abs(1176f)), _wgslsmith_f_op_f32(-859f + -1451f), _wgslsmith_f_op_f32(var_0.x + -353f))), var_1));
    var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), -1047f, true)), _wgslsmith_f_op_f32(select(-2091f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(212f, var_0.x)), var_2.d.x)), 2004f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1043f - -327f) - -345f), var_0.x, !arg_0.a.x))), _wgslsmith_f_op_vec4_f32(-var_2.e.c));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_2.e.c.x)), var_0.x, true)) * 1724f) - _wgslsmith_f_op_f32(var_2.e.b.x * _wgslsmith_f_op_f32(floor(639f))));
    return _wgslsmith_f_op_f32(var_3 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -439f))))));
}

fn func_2(arg_0: vec3<f32>, arg_1: i32) -> Struct_1 {
    var var_0 = -abs(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, u_input.b.x, -6132i), ~vec4<i32>(-1958i, arg_1, arg_1, -16379i))));
    let var_1 = !(!(!(!any(vec3<bool>(false, true, true)))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 448f, arg_0.x, -167f) * vec4<f32>(1276f, arg_0.x, arg_0.x, arg_0.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, 593f, 732f, -463f), vec4<f32>(339f, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(false, var_1, true, true))), vec4<bool>(true, var_1, var_1, var_1)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1354f, arg_0.x, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(round(arg_0.x))) - vec4<f32>(_wgslsmith_div_f32(arg_0.x, arg_0.x), _wgslsmith_f_op_f32(round(-392f)), _wgslsmith_f_op_f32(271f * arg_0.x), -1000f))), min(firstTrailingBit(13698i), -1i));
    var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -105f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-var_2.b), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(var_2.b, vec4<f32>(var_2.a, -509f, 3236f, -2212f)), var_2.c)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.c.x - arg_0.x), var_2.a), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_div_f32(arg_0.x, -1000f)))), var_2.c.x, var_2.b.x), abs(_wgslsmith_mult_i32(-(arg_1 | 97549i), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.d, 17216i, 2147483647i), vec3<i32>(arg_1, var_2.d, 2147483647i))))));
    var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-var_2.c.x))))), vec4<f32>(_wgslsmith_f_op_f32(681f + _wgslsmith_f_op_f32(-arg_0.x)), var_2.a, -1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) * _wgslsmith_f_op_f32(1301f + arg_0.x)), -935f)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1189f, -1756f))), var_2.a), -1137f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2.a)) * _wgslsmith_f_op_f32(select(var_2.a, 232f, var_1))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a, 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.x * 1598f), _wgslsmith_f_op_f32(-var_2.c.x))))), var_2.d);
    return Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(Struct_2(!vec3<bool>(var_1, var_1, var_1)))))), var_2.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(var_2.c)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(572f, 469f, arg_0.x, var_2.b.x) * vec4<f32>(1488f, -1133f, -370f, arg_0.x))) + vec4<f32>(_wgslsmith_f_op_f32(858f * var_2.b.x), _wgslsmith_f_op_f32(f32(-1f) * -503f), _wgslsmith_f_op_f32(round(935f)), _wgslsmith_f_op_f32(sign(arg_0.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, 677f, 2162f, arg_0.x)))), arg_1);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>) -> vec4<bool> {
    let var_0 = countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(arg_0.d, u_input.b.x), ~(i32(-1i) * -1i), 1i, arg_1.x), _wgslsmith_add_vec4_i32(arg_1, _wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.x, 60636i, u_input.b.x, arg_1.x), arg_1))));
    var var_1 = ~76994u;
    var var_2 = _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(min(1u, 4294967295u), firstTrailingBit(0u << (u_input.a % 32u))), 20475u >> (_wgslsmith_mult_u32(~1u, u_input.a) % 32u), abs(105442u), u_input.a), ~(vec4<u32>(23228u >> (u_input.a % 32u), 4294967295u, ~u_input.a, 7124u) << (vec4<u32>(83051u, abs(4294967295u), abs(4367u), _wgslsmith_mult_u32(33894u, u_input.a)) % vec4<u32>(32u))));
    let var_3 = true;
    return vec4<bool>(select(true, var_3, var_3 == (~u_input.a <= var_2.x)), !var_3, any(!select(select(vec3<bool>(var_3, var_3, var_3), vec3<bool>(true, false, var_3), var_3), !vec3<bool>(false, false, var_3), !var_3)), var_3);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<i32>) -> u32 {
    let var_0 = arg_1.x;
    var var_1 = !(!vec3<bool>(all(vec4<bool>(true, true, true, true)), false, any(vec2<bool>(true, false))));
    let var_2 = select(!(!select(!vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(true, var_1.x, var_1.x, true), var_1.x && var_1.x)), !func_4(func_2(arg_0.wyx, _wgslsmith_mod_i32(var_0, arg_1.x)), select(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, arg_1.x, 3665i, arg_1.x), vec4<i32>(var_0, 0i, 1104i, arg_1.x)), vec4<i32>(32427i, 0i, u_input.b.x, -11558i), var_1.x & false)), true);
    let var_3 = arg_0.x;
    let var_4 = u_input.b.x;
    return 28142u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(35128u, u_input.a);
    let var_1 = var_0.x;
    var_0 = _wgslsmith_div_vec2_u32(~(~vec2<u32>(func_1(vec4<f32>(-286f, -217f, -547f, -890f), u_input.b), var_0.x)), vec2<u32>(~(~min(1u, u_input.a)), reverseBits(4294967295u)));
    var_0 = vec2<u32>(~countOneBits(17600u), ~(u_input.a << (~(~var_0.x) % 32u)));
    var var_2 = 4294967295u;
    var var_3 = Struct_2(!vec3<bool>(any(vec2<bool>(false, true)), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 63414u), vec2<u32>(21817u, 30561u)) > ~u_input.a, all(func_4(Struct_1(-1226f, vec4<f32>(-1600f, -727f, 1652f, -427f), vec4<f32>(183f, 410f, 1472f, 1319f), u_input.b.x), vec4<i32>(-55572i, u_input.b.x, 2147483647i, -63079i)).zz)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(var_0.x, var_0.x), vec3<i32>(17859i, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-14687i, 47059i) ^ vec2<i32>(-2147483647i, u_input.b.x)), vec2<i32>(33280i & u_input.b.x, u_input.b.x)), u_input.b.x));
}

