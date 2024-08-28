struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<bool>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31>;

var<private> global1: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(Struct_1(381f, -601f, vec4<bool>(true, false, true, true), 67728i, true), vec4<f32>(-768f, -1693f, -1596f, 1389f)), Struct_2(Struct_1(-826f, -430f, vec4<bool>(true, true, false, false), 2147483647i, true), vec4<f32>(-629f, -2019f, -666f, -121f)), Struct_2(Struct_1(257f, -1605f, vec4<bool>(true, false, true, true), 43457i, false), vec4<f32>(387f, -631f, -341f, -312f)), Struct_2(Struct_1(677f, 2069f, vec4<bool>(true, true, true, false), -1i, true), vec4<f32>(237f, -203f, 1074f, 185f)), Struct_2(Struct_1(1343f, -573f, vec4<bool>(false, true, true, true), -1i, true), vec4<f32>(-397f, -972f, 1130f, 299f)), Struct_2(Struct_1(1159f, 1157f, vec4<bool>(false, false, false, true), -1i, true), vec4<f32>(-757f, -107f, 395f, -653f)), Struct_2(Struct_1(501f, -198f, vec4<bool>(true, true, false, true), i32(-2147483648), false), vec4<f32>(-1000f, 425f, -1233f, -1000f)), Struct_2(Struct_1(1873f, -1052f, vec4<bool>(false, true, true, true), 1i, true), vec4<f32>(-765f, 279f, 2001f, 741f)), Struct_2(Struct_1(386f, -937f, vec4<bool>(false, false, true, false), 10853i, false), vec4<f32>(836f, -1800f, 711f, -891f)), Struct_2(Struct_1(647f, 1158f, vec4<bool>(false, true, false, false), i32(-2147483648), true), vec4<f32>(1299f, 1752f, 1049f, 559f)), Struct_2(Struct_1(-1218f, -1000f, vec4<bool>(false, true, true, true), 57065i, true), vec4<f32>(769f, 1215f, 2044f, -495f)), Struct_2(Struct_1(1643f, 568f, vec4<bool>(true, true, true, false), -1i, true), vec4<f32>(-1341f, -1592f, -1533f, -1713f)), Struct_2(Struct_1(-1000f, 1651f, vec4<bool>(false, false, false, true), 1i, false), vec4<f32>(1065f, -284f, -1815f, -1890f)), Struct_2(Struct_1(-1662f, 749f, vec4<bool>(true, false, true, true), 0i, false), vec4<f32>(926f, -1574f, 178f, 668f)), Struct_2(Struct_1(342f, -449f, vec4<bool>(true, true, true, false), 0i, true), vec4<f32>(423f, 1835f, 928f, -638f)), Struct_2(Struct_1(121f, -288f, vec4<bool>(false, true, true, true), 0i, false), vec4<f32>(-1518f, 174f, 1980f, -173f)), Struct_2(Struct_1(1189f, -1805f, vec4<bool>(true, false, true, true), -53139i, true), vec4<f32>(510f, 344f, 1000f, -1422f)), Struct_2(Struct_1(189f, -1105f, vec4<bool>(false, false, true, false), -1i, true), vec4<f32>(-233f, -742f, 1187f, -280f)), Struct_2(Struct_1(1173f, 159f, vec4<bool>(true, true, false, true), -1i, true), vec4<f32>(447f, -1000f, -388f, 927f)), Struct_2(Struct_1(-1491f, 1440f, vec4<bool>(true, true, false, false), 2147483647i, true), vec4<f32>(569f, -1000f, -1809f, 2219f)), Struct_2(Struct_1(1000f, -383f, vec4<bool>(false, false, false, true), -24229i, false), vec4<f32>(101f, 2712f, 827f, -766f)), Struct_2(Struct_1(236f, -1977f, vec4<bool>(false, false, false, true), 29662i, false), vec4<f32>(-2927f, 1745f, -886f, -474f)), Struct_2(Struct_1(-442f, 922f, vec4<bool>(true, true, true, true), 1i, false), vec4<f32>(325f, -2553f, 838f, 2542f)), Struct_2(Struct_1(103f, -1287f, vec4<bool>(false, true, false, false), -8630i, false), vec4<f32>(-1849f, 259f, -873f, -1000f)), Struct_2(Struct_1(767f, 1397f, vec4<bool>(false, true, true, true), 0i, false), vec4<f32>(-1000f, -1000f, 1170f, -332f)), Struct_2(Struct_1(-160f, -1419f, vec4<bool>(false, true, true, false), -10745i, false), vec4<f32>(465f, -1167f, -676f, -828f)), Struct_2(Struct_1(-529f, -1735f, vec4<bool>(false, false, true, true), 2147483647i, false), vec4<f32>(371f, -616f, 311f, -2756f)));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> bool {
    global1 = array<Struct_2, 27>();
    global0 = array<i32, 31>();
    let var_0 = _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(1i, global0[_wgslsmith_index_u32(1u, 31u)], u_input.b.x, global0[_wgslsmith_index_u32(u_input.c.x, 31u)])) & vec4<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 31u)], 31985i, global0[_wgslsmith_index_u32(u_input.c.x, 31u)], 1i), -vec4<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 31u)], 0i, 2147483647i, 0i)) & -reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, 3401i, u_input.a, u_input.a), vec4<i32>(-1i, u_input.b.x, global0[_wgslsmith_index_u32(u_input.c.x, 31u)], -1i))), vec4<i32>(u_input.b.x, -min(-39895i, -14016i), 2147483647i, _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(4294967295u, 31u)], _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(u_input.c.x, 31u)] ^ 8851i, -u_input.b.x))));
    var var_1 = !select(vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, true), true)), true), vec2<bool>(true, any(select(vec2<bool>(false, true), vec2<bool>(true, true), true))), !vec2<bool>(u_input.c.x != u_input.c.x, 47831i < var_0.x));
    global0 = array<i32, 31>();
    return (true != (_wgslsmith_div_u32(u_input.c.x, ~0u) == ~u_input.c.x)) | !var_1.x;
}

fn func_2(arg_0: i32, arg_1: vec3<f32>) -> bool {
    global0 = array<i32, 31>();
    global1 = array<Struct_2, 27>();
    global1 = array<Struct_2, 27>();
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(u_input.c | ~vec2<u32>(u_input.c.x, u_input.c.x)) | u_input.c, select(_wgslsmith_div_vec2_u32(u_input.c, vec2<u32>(u_input.c.x, u_input.c.x)), u_input.c, vec2<bool>(false, func_3()))), 27u)];
    var var_1 = 1i;
    return false;
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: bool, arg_3: i32) -> vec4<f32> {
    global1 = array<Struct_2, 27>();
    global1 = array<Struct_2, 27>();
    let var_0 = !func_2(5152i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)));
    let var_1 = Struct_2(Struct_1(-2385f, -1326f, !select(!vec4<bool>(var_0, arg_2, arg_2, arg_2), !vec4<bool>(false, true, var_0, true), false), global0[_wgslsmith_index_u32(firstLeadingBit(~4294967295u), 31u)], false), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(229f - -1201f), _wgslsmith_div_f32(-1000f, 728f), _wgslsmith_f_op_f32(ceil(-1134f)), _wgslsmith_f_op_f32(f32(-1f) * -1224f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(776f, -1006f, 340f, 714f), vec4<f32>(569f, 106f, -833f, 606f)))))), vec4<bool>(all(vec2<bool>(false, true)), var_0, arg_2, false))));
    var var_2 = Struct_3(-_wgslsmith_add_i32(~35421i, firstLeadingBit(select(2147483647i, global0[_wgslsmith_index_u32(u_input.c.x, 31u)], var_1.a.c.x))), !(!var_1.a.c));
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(var_1.b * vec4<f32>(var_1.a.a, var_1.b.x, 500f, 298f)), vec4<f32>(1018f, var_1.b.x, 313f, -916f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(-1328f, var_1.b.x, var_1.b.x, 1023f), vec4<f32>(var_1.a.b, -1004f, var_1.a.a, var_1.a.a)))))), var_1.b))));
}

fn func_1(arg_0: vec2<u32>) -> vec2<u32> {
    global0 = array<i32, 31>();
    var var_0 = arg_0.x;
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1158f, 1841f, 797f, 570f) + vec4<f32>(-295f, 932f, 176f, 639f)) + _wgslsmith_div_vec4_f32(vec4<f32>(-810f, -1298f, -1255f, -1132f), vec4<f32>(802f, 2178f, 2094f, -301f)))) + _wgslsmith_f_op_vec4_f32(func_4(~(~u_input.c.x), (vec4<u32>(arg_0.x, u_input.c.x, arg_0.x, u_input.c.x) | vec4<u32>(17769u, 0u, u_input.c.x, 4294967295u)) & abs(vec4<u32>(33849u, u_input.c.x, arg_0.x, 33762u)), !func_2(-21189i, vec3<f32>(-2083f, 413f, -493f)), reverseBits(0i)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -738f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -718f) + 540f), 1000f, 1613f)));
    global0 = array<i32, 31>();
    global1 = array<Struct_2, 27>();
    return min(vec2<u32>(arg_0.x, ~1u), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c | reverseBits(_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 26657u), u_input.c), ~u_input.c)), _wgslsmith_clamp_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(40588u, 4294967295u, u_input.c.x, u_input.c.x), vec4<u32>(25330u, u_input.c.x, 54464u, u_input.c.x)), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(0u, u_input.c.x, 53497u, u_input.c.x)), ~vec4<u32>(68060u, u_input.c.x, 47933u, u_input.c.x)), abs(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 48406u) << (vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 28874u) % vec4<u32>(32u)))) << (firstLeadingBit(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, 8427u, 26876u, 4294967295u), vec4<u32>(1095u, 0u, 1u, u_input.c.x))) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1000f + -456f), 1205f, _wgslsmith_f_op_f32(-1000f + -1000f)))), func_1(vec2<u32>(_wgslsmith_add_u32(~42635u, ~u_input.c.x), 1u)), global0[_wgslsmith_index_u32(firstLeadingBit(~(~(~2177u))), 31u)]);
}

