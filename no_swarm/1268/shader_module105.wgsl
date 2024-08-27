struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: vec2<f32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = arg_0;
    var_0 = Struct_1(var_0.a >> (vec4<u32>(79887u, u_input.c.x, _wgslsmith_mod_u32(firstTrailingBit(66875u), _wgslsmith_mod_u32(u_input.c.x, 0u)), 4101u ^ select(u_input.d, u_input.c.x, false)) % vec4<u32>(32u)), arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.e.x), -1012f)) * 1456f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1143f, -1888f))) * vec2<f32>(-283f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-316f - -103f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.e)));
    var_0 = Struct_1(var_0.a, ~1i, -1551f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(arg_0.e.yw, vec2<f32>(-578f, 493f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.e.zw + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.x, arg_0.c) - var_0.e.yz)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_0.d, vec2<f32>(arg_0.e.x, var_0.c)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(484f, -178f) - arg_0.e.zw)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.e.x), -1219f, 200f, var_0.e.x)) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_0.e, var_0.e))))));
    return abs(min(38900i, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(_wgslsmith_mult_i32(-2147483647i, 0i), _wgslsmith_mod_i32(arg_0.b, 26978i), var_0.a.x, -2147483647i))));
}

fn func_2(arg_0: bool) -> vec4<f32> {
    let var_0 = 4294967295u;
    var var_1 = Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(-max(u_input.b.x, -45712i), _wgslsmith_add_i32(1i, u_input.b.x), abs(firstLeadingBit(-1i)), -4560i), select(select(u_input.b, ~vec4<i32>(u_input.a.x, -19537i, u_input.b.x, -6745i), select(vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(arg_0, false, true, arg_0), vec4<bool>(arg_0, true, arg_0, arg_0))), vec4<i32>(-11824i & u_input.a.x, -1i, 2147483647i, func_3(Struct_1(u_input.b, u_input.b.x, 1466f, vec2<f32>(-320f, 1000f), vec4<f32>(711f, -795f, -154f, 478f)))), vec4<bool>(true, !arg_0, true, true))), -23824i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1533f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1305f, 1332f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-163f, -805f), vec2<f32>(-838f, 463f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(584f, 392f, 973f, 253f) * _wgslsmith_div_vec4_f32(vec4<f32>(176f, 866f, 1000f, -658f), vec4<f32>(-688f, -1794f, -1000f, 370f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-443f, 301f, -1289f, -1000f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(743f, 1530f, 802f, -1000f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(680f, -1386f, -1544f, 221f) + vec4<f32>(-1426f, -864f, 953f, 1618f))))));
    var var_2 = reverseBits(_wgslsmith_mult_u32(27581u, var_0));
    var_2 = max(4294967295u | _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(31418u, 0u, 4294967295u, 465u), vec4<u32>(u_input.c.x, 4294967295u, 9584u, var_0)), _wgslsmith_mod_u32(var_0, var_0)), _wgslsmith_mult_u32(1253u, _wgslsmith_div_u32(abs(_wgslsmith_mult_u32(u_input.d, 15237u)), reverseBits(var_0))));
    let var_3 = arg_0;
    return vec4<f32>(-426f, _wgslsmith_f_op_f32(1203f * _wgslsmith_f_op_f32(-var_1.c)), -320f, var_1.c);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: i32) -> i32 {
    var var_0 = arg_0.b;
    let var_1 = _wgslsmith_f_op_vec4_f32(func_2(true));
    var_0 = u_input.b.x;
    var_0 = arg_2;
    var var_2 = arg_0;
    return var_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(func_1(Struct_1(vec4<i32>(2147483647i, _wgslsmith_dot_vec2_i32(u_input.b.xw, u_input.a.zx), 0i, _wgslsmith_sub_i32(u_input.a.x, -1i)), u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-147f, -1000f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-105f, 505f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(308f, -214f, 1000f, -506f) - vec4<f32>(-1647f, -875f, 292f, 147f)) * _wgslsmith_div_vec4_f32(vec4<f32>(206f, -399f, 599f, 845f), vec4<f32>(-1633f, 1000f, 1050f, 628f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(630f, -375f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -799f)))), 39543i), u_input.b.x);
    let var_1 = Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(var_0, _wgslsmith_add_i32(~u_input.a.x, abs(-14712i)), abs(-2147483647i), 21574i), u_input.a), -2147483647i, 1060f, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1144f, -682f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 700f) * vec2<f32>(-829f, 594f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1280f, -575f) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-290f, -986f)))), vec2<bool>(true, false))), vec4<f32>(1603f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-520f + 1218f) - -504f)), _wgslsmith_f_op_f32(sign(101f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1301f, -1000f)) + _wgslsmith_f_op_f32(-688f + 872f)))));
    let var_2 = ~vec2<u32>(1u, _wgslsmith_mod_u32(1u, (0u ^ u_input.c.x) >> (u_input.d % 32u)));
    let var_3 = Struct_1(u_input.a, -1i, 697f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-858f - var_1.c), var_1.c)) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec4_f32(func_2(true)).xz))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_1.e))));
    let var_4 = var_3;
    var var_5 = _wgslsmith_f_op_f32(var_4.e.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(439f))));
    var var_6 = vec4<i32>(~var_0, var_0, ~(~(-12740i)), var_0);
    var var_7 = all(!(!(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), false))));
    var var_8 = abs(var_6.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(106f, -1180f, -2850f, var_4.d.x)))) - var_1.e) + _wgslsmith_f_op_vec4_f32(-var_1.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

