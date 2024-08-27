struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: u32,
    d: f32,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: i32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: u32,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -517f;

var<private> global1: i32 = -4406i;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> bool {
    return any(vec2<bool>(true, !any(vec3<bool>(true, true, true))));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: u32, arg_3: Struct_3) -> vec2<bool> {
    var var_0 = 456f;
    global1 = arg_1.a.e;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_3.a.b.a, _wgslsmith_f_op_f32(step(939f, 977f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(arg_3.a.d)))) + arg_3.a.d));
    var var_1 = arg_1;
    let var_2 = ~(_wgslsmith_clamp_vec4_i32((vec4<i32>(2147483647i, 2147483647i, -12179i, -2147483647i) ^ vec4<i32>(arg_1.a.e, var_1.a.e, var_1.a.e, 1i)) >> (vec4<u32>(73318u, 99304u, arg_0.x, 0u) % vec4<u32>(32u)), -vec4<i32>(arg_1.a.e, 1i, -1i, -49i) & ~vec4<i32>(arg_1.a.e, arg_1.a.e, -2147483647i, 48978i), vec4<i32>(-1i) * -vec4<i32>(arg_1.a.e, 2147483647i, u_input.b, u_input.b)) >> (~min(vec4<u32>(arg_0.x, 3856u, arg_0.x, 1u), ~vec4<u32>(4294967295u, 0u, arg_2, 66769u)) % vec4<u32>(32u)));
    return vec2<bool>(true, true);
}

fn func_1(arg_0: vec4<bool>) -> Struct_2 {
    global0 = 1000f;
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(1000f, 476f, false)), -561f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1256f) + _wgslsmith_f_op_f32(f32(-1f) * -665f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -657f)))));
    let var_1 = select(!(!select(!vec2<bool>(arg_0.x, false), vec2<bool>(true, false), vec2<bool>(arg_0.x, false))), arg_0.zz, !vec2<bool>(arg_0.x, arg_0.x));
    global1 = _wgslsmith_sub_i32(u_input.b, select(u_input.b, _wgslsmith_sub_i32(-4550i, 0i), -u_input.b < ~19036i));
    let var_2 = select(vec4<bool>(!(arg_0.x & arg_0.x), var_1.x, any(!arg_0.zzy), arg_0.x), vec4<bool>(!(!(arg_0.x == true)), !func_2(), any(!func_3(vec3<u32>(u_input.c, u_input.c, 4294967295u), Struct_3(Struct_2(vec4<f32>(766f, 796f, -847f, var_0.x), Struct_1(-1898f), u_input.a, var_0.x, 34758i), 1291f), 0u, Struct_3(Struct_2(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), Struct_1(var_0.x), 62589u, -410f, -2574i), -279f))), true), all(select(!arg_0.yww, vec3<bool>(var_1.x && var_1.x, all(vec2<bool>(false, true)), true), !any(vec3<bool>(true, arg_0.x, var_1.x)))));
    return Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(1000f)), -419f, _wgslsmith_f_op_f32(sign(var_0.x)), 2129f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), -749f, -836f))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1121f)), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, firstTrailingBit(u_input.a)), min(vec2<u32>(4294967295u, u_input.a), vec2<u32>(19189u, u_input.c)) & firstTrailingBit(vec2<u32>(26537u, 64840u))), _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a, u_input.a), u_input.c) << (~abs(u_input.c) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-254f)))))), firstLeadingBit(u_input.b));
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: Struct_2) -> Struct_3 {
    let var_0 = max(countOneBits(vec4<i32>((arg_1.a.e << (1u % 32u)) & firstLeadingBit(arg_1.a.e), 76473i, -1i, 2147483647i ^ (arg_1.a.e & 1i))), vec4<i32>(2147483647i, ~(-8127i), firstTrailingBit(i32(-1i) * -1i), _wgslsmith_sub_i32(arg_1.a.e, -3547i)));
    var var_1 = arg_3;
    let var_2 = Struct_4(Struct_3(arg_3, 799f), firstTrailingBit(_wgslsmith_div_vec3_u32(firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(var_1.c, arg_1.a.c, 1u), vec3<u32>(u_input.c, arg_0, 0u))), ~vec3<u32>(var_1.c, 1u, var_1.c) | ~vec3<u32>(arg_1.a.c, 23775u, arg_0))), 1i, func_1(vec4<bool>(u_input.c >= ~var_1.c, false, func_2(), true && (var_0.x <= 52115i))).a);
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(arg_1.a.b.a, var_2.d.x), -517f, -1386f, -1158f) - vec4<f32>(_wgslsmith_f_op_f32(-1211f - arg_1.b), _wgslsmith_f_op_f32(min(arg_1.a.b.a, -518f)), _wgslsmith_f_op_f32(-var_2.a.a.d), var_1.d)) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_1.a.a, vec4<f32>(705f, var_2.d.x, -984f, var_2.a.a.a.x)))))), arg_1.a.b, arg_3.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.b - _wgslsmith_f_op_f32(f32(-1f) * -997f))) - var_2.a.b), var_1.e);
    var var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.b.a)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1260f * -1460f), _wgslsmith_f_op_f32(select(arg_3.a.x, 967f, true))))));
    return Struct_3(func_1(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1022f - arg_1.a.b.a)));
}

fn func_5(arg_0: Struct_4) -> Struct_3 {
    global1 = 35263i;
    var var_0 = arg_0;
    let var_1 = func_4(var_0.a.a.c, var_0.a, vec2<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, 4294967295u, u_input.a, var_0.b.x), select(vec4<u32>(1u, 60883u, 26769u, u_input.a), vec4<u32>(arg_0.a.a.c, 15582u, 43910u, 121246u), vec4<bool>(false, false, false, true))), 22824u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.a.c, firstLeadingBit(70430u), arg_0.b.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(33361u, 4294967295u, u_input.c), vec3<u32>(4294967295u, 70327u, 1u), arg_0.b) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, arg_0.a.a.c, 1u), arg_0.b))), func_4(~1u, var_0.a, firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.c), arg_0.b.zy)), func_1(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true)))).a);
    var_0 = Struct_4(Struct_3(Struct_2(vec4<f32>(_wgslsmith_div_f32(599f, -1041f), _wgslsmith_f_op_f32(f32(-1f) * -890f), _wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(var_0.a.a.a.x + var_0.d.x)), func_1(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), true)).b, max(1u, var_1.a.c), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(780f + -1198f))), ~(var_1.a.e & -42003i)), -190f), arg_0.b, arg_0.c, var_0.a.a.a);
    let var_2 = Struct_4(Struct_3(var_0.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -830f) + func_4(~u_input.a, func_4(4294967295u, Struct_3(Struct_2(vec4<f32>(var_0.d.x, var_1.a.d, var_0.d.x, -1087f), Struct_1(var_1.b), 21376u, -436f, arg_0.a.a.e), arg_0.d.x), arg_0.b.yx, var_0.a.a), firstLeadingBit(vec2<u32>(36782u, var_1.a.c)), Struct_2(var_1.a.a, arg_0.a.a.b, 0u, var_1.b, -23300i)).a.d)), min(var_0.b, var_0.b), -_wgslsmith_sub_i32(_wgslsmith_mult_i32(-var_1.a.e, ~var_0.c), 40243i), vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_0.a.a.b.a)), _wgslsmith_f_op_f32(713f - -1516f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(arg_0.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-903f - var_1.a.a.x) + 1056f))), 782f));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - -204f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-569f, _wgslsmith_div_f32(-1461f, 1580f), true)))));
    global1 = 20720i;
    var var_0 = func_5(Struct_4(func_4(~(u_input.a << (68874u % 32u)), Struct_3(Struct_2(vec4<f32>(-1332f, -115f, -170f, -660f), Struct_1(399f), u_input.a, 1546f, -7277i), _wgslsmith_f_op_f32(trunc(736f))), firstLeadingBit(vec2<u32>(4294967295u, u_input.a)), func_1(vec4<bool>(true, true, true, true))), vec3<u32>(reverseBits(abs(69063u)), u_input.c, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(29958u, 77386u)), ~vec2<u32>(73731u, 1u))), func_1(vec4<bool>(true, true, true, true)).e, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(-765f, 851f, 1072f, 281f), vec4<f32>(-469f, 1678f, 1757f, -716f)))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-757f, -639f, 959f, -1165f))))));
    let var_1 = countOneBits(_wgslsmith_add_i32(reverseBits(~(-13646i)), 2147483647i));
    var var_2 = select(~vec3<u32>(_wgslsmith_div_u32(~u_input.c, 0u), _wgslsmith_add_u32(22790u, ~var_0.a.c), u_input.a), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(~var_0.a.c, 0u ^ var_0.a.c), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 55002u, 10278u), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.a, var_0.a.c), vec3<u32>(0u, var_0.a.c, 0u)))), min(var_0.a.c, 0u), ~(~30517u & abs(u_input.c))), all(select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(func_2(), true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(-(vec2<i32>(-1i, select(u_input.b, -2147483647i, true)) & _wgslsmith_add_vec2_i32(vec2<i32>(39536i, var_1), reverseBits(vec2<i32>(1i, var_1)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1347f, var_0.b))) - vec2<f32>(var_0.b, 438f)), ~1u, var_0.a.a.xzx, func_1(vec4<bool>(var_0.a.a.x < 1f, all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false))), true, select(true, false, all(vec2<bool>(true, true))))).a.x);
}

