struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<bool>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec4<f32>,
    c: Struct_2,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_4, arg_1: f32) -> vec4<f32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(sign(arg_0.b.x)), arg_1);
    var var_1 = _wgslsmith_add_vec2_u32(~vec2<u32>(arg_0.a, abs(_wgslsmith_add_u32(arg_0.a, arg_0.a))), vec2<u32>(arg_0.c.b.e.x, 1u));
    let var_2 = abs(~(~(-select(-38223i, u_input.a, arg_0.c.b.a))));
    var var_3 = _wgslsmith_dot_vec2_u32(vec2<u32>(11472u, 63624u) & _wgslsmith_add_vec2_u32(arg_0.c.b.e, vec2<u32>(var_1.x, 0u)), arg_0.c.b.e) > 1u;
    var var_4 = min(firstLeadingBit(~arg_0.c.c.x), max(~4294967295u >> (~firstTrailingBit(arg_0.a) % 32u), 1u));
    return _wgslsmith_f_op_vec4_f32(-arg_0.b);
}

fn func_2(arg_0: vec3<i32>) -> f32 {
    let var_0 = Struct_4(_wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(79582u, 41302u, 0u, 1847u), vec4<u32>(63105u, 100185u, 4294967295u, 4294967295u)), _wgslsmith_mult_u32(1u, 50932u), 60580u, _wgslsmith_add_u32(5883u, 0u)), ~vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_4(108580u, vec4<f32>(1427f, -835f, -1332f, -970f), Struct_2(arg_0.x, Struct_1(true, -25055i, vec4<bool>(true, false, false, true), vec3<i32>(40240i, u_input.a, u_input.a), vec2<u32>(77955u, 30679u)), vec2<u32>(33083u, 92592u), arg_0.yz)), _wgslsmith_f_op_f32(f32(-1f) * -219f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(809f, 3041f, -523f, -964f), vec4<f32>(715f, -1277f, -929f, 1278f), true)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_3(Struct_4(1u, vec4<f32>(-1647f, 1000f, -383f, -303f), Struct_2(-46650i, Struct_1(true, -8361i, vec4<bool>(false, true, false, true), vec3<i32>(u_input.a, 49133i, -1i), vec2<u32>(1u, 21466u)), vec2<u32>(1u, 1u), vec2<i32>(-2147483647i, arg_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -839f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-403f, -280f, -406f, -2167f), vec4<f32>(485f, 428f, 1000f, 1060f)))))), Struct_2(~firstTrailingBit(1i), Struct_1(true, ~_wgslsmith_mult_i32(-2147483647i, 1i), vec4<bool>(true, true, true, true), ~vec3<i32>(-2147483647i, arg_0.x, arg_0.x), _wgslsmith_div_vec2_u32(vec2<u32>(1u, 50002u), _wgslsmith_add_vec2_u32(vec2<u32>(20900u, 0u), vec2<u32>(0u, 4294967295u)))), ~vec2<u32>(1u, ~1u), -arg_0.xy));
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(var_0.b.x)), 621f, -809f, -1547f), vec4<f32>(-889f, -240f, var_0.b.x, _wgslsmith_f_op_f32(-var_0.b.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x)))))));
    let var_2 = Struct_3(var_0.c);
    return var_0.b.x;
}

fn func_4(arg_0: Struct_5, arg_1: Struct_2) -> Struct_1 {
    let var_0 = Struct_3(arg_1);
    var var_1 = !select(var_0.a.b.c.xyw, vec3<bool>(false, all(!arg_1.b.c.xw), false), select(var_0.a.b.c.xzx, !vec3<bool>(arg_1.b.a, arg_0.c, true), !arg_1.b.c.xzy));
    var var_2 = var_0;
    var var_3 = !select(var_1.yy, vec2<bool>(true, false), vec2<bool>(false, false));
    var_1 = !arg_1.b.c.zwx;
    return var_2.a.b;
}

fn func_1(arg_0: Struct_5, arg_1: Struct_1) -> Struct_1 {
    let var_0 = select(!select(!(!vec3<bool>(arg_0.c, arg_1.c.x, arg_0.c)), !arg_1.c.xww, vec3<bool>(true, true, false)), vec3<bool>(all(vec4<bool>(any(arg_1.c.zww), !arg_1.a, true, false)), true, !any(vec4<bool>(arg_1.a, true, arg_0.c, true))), select(arg_0.c, true, arg_0.c || !arg_0.c));
    let var_1 = _wgslsmith_mod_i32(arg_1.d.x, -9478i);
    var var_2 = func_4(Struct_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(-232f, _wgslsmith_f_op_f32(func_2(arg_0.b)), _wgslsmith_f_op_f32(-arg_0.a.x), 1000f) * _wgslsmith_f_op_vec4_f32(min(arg_0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(435f, arg_0.a.x, -493f, -303f))))), arg_0.b, select(u_input.a > -arg_0.b.x, (arg_1.e.x == 4294967295u) | all(vec4<bool>(var_0.x, var_0.x, false, arg_0.c)), false)), Struct_2(~_wgslsmith_mult_i32(var_1 & 1i, firstLeadingBit(64572i)), Struct_1(any(var_0), 0i, arg_1.c, firstLeadingBit(vec3<i32>(u_input.a, u_input.a, 5579i)), vec2<u32>(0u, reverseBits(68897u))), arg_1.e, arg_0.b.zx));
    var var_3 = _wgslsmith_mult_vec2_u32(~var_2.e, arg_1.e) | vec2<u32>(_wgslsmith_div_u32(~1u, 4294967295u), var_2.e.x);
    var var_4 = Struct_1(var_2.c.x, _wgslsmith_mod_i32(-2147483647i, u_input.a), arg_1.c, min(firstLeadingBit(arg_1.d), vec3<i32>(2147483647i, 1i, u_input.a)), countOneBits(vec2<u32>(_wgslsmith_mult_u32(~1u, ~var_2.e.x), var_3.x)));
    return Struct_1(!any(!select(vec3<bool>(var_4.a, false, arg_0.c), vec3<bool>(var_2.c.x, var_2.c.x, var_0.x), arg_1.c.x)), _wgslsmith_clamp_i32(min(var_2.b, 55169i), 1i, -min(23674i, -arg_1.b)), arg_1.c, vec3<i32>(-2147483647i, var_4.b, 2147483647i), max(~(~_wgslsmith_sub_vec2_u32(vec2<u32>(8253u, var_3.x), vec2<u32>(0u, 2337u))), countOneBits(~arg_1.e | var_4.e)));
}

fn func_5(arg_0: Struct_2) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_vec4_f32(func_3(Struct_4(arg_0.c.x, vec4<f32>(860f, 1043f, -215f, 149f), arg_0), _wgslsmith_f_op_f32(floor(1000f)))).x, 1340f, -394f), vec3<f32>(-789f, -967f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-1000f, 564f))))), !func_1(Struct_5(vec4<f32>(-1330f, -731f, 1313f, 239f), vec3<i32>(u_input.a, 0i, 2147483647i), false), arg_0.b).a)));
    var var_1 = u_input.a;
    var_1 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32(0i, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b.d.x, 0i), arg_0.b.d.zy)), 22978i | ~_wgslsmith_sub_i32(arg_0.b.b, arg_0.a)), (_wgslsmith_mod_i32(1i, 2147483647i & arg_0.b.b) ^ func_1(Struct_5(vec4<f32>(var_0.x, var_0.x, -329f, var_0.x), arg_0.b.d, false), func_1(Struct_5(vec4<f32>(-962f, var_0.x, var_0.x, var_0.x), arg_0.b.d, arg_0.b.c.x), Struct_1(true, -10451i, arg_0.b.c, vec3<i32>(arg_0.d.x, 0i, u_input.a), arg_0.b.e))).d.x) ^ 1i);
    var var_2 = func_1(Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-269f, 1102f, var_0.x, var_0.x)))), ~(vec3<i32>(-1i) * -vec3<i32>(u_input.a, 6887i, 1i)), any(vec2<bool>(true, func_1(Struct_5(vec4<f32>(-451f, -1249f, -1513f, var_0.x), arg_0.b.d, arg_0.b.c.x), arg_0.b).a))), func_1(Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_4(1u, vec4<f32>(309f, var_0.x, -556f, 603f), Struct_2(-15930i, arg_0.b, arg_0.c, arg_0.b.d.yx)), var_0.x))), arg_0.b.d, any(!arg_0.b.c.yw)), arg_0.b)).e.x;
    var var_3 = Struct_4(arg_0.b.e.x >> (33727u % 32u), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -282f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-var_0.x)), Struct_2(_wgslsmith_mod_i32(u_input.a, _wgslsmith_sub_i32(_wgslsmith_add_i32(18619i, arg_0.d.x), u_input.a)), arg_0.b, vec2<u32>(reverseBits(arg_0.c.x << (4294967295u % 32u)), arg_0.b.e.x), vec2<i32>(~u_input.a, u_input.a)));
    return vec4<bool>(true, true, var_3.c.b.c.x, var_3.c.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(vec3<u32>(19178u, _wgslsmith_dot_vec3_u32(vec3<u32>(15789u, 0u, 38388u), vec3<u32>(1u, 1u, 1u)) << (9943u % 32u), _wgslsmith_div_u32(select(~18828u, countOneBits(1u), true), ~firstLeadingBit(38905u))));
    var var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(1481f)), -1257f, -1000f, 635f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(315f, -1102f, 1071f, -1089f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1003f, 1098f, 194f) + vec4<f32>(395f, 691f, -608f, -980f)), false)))), -_wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.a, -14195i, u_input.a), -vec3<i32>(6474i, u_input.a, u_input.a)) & -vec3<i32>(-51597i, _wgslsmith_div_i32(-2147483647i, u_input.a), u_input.a ^ u_input.a), any(func_5(Struct_2(~137i, func_1(Struct_5(vec4<f32>(-824f, -1515f, -1114f, -2878f), vec3<i32>(-2147483647i, 13777i, u_input.a), true), Struct_1(true, u_input.a, vec4<bool>(false, true, false, true), vec3<i32>(22106i, 33206i, -2147483647i), var_0.yy)), func_1(Struct_5(vec4<f32>(1504f, 1000f, -1136f, -531f), vec3<i32>(39703i, u_input.a, 0i), false), Struct_1(true, u_input.a, vec4<bool>(true, true, true, false), vec3<i32>(u_input.a, 0i, 0i), var_0.zz)).e, firstTrailingBit(vec2<i32>(-47875i, u_input.a))))));
    let var_2 = var_1.c;
    let var_3 = select(vec4<bool>(func_4(Struct_5(_wgslsmith_div_vec4_f32(vec4<f32>(521f, var_1.a.x, 171f, -243f), var_1.a), func_1(Struct_5(var_1.a, var_1.b, var_1.c), Struct_1(false, -1i, vec4<bool>(false, true, var_1.c, true), vec3<i32>(u_input.a, u_input.a, 1i), vec2<u32>(19472u, 4294967295u))).d, true), Struct_2(u_input.a, func_4(Struct_5(var_1.a, var_1.b, false), Struct_2(-76150i, Struct_1(true, -30956i, vec4<bool>(var_1.c, false, var_1.c, false), var_1.b, var_0.xx), vec2<u32>(17514u, var_0.x), var_1.b.xy)), func_1(Struct_5(var_1.a, vec3<i32>(u_input.a, 7896i, var_1.b.x), true), Struct_1(false, u_input.a, vec4<bool>(false, true, var_1.c, true), var_1.b, var_0.zy)).e, vec2<i32>(-47533i, var_1.b.x))).c.x, true & (~27923u >= _wgslsmith_sub_u32(83708u, var_0.x)), var_1.c, var_1.c), vec4<bool>((var_1.c & func_5(Struct_2(var_1.b.x, Struct_1(var_1.c, u_input.a, vec4<bool>(var_1.c, var_1.c, var_1.c, true), var_1.b, vec2<u32>(20653u, var_0.x)), var_0.yx, vec2<i32>(u_input.a, 1i))).x) == !func_4(Struct_5(var_1.a, var_1.b, var_1.c), Struct_2(u_input.a, Struct_1(true, var_1.b.x, vec4<bool>(true, var_1.c, var_1.c, false), var_1.b, var_0.yx), var_0.yx, vec2<i32>(u_input.a, var_1.b.x))).c.x, any(!(!vec3<bool>(var_1.c, false, false))), var_1.c, var_1.c), select(!vec4<bool>(true, !var_1.c, true, func_4(Struct_5(var_1.a, vec3<i32>(1i, var_1.b.x, u_input.a), var_1.c), Struct_2(var_1.b.x, Struct_1(false, -4142i, vec4<bool>(false, var_1.c, var_1.c, true), vec3<i32>(-24815i, u_input.a, 0i), var_0.xy), vec2<u32>(var_0.x, 25464u), vec2<i32>(-25459i, var_1.b.x))).c.x), vec4<bool>(_wgslsmith_f_op_f32(-var_1.a.x) > var_1.a.x, (true == var_1.c) & all(vec4<bool>(var_1.c, true, var_1.c, var_1.c)), var_1.c, false), false));
    var var_4 = Struct_2(-18427i | var_1.b.x, func_4(Struct_5(var_1.a, var_1.b, _wgslsmith_f_op_f32(-1843f + 1622f) > _wgslsmith_f_op_f32(var_1.a.x - var_1.a.x)), Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(-19650i, -1i, u_input.a, -29296i) ^ vec4<i32>(u_input.a, 2147483647i, 0i, u_input.a), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, var_1.b.x, 0i, var_1.b.x), vec4<i32>(var_1.b.x, var_1.b.x, 0i, u_input.a))), func_1(Struct_5(var_1.a, vec3<i32>(-18210i, 20744i, u_input.a), var_3.x), Struct_1(var_1.c, u_input.a, vec4<bool>(false, var_3.x, var_3.x, false), var_1.b, var_0.xx)), ~(vec2<u32>(8454u, var_0.x) | vec2<u32>(var_0.x, var_0.x)), select(select(var_1.b.xz, vec2<i32>(-23049i, var_1.b.x), var_3.x), ~var_1.b.zy, func_1(Struct_5(vec4<f32>(785f, var_1.a.x, var_1.a.x, -1875f), vec3<i32>(2147483647i, u_input.a, var_1.b.x), false), Struct_1(false, var_1.b.x, vec4<bool>(var_3.x, true, false, false), vec3<i32>(43880i, var_1.b.x, var_1.b.x), vec2<u32>(var_0.x, 40178u))).a))), var_0.yy, -var_1.b.xz);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.xw, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) - _wgslsmith_f_op_f32(min(var_1.a.x, -501f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.a.x, var_1.a.x, -1627f), vec3<f32>(1943f, var_1.a.x, var_1.a.x))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.a.x, -1410f, var_1.a.x), vec3<f32>(-1092f, -272f, var_1.a.x))))))));
}

