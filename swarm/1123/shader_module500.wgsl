struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 28> = array<vec3<u32>, 28>(vec3<u32>(74524u, 68688u, 4294967295u), vec3<u32>(24415u, 4294967295u, 42197u), vec3<u32>(0u, 1u, 1u), vec3<u32>(4294967295u, 1202u, 4294967295u), vec3<u32>(0u, 1u, 5879u), vec3<u32>(0u, 4294967295u, 4204u), vec3<u32>(1u, 0u, 1u), vec3<u32>(1u, 15551u, 46569u), vec3<u32>(1u, 6273u, 0u), vec3<u32>(0u, 8910u, 4294967295u), vec3<u32>(0u, 28040u, 37327u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(0u, 4294967295u, 54330u), vec3<u32>(4294967295u, 4294967295u, 11169u), vec3<u32>(28729u, 55116u, 0u), vec3<u32>(4294967295u, 21765u, 0u), vec3<u32>(96052u, 36248u, 26764u), vec3<u32>(46596u, 0u, 4297u), vec3<u32>(37583u, 0u, 4294967295u), vec3<u32>(29844u, 1u, 24493u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(9766u, 33828u, 15519u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(4294967295u, 75700u, 1u), vec3<u32>(4515u, 4395u, 4294967295u), vec3<u32>(26212u, 4294967295u, 30132u), vec3<u32>(20633u, 4790u, 0u), vec3<u32>(0u, 0u, 0u));

var<private> global1: array<u32, 9> = array<u32, 9>(144865u, 4294967295u, 0u, 4294967295u, 1u, 0u, 72222u, 4294967295u, 0u);

var<private> global2: array<vec4<f32>, 18> = array<vec4<f32>, 18>(vec4<f32>(-2011f, 118f, 490f, -1186f), vec4<f32>(-805f, -946f, -1229f, 1322f), vec4<f32>(891f, 1243f, -513f, -1292f), vec4<f32>(346f, -2341f, -611f, -1687f), vec4<f32>(-1085f, -1145f, -858f, 802f), vec4<f32>(705f, 654f, 501f, -1042f), vec4<f32>(-113f, 1000f, 1768f, -249f), vec4<f32>(422f, -1752f, 2042f, 628f), vec4<f32>(949f, -1000f, 1404f, -330f), vec4<f32>(-931f, 1379f, -1071f, -121f), vec4<f32>(125f, -189f, -370f, -1000f), vec4<f32>(-536f, 518f, 1641f, 1530f), vec4<f32>(-894f, 997f, 457f, 1176f), vec4<f32>(-1183f, 174f, -1368f, 1072f), vec4<f32>(-2410f, 1499f, -696f, -773f), vec4<f32>(728f, 432f, -350f, -1142f), vec4<f32>(-902f, -436f, -1175f, -1039f), vec4<f32>(-749f, 737f, 2095f, -654f));

var<private> global3: u32 = 66695u;

var<private> global4: array<Struct_1, 23>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec3<u32>) -> vec2<bool> {
    global2 = array<vec4<f32>, 18>();
    let var_0 = -36475i;
    return vec2<bool>(true, true);
}

fn func_2(arg_0: vec4<u32>, arg_1: bool, arg_2: i32) -> vec4<u32> {
    global2 = array<vec4<f32>, 18>();
    global2 = array<vec4<f32>, 18>();
    let var_0 = -2147483647i;
    var var_1 = Struct_1(select(vec2<i32>(_wgslsmith_div_i32(var_0, ~(-1i)), 1i), -u_input.a.wy, select(!select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, true), arg_1), func_3(min(vec4<i32>(-22698i, var_0, -2147483647i, 0i), u_input.a), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, arg_0.x, 48932u), arg_0.wyy), 23u)], _wgslsmith_clamp_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(arg_0.x, 9u)], global1[_wgslsmith_index_u32(0u, 9u)], 1u), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(12172u, 9u)], 9u)], 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 9u)], 9u)]), vec3<u32>(arg_0.x, 4294967295u, 36208u))), select(vec2<bool>(arg_1, arg_1), select(vec2<bool>(arg_1, false), vec2<bool>(false, arg_1), true), !arg_1))));
    let var_2 = ~select(_wgslsmith_add_vec2_i32(vec2<i32>(-29839i, 1i), var_1.a), select(max(vec2<i32>(arg_2, -16598i), u_input.a.zz), -u_input.a.yx, _wgslsmith_div_f32(1032f, -215f) > _wgslsmith_f_op_f32(select(356f, -941f, arg_1))), !vec2<bool>(arg_1 && arg_1, arg_1));
    return ~(countOneBits(~(~arg_0)) >> (vec4<u32>(global1[_wgslsmith_index_u32(arg_0.x, 9u)], 22837u, ~(~1u), u_input.b.x) % vec4<u32>(32u)));
}

fn func_1(arg_0: i32) -> bool {
    let var_0 = func_2(abs(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(2389u, 9u)], 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 0u), vec4<u32>(global1[_wgslsmith_index_u32(0u, 9u)], u_input.b.x, 58854u, 37181u), u_input.b))), all(vec3<bool>(true, true, true)), 1i);
    var var_1 = firstLeadingBit(global1[_wgslsmith_index_u32(~1u, 9u)] | ~55642u);
    var var_2 = _wgslsmith_add_vec3_i32(~abs(-u_input.a.zyw) << (vec3<u32>(~(~global1[_wgslsmith_index_u32(var_0.x, 9u)]), ~var_0.x, ~(u_input.b.x << (u_input.b.x % 32u))) % vec3<u32>(32u)), ~(~u_input.a.xww));
    global3 = ~select(~0u, _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(1u, 32136u)), vec2<u32>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(85902u, 0u), 9u)], reverseBits(var_0.x))), true);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-179f * 1675f) + -1408f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-341f * -484f)))));
    return true;
}

fn func_4(arg_0: bool, arg_1: vec2<i32>, arg_2: vec4<i32>) -> Struct_1 {
    global0 = array<vec3<u32>, 28>();
    let var_0 = vec3<f32>(597f, 824f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(625f + -2778f)), -588f));
    let var_1 = ~(~vec2<u32>(36027u, global1[_wgslsmith_index_u32(4294967295u, 9u)]));
    global1 = array<u32, 9>();
    var var_2 = var_0;
    return Struct_1(u_input.a.ww);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 28>();
    let var_0 = func_4(func_1(u_input.a.x << (~_wgslsmith_dot_vec3_u32(vec3<u32>(58816u, u_input.b.x, global1[_wgslsmith_index_u32(u_input.b.x, 9u)]), vec3<u32>(1u, 1u, 29419u)) % 32u)), abs(u_input.a.wz), reverseBits(vec4<i32>(-_wgslsmith_mod_i32(u_input.a.x, -14488i), u_input.a.x, 1i, ~(~u_input.a.x))));
    var var_1 = _wgslsmith_mult_i32(u_input.a.x, -(~u_input.a.x) >> (_wgslsmith_dot_vec4_u32(u_input.b, ~_wgslsmith_add_vec4_u32(u_input.b, u_input.b)) % 32u));
    var var_2 = var_0.a;
    var_1 = 2147483647i;
    global2 = array<vec4<f32>, 18>();
    var_2 = u_input.a.yz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(u_input.a, ~vec4<i32>(var_2.x, -35858i, u_input.a.x, var_2.x), countOneBits(u_input.a)) >> (u_input.b % vec4<u32>(32u)), -countOneBits(~(vec3<i32>(u_input.a.x, var_2.x, -1i) << (vec3<u32>(44277u, global1[_wgslsmith_index_u32(1u, 9u)], 1u) % vec3<u32>(32u)))), i32(-1i) * -u_input.a.x, func_4(func_3(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.a.x, 12432i, u_input.a.x, -25572i) | vec4<i32>(var_0.a.x, var_2.x, 1i, 65197i), abs(vec4<i32>(-2147483647i, 21917i, 0i, var_0.a.x))), func_4(false, _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, 51344i), var_0.a), countOneBits(u_input.a)), countOneBits(global0[_wgslsmith_index_u32(1u, 28u)])).x, -vec2<i32>(-1i, -1i), select(vec4<i32>(-9947i, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a), ~u_input.a.x, -1i), _wgslsmith_sub_vec4_i32(countOneBits(u_input.a), u_input.a), func_3(countOneBits(vec4<i32>(-17552i, u_input.a.x, -2147483647i, -1609i)), Struct_1(vec2<i32>(-814i, u_input.a.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(83117u, 9u)], global1[_wgslsmith_index_u32(u_input.b.x, 9u)], 4294967295u), vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(u_input.b.x, 9u)], global1[_wgslsmith_index_u32(1u, 9u)]))).x)).a.x, u_input.a);
}

