struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec2<f32>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
    c: vec3<f32>,
    d: vec3<f32>,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: vec4<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(Struct_1(vec4<f32>(-1842f, 322f, -236f, 1110f)), vec2<bool>(false, true), -783f, Struct_1(vec4<f32>(117f, 850f, -1861f, -1074f))), Struct_3(Struct_1(vec4<f32>(1226f, 1200f, 520f, -1000f)), vec2<bool>(false, false), -179f, Struct_1(vec4<f32>(-1136f, 1000f, 1654f, -338f))), Struct_3(Struct_1(vec4<f32>(1126f, -1000f, 1617f, -1081f)), vec2<bool>(false, false), -1053f, Struct_1(vec4<f32>(200f, 1712f, -801f, -172f))), Struct_3(Struct_1(vec4<f32>(-1459f, 248f, -1000f, -1945f)), vec2<bool>(true, false), -224f, Struct_1(vec4<f32>(-325f, 594f, 723f, 177f))), Struct_3(Struct_1(vec4<f32>(-193f, -396f, 2064f, 981f)), vec2<bool>(true, true), -591f, Struct_1(vec4<f32>(-810f, -1904f, 272f, 327f))), Struct_3(Struct_1(vec4<f32>(1187f, 984f, 359f, -456f)), vec2<bool>(true, true), 266f, Struct_1(vec4<f32>(664f, -2011f, 919f, 719f))), Struct_3(Struct_1(vec4<f32>(-1000f, -312f, 170f, -809f)), vec2<bool>(false, false), 1308f, Struct_1(vec4<f32>(-1873f, 373f, -1399f, 820f))), Struct_3(Struct_1(vec4<f32>(689f, 282f, -1080f, 1000f)), vec2<bool>(false, false), 642f, Struct_1(vec4<f32>(-253f, 1717f, 1180f, -791f))), Struct_3(Struct_1(vec4<f32>(-150f, -834f, -592f, -1444f)), vec2<bool>(false, false), -1202f, Struct_1(vec4<f32>(383f, 508f, -1058f, 449f))), Struct_3(Struct_1(vec4<f32>(-491f, 466f, -1214f, 1642f)), vec2<bool>(true, false), 946f, Struct_1(vec4<f32>(-751f, -968f, 1316f, 1939f))), Struct_3(Struct_1(vec4<f32>(-532f, -1144f, 1000f, -568f)), vec2<bool>(false, true), -2486f, Struct_1(vec4<f32>(-1041f, 928f, -783f, 1122f))), Struct_3(Struct_1(vec4<f32>(1058f, -377f, -2007f, -795f)), vec2<bool>(false, true), 660f, Struct_1(vec4<f32>(-482f, -1085f, -1618f, 631f))), Struct_3(Struct_1(vec4<f32>(-484f, 695f, -1804f, -840f)), vec2<bool>(false, true), -850f, Struct_1(vec4<f32>(1849f, -1000f, 540f, 303f))));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_5, arg_3: Struct_4) -> f32 {
    var var_0 = select(vec2<bool>(true, true), arg_1.b, any(select(select(vec4<bool>(arg_1.b.x, true, arg_1.b.x, false), vec4<bool>(false, arg_1.b.x, false, arg_1.b.x), true), vec4<bool>(arg_1.b.x, true, any(vec2<bool>(arg_1.b.x, false)), any(vec3<bool>(arg_1.b.x, false, arg_1.b.x))), vec4<bool>(!arg_1.b.x, true, arg_1.b.x, arg_1.b.x))));
    var var_1 = Struct_1(arg_1.a.a);
    global0 = array<Struct_3, 13>();
    var var_2 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.e.a.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -291f))))), 1i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.d.zx + arg_0.a.c))), _wgslsmith_sub_vec2_i32(arg_0.a.d, ~reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(48012i, arg_3.a.b), arg_2.e.a.d, vec2<i32>(arg_0.a.d.x, -3220i)))));
    var_2 = Struct_2(_wgslsmith_f_op_f32(step(-167f, 306f)), firstLeadingBit(firstLeadingBit(25497i)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(516f + -1091f), arg_2.b.c.x))), var_2.c.x), arg_2.e.a.d);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(650f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-596f * arg_0.a.a), _wgslsmith_f_op_f32(f32(-1f) * -244f)))), _wgslsmith_f_op_f32(abs(var_2.a))));
}

fn func_2() -> Struct_1 {
    global0 = array<Struct_3, 13>();
    return Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1985f, 1049f, -586f, -455f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(114f, -361f, 454f, -1000f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1575f, -338f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1430f))), _wgslsmith_f_op_f32(func_3(Struct_4(Struct_2(-1000f, u_input.b, vec2<f32>(-394f, -569f), vec2<i32>(-1i, 2147483647i)), vec3<u32>(u_input.a.x, 55929u, u_input.a.x)), Struct_3(Struct_1(vec4<f32>(-760f, 304f, -546f, 818f)), vec2<bool>(true, false), 1159f, Struct_1(vec4<f32>(1227f, -132f, -202f, 165f))), Struct_5(Struct_4(Struct_2(318f, -23286i, vec2<f32>(1758f, 1894f), vec2<i32>(u_input.b, 0i)), vec3<u32>(41866u, 67012u, u_input.a.x)), Struct_2(2344f, 2147483647i, vec2<f32>(-328f, -1000f), vec2<i32>(u_input.b, -69042i)), vec3<f32>(-589f, -458f, -303f), vec3<f32>(-404f, 561f, -491f), Struct_4(Struct_2(-1454f, 2147483647i, vec2<f32>(-388f, 393f), vec2<i32>(u_input.b, 324i)), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), Struct_4(Struct_2(243f, -53924i, vec2<f32>(1143f, -444f), vec2<i32>(2954i, u_input.b)), u_input.a))), _wgslsmith_f_op_f32(trunc(-1353f)))));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: vec3<i32>) -> u32 {
    var var_0 = _wgslsmith_div_vec3_i32(-(~vec3<i32>(_wgslsmith_sub_i32(-2147483647i, arg_2.x), -2147483647i, u_input.b)), ~(vec3<i32>(~(-36639i), arg_2.x, 21249i) | vec3<i32>(-5528i, -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, arg_0.d.x), arg_2.yz))));
    let var_1 = true;
    let var_2 = arg_0.c.x;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a * var_2)), 22242i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1480f, arg_0.c.x))), abs(vec2<i32>(_wgslsmith_mult_i32(u_input.b, arg_0.b), _wgslsmith_mult_i32(2990i, 1i)) << (~u_input.a.zx % vec2<u32>(32u))));
    let var_4 = Struct_3(func_2(), !select(select(select(vec2<bool>(false, var_1), vec2<bool>(false, var_1), vec2<bool>(var_1, var_1)), !vec2<bool>(var_1, var_1), !vec2<bool>(var_1, var_1)), vec2<bool>(var_1, false || var_1), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(-1268f + arg_1), !any(vec3<bool>(false, var_1, true)))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_3.c.x * -1808f)))))), func_2());
    return ~(~u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 13>();
    global0 = array<Struct_3, 13>();
    var var_0 = -1i;
    let var_1 = -(~(~(-vec3<i32>(u_input.b, 61556i, -31268i)) << (~(~u_input.a) % vec3<u32>(32u))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1185f)) + 1f), -919f));
    var_0 = 1i;
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1131f, 505f, var_2, -1358f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(314f, 312f, var_2, var_2)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-481f, var_2, var_2, 553f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-349f, 1116f, 668f, var_2) + vec4<f32>(var_2, -706f, var_2, 1934f))))));
    let var_4 = firstTrailingBit(func_1(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-248f + -726f)), ~0i, vec2<f32>(_wgslsmith_f_op_f32(-103f + var_3.a.x), 549f), min(select(var_1.yz, var_1.zx, vec2<bool>(false, false)), var_1.zy)), -774f, vec3<i32>(var_1.x, ~2147483647i, u_input.b) << (vec3<u32>(firstLeadingBit(u_input.a.x), u_input.a.x << (u_input.a.x % 32u), ~u_input.a.x) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(-26823i, -(-5569i >> (u_input.a.x % 32u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(func_2().a.x))))), reverseBits(select(vec4<u32>(81521u, 4294967295u, u_input.a.x, 0u) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(47165u, 15481u, u_input.a.x, 4294967295u), vec4<u32>(0u, 0u, 4294967295u, u_input.a.x)), abs(select(vec4<u32>(1u, 4294967295u, 0u, u_input.a.x), vec4<u32>(20394u, var_4, u_input.a.x, 4294967295u), vec4<bool>(false, false, true, true))), 0i == -u_input.b)), min(var_1, vec3<i32>(-(var_1.x >> (4294967295u % 32u)), u_input.b, ~firstLeadingBit(var_1.x))));
}

