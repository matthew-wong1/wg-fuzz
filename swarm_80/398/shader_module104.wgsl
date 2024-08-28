struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: f32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1) -> f32 {
    return 907f;
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(reverseBits(arg_1.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-235f, arg_1.c, arg_1.b.x, 230f), arg_1.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -297f) * _wgslsmith_f_op_f32(abs(241f))), vec3<u32>(_wgslsmith_sub_u32(arg_1.a.x, 14599u), arg_1.a.x, abs(u_input.c))))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1163f - arg_1.c), _wgslsmith_f_op_f32(f32(-1f) * -1581f)))) * _wgslsmith_div_f32(-915f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.x - -361f) * -752f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -392f)));
    var var_1 = Struct_2(Struct_1(_wgslsmith_mod_vec4_u32(~_wgslsmith_mult_vec4_u32(arg_1.a, arg_1.a), arg_1.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, _wgslsmith_f_op_f32(-arg_1.c), arg_1.b.x, _wgslsmith_f_op_f32(-arg_1.c))), arg_1.c, vec3<u32>(firstTrailingBit(1u), arg_1.d.x, _wgslsmith_mod_u32(4294967295u ^ u_input.a, u_input.a))), _wgslsmith_sub_vec3_i32(vec3<i32>(select(-9541i, 2147483647i, false), reverseBits(u_input.d.x), firstTrailingBit(u_input.e.x)) >> ((vec3<u32>(u_input.c, 128019u, 38161u) << ((vec3<u32>(u_input.c, 11079u, u_input.a) & vec3<u32>(0u, 0u, 1u)) % vec3<u32>(32u))) % vec3<u32>(32u)), ~vec3<i32>(-2147483647i, ~(-2469i), u_input.e.x)), arg_1, !(!arg_0), Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, _wgslsmith_dot_vec3_u32(arg_1.d, arg_1.d), abs(u_input.c), reverseBits(arg_1.d.x)), vec4<u32>(_wgslsmith_add_u32(56385u, arg_1.d.x), arg_1.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(102234u, 42436u, 33795u, 4294967295u), arg_1.a), abs(arg_1.d.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.x, 2445f, -514f, arg_1.c) - arg_1.b))), arg_1.c, ~_wgslsmith_mod_vec3_u32(arg_1.a.zyw, arg_1.d) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(60029u, arg_1.a.x, 6175u), vec3<u32>(u_input.a, 117249u, 0u)) % vec3<u32>(32u))));
    var var_2 = Struct_3(Struct_2(var_1.c, ~(-(vec3<i32>(-2147483647i, 101818i, 68777i) & vec3<i32>(var_1.b.x, u_input.d.x, var_1.b.x))), var_1.a, all(!(!vec4<bool>(false, true, arg_0, var_1.d))), Struct_1(_wgslsmith_mod_vec4_u32(~vec4<u32>(arg_1.d.x, 27122u, arg_1.d.x, var_1.c.d.x), ~arg_1.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.e.b) + vec4<f32>(arg_1.c, 952f, var_1.e.c, 1359f)), var_1.a.c, reverseBits(var_1.a.d))));
    var_2 = Struct_3(var_2.a);
    return _wgslsmith_dot_vec2_u32(~var_1.a.d.yy, var_1.a.d.zx);
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: u32, arg_3: Struct_2) -> vec2<f32> {
    var var_0 = arg_3;
    var_0 = Struct_2(var_0.c, ~(~vec3<i32>(u_input.d.x, ~4746i, ~var_0.b.x)), Struct_1(vec4<u32>(20204u, _wgslsmith_clamp_u32(u_input.a, var_0.e.a.x, ~arg_3.c.d.x), _wgslsmith_clamp_u32(3079u, 24449u, _wgslsmith_dot_vec3_u32(var_0.c.d, vec3<u32>(67013u, 58040u, arg_3.e.d.x))), _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 1u), vec2<u32>(var_0.a.a.x, arg_2))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(arg_3.a.b)))) * arg_3.e.b), 1000f, abs(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, arg_3.c.d.x, 107838u), vec3<u32>(7897u, var_0.e.a.x, 1303u))))), false, arg_3.a);
    var_0 = arg_3;
    var_0 = arg_3;
    let var_1 = Struct_1(~firstLeadingBit(~var_0.e.a), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(var_0.c.b + _wgslsmith_div_vec4_f32(arg_3.a.b, vec4<f32>(arg_3.e.c, var_0.a.b.x, var_0.c.b.x, -430f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(241f, 1463f, var_0.a.c, _wgslsmith_f_op_f32(f32(-1f) * -280f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1645f, 688f, var_0.e.c, arg_3.e.c))))))), -386f, ~abs(vec3<u32>(var_0.e.d.x, 4294967295u, arg_3.c.d.x)) >> (vec3<u32>(29188u, u_input.c, arg_3.c.a.x) % vec3<u32>(32u)));
    return vec2<f32>(_wgslsmith_f_op_f32(242f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_f_op_f32(step(-1133f, arg_0)))), arg_0);
}

fn func_1(arg_0: vec2<u32>) -> vec2<bool> {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1112f, 1697f) + _wgslsmith_f_op_f32(func_2(Struct_1(vec4<u32>(arg_0.x, arg_0.x, 1882u, u_input.a), vec4<f32>(599f, 1176f, -529f, 508f), 472f, vec3<u32>(arg_0.x, 0u, 34215u))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2815f * -1016f) - -1000f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1609f, -651f)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(930f, 617f))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(1346f, 1799f), -1000f) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-760f, 574f) * vec2<f32>(1000f, 239f))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -844f), _wgslsmith_f_op_f32(f32(-1f) * -1561f)) - _wgslsmith_f_op_vec2_f32(func_4(-514f, vec2<bool>(true, true), func_3(false, Struct_1(vec4<u32>(u_input.c, 50323u, u_input.c, arg_0.x), vec4<f32>(555f, -733f, 1523f, -1768f), 1000f, vec3<u32>(0u, arg_0.x, 1u))), Struct_2(Struct_1(vec4<u32>(u_input.a, u_input.c, 60550u, u_input.a), vec4<f32>(-249f, 112f, 1238f, -903f), -314f, vec3<u32>(arg_0.x, arg_0.x, 68287u)), u_input.d, Struct_1(vec4<u32>(41067u, 82429u, u_input.a, arg_0.x), vec4<f32>(-1383f, -120f, 183f, 1000f), -1338f, vec3<u32>(44637u, u_input.c, u_input.a)), true, Struct_1(vec4<u32>(u_input.a, 43661u, u_input.c, arg_0.x), vec4<f32>(-2091f, 515f, -1271f, 2017f), 895f, vec3<u32>(1u, 25969u, 113132u))))))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_vec2_f32(func_4(350f, vec2<bool>(all(vec4<bool>(false, true, true, true)), all(vec4<bool>(true, true, true, false))), u_input.a, Struct_2(Struct_1(vec4<u32>(5576u, u_input.a, u_input.c, 4294967295u), vec4<f32>(301f, var_0.x, -217f, var_0.x), var_0.x, vec3<u32>(2993u, 14442u, arg_0.x)), firstTrailingBit(u_input.d), Struct_1(vec4<u32>(1211u, 76667u, u_input.c, 4294967295u), vec4<f32>(var_0.x, var_0.x, var_0.x, 1218f), -320f, vec3<u32>(arg_0.x, arg_0.x, 1u)), true, Struct_1(vec4<u32>(8670u, u_input.c, 4294967295u, 33250u), vec4<f32>(1284f, 802f, var_0.x, 1000f), 923f, vec3<u32>(30983u, 4294967295u, 73826u))))).x)), var_0.x);
    let var_1 = var_0.x;
    let var_2 = Struct_1(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.x, u_input.a, arg_0.x, 27327u) & vec4<u32>(64060u, arg_0.x, 4294967295u, arg_0.x), ~vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 1u)), ~reverseBits(vec4<u32>(35084u, 871u, 39308u, u_input.c))) | (~(vec4<u32>(arg_0.x, arg_0.x, 7197u, arg_0.x) << (vec4<u32>(4294967295u, 0u, 56221u, u_input.a) % vec4<u32>(32u))) << (vec4<u32>(arg_0.x, min(0u, 0u), 1u, 0u >> (u_input.a % 32u)) % vec4<u32>(32u))), vec4<f32>(1251f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), 448f, var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(-627f - var_0.x)))), firstTrailingBit(vec3<u32>(max(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, arg_0.x), vec3<u32>(arg_0.x, 4294967295u, u_input.a)), _wgslsmith_sub_u32(0u, arg_0.x)), 45660u, u_input.c)));
    return select(!vec2<bool>(true, !all(vec2<bool>(true, true))), !vec2<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), true), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1020f)) + -388f) - _wgslsmith_f_op_f32(select(-1394f, -165f, true))))));
    let var_1 = ~vec2<i32>(u_input.b, u_input.d.x);
    var var_2 = !(!vec2<bool>(false, !any(vec2<bool>(true, false))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-2101f, var_0, var_0, _wgslsmith_f_op_f32(var_0 + var_0)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -1158f, var_0, 1726f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -755f, var_0, var_0)))))));
    var_2 = func_1(vec2<u32>(36211u, ~(~67084u) | u_input.a));
    var var_4 = Struct_1(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(1u, 4294967295u, 0u, 2822u)), firstLeadingBit(vec4<u32>(u_input.c, 1u, u_input.a, 130472u) >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4665u, u_input.a), vec4<u32>(4294967295u, 4294967295u, 4294967295u, u_input.c)) % vec4<u32>(32u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_3.x - var_0), _wgslsmith_f_op_f32(var_3.x - 726f), 139f, _wgslsmith_f_op_vec2_f32(func_4(var_0, vec2<bool>(false, var_2.x), u_input.c, Struct_2(Struct_1(vec4<u32>(u_input.a, 3619u, 0u, u_input.c), var_3, 658f, vec3<u32>(4294967295u, u_input.a, 9180u)), vec3<i32>(-1i, 0i, 2147483647i), Struct_1(vec4<u32>(u_input.c, 11201u, 32160u, u_input.c), vec4<f32>(var_3.x, -663f, var_3.x, var_3.x), 626f, vec3<u32>(10291u, 10773u, 27050u)), true, Struct_1(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.a), var_3, 143f, vec3<u32>(4294967295u, u_input.c, u_input.c))))).x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, 1041f, -353f)))), -844f, vec3<u32>(4294967295u, firstTrailingBit(u_input.c), 1u));
    var_4 = Struct_1(_wgslsmith_add_vec4_u32(var_4.a, vec4<u32>(~var_4.a.x >> (4294967295u % 32u), u_input.a & (var_4.a.x << (0u % 32u)), func_3(func_1(var_4.d.yz).x, Struct_1(var_4.a, vec4<f32>(-625f, var_0, 264f, var_0), -201f, vec3<u32>(var_4.d.x, 1u, u_input.c))), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 30231u) & var_4.d.xz, ~var_4.a.wx))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_4.c, var_0, -495f, var_0), vec4<f32>(var_3.x, var_4.b.x, var_4.b.x, 187f)) * _wgslsmith_f_op_vec4_f32(floor(var_3))))), var_4.c, var_4.a.zxy);
    var var_5 = Struct_3(Struct_2(Struct_1(var_4.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(var_3))), _wgslsmith_f_op_f32(min(var_0, _wgslsmith_f_op_f32(1130f - var_0))), var_4.a.zzz << (vec3<u32>(u_input.c, u_input.a, 25513u) % vec3<u32>(32u))), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, var_1.x, var_1.x), u_input.d), Struct_1(var_4.a, vec4<f32>(_wgslsmith_f_op_f32(trunc(-604f)), -1852f, _wgslsmith_f_op_f32(exp2(var_4.b.x)), _wgslsmith_f_op_f32(-var_3.x)), 1554f, _wgslsmith_add_vec3_u32(~vec3<u32>(var_4.a.x, 10705u, 78443u), select(var_4.d, var_4.d, vec3<bool>(false, false, var_2.x)))), true, Struct_1(~(~var_4.a), _wgslsmith_f_op_vec4_f32(var_3 + vec4<f32>(var_0, -235f, var_0, var_3.x)), _wgslsmith_f_op_f32(var_3.x * _wgslsmith_f_op_f32(f32(-1f) * -1214f)), min(~vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(32283u, 4294967295u, u_input.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.a.a.d);
}

