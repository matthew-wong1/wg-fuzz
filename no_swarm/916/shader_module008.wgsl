struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<f32>(273f, -1000f), false, vec4<i32>(0i, 13632i, -50817i, -10675i));

var<private> global1: array<f32, 31>;

var<private> global2: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(29062u, 0u, vec4<i32>(0i, i32(-2147483648), 9324i, -2627i), vec2<f32>(-1464f, 1598f)), Struct_1(55871u, 4860u, vec4<i32>(2147483647i, 2147483647i, -18067i, -1653i), vec2<f32>(-1000f, -294f)), Struct_1(0u, 21050u, vec4<i32>(23752i, -1i, i32(-2147483648), 5032i), vec2<f32>(1971f, 170f)), Struct_1(51340u, 0u, vec4<i32>(-1i, -615i, -1i, -53879i), vec2<f32>(-341f, -1085f)), Struct_1(4294967295u, 91298u, vec4<i32>(7642i, 0i, 61982i, -9383i), vec2<f32>(529f, -646f)), Struct_1(1u, 1u, vec4<i32>(26348i, 1i, -8835i, 41150i), vec2<f32>(1904f, 557f)), Struct_1(43473u, 1u, vec4<i32>(18588i, -10965i, 3584i, 34875i), vec2<f32>(-107f, 451f)), Struct_1(66407u, 4294967295u, vec4<i32>(2147483647i, 21794i, i32(-2147483648), 0i), vec2<f32>(274f, 1576f)), Struct_1(0u, 0u, vec4<i32>(665i, i32(-2147483648), 1i, 29636i), vec2<f32>(-1746f, 1485f)), Struct_1(4294967295u, 4294967295u, vec4<i32>(55253i, i32(-2147483648), -17921i, 13687i), vec2<f32>(-705f, -1068f)), Struct_1(4294967295u, 4294967295u, vec4<i32>(-26031i, -3030i, -1i, -15771i), vec2<f32>(-1212f, 1000f)), Struct_1(1u, 18663u, vec4<i32>(19385i, 2147483647i, -1i, i32(-2147483648)), vec2<f32>(1689f, -545f)), Struct_1(0u, 4294967295u, vec4<i32>(3550i, i32(-2147483648), 2147483647i, -1i), vec2<f32>(280f, 2108f)), Struct_1(21931u, 1u, vec4<i32>(0i, 0i, -1i, 35277i), vec2<f32>(-237f, -1095f)), Struct_1(1u, 4294967295u, vec4<i32>(2147483647i, 2147483647i, 0i, 2039i), vec2<f32>(683f, 875f)), Struct_1(0u, 4294967295u, vec4<i32>(44187i, -69090i, 1i, 75409i), vec2<f32>(-433f, -527f)), Struct_1(4294967295u, 71247u, vec4<i32>(7750i, -49468i, 36448i, 1i), vec2<f32>(938f, 488f)), Struct_1(8338u, 1u, vec4<i32>(1i, 30662i, -4203i, -10768i), vec2<f32>(1063f, -1262f)), Struct_1(33661u, 34002u, vec4<i32>(-18632i, i32(-2147483648), -32095i, -3213i), vec2<f32>(-544f, 1976f)), Struct_1(1u, 25995u, vec4<i32>(i32(-2147483648), -39122i, 31591i, 5252i), vec2<f32>(329f, 1327f)), Struct_1(1u, 0u, vec4<i32>(-565i, 7235i, 64580i, -23505i), vec2<f32>(705f, 408f)), Struct_1(14297u, 32292u, vec4<i32>(i32(-2147483648), -22135i, i32(-2147483648), i32(-2147483648)), vec2<f32>(-2428f, 200f)), Struct_1(4294967295u, 0u, vec4<i32>(2147483647i, 0i, -1i, -1i), vec2<f32>(-1914f, 1210f)), Struct_1(4294967295u, 27651u, vec4<i32>(i32(-2147483648), 12200i, i32(-2147483648), i32(-2147483648)), vec2<f32>(-1000f, -650f)), Struct_1(4294967295u, 41392u, vec4<i32>(i32(-2147483648), 1i, -19360i, -20446i), vec2<f32>(1451f, 471f)), Struct_1(49054u, 42928u, vec4<i32>(93747i, i32(-2147483648), -1i, -12468i), vec2<f32>(1999f, -501f)), Struct_1(109567u, 8930u, vec4<i32>(i32(-2147483648), -50199i, 32275i, -62738i), vec2<f32>(1649f, 170f)), Struct_1(16192u, 87654u, vec4<i32>(-11246i, 1i, i32(-2147483648), 12093i), vec2<f32>(1310f, 1006f)), Struct_1(0u, 1u, vec4<i32>(-29180i, 1i, 0i, -42025i), vec2<f32>(609f, 911f)), Struct_1(4294967295u, 44650u, vec4<i32>(2147483647i, -51925i, 1i, 18505i), vec2<f32>(539f, -132f)), Struct_1(33091u, 39194u, vec4<i32>(i32(-2147483648), 0i, -5494i, 2147483647i), vec2<f32>(1254f, -433f)));

var<private> global3: array<vec4<u32>, 3> = array<vec4<u32>, 3>(vec4<u32>(4294967295u, 1u, 0u, 4294967295u), vec4<u32>(0u, 0u, 4294967295u, 4294967295u), vec4<u32>(1u, 69354u, 4294967295u, 1u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> u32 {
    let var_0 = vec3<bool>(false, global0.b, ~max(~0u, ~21905u) <= ~_wgslsmith_add_u32(u_input.a, select(31409u, u_input.a, global0.b)));
    var var_1 = false;
    var var_2 = Struct_1(1u, ~_wgslsmith_mult_u32(u_input.a, ~u_input.c.x), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, global0.c.x, -23996i, 2147483647i), vec4<i32>(1i, global0.c.x, 32547i, 22835i)), select(vec4<i32>(31367i, -2147483647i, -41756i, 2147483647i), ~global0.c, global0.b)), vec4<i32>(_wgslsmith_mod_i32(global0.c.x, u_input.e << (u_input.a % 32u)), _wgslsmith_div_i32(~u_input.b.x, 0i), -global0.c.x, -(i32(-1i) * -5742i))), global0.a);
    let var_3 = true;
    var var_4 = vec2<bool>(false, _wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(3241u, 1u), vec2<u32>(46805u, var_2.b)), ~min(u_input.c.zz, vec2<u32>(4294967295u, u_input.c.x))) < 38436u);
    return ~(max(countOneBits(1u), var_2.b) >> (~u_input.c.x % 32u));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    global1 = array<f32, 31>();
    var var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1141f, global0.a.x, arg_3.d.x), vec3<f32>(global1[_wgslsmith_index_u32(0u, 31u)], 163f, arg_3.d.x))) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(607f, arg_3.d.x, arg_2.a.x)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1[_wgslsmith_index_u32(20992u, 31u)], arg_3.d.x, arg_3.d.x)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-313f, -1178f, arg_2.a.x) + vec3<f32>(arg_3.d.x, -421f, global1[_wgslsmith_index_u32(1u, 31u)])) + _wgslsmith_div_vec3_f32(vec3<f32>(global0.a.x, arg_3.d.x, 349f), vec3<f32>(-249f, -1776f, arg_2.a.x))))))));
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.x, -597f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global0.a, vec2<f32>(-642f, 771f))))), arg_2.b, abs(arg_3.c));
    global2 = array<Struct_1, 31>();
    global2 = array<Struct_1, 31>();
    return Struct_1(reverseBits(_wgslsmith_add_u32(u_input.c.x, arg_3.a) << (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, u_input.a, arg_3.b), vec4<u32>(77035u, 33514u, 0u, u_input.a)) % 32u)) ^ arg_3.a, _wgslsmith_sub_u32(~(~min(arg_3.a, arg_3.a)), 4294967295u), ~vec4<i32>(_wgslsmith_add_i32(1i, global0.c.x), arg_3.c.x, 0i, 1i) & (arg_2.c << (max(u_input.c, u_input.c) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-783f, arg_2.a.x) * vec2<f32>(-251f, -1875f)))), var_0.zx)));
}

fn func_1(arg_0: vec3<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 31u)])), _wgslsmith_f_op_f32(-1022f - global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, u_input.a), 31u)]), _wgslsmith_f_op_f32(f32(-1f) * -1627f), _wgslsmith_f_op_f32(select(global0.a.x, _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(0u, 31u)], 433f)), select(global0.b, arg_0.x, false))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-339f, global0.a.x, global1[_wgslsmith_index_u32(0u, 31u)], 1000f) + vec4<f32>(-1041f, global0.a.x, 1000f, -246f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(446f, -914f, 1000f, 1000f)))))));
    global1 = array<f32, 31>();
    global1 = array<f32, 31>();
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-332f * var_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(170f)), 103f))), _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(1u, 31u)])), -732f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.xxw * _wgslsmith_f_op_vec3_f32(-var_0.xzw)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.www * vec3<f32>(var_0.x, global1[_wgslsmith_index_u32(u_input.d, 31u)], global0.a.x)))));
    var var_2 = func_3(~(-44333i), ~2147483647i, Struct_2(vec2<f32>(_wgslsmith_f_op_f32(abs(-1416f)), _wgslsmith_f_op_f32(-971f * _wgslsmith_f_op_f32(trunc(1003f)))), true, _wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-2894i, u_input.e, -46524i, 2147483647i), firstTrailingBit(vec4<i32>(0i, 0i, global0.c.x, 2147483647i)) << (~global3[_wgslsmith_index_u32(1u, 3u)] % vec4<u32>(32u)))), global2[_wgslsmith_index_u32(abs(func_2()), 31u)]);
    return Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.zy + _wgslsmith_f_op_vec2_f32(var_1.yz + global0.a)) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(global0.a * var_2.d), vec2<f32>(var_0.x, -225f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.d.x, var_2.d.x), var_1.xy, vec2<bool>(false, global0.b))))))), false, vec4<i32>(u_input.b.x, u_input.e, select(2147483647i, i32(-1i) * -var_2.c.x, !(global0.b != global0.b)), countOneBits(max(~(-53750i), ~75738i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!(!select(!vec2<bool>(global0.b, true), vec2<bool>(true, true), false)), !(!select(select(vec2<bool>(global0.b, true), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(global0.b, true), vec2<bool>(false, global0.b), vec2<bool>(global0.b, global0.b)), select(vec2<bool>(false, global0.b), vec2<bool>(true, true), global0.b))), global0.b);
    var var_1 = vec2<i32>(-1i) * -u_input.b;
    var var_2 = ~firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(34741u, u_input.a, u_input.d), vec3<u32>(31927u, u_input.c.x, u_input.c.x))) | (vec3<u32>(~_wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(u_input.d, 3u)], u_input.c), ~0u, _wgslsmith_add_u32(u_input.a, _wgslsmith_clamp_u32(u_input.d, 23433u, u_input.a))) | _wgslsmith_div_vec3_u32(vec3<u32>(firstLeadingBit(85006u), ~1u, _wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(43098u, 3u)], vec4<u32>(u_input.c.x, u_input.a, 6912u, 88607u))), _wgslsmith_sub_vec3_u32(abs(vec3<u32>(u_input.a, u_input.c.x, 4294967295u)), vec3<u32>(u_input.d, u_input.c.x, 1u))));
    global0 = func_1(vec3<bool>(global0.b, global0.b, !global0.b));
    let x = u_input.a;
    s_output = StorageBuffer(-(~vec2<i32>(func_1(vec3<bool>(true, global0.b, true)).c.x, _wgslsmith_mult_i32(global0.c.x, global0.c.x))));
}

