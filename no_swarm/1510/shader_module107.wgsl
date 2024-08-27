struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: bool,
    e: vec3<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: u32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec4<f32>, 23> = array<vec4<f32>, 23>(vec4<f32>(-1273f, -290f, -513f, -259f), vec4<f32>(555f, 583f, 2110f, -905f), vec4<f32>(500f, -238f, -518f, -621f), vec4<f32>(-1725f, 131f, 144f, 1451f), vec4<f32>(1320f, -603f, -1583f, 593f), vec4<f32>(-1109f, 912f, -1792f, 446f), vec4<f32>(-1342f, -1000f, 914f, -593f), vec4<f32>(-960f, 397f, -956f, 237f), vec4<f32>(1287f, -1066f, -266f, -952f), vec4<f32>(-2263f, 1281f, -1043f, 472f), vec4<f32>(-280f, -1230f, 493f, 1740f), vec4<f32>(-574f, -382f, -1577f, 442f), vec4<f32>(-1501f, -563f, 688f, 2984f), vec4<f32>(-891f, -1000f, -264f, -1000f), vec4<f32>(-704f, 936f, 867f, -355f), vec4<f32>(905f, -1124f, 1332f, -676f), vec4<f32>(1675f, 1000f, 108f, 402f), vec4<f32>(238f, -1915f, -515f, -393f), vec4<f32>(-623f, -1257f, -1000f, -168f), vec4<f32>(956f, -1208f, -356f, -1000f), vec4<f32>(-535f, -616f, 1293f, 261f), vec4<f32>(-1000f, -1372f, -170f, -1259f), vec4<f32>(-1601f, -2418f, -1081f, 238f));

var<private> global2: array<Struct_4, 16> = array<Struct_4, 16>(Struct_4(vec4<f32>(-690f, -2860f, -218f, 630f)), Struct_4(vec4<f32>(-483f, 863f, -346f, -290f)), Struct_4(vec4<f32>(2168f, 258f, -468f, 1723f)), Struct_4(vec4<f32>(-2027f, 377f, -578f, -475f)), Struct_4(vec4<f32>(3119f, 1117f, 182f, 1000f)), Struct_4(vec4<f32>(487f, -423f, 1494f, -587f)), Struct_4(vec4<f32>(-136f, -577f, -890f, 1000f)), Struct_4(vec4<f32>(269f, 762f, -143f, 767f)), Struct_4(vec4<f32>(213f, -574f, 1143f, -1463f)), Struct_4(vec4<f32>(2061f, -165f, -101f, -476f)), Struct_4(vec4<f32>(-1285f, 231f, 530f, 1034f)), Struct_4(vec4<f32>(-1304f, -325f, 1384f, -1455f)), Struct_4(vec4<f32>(715f, 1000f, -511f, -714f)), Struct_4(vec4<f32>(104f, -227f, 1444f, -419f)), Struct_4(vec4<f32>(1694f, 1923f, -467f, 591f)), Struct_4(vec4<f32>(-767f, -1719f, 384f, 1174f)));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool) -> vec3<bool> {
    global1 = array<vec4<f32>, 23>();
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -293f))), all(vec4<bool>((true | arg_0) == (arg_0 && arg_0), all(vec3<bool>(true, arg_0, true)), arg_0, arg_0)), Struct_1(vec4<bool>(true, any(select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, false), vec2<bool>(arg_0, true))), true, false), arg_0, max(~abs(29131u), 1u)), select(all(vec4<bool>(false, true, !arg_0, !arg_0)), arg_0, arg_0 && false), vec3<u32>(0u, reverseBits(~0u), firstTrailingBit(_wgslsmith_clamp_u32(37758u, 1u, 0u))) ^ (vec3<u32>(21445u, ~4294967295u, abs(5602u)) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(10359u, 12639u), vec2<u32>(0u, 1u)), ~18733u, 2702u) % vec3<u32>(32u))));
    var var_1 = ~vec4<i32>(~u_input.a | _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -19568i, u_input.a, u_input.a), vec4<i32>(-37880i, u_input.a, 20447i, u_input.a)), -3129i, _wgslsmith_add_i32(u_input.a, 1i), ~u_input.a);
    var_0 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -592f), any(select(select(vec4<bool>(var_0.c.b, true, true, false), !vec4<bool>(false, arg_0, arg_0, false), select(vec4<bool>(arg_0, false, false, var_0.d), vec4<bool>(true, var_0.d, false, var_0.b), var_0.c.a)), vec4<bool>(!arg_0, true, var_0.b, arg_0), select(!vec4<bool>(false, arg_0, arg_0, false), var_0.c.a, !vec4<bool>(true, true, arg_0, true)))), Struct_1(var_0.c.a, !(!any(var_0.c.a.xyz)), var_0.c.c), false, vec3<u32>(_wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, var_0.c.c, 25101u, 32561u), vec4<u32>(var_0.e.x, 1u, var_0.c.c, 55343u)), select(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.e.x, var_0.e.x, 80346u, var_0.e.x), vec4<u32>(var_0.e.x, var_0.c.c, var_0.e.x, var_0.e.x)), max(vec4<u32>(1u, var_0.c.c, 31646u, 4294967295u), vec4<u32>(var_0.c.c, 1u, var_0.c.c, 70609u)), arg_0)), ~1u, 0u));
    let var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(select(global1[_wgslsmith_index_u32(reverseBits(~34185u), 23u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global1[_wgslsmith_index_u32(var_0.e.x, 23u)], vec4<f32>(553f, -746f, 1923f, var_0.a)))), var_0.c.a)));
    return !select(!vec3<bool>(select(true, arg_0, false), select(true, var_0.d, arg_0), all(vec3<bool>(false, false, var_0.b))), select(!vec3<bool>(arg_0, true, false), var_0.c.a.wzy, !vec3<bool>(false, arg_0, arg_0)), vec3<bool>(false, true, all(vec4<bool>(true, true, false, var_0.c.b))));
}

fn func_2(arg_0: u32, arg_1: i32) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec2_i32((vec2<i32>(u_input.a, 44167i) << (~vec2<u32>(0u, arg_0) % vec2<u32>(32u))) | vec2<i32>(57566i >> (arg_0 % 32u), i32(-1i) * -34411i), vec2<i32>(-64411i, -(i32(-1i) * -46947i))) << (countOneBits(min(select(vec2<u32>(0u, 3060u), vec2<u32>(arg_0, arg_0), vec2<bool>(false, true)), ~vec2<u32>(arg_0, 4294967295u)) & min(select(vec2<u32>(4294967295u, 112258u), vec2<u32>(arg_0, arg_0), true), ~vec2<u32>(44748u, 6388u))) % vec2<u32>(32u));
    global2 = array<Struct_4, 16>();
    let var_1 = select(func_3(true), select(select(vec3<bool>(true, all(vec2<bool>(false, true)), select(true, true, false)), vec3<bool>(true, any(vec4<bool>(true, true, false, true)), true), false), !func_3(true), !all(vec4<bool>(true, true, true, true))), !vec3<bool>(arg_1 != min(u_input.a, u_input.a), true, all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true))));
    return Struct_1(vec4<bool>(true, true, true, true), func_3(true).x, ~(~(~arg_0) | ~arg_0));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<bool>) -> i32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(295f)))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-243f, -168f, false))))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-471f * -362f)), 651f, !arg_0.x))), -1677f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(664f * -624f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-947f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -656f)) + _wgslsmith_f_op_f32(-1f)));
    var var_1 = arg_1;
    var var_2 = func_2(0u, 3248i);
    let var_3 = ~(-select(vec2<i32>(26653i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(-1i, u_input.a))), vec2<i32>(u_input.a, ~u_input.a), vec2<bool>(false, false)));
    global0 = ~36356i;
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_4, 16>();
    global0 = u_input.a;
    global0 = -_wgslsmith_dot_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, -51250i, u_input.a) | vec3<i32>(u_input.a, -1i, u_input.a), ~vec3<i32>(u_input.a, u_input.a, 2147483647i)), vec3<i32>(_wgslsmith_mod_i32(0i, 56232i), 2147483647i, func_1(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, false))));
    let var_0 = vec3<u32>(~20143u, 21729u, 42863u);
    var var_1 = Struct_2(vec2<i32>(_wgslsmith_div_i32(u_input.a, -(~u_input.a)), ~(-57613i)), func_2(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.x, 43390u, 34762u, 73899u), vec4<u32>(25070u, var_0.x, var_0.x, 69235u) & vec4<u32>(var_0.x, 7320u, 0u, var_0.x)) << (_wgslsmith_mod_u32(0u, var_0.x) % 32u), select(_wgslsmith_mod_i32(-u_input.a, _wgslsmith_sub_i32(-93721i, u_input.a)), _wgslsmith_mod_i32(~(-17696i), 2147483647i), true)));
    var var_2 = _wgslsmith_f_op_f32(-905f - 1f);
    var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -941f))), 1199f);
    global2 = array<Struct_4, 16>();
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-669f, -1000f)), -840f)), _wgslsmith_f_op_f32(select(369f, -253f, true))))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 945f) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1956f + -1785f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-576f, -906f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-1303f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1345f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-479f, -119f, var_1.b.b)))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(792f * 452f), _wgslsmith_f_op_f32(round(2321f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1696f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-328f - _wgslsmith_div_f32(-1376f, 257f)), _wgslsmith_f_op_f32(f32(-1f) * -195f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-353f, -346f, -124f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1833f, 509f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(548f, -1011f, -185f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1109f, 667f, -1392f) - vec3<f32>(1104f, -807f, 121f))))), var_0.x, 798f, var_0.yx);
}

