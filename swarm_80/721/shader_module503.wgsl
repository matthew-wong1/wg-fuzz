struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec3<u32>,
    d: vec4<f32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<i32>,
    c: vec2<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(vec2<bool>(true, false)));

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec4<i32>(i32(-2147483648), -1i, 48581i, 0i), -1000f, vec3<u32>(0u, 1u, 0u), vec4<f32>(566f, 674f, -208f, -206f), vec2<f32>(-250f, -851f)), Struct_1(vec4<i32>(-36664i, 6435i, 48023i, 0i), 749f, vec3<u32>(0u, 0u, 0u), vec4<f32>(140f, 946f, 1271f, 471f), vec2<f32>(435f, 2881f)), Struct_1(vec4<i32>(-17489i, 0i, 1i, 37424i), -1996f, vec3<u32>(0u, 4294967295u, 23322u), vec4<f32>(742f, -207f, 1643f, 930f), vec2<f32>(-204f, -1730f)), Struct_1(vec4<i32>(-179i, 0i, i32(-2147483648), i32(-2147483648)), -943f, vec3<u32>(32487u, 4467u, 1u), vec4<f32>(136f, 767f, 1580f, 1679f), vec2<f32>(-1765f, 254f)), Struct_1(vec4<i32>(28851i, 29223i, 2147483647i, i32(-2147483648)), 473f, vec3<u32>(13068u, 83030u, 1u), vec4<f32>(-774f, -1222f, -828f, -373f), vec2<f32>(-812f, -1283f)), Struct_1(vec4<i32>(-12271i, 18311i, -1i, -43571i), 198f, vec3<u32>(62932u, 79768u, 36883u), vec4<f32>(1000f, 729f, -1342f, -340f), vec2<f32>(-1096f, -424f)), Struct_1(vec4<i32>(-1i, 25521i, -24799i, -58638i), 123f, vec3<u32>(30575u, 1u, 1u), vec4<f32>(-1290f, -268f, -1410f, -1000f), vec2<f32>(-471f, 133f)), Struct_1(vec4<i32>(-1i, 2147483647i, 1i, 0i), 1878f, vec3<u32>(78205u, 57983u, 72790u), vec4<f32>(478f, -687f, -678f, 980f), vec2<f32>(619f, -612f)), Struct_1(vec4<i32>(1i, 22854i, -19100i, i32(-2147483648)), -320f, vec3<u32>(29273u, 0u, 1u), vec4<f32>(-792f, -446f, -2504f, 1056f), vec2<f32>(1164f, 591f)), Struct_1(vec4<i32>(-77914i, 60668i, 2147483647i, -21783i), 1434f, vec3<u32>(0u, 4294967295u, 1u), vec4<f32>(-1291f, 1438f, 1979f, -811f), vec2<f32>(-127f, -694f)), Struct_1(vec4<i32>(-11380i, 1i, 2147483647i, -23509i), -125f, vec3<u32>(68080u, 1u, 4294967295u), vec4<f32>(1272f, -410f, -1258f, -1000f), vec2<f32>(-1623f, -244f)), Struct_1(vec4<i32>(2147483647i, 47813i, 18666i, -37622i), -555f, vec3<u32>(1u, 89136u, 84896u), vec4<f32>(-122f, -1000f, 670f, 420f), vec2<f32>(290f, 376f)), Struct_1(vec4<i32>(1i, i32(-2147483648), i32(-2147483648), 0i), 217f, vec3<u32>(0u, 4294967295u, 4294967295u), vec4<f32>(-950f, 648f, 1131f, -1167f), vec2<f32>(-1000f, 1151f)), Struct_1(vec4<i32>(i32(-2147483648), -36843i, -9876i, 2147483647i), -1000f, vec3<u32>(111437u, 16922u, 1u), vec4<f32>(1943f, 1000f, 446f, 177f), vec2<f32>(-2005f, 472f)), Struct_1(vec4<i32>(-30349i, -1i, 0i, 0i), -616f, vec3<u32>(23048u, 5611u, 13955u), vec4<f32>(846f, -127f, 1187f, 2176f), vec2<f32>(-589f, -404f)), Struct_1(vec4<i32>(6471i, 1200i, 0i, 2147483647i), -173f, vec3<u32>(25084u, 10250u, 28129u), vec4<f32>(-399f, 831f, -267f, 1185f), vec2<f32>(414f, 541f)), Struct_1(vec4<i32>(0i, 1i, -28622i, 15803i), -1643f, vec3<u32>(69646u, 4294967295u, 1u), vec4<f32>(378f, 190f, -477f, -384f), vec2<f32>(-1359f, 553f)), Struct_1(vec4<i32>(24809i, -1i, 3626i, 33856i), 1000f, vec3<u32>(101896u, 0u, 56892u), vec4<f32>(-365f, -184f, 700f, 1444f), vec2<f32>(1655f, -1089f)), Struct_1(vec4<i32>(4942i, i32(-2147483648), 1i, 27346i), -380f, vec3<u32>(0u, 1u, 4294967295u), vec4<f32>(-1279f, -532f, 396f, 506f), vec2<f32>(746f, 951f)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2() -> Struct_3 {
    var var_0 = -8255i;
    var_0 = 1i;
    global1 = array<Struct_1, 19>();
    var var_1 = !(!vec4<bool>(true, true, all(vec3<bool>(global0.a.a.x, global0.a.a.x, false)), global0.a.a.x));
    var_0 = 0i;
    return Struct_3(Struct_2(!vec2<bool>(false, !var_1.x)));
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    global0 = func_2();
    var var_0 = Struct_4(global0.a, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-181f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1000f, -638f)))), 2067f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1294f)))))));
    return ~_wgslsmith_div_u32(~_wgslsmith_mod_u32(max(20u, 0u), _wgslsmith_clamp_u32(60443u, arg_0.x, 10831u)), 42955u);
}

fn func_1(arg_0: vec3<i32>) -> Struct_3 {
    global0 = func_2();
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f)))));
    let var_1 = _wgslsmith_dot_vec2_u32(~max(vec2<u32>(_wgslsmith_sub_u32(90478u, 3649u), 33395u), vec2<u32>(1u, 1u)), vec2<u32>(_wgslsmith_mult_u32(49164u, _wgslsmith_mod_u32(_wgslsmith_add_u32(89807u, 24509u), func_3(vec3<u32>(0u, 1u, 75270u)))), _wgslsmith_mult_u32(_wgslsmith_mod_u32(abs(1u), ~30485u), 4294967295u)));
    let var_2 = Struct_1(vec4<i32>(_wgslsmith_dot_vec4_i32(select(select(vec4<i32>(arg_0.x, u_input.b, u_input.b, u_input.b), vec4<i32>(-30256i, 0i, u_input.a.x, arg_0.x), global0.a.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 1i, -32270i) >> (vec4<u32>(4294967295u, var_1, var_1, var_1) % vec4<u32>(32u)), 1u != var_1), vec4<i32>(-18214i, 1i, _wgslsmith_add_i32(u_input.a.x, -3028i), ~2147483647i)), arg_0.x, ~reverseBits(-arg_0.x), _wgslsmith_sub_i32(u_input.b, firstTrailingBit(min(-37232i, 2147483647i)))), _wgslsmith_f_op_f32(707f * -269f), vec3<u32>(21863u, max(var_1 ^ 4294967295u, var_1), 1u), _wgslsmith_div_vec4_f32(vec4<f32>(var_0, var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * _wgslsmith_f_op_f32(min(-832f, var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(499f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, var_0, 470f) + vec4<f32>(1669f, 470f, var_0, var_0))))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(555f + var_0), 1683f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)))))));
    var var_3 = firstTrailingBit(reverseBits(firstLeadingBit(~(vec3<i32>(-1i, arg_0.x, var_2.a.x) << (vec3<u32>(var_2.c.x, var_2.c.x, 117901u) % vec3<u32>(32u))))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 19>();
    var var_0 = !(!(!select(select(vec4<bool>(global0.a.a.x, global0.a.a.x, global0.a.a.x, true), vec4<bool>(global0.a.a.x, false, false, true), vec4<bool>(global0.a.a.x, global0.a.a.x, true, global0.a.a.x)), !vec4<bool>(false, false, global0.a.a.x, global0.a.a.x), any(vec3<bool>(global0.a.a.x, global0.a.a.x, global0.a.a.x)))));
    var var_1 = func_1(abs(_wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-1i, 2147483647i, 2147483647i), -(vec3<i32>(u_input.b, -2147483647i, u_input.a.x) >> (vec3<u32>(1u, 73462u, 45567u) % vec3<u32>(32u))))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(1u, 38594u, ~abs(18515u)), vec4<u32>(min(57919u << (min(0u, 0u) % 32u), ~1u), 4294967295u, 1u, _wgslsmith_clamp_u32(abs(25739u), ~34305u, ~5300u) >> (min(33280u, ~1u) % 32u)), u_input.a.x ^ -226i, ~(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 63903u, 4294967295u, 18004u), vec4<u32>(1u, 2893u, 4294967295u, 45524u)), 1u) << (_wgslsmith_clamp_u32(min(53062u, 17689u), ~1u, 0u) % 32u)));
}

