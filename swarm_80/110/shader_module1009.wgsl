struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<f32>,
    d: bool,
    e: vec4<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: bool,
    c: i32,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27>;

var<private> global1: array<vec2<f32>, 18> = array<vec2<f32>, 18>(vec2<f32>(1000f, -1895f), vec2<f32>(179f, -433f), vec2<f32>(880f, 679f), vec2<f32>(-824f, -885f), vec2<f32>(-1245f, -1000f), vec2<f32>(1363f, -1915f), vec2<f32>(271f, 408f), vec2<f32>(1561f, -1853f), vec2<f32>(-1000f, -1726f), vec2<f32>(1030f, -360f), vec2<f32>(1080f, 1000f), vec2<f32>(-1579f, 461f), vec2<f32>(684f, -764f), vec2<f32>(-678f, -1000f), vec2<f32>(822f, -1000f), vec2<f32>(-894f, 738f), vec2<f32>(1609f, 936f), vec2<f32>(-1000f, -2781f));

var<private> global2: array<vec4<f32>, 11> = array<vec4<f32>, 11>(vec4<f32>(-1156f, 512f, 1380f, -1278f), vec4<f32>(-1696f, -1000f, 101f, 1936f), vec4<f32>(-923f, 1283f, -643f, -875f), vec4<f32>(-1000f, 376f, 1715f, -565f), vec4<f32>(-523f, -1000f, -671f, 1399f), vec4<f32>(156f, 110f, -1231f, 1000f), vec4<f32>(-122f, 1225f, 782f, -609f), vec4<f32>(-260f, 1746f, 1148f, -1255f), vec4<f32>(630f, -1918f, 1343f, -464f), vec4<f32>(325f, 764f, 837f, 1127f), vec4<f32>(-1000f, -540f, -1000f, -268f));

var<private> global3: i32 = 2147483647i;

var<private> global4: array<vec2<f32>, 23>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: u32) -> u32 {
    return arg_0.b.a;
}

fn func_2(arg_0: f32, arg_1: i32) -> vec2<i32> {
    let var_0 = Struct_2(21261u, global2[_wgslsmith_index_u32(u_input.b, 11u)], Struct_1(_wgslsmith_f_op_f32(step(829f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0 - arg_0))))), global2[_wgslsmith_index_u32(func_3(Struct_3(Struct_1(-185f, global2[_wgslsmith_index_u32(u_input.b, 11u)]), Struct_2(1u, global2[_wgslsmith_index_u32(u_input.b, 11u)], Struct_1(1382f, global2[_wgslsmith_index_u32(0u, 11u)])), _wgslsmith_f_op_vec2_f32(-global4[_wgslsmith_index_u32(u_input.a, 23u)]), true, vec4<f32>(arg_0, -346f, 516f, -684f)), _wgslsmith_add_i32(-296i << (u_input.a % 32u), _wgslsmith_mod_i32(arg_1, -41114i)), 1u), 11u)]));
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-var_0.c.a), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1311f, 705f, -1056f, -1172f) * vec4<f32>(-1521f, var_0.b.x, var_0.b.x, 860f))))), Struct_2(1u, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(var_0.b - var_0.c.b))), var_0.c), global1[_wgslsmith_index_u32(select(select(u_input.b, abs(var_0.a), all(vec3<bool>(true, true, false))) ^ ~abs(283u), 0u, !(!any(vec2<bool>(true, true)))), 18u)], all(vec4<bool>(select(true, true, u_input.b > 4294967295u), any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))), false, any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false))))), global2[_wgslsmith_index_u32(var_0.a, 11u)]);
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -525f)) * var_0.b.yw);
    let var_3 = (u_input.b | var_1.b.a) | _wgslsmith_div_u32(var_0.a, ~firstTrailingBit(60315u));
    var var_4 = Struct_1(var_2.x, _wgslsmith_f_op_vec4_f32(var_0.c.b * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(var_1.e, var_1.b.b), _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(var_0.a, 11u)])) - var_0.c.b)));
    return vec2<i32>(firstTrailingBit(-_wgslsmith_add_i32(-56811i, -1i)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_3, 4888u, 0u), vec3<u32>(4294967295u, u_input.a, 1u)), ~20696u, var_1.b.a, var_1.b.a & var_3) | vec4<u32>(~var_3, func_3(Struct_3(var_0.c, var_1.b, var_4.b.xx, false, global2[_wgslsmith_index_u32(11665u, 11u)]), global0[_wgslsmith_index_u32(var_0.a, 27u)], 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(53375u, 31653u), vec2<u32>(0u, 71401u)), var_1.b.a), ~firstTrailingBit(~vec4<u32>(40841u, 44400u, u_input.b, u_input.b))), 27u)]);
}

fn func_4(arg_0: vec2<i32>) -> Struct_3 {
    var var_0 = 814f;
    global4 = array<vec2<f32>, 23>();
    var_0 = 143f;
    var var_1 = firstTrailingBit(_wgslsmith_clamp_vec3_i32((vec3<i32>(global0[_wgslsmith_index_u32(0u, 27u)], arg_0.x, 23887i) | _wgslsmith_add_vec3_i32(vec3<i32>(15146i, global0[_wgslsmith_index_u32(4294967295u, 27u)], 36276i), vec3<i32>(0i, 33875i, global0[_wgslsmith_index_u32(19257u, 27u)]))) ^ vec3<i32>(1i, 1i & arg_0.x, _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(13096u, 27u)], -42724i)), select(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a << (1u % 32u), 27u)], -arg_0.x, _wgslsmith_dot_vec2_i32(arg_0, vec2<i32>(arg_0.x, 17437i))), countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(arg_0.x, arg_0.x, 24213i), vec3<i32>(arg_0.x, 1i, global0[_wgslsmith_index_u32(u_input.a, 27u)]))), vec3<bool>(true, true, true)), -abs(select(vec3<i32>(arg_0.x, -15421i, 2147483647i), vec3<i32>(arg_0.x, arg_0.x, global0[_wgslsmith_index_u32(0u, 27u)]), vec3<bool>(true, true, false)))));
    var var_2 = all(!(!(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)))));
    return Struct_3(Struct_1(-996f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(global2[_wgslsmith_index_u32(51214u, 11u)])))))), Struct_2(~1u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(3737u, u_input.b, u_input.a, 0u), vec4<u32>(15570u, u_input.a, u_input.b, 48297u)), 11u)] * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1688f, -1114f, -883f, 1930f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-503f, -1407f, -973f, 301f))), Struct_1(_wgslsmith_f_op_f32(step(-1362f, _wgslsmith_f_op_f32(select(1001f, 1440f, true)))), vec4<f32>(-372f, -207f, _wgslsmith_f_op_f32(-909f * -1031f), 1f))), global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_sub_u32(13911u ^ u_input.b, func_3(Struct_3(Struct_1(-1032f, global2[_wgslsmith_index_u32(u_input.a, 11u)]), Struct_2(u_input.b, global2[_wgslsmith_index_u32(u_input.b, 11u)], Struct_1(380f, global2[_wgslsmith_index_u32(u_input.a, 11u)])), vec2<f32>(231f, 150f), false, vec4<f32>(385f, -2333f, 1406f, -114f)), ~24483i, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 113606u), vec2<u32>(25569u, u_input.a))))), 18u)], true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(global2[_wgslsmith_index_u32(~4294967295u, 11u)])))));
}

fn func_1() -> f32 {
    var var_0 = func_4(_wgslsmith_mod_vec2_i32(abs(func_2(_wgslsmith_f_op_f32(-194f * -496f), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b, u_input.a, 1u), 27u)])), countOneBits(vec2<i32>(_wgslsmith_sub_i32(2508i, 13994i), 0i))));
    var var_1 = -max(~vec3<i32>(global0[_wgslsmith_index_u32(~var_0.b.a, 27u)], global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, 1u), 27u)], abs(-55275i)), vec3<i32>(1i, func_2(func_4(vec2<i32>(44565i, global0[_wgslsmith_index_u32(30795u, 27u)])).e.x, _wgslsmith_add_i32(global0[_wgslsmith_index_u32(var_0.b.a, 27u)], -1i)).x, -min(global0[_wgslsmith_index_u32(var_0.b.a, 27u)], -14497i)));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e.x, var_0.e.x, -1107f)))) * vec3<f32>(_wgslsmith_f_op_f32(abs(239f)), _wgslsmith_f_op_f32(var_0.b.c.a - var_0.c.x), -1542f));
    let var_3 = var_0.a;
    global4 = array<vec2<f32>, 23>();
    return var_2.x;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> StorageBuffer {
    var var_0 = -(~(~min(vec2<i32>(-43645i, global0[_wgslsmith_index_u32(5724u, 27u)]), vec2<i32>(-1i, -45249i)))) << (~vec2<u32>(arg_1.a, 18273u) % vec2<u32>(32u));
    var var_1 = arg_0.b.x;
    global3 = 21539i;
    global0 = array<i32, 27>();
    var var_2 = func_4(reverseBits(max(vec2<i32>(global0[_wgslsmith_index_u32(8161u, 27u)], 0i), -vec2<i32>(var_0.x, -1i)) << ((~vec2<u32>(62624u, 63035u) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.a, 24238u), vec2<u32>(arg_0.a, arg_0.a)) % vec2<u32>(32u))) % vec2<u32>(32u)))).b;
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(arg_0.c.b.wy)), var_2.c.b.zw, select(false, true, false))), select(~(~(vec4<u32>(51661u, 38824u, 19415u, arg_0.a) << (vec4<u32>(u_input.b, 42916u, 85851u, 1u) % vec4<u32>(32u)))), ~vec4<u32>(arg_1.a, abs(1u), func_3(Struct_3(arg_0.c, Struct_2(0u, vec4<f32>(var_2.b.x, 186f, arg_0.c.b.x, -1083f), Struct_1(-1131f, var_2.b)), vec2<f32>(var_2.c.a, arg_0.c.b.x), true, var_2.b), -2336i, arg_0.a), var_2.a), true), var_2.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global4[_wgslsmith_index_u32(arg_0.a, 23u)])) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(arg_1.b.ww))))) - arg_1.c.b.zw), -494f);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<f32>, 11>();
    global1 = array<vec2<f32>, 18>();
    var var_0 = _wgslsmith_div_f32(1384f, -981f);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-881f)));
    global3 = -75949i;
    let var_1 = -511f;
    let x = u_input.a;
    s_output = func_5(Struct_2(u_input.a, vec4<f32>(1f, -879f, _wgslsmith_f_op_f32(func_1()), 442f), Struct_1(_wgslsmith_f_op_f32(243f + 503f), _wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(~6090u, 11u)] * vec4<f32>(var_1, -284f, var_1, -190f)))), Struct_2(~(~func_3(Struct_3(Struct_1(-205f, vec4<f32>(var_1, 518f, var_1, var_1)), Struct_2(4294967295u, global2[_wgslsmith_index_u32(15186u, 11u)], Struct_1(267f, vec4<f32>(-1000f, var_1, var_1, var_1))), global1[_wgslsmith_index_u32(u_input.b, 18u)], true, global2[_wgslsmith_index_u32(u_input.a, 11u)]), 0i, 23278u)), vec4<f32>(576f, -602f, 2334f, -248f), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1 - 524f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, -260f, -384f, var_1) - vec4<f32>(-2962f, -862f, -160f, var_1)), global2[_wgslsmith_index_u32(~127732u, 11u)], true)))));
}

