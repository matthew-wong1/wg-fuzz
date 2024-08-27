struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20> = array<i32, 20>(-1i, 1i, 6811i, -1i, -10500i, 2147483647i, 2147483647i, i32(-2147483648), 25033i, -32046i, i32(-2147483648), -1i, -20096i, 2147483647i, -1i, 44217i, -1i, 1i, -36585i, -1i);

var<private> global1: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(1562f, vec4<f32>(-125f, 598f, -291f, -128f), 18441i, 207f), Struct_1(299f, vec4<f32>(-291f, 549f, 824f, -454f), i32(-2147483648), -2929f), Struct_1(-1211f, vec4<f32>(1937f, 1180f, -1498f, -1983f), -1i, -1795f), Struct_1(1565f, vec4<f32>(-2112f, -509f, -475f, 805f), 45662i, -957f), Struct_1(845f, vec4<f32>(-2975f, 606f, -832f, 1726f), 0i, -861f), Struct_1(-1376f, vec4<f32>(-362f, -1134f, -248f, -530f), 33792i, 1461f), Struct_1(200f, vec4<f32>(577f, -1517f, -1000f, 244f), 2147483647i, -1154f), Struct_1(-1130f, vec4<f32>(-1000f, 1000f, -849f, 871f), 1i, 1128f), Struct_1(-591f, vec4<f32>(-977f, -886f, -1254f, -573f), -47422i, 588f), Struct_1(-1077f, vec4<f32>(207f, 2088f, -824f, -1317f), -7656i, -995f), Struct_1(-1000f, vec4<f32>(-1054f, -1156f, -1589f, 453f), i32(-2147483648), 263f), Struct_1(-490f, vec4<f32>(-1315f, -187f, -931f, 572f), -1i, -441f), Struct_1(108f, vec4<f32>(1235f, -3062f, -439f, -1175f), 17062i, -256f), Struct_1(-654f, vec4<f32>(-698f, 514f, -576f, 1284f), -1286i, 585f), Struct_1(-1000f, vec4<f32>(-131f, -1659f, 2114f, 1851f), -1i, -435f), Struct_1(-681f, vec4<f32>(-627f, 2631f, -2048f, -739f), 47491i, -231f), Struct_1(-720f, vec4<f32>(576f, 569f, -1152f, -487f), -37151i, 1000f));

var<private> global2: array<vec4<i32>, 10>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: i32, arg_3: Struct_2) -> vec4<bool> {
    let var_0 = ~firstTrailingBit(~_wgslsmith_div_vec3_i32(vec3<i32>(arg_2, 0i, arg_0.a.c), vec3<i32>(2147483647i, 11502i, arg_3.a.c)));
    let var_1 = Struct_1(-334f, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a.d) - _wgslsmith_f_op_f32(step(672f, arg_1.x))), _wgslsmith_f_op_f32(sign(-986f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(arg_3.e.d)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.e.a), -882f)))), var_0.x, -373f);
    return !(!vec4<bool>(arg_0.c, arg_3.d, true, !all(vec4<bool>(true, true, arg_3.c, arg_0.c))));
}

fn func_2(arg_0: vec4<u32>, arg_1: u32, arg_2: vec3<i32>) -> i32 {
    global0 = array<i32, 20>();
    let var_0 = -_wgslsmith_dot_vec4_i32(abs(select(u_input.a, ~vec4<i32>(-1i, u_input.a.x, global0[_wgslsmith_index_u32(arg_1, 20u)], arg_2.x), vec4<bool>(true, true, true, true))), vec4<i32>(global0[_wgslsmith_index_u32(~42732u, 20u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(53908u << (u_input.b.x % 32u), arg_1), 20u)], ~(-global0[_wgslsmith_index_u32(1u, 20u)]), -select(arg_2.x, u_input.a.x, true)));
    let var_1 = Struct_2(global1[_wgslsmith_index_u32(min(44759u, 71151u), 17u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), true, all(select(vec4<bool>(true, all(vec4<bool>(false, false, false, false)), true, all(vec4<bool>(false, true, false, false))), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), false), func_3(Struct_2(global1[_wgslsmith_index_u32(arg_0.x, 17u)], 460f, false, false, global1[_wgslsmith_index_u32(1u, 17u)]), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(680f, 280f, 1049f))), ~14137i, Struct_2(global1[_wgslsmith_index_u32(48318u, 17u)], 206f, false, false, Struct_1(-263f, vec4<f32>(-1000f, 737f, 696f, 1271f), 25808i, -876f))))), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-445f, -1870f)), _wgslsmith_div_f32(1189f, _wgslsmith_f_op_f32(max(304f, -195f))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(730f, -1582f, 366f, 1000f)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(162f, -1330f, -894f, 1455f)))))), abs(-43791i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-397f, 336f)))))));
    global1 = array<Struct_1, 17>();
    var var_2 = ~vec4<i32>(firstTrailingBit(~var_1.e.c), global0[_wgslsmith_index_u32(arg_0.x, 20u)], u_input.a.x, abs(~var_0));
    return -38730i;
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> f32 {
    var var_0 = vec3<bool>(any(vec4<bool>(true, !any(vec4<bool>(true, true, true, false)), false, arg_1 > func_2(vec4<u32>(0u, 4294967295u, u_input.b.x, 4294967295u), 1u, vec3<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 20u)], arg_0.c, u_input.a.x)))), arg_1 < -global0[_wgslsmith_index_u32(4294967295u, 20u)], true && any(vec4<bool>(true, true, true, true)));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_vec4_f32(arg_0.b * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.b))), _wgslsmith_clamp_i32(~(-1i), countOneBits(~(-1i)), -27068i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2714f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.b.x)) + _wgslsmith_f_op_f32(round(arg_0.d))))), select(true, 24304i > select(u_input.a.x, arg_0.c, !var_0.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(arg_0.d, arg_0.d)))) < _wgslsmith_f_op_f32(1417f + -374f)), var_0.x, Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(trunc(arg_0.a))), arg_0.a)), vec4<f32>(-636f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.b.x, 318f) + _wgslsmith_f_op_f32(553f - 1442f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d + -277f) - arg_0.b.x), 1649f), firstLeadingBit(global0[_wgslsmith_index_u32(max(u_input.b.x, 16460u) >> (abs(u_input.b.x) % 32u), 20u)]), arg_0.d));
    global0 = array<i32, 20>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.a.d), _wgslsmith_f_op_f32(arg_0.b.x + -260f))), _wgslsmith_f_op_f32(round(-1750f)))) * _wgslsmith_f_op_f32(-var_1.b));
    var var_3 = select(!select(select(vec4<bool>(var_0.x, true, var_1.d, var_0.x), !vec4<bool>(false, var_0.x, true, true), var_1.c), !select(vec4<bool>(var_1.c, var_1.d, var_1.c, var_0.x), vec4<bool>(var_1.c, var_0.x, var_1.c, var_0.x), vec4<bool>(var_1.d, var_0.x, var_0.x, var_1.c)), func_3(var_1, _wgslsmith_f_op_vec3_f32(-vec3<f32>(486f, -1000f, -453f)), var_1.e.c >> (u_input.b.x % 32u), Struct_2(global1[_wgslsmith_index_u32(u_input.b.x, 17u)], arg_0.b.x, var_0.x, var_1.c, var_1.e))), func_3(var_1, _wgslsmith_f_op_vec3_f32(floor(var_1.e.b.zzy)), _wgslsmith_div_i32(0i, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(20884i, 0i), u_input.a.xz))), var_1), vec4<bool>(u_input.b.x != (1u ^ (47907u >> (u_input.b.x % 32u))), 2147483647i != (u_input.a.x | _wgslsmith_sub_i32(var_1.a.c, -19480i)), false, all(!vec3<bool>(var_0.x, true, var_1.c))));
    return _wgslsmith_div_f32(arg_0.b.x, arg_0.a);
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_2 {
    let var_0 = max(arg_0, _wgslsmith_div_u32(u_input.b.x, ~2904u));
    global2 = array<vec4<i32>, 10>();
    let var_1 = _wgslsmith_div_vec2_f32(arg_1.b.yw, _wgslsmith_f_op_vec2_f32(arg_1.b.xz - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(arg_1.b.wz))))));
    global1 = array<Struct_1, 17>();
    var var_2 = -12075i >> (_wgslsmith_add_u32(var_0, _wgslsmith_div_u32(_wgslsmith_mod_u32(0u << (arg_0 % 32u), _wgslsmith_add_u32(var_0, 9782u)), ~abs(u_input.b.x))) % 32u);
    return Struct_2(arg_1, 218f, !(false | !func_3(Struct_2(global1[_wgslsmith_index_u32(36926u, 17u)], 444f, false, false, Struct_1(851f, vec4<f32>(var_1.x, arg_1.a, -3620f, var_1.x), global0[_wgslsmith_index_u32(95297u, 20u)], 1000f)), arg_1.b.zzz, arg_1.c, Struct_2(Struct_1(arg_1.a, vec4<f32>(-1000f, 561f, 266f, arg_1.a), global0[_wgslsmith_index_u32(u_input.b.x, 20u)], -1688f), -214f, false, true, Struct_1(var_1.x, vec4<f32>(-368f, 457f, 404f, 403f), -1i, 1000f))).x), !func_3(Struct_2(global1[_wgslsmith_index_u32(~0u, 17u)], -1095f, true, false, global1[_wgslsmith_index_u32(4294967295u, 17u)]), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1014f), 1f, arg_1.a), -19638i, Struct_2(arg_1, 173f, true, true, global1[_wgslsmith_index_u32(min(var_0, 1u), 17u)])).x, arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(u_input.b.x >> (50370u % 32u), 17u)];
    var var_1 = -1334f != _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.a * 1000f)));
    let var_2 = Struct_2(global1[_wgslsmith_index_u32(4294967295u, 17u)], var_0.d, select(select(true, true, u_input.b.x >= 1u), false, true), false, global1[_wgslsmith_index_u32(u_input.b.x, 17u)]);
    var var_3 = func_4(1u, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.b + 102f))) + _wgslsmith_f_op_f32(func_1(var_2.e, -var_0.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.e.b - var_0.b))), -(_wgslsmith_mult_i32(var_2.a.c, -15441i) ^ (global0[_wgslsmith_index_u32(u_input.b.x, 20u)] & var_0.c)), _wgslsmith_f_op_f32(floor(-206f))));
    var var_4 = func_4(u_input.b.x, func_4(~u_input.b.x, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(var_3.a.b, vec4<f32>(var_2.b, var_3.a.a, 780f, -520f)), var_0.b)), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(u_input.a.yzw, u_input.a.ywy), countOneBits(u_input.a.xxw)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1730f))))).e);
    var_3 = var_2;
    var_4 = var_2;
    var_3 = var_2;
    global1 = array<Struct_1, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.e.d)), select(vec2<i32>(func_4(~23263u, Struct_1(-1000f, var_3.e.b, u_input.a.x, 1000f)).e.c, -2147483647i), firstLeadingBit(firstTrailingBit(abs(u_input.a.wx))), true), u_input.a.wx);
}

