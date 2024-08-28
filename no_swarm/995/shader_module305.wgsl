struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec4<bool>,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 5>;

var<private> global1: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(1835f, vec2<f32>(336f, 379f), vec2<u32>(0u, 66224u)), Struct_1(470f, vec2<f32>(1169f, -798f), vec2<u32>(1u, 4294967295u)), Struct_1(1000f, vec2<f32>(-457f, 375f), vec2<u32>(23694u, 20224u)), Struct_1(-182f, vec2<f32>(167f, 794f), vec2<u32>(24894u, 4294967295u)), Struct_1(404f, vec2<f32>(-954f, 879f), vec2<u32>(0u, 4294967295u)), Struct_1(-1348f, vec2<f32>(-192f, -1214f), vec2<u32>(5197u, 37782u)), Struct_1(-1708f, vec2<f32>(-652f, 284f), vec2<u32>(107787u, 41196u)), Struct_1(824f, vec2<f32>(315f, 151f), vec2<u32>(10592u, 71754u)), Struct_1(-1795f, vec2<f32>(202f, 1075f), vec2<u32>(84726u, 98064u)), Struct_1(340f, vec2<f32>(683f, -481f), vec2<u32>(5241u, 4294967295u)), Struct_1(498f, vec2<f32>(-193f, -945f), vec2<u32>(2617u, 2368u)), Struct_1(-458f, vec2<f32>(-1000f, 1036f), vec2<u32>(4294967295u, 0u)), Struct_1(808f, vec2<f32>(-2323f, 437f), vec2<u32>(4294967295u, 0u)), Struct_1(1091f, vec2<f32>(-221f, 1286f), vec2<u32>(4294967295u, 36712u)), Struct_1(1000f, vec2<f32>(-144f, -623f), vec2<u32>(17611u, 70772u)), Struct_1(-1290f, vec2<f32>(1326f, 1428f), vec2<u32>(4294967295u, 1u)), Struct_1(-556f, vec2<f32>(1501f, 1000f), vec2<u32>(59114u, 4294967295u)), Struct_1(-599f, vec2<f32>(503f, -923f), vec2<u32>(3374u, 51931u)), Struct_1(-2178f, vec2<f32>(454f, -702f), vec2<u32>(110035u, 24748u)), Struct_1(689f, vec2<f32>(-482f, 171f), vec2<u32>(1u, 4294967295u)), Struct_1(-394f, vec2<f32>(117f, 118f), vec2<u32>(32419u, 35838u)), Struct_1(1121f, vec2<f32>(1100f, -1932f), vec2<u32>(1u, 2010u)), Struct_1(-1600f, vec2<f32>(-822f, 142f), vec2<u32>(48527u, 0u)), Struct_1(342f, vec2<f32>(185f, -366f), vec2<u32>(4294967295u, 1u)), Struct_1(-334f, vec2<f32>(-1874f, 206f), vec2<u32>(44585u, 16520u)), Struct_1(-1745f, vec2<f32>(-647f, 468f), vec2<u32>(27174u, 1u)), Struct_1(1139f, vec2<f32>(542f, 3035f), vec2<u32>(15822u, 4294967295u)), Struct_1(2620f, vec2<f32>(-1000f, -1518f), vec2<u32>(22984u, 4294967295u)), Struct_1(1400f, vec2<f32>(-753f, -820f), vec2<u32>(62076u, 27071u)));

var<private> global2: array<vec4<i32>, 4> = array<vec4<i32>, 4>(vec4<i32>(i32(-2147483648), 40352i, -1573i, -30602i), vec4<i32>(-156i, 1i, -1i, -2927i), vec4<i32>(1i, -53373i, -1i, -10821i), vec4<i32>(0i, -25892i, -52577i, -26039i));

var<private> global3: u32;

var<private> global4: vec2<i32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    var var_0 = vec4<i32>(i32(-1i) * -26489i, 1i, -u_input.c.x, u_input.d);
    let var_1 = u_input.a | (~4294967295u >> ((~(~31123u) ^ _wgslsmith_sub_u32(0u, countOneBits(u_input.b))) % 32u));
    var var_2 = select(select(vec2<bool>(!any(vec3<bool>(false, true, true)), _wgslsmith_dot_vec3_u32(vec3<u32>(34936u, 4294967295u, 53612u), vec3<u32>(u_input.a, u_input.a, u_input.b)) < 1u), !(!select(vec2<bool>(false, true), vec2<bool>(true, false), false)), false), select(vec2<bool>(true, true), select(vec2<bool>(all(vec3<bool>(true, true, true)), false), select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(false, false)), vec2<bool>(true, false)), !(true == (45346u >= var_1))), all(vec4<bool>(min(global4.x, 15259i) <= -6080i, true, false, all(select(vec2<bool>(false, false), vec2<bool>(false, false), true)))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-643f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -188f)))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-470f + 851f) - -1253f) * 1f), 239f, var_2.x)));
    var var_4 = Struct_1(var_3, vec2<f32>(499f, _wgslsmith_f_op_f32(ceil(1263f))), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, abs(1u)) | (vec2<u32>(1u, var_1) & select(vec2<u32>(var_1, 1u), vec2<u32>(var_1, var_1), var_2.x)), vec2<u32>(_wgslsmith_clamp_u32(var_1 ^ 14638u, ~0u, var_1), abs(1u))));
    return false;
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-594f - 1526f), 406f, true)), -1000f, 1f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-201f, 573f, -1203f) + vec3<f32>(343f, -312f, 481f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2949f, -963f, 1420f))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(452f, -444f, -272f))))))));
    var var_1 = select(select(vec3<bool>(!func_3(), all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false)), true), !vec3<bool>(false, var_0.x <= var_0.x, true), all(vec3<bool>(false, true, false)) && true), select(select(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true), vec3<bool>(false, true, false), (var_0.x != 1000f) && false), select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true), select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, all(vec4<bool>(false, true, true, false)))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(all(global0[_wgslsmith_index_u32(u_input.b, 5u)]), all(global0[_wgslsmith_index_u32(u_input.a, 5u)]), any(vec2<bool>(false, true))))), vec3<bool>(true, true, true));
    global0 = array<vec4<bool>, 5>();
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.xz - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(-216f)), _wgslsmith_f_op_f32(floor(366f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(-364f, -110f)), _wgslsmith_f_op_f32(158f + var_0.x), _wgslsmith_f_op_f32(var_0.x * var_0.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-508f, -871f, -979f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0 * var_0) + var_0), var_0)), global0[_wgslsmith_index_u32(u_input.a, 5u)], ~max(u_input.b, 35653u), global1[_wgslsmith_index_u32(u_input.b, 29u)]);
    global4 = vec2<i32>(~global4.x, -_wgslsmith_add_i32(u_input.c.x, reverseBits(_wgslsmith_dot_vec2_i32(u_input.c, u_input.c))));
    return var_2;
}

fn func_4(arg_0: f32, arg_1: vec3<f32>, arg_2: vec2<i32>, arg_3: Struct_2) -> u32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_3.a.x - arg_1.x))), false))), _wgslsmith_f_op_f32(min(406f, _wgslsmith_f_op_f32(select(795f, _wgslsmith_f_op_f32(min(-459f, _wgslsmith_f_op_f32(abs(arg_3.b.x)))), arg_3.c.x)))));
    let var_1 = global1[_wgslsmith_index_u32(~u_input.b, 29u)];
    let var_2 = func_2();
    global4 = vec2<i32>(~arg_2.x, _wgslsmith_div_i32(max(-2147483647i, global4.x ^ 8096i), arg_2.x) | 0i);
    var_0 = var_1.b;
    return firstLeadingBit((var_1.c.x | ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_1.c.x, arg_3.d), vec3<u32>(3519u, 96965u, 0u))) << (4294967295u % 32u));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    global0 = array<vec4<bool>, 5>();
    global1 = array<Struct_1, 29>();
    var var_0 = countOneBits(abs(max(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, arg_0.x, arg_0.x, u_input.d), vec4<i32>(-2147483647i, arg_0.x, global4.x, -51073i) & global2[_wgslsmith_index_u32(87700u, 4u)]), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(26094u, 2154u, 99878u), vec3<u32>(u_input.a, 68261u, 43630u)), 4u)] << (~vec4<u32>(1822u, 13440u, 0u, 4294967295u) % vec4<u32>(32u)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(arg_3.b * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(2737f - arg_1.b.x), -140f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -659f), -462f)), 1021f))));
    let var_2 = _wgslsmith_dot_vec2_u32(arg_2.c, vec2<u32>(u_input.b, abs(0u)));
    return ~_wgslsmith_mult_u32(reverseBits(arg_1.c.x), 44396u | func_4(_wgslsmith_f_op_f32(floor(194f)), _wgslsmith_div_vec3_f32(vec3<f32>(arg_3.e.a, 908f, arg_1.b.x), vec3<f32>(1434f, var_1.x, -641f)), arg_0, func_2()));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = ~vec2<i32>(_wgslsmith_add_i32(~u_input.c.x >> (~4294967295u % 32u), -2147483647i), abs(global4.x));
    global3 = ~24013u;
    let var_0 = Struct_1(-1641f, _wgslsmith_f_op_vec2_f32(vec2<f32>(-300f, 209f) + vec2<f32>(_wgslsmith_f_op_f32(1776f * -476f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-491f * 1229f), _wgslsmith_f_op_f32(f32(-1f) * -553f)))), ~vec2<u32>(~func_1(u_input.c, Struct_1(-807f, vec2<f32>(-1754f, -335f), vec2<u32>(u_input.a, u_input.a)), Struct_1(1387f, vec2<f32>(1076f, 762f), vec2<u32>(u_input.b, 0u)), Struct_2(vec2<f32>(-1323f, -192f), vec3<f32>(-777f, -573f, -1229f), global0[_wgslsmith_index_u32(11367u, 5u)], u_input.b, Struct_1(-352f, vec2<f32>(439f, -345f), vec2<u32>(u_input.b, u_input.a)))), 4294967295u));
    let var_1 = min(u_input.b, var_0.c.x);
    let var_2 = global4.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(var_0.b.x, var_0.b.x), _wgslsmith_sub_vec4_u32(~vec4<u32>(var_1, 0u, 47766u, 30947u), ~vec4<u32>(4294967295u, 1u, 14830u, u_input.b)) ^ vec4<u32>(0u, ~31979u, var_0.c.x, var_1), -386f);
}

