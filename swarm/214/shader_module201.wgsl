struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 26>;

var<private> global1: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec2<f32>(144f, 1000f), 0i), Struct_1(vec2<f32>(-1000f, 146f), 2147483647i), Struct_1(vec2<f32>(-744f, 1110f), i32(-2147483648)), Struct_1(vec2<f32>(-2215f, -884f), 45073i), Struct_1(vec2<f32>(948f, -555f), 1i), Struct_1(vec2<f32>(405f, 1000f), 16831i), Struct_1(vec2<f32>(-1271f, 1089f), 1i), Struct_1(vec2<f32>(-720f, 133f), 2147483647i), Struct_1(vec2<f32>(393f, -249f), 44369i), Struct_1(vec2<f32>(1839f, -249f), 2147483647i), Struct_1(vec2<f32>(-200f, -322f), -4937i), Struct_1(vec2<f32>(1510f, 1042f), -37576i), Struct_1(vec2<f32>(-2096f, 1000f), 2147483647i), Struct_1(vec2<f32>(274f, -1465f), 45375i), Struct_1(vec2<f32>(-417f, 951f), 2147483647i), Struct_1(vec2<f32>(214f, 1625f), -4584i), Struct_1(vec2<f32>(-207f, -1000f), 0i));

var<private> global2: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(vec4<f32>(-1055f, 1649f, -1294f, -1945f), false), Struct_2(vec4<f32>(1400f, 1135f, -484f, 793f), false), Struct_2(vec4<f32>(-970f, 1099f, 812f, 463f), true), Struct_2(vec4<f32>(-1148f, 230f, 288f, 1530f), false), Struct_2(vec4<f32>(471f, 1842f, -358f, 857f), false), Struct_2(vec4<f32>(991f, -1457f, 107f, -1000f), false), Struct_2(vec4<f32>(544f, 182f, 2068f, -135f), false), Struct_2(vec4<f32>(383f, 2574f, -391f, -170f), false), Struct_2(vec4<f32>(634f, -747f, 1248f, -1487f), true), Struct_2(vec4<f32>(-2007f, -547f, 749f, 1088f), true), Struct_2(vec4<f32>(806f, -1318f, 1177f, 458f), false), Struct_2(vec4<f32>(-515f, -1724f, -1049f, 1859f), true), Struct_2(vec4<f32>(-1528f, 680f, 254f, -1229f), false), Struct_2(vec4<f32>(1275f, 301f, 477f, -1000f), false), Struct_2(vec4<f32>(-1000f, -1584f, -641f, -1583f), true), Struct_2(vec4<f32>(493f, 664f, 1321f, -739f), true), Struct_2(vec4<f32>(-1848f, -828f, -1000f, -2382f), true), Struct_2(vec4<f32>(1094f, 619f, -588f, -675f), true), Struct_2(vec4<f32>(-368f, 107f, 250f, -146f), false), Struct_2(vec4<f32>(-684f, 677f, 1756f, -1000f), true), Struct_2(vec4<f32>(373f, -1249f, -1120f, -634f), false), Struct_2(vec4<f32>(-809f, -1224f, 749f, -1076f), true), Struct_2(vec4<f32>(-242f, 293f, 405f, -254f), true), Struct_2(vec4<f32>(-574f, -1243f, -2120f, -1172f), true), Struct_2(vec4<f32>(-116f, -2133f, -230f, -138f), true), Struct_2(vec4<f32>(-740f, -1961f, 128f, -1597f), true), Struct_2(vec4<f32>(411f, 169f, 1633f, -2044f), true), Struct_2(vec4<f32>(238f, 1040f, 254f, 260f), false));

var<private> global3: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec2<f32>(735f, 562f), 0i), Struct_1(vec2<f32>(1647f, -283f), -41407i));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: Struct_2) -> bool {
    let var_0 = arg_2.b;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2.a + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(369f, arg_2.a.x, 261f, arg_2.a.x), vec4<f32>(1260f, arg_2.a.x, arg_2.a.x, -1789f)) * vec4<f32>(arg_2.a.x, -1000f, -2249f, arg_2.a.x)) + arg_2.a)));
    global0 = array<vec2<i32>, 26>();
    let var_2 = true;
    return any(select(!vec3<bool>(1u <= arg_1.x, any(vec4<bool>(true, arg_0.x, arg_2.b, var_0)), all(vec2<bool>(arg_2.b, var_2))), select(!vec3<bool>(arg_2.b, true, var_2), select(!vec3<bool>(true, var_0, var_2), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, false)), var_0), false));
}

fn func_3() -> vec4<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f))), i32(-1i) * -u_input.e);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1549f * _wgslsmith_f_op_f32(select(-2064f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-150f * var_0.a.x) - _wgslsmith_f_op_f32(var_0.a.x - 942f)), !all(vec2<bool>(true, false))))));
    let var_2 = 0i;
    let var_3 = Struct_1(vec2<f32>(-213f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-582f, _wgslsmith_f_op_f32(-669f - var_0.a.x))))), _wgslsmith_sub_i32(abs(u_input.a) >> (~1u % 32u), -var_2));
    var var_4 = global2[_wgslsmith_index_u32(u_input.b, 28u)];
    return ~(~vec4<u32>(39309u, u_input.d, u_input.d, ~u_input.b)) >> (firstLeadingBit(abs(select(~vec4<u32>(40596u, 4294967295u, 4294967295u, u_input.b), select(vec4<u32>(8340u, 1u, u_input.d, u_input.d), vec4<u32>(u_input.b, u_input.b, 33083u, 93029u), var_4.b), !vec4<bool>(false, false, var_4.b, true)))) % vec4<u32>(32u));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: vec4<f32>) -> Struct_2 {
    global2 = array<Struct_2, 28>();
    global3 = array<Struct_1, 2>();
    var var_0 = vec4<u32>(u_input.d, abs(4294967295u), 18678u, min(22463u, ~_wgslsmith_dot_vec4_u32(func_3(), vec4<u32>(u_input.d, 3019u, u_input.d, u_input.b))));
    let var_1 = vec2<bool>(true, true);
    global2 = array<Struct_2, 28>();
    return Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2 * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2 + arg_2)))), var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 28>();
    let var_0 = !select(vec4<bool>(_wgslsmith_sub_i32(u_input.c.x, 0i) > (i32(-1i) * -41193i), func_1(vec2<bool>(false, false), min(vec2<u32>(71126u, 67821u), vec2<u32>(21918u, u_input.b)), Struct_2(vec4<f32>(-1398f, 224f, -540f, 427f), false)), true, false), vec4<bool>(true, !func_1(vec2<bool>(false, true), vec2<u32>(u_input.b, 0u), global2[_wgslsmith_index_u32(u_input.d, 28u)]), false, true), func_1(select(vec2<bool>(false, true), vec2<bool>(true, true), true), abs(vec2<u32>(0u, u_input.b)) | ~vec2<u32>(4369u, u_input.b), func_2(_wgslsmith_f_op_f32(step(335f, -668f)), u_input.c.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(179f, 253f, 864f, -1000f)))));
    var var_1 = var_0;
    global0 = array<vec2<i32>, 26>();
    var_1 = var_0;
    var var_2 = u_input.d;
    let var_3 = 1229u;
    let var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1287f, 315f, 670f, 468f), vec4<f32>(821f, -216f, 457f, 412f)) * vec4<f32>(-271f, -120f, 1794f, -1109f)), vec4<f32>(1000f, -309f, -633f, -981f))))), var_0.x | !var_1.x);
    var var_5 = vec2<bool>(!all(!vec4<bool>(true, var_0.x, var_1.x, false)), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(353f, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_4.a.x, var_4.a.x, 559f, 1f))), var_4.a.x, ~(~4294967295u), u_input.c.x);
}

