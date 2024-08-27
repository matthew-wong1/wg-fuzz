struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
    e: i32,
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: vec2<i32>) -> vec2<bool> {
    var var_0 = firstLeadingBit(-abs(~_wgslsmith_mult_i32(39453i, 1i)));
    let var_1 = u_input.d.x;
    return vec2<bool>(true | (any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false))) == (_wgslsmith_mod_i32(arg_1.c.c.x, -13584i) > _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, 1i, arg_2.x, 0i), vec4<i32>(u_input.e, 2147483647i, arg_1.c.c.x, -15961i)))), any(!(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false))));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: i32) -> u32 {
    let var_0 = !(!select(!vec2<bool>(arg_1, true), vec2<bool>(true, true), select(func_3(vec4<f32>(991f, 211f, -590f, -351f), Struct_3(u_input.d.x, 1838f, Struct_2(vec2<f32>(1339f, 2048f), arg_0, vec3<i32>(2147483647i, -2147483647i, arg_2), vec4<u32>(5666u, arg_0.a.x, 29419u, arg_0.a.x))), vec2<i32>(arg_2, arg_2)), func_3(vec4<f32>(100f, 1114f, -1394f, -417f), Struct_3(0u, -466f, Struct_2(vec2<f32>(1369f, -2017f), Struct_1(u_input.d), vec3<i32>(0i, arg_2, 0i), vec4<u32>(u_input.d.x, u_input.a.x, arg_0.a.x, u_input.b.x))), vec2<i32>(-1i, -1i)), true)));
    var var_1 = min(vec2<u32>(max(u_input.a.x, 4294967295u), countOneBits(_wgslsmith_mod_u32(132702u, ~arg_0.a.x))), min(min(u_input.b, ~select(vec2<u32>(41199u, arg_0.a.x), vec2<u32>(u_input.d.x, u_input.c), arg_1)), arg_0.a.xx));
    var_1 = ~vec2<u32>(~firstTrailingBit(~0u), _wgslsmith_sub_u32(~u_input.a.x, select(25568u, 0u, all(var_0))));
    var var_2 = vec2<i32>(u_input.e, 0i);
    var var_3 = Struct_3(4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-923f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-819f)) - -1000f))), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1532f, -590f)), arg_0, vec3<i32>(65379i, i32(-1i) * -35678i, var_2.x), _wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(var_1.x, 8728u, 28218u, 4294967295u)), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 4294967295u, 1u, 23882u), reverseBits(vec4<u32>(arg_0.a.x, u_input.a.x, u_input.d.x, arg_0.a.x))), vec4<u32>(arg_0.a.x, abs(u_input.c), ~arg_0.a.x, ~31725u))));
    return abs(_wgslsmith_div_u32(~_wgslsmith_clamp_u32(1u, 4294967295u, firstLeadingBit(1u)), arg_0.a.x));
}

fn func_1() -> Struct_1 {
    let var_0 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1725f - 216f), _wgslsmith_f_op_f32(-156f * -104f), _wgslsmith_f_op_f32(f32(-1f) * -1901f), _wgslsmith_f_op_f32(sign(-1618f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-585f, -3646f, 1316f, -274f)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-456f, 608f, -443f, -762f))))), vec4<f32>(_wgslsmith_f_op_f32(-1194f + 479f), -816f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-785f)) + _wgslsmith_f_op_f32(-184f * 1282f)), _wgslsmith_f_op_f32(257f * _wgslsmith_div_f32(628f, -353f))), true))));
    let var_2 = false;
    var var_3 = vec2<bool>(var_2, !(!(_wgslsmith_f_op_f32(exp2(var_1.x)) > -175f)));
    var var_4 = vec4<u32>(88u, var_0, var_0, 62739u) ^ ~(max(vec4<u32>(4294967295u, u_input.b.x, var_0, 66705u), _wgslsmith_div_vec4_u32(vec4<u32>(var_0, 26259u, u_input.b.x, 4294967295u), vec4<u32>(40896u, 0u, 4294967295u, u_input.a.x))) >> (vec4<u32>(_wgslsmith_mod_u32(var_0, u_input.d.x), firstTrailingBit(u_input.a.x), func_2(Struct_1(vec3<u32>(u_input.d.x, 1u, 4294967295u)), var_2, u_input.e), ~6701u) % vec4<u32>(32u)));
    return Struct_1(var_4.xzw);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec4<f32>) -> Struct_2 {
    let var_0 = arg_0;
    var var_1 = max(select(vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 65649u), var_0.d.xz), ~(41855u >> (var_0.b.a.x % 32u))), vec2<u32>(u_input.b.x & _wgslsmith_add_u32(u_input.a.x, 4294967295u), ~u_input.b.x), vec2<bool>(all(select(vec4<bool>(false, false, arg_1.a.x, false), vec4<bool>(arg_1.a.x, true, arg_1.a.x, arg_1.a.x), true)), true)), ~vec2<u32>(u_input.c, min(~arg_0.d.x, 1u)));
    var var_2 = 1i;
    let var_3 = Struct_3(reverseBits(~var_0.d.x | (var_1.x ^ 1u)), -1475f, Struct_2(arg_0.a, Struct_1(abs(u_input.d)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.e, -39749i, ~(-2411i)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(13978i, -2147483647i, -2147483647i, arg_0.c.x), vec4<i32>(-41062i, var_0.c.x, 2147483647i, 22400i)), arg_0.c.x ^ var_0.c.x, u_input.e)), vec4<u32>(4294967295u, u_input.c, 0u, _wgslsmith_sub_u32(arg_0.b.a.x, 1u))));
    let var_4 = Struct_4(vec2<bool>(false, arg_1.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.a.x, 924f, var_0.a.x))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-arg_2.xyw)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1257f, var_3.b, -1016f))))));
    return Struct_2(_wgslsmith_f_op_vec2_f32(arg_1.b.yz + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_3.c.a.x), _wgslsmith_f_op_f32(-arg_1.b.x)))), var_0.b, -vec3<i32>(~u_input.e, _wgslsmith_add_i32(-var_3.c.c.x, var_3.c.c.x), -arg_0.c.x), vec4<u32>(func_2(func_1(), arg_1.a.x, ~var_0.c.x), 10072u, _wgslsmith_mod_u32(55413u, 80345u), 8553u));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: u32, arg_3: bool) -> Struct_2 {
    var var_0 = vec4<u32>(19592u, 1u & func_4(arg_0, Struct_4(!vec2<bool>(arg_3, false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-437f, 304f, arg_0.a.x))), vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(-arg_0.a.x), -142f, -737f)).b.a.x, func_4(arg_0, Struct_4(arg_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.a.x, -741f, arg_0.a.x))))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, -1905f, arg_0.a.x, arg_0.a.x) + vec4<f32>(371f, 891f, arg_0.a.x, -134f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(684f, arg_0.a.x, arg_0.a.x, -604f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(402f, arg_0.a.x, -1375f, 367f)))))).b.a.x, ~(select(func_1().a.x, arg_0.b.a.x, true) >> (firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(97914u, arg_2, arg_2, u_input.c), vec4<u32>(47717u, arg_2, 0u, 147803u))) % 32u)));
    var_0 = ~vec4<u32>(func_4(Struct_2(_wgslsmith_f_op_vec2_f32(arg_0.a * arg_0.a), Struct_1(vec3<u32>(0u, u_input.c, 12535u)), _wgslsmith_sub_vec3_i32(arg_0.c, arg_0.c), ~vec4<u32>(47930u, 4294967295u, arg_0.b.a.x, 4294967295u)), Struct_4(func_3(vec4<f32>(-2191f, -1000f, arg_0.a.x, arg_0.a.x), Struct_3(var_0.x, arg_0.a.x, arg_0), vec2<i32>(u_input.e, u_input.e)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1215f, arg_0.a.x, arg_0.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x)))).b.a.x, _wgslsmith_mult_u32(arg_2, arg_2), ~max(29549u, ~4294967295u), ~min(~0u, 1u));
    let var_1 = Struct_4(select(arg_1, arg_1, arg_1), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(Struct_2(vec2<f32>(-1487f, 623f), arg_0.b, vec3<i32>(1i, 12958i, -1i), arg_0.d), Struct_4(vec2<bool>(true, arg_1.x), vec3<f32>(arg_0.a.x, 1487f, 720f)), vec4<f32>(1096f, -452f, -707f, arg_0.a.x)).a.x * arg_0.a.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1581f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) - -1000f), arg_0.a.x));
    var var_2 = Struct_3(55518u, -1259f, Struct_2(vec2<f32>(var_1.b.x, -1400f), Struct_1(vec3<u32>(~11038u, arg_2, ~4294967295u)), vec3<i32>(arg_0.c.x, 56411i & _wgslsmith_add_i32(arg_0.c.x, -18237i), 2147483647i), vec4<u32>(7361u, min(68278u, arg_2) | ~1u, 51288u, ~_wgslsmith_mod_u32(arg_2, u_input.d.x))));
    var var_3 = Struct_3(~(~_wgslsmith_mod_u32(_wgslsmith_add_u32(4294967295u, 0u), firstLeadingBit(u_input.b.x))), _wgslsmith_f_op_f32(select(var_2.b, -1000f, func_3(vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -345f), _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(var_2.c.a.x * var_2.c.a.x)), Struct_3(var_0.x, _wgslsmith_f_op_f32(-var_2.b), func_4(arg_0, Struct_4(vec2<bool>(arg_3, false), var_1.b), vec4<f32>(var_1.b.x, -545f, arg_0.a.x, 837f))), ~vec2<i32>(var_2.c.c.x, u_input.e) | var_2.c.c.yz).x)), func_4(var_2.c, var_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1457f, var_1.b.x, 1418f, -298f)) + vec4<f32>(arg_0.a.x, var_1.b.x, var_1.b.x, arg_0.a.x)))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~1u;
    let var_1 = ~abs(-1i);
    let var_2 = func_5(func_4(Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(500f, 587f) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(826f, -825f), vec2<f32>(1408f, -1401f), vec2<bool>(true, true)))), func_1(), countOneBits(vec3<i32>(var_1, 2147483647i, var_1) << (u_input.d % vec3<u32>(32u))), firstTrailingBit(vec4<u32>(u_input.a.x, 1245u, var_0, var_0))), Struct_4(vec2<bool>(false, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2357f, -641f, -859f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(283f, -461f, 1509f, -1503f), vec4<f32>(1929f, -1776f, 1638f, -1924f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1303f, -1591f, -1334f, -709f) + vec4<f32>(1847f, -1000f, 1348f, 353f))))), !vec2<bool>(true, -var_1 > 1i), 4294967295u, true);
    var var_3 = ~firstTrailingBit(min(vec4<u32>(4435u, u_input.a.x, ~var_0, ~var_2.b.a.x), vec4<u32>(~110810u, 38385u, 49787u, 4294967295u)));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_2.a.x, 588f, var_2.a.x), vec3<f32>(_wgslsmith_f_op_f32(var_2.a.x + 1797f), _wgslsmith_f_op_f32(ceil(1390f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_2.a.x, 496f))))));
    let var_5 = Struct_3(~var_3.x | var_2.d.x, -272f, var_2);
    var var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1719f)) + _wgslsmith_f_op_f32(-func_4(func_4(var_5.c, Struct_4(vec2<bool>(true, true), vec3<f32>(-417f, -228f, var_4.x)), vec4<f32>(281f, 692f, var_5.c.a.x, 1024f)), Struct_4(vec2<bool>(false, false), vec3<f32>(var_5.b, 291f, var_4.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.b, -826f, 1203f, -104f))).a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.b);
}

