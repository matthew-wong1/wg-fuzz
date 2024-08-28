struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec4<i32>,
    d: vec2<bool>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 30> = array<vec4<u32>, 30>(vec4<u32>(12543u, 0u, 15693u, 4731u), vec4<u32>(108395u, 1u, 368u, 4294967295u), vec4<u32>(56610u, 7570u, 22121u, 0u), vec4<u32>(564u, 0u, 9679u, 4294967295u), vec4<u32>(12376u, 4294967295u, 1u, 4294967295u), vec4<u32>(1u, 2014u, 62861u, 4294967295u), vec4<u32>(0u, 60866u, 30923u, 0u), vec4<u32>(0u, 21545u, 4221u, 1u), vec4<u32>(14814u, 8889u, 1902u, 24094u), vec4<u32>(6780u, 0u, 28267u, 4294967295u), vec4<u32>(122852u, 1u, 53043u, 60943u), vec4<u32>(32749u, 0u, 12718u, 62320u), vec4<u32>(55551u, 43437u, 4294967295u, 22254u), vec4<u32>(22642u, 104726u, 4294967295u, 21786u), vec4<u32>(17213u, 4294967295u, 0u, 4294967295u), vec4<u32>(0u, 6550u, 1u, 31757u), vec4<u32>(4294967295u, 36533u, 0u, 65264u), vec4<u32>(16380u, 4294967295u, 0u, 4294967295u), vec4<u32>(1u, 0u, 4294967295u, 1u), vec4<u32>(3452u, 0u, 0u, 21545u), vec4<u32>(102476u, 29917u, 1u, 5491u), vec4<u32>(4294967295u, 0u, 30425u, 46493u), vec4<u32>(30977u, 48087u, 21755u, 4294967295u), vec4<u32>(36982u, 0u, 27403u, 49837u), vec4<u32>(1u, 94324u, 0u, 0u), vec4<u32>(1u, 2650u, 21740u, 4294967295u), vec4<u32>(4294967295u, 95206u, 0u, 0u), vec4<u32>(0u, 48521u, 50651u, 63744u), vec4<u32>(0u, 1u, 16679u, 1034u), vec4<u32>(64980u, 0u, 39788u, 1u));

var<private> global1: array<i32, 17>;

var<private> global2: Struct_3 = Struct_3(false, 1i, vec4<i32>(1i, 9172i, 1i, 0i), vec2<bool>(true, true), 34849i);

var<private> global3: array<vec4<f32>, 14> = array<vec4<f32>, 14>(vec4<f32>(-974f, -424f, 1579f, 515f), vec4<f32>(1253f, 146f, 556f, 1082f), vec4<f32>(-1769f, -492f, -1649f, 1470f), vec4<f32>(1000f, -620f, 1016f, 493f), vec4<f32>(825f, 576f, 125f, 1000f), vec4<f32>(712f, 1170f, -113f, -636f), vec4<f32>(2008f, 914f, 1012f, 1643f), vec4<f32>(-155f, 1000f, 1420f, 520f), vec4<f32>(-844f, -1000f, 881f, 363f), vec4<f32>(-1489f, 840f, -388f, -287f), vec4<f32>(1195f, -339f, -1074f, -113f), vec4<f32>(1141f, 774f, -364f, -597f), vec4<f32>(-303f, 804f, -2028f, -111f), vec4<f32>(-716f, -399f, -1408f, -553f));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: vec3<i32>) -> i32 {
    var var_0 = -200f;
    var var_1 = 2147483647i;
    return -1i;
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: vec3<u32>) -> vec4<u32> {
    global3 = array<vec4<f32>, 14>();
    global3 = array<vec4<f32>, 14>();
    var var_0 = arg_1.a;
    let var_1 = arg_1;
    var var_2 = global2.c;
    return _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(var_1.a.a, ~vec4<u32>(8071u, var_0.a.x ^ 96354u, arg_0, min(17402u, var_0.a.x)), ~var_0.a), _wgslsmith_add_vec4_u32(vec4<u32>(~var_0.a.x, var_0.a.x & arg_1.c.a.x, ~var_1.a.a.x, ~40270u), ~vec4<u32>(var_1.a.a.x, 4294967295u, var_0.a.x, var_0.a.x)) & var_0.a);
}

fn func_3() -> u32 {
    global0 = array<vec4<u32>, 30>();
    let var_0 = global0[_wgslsmith_index_u32(~firstTrailingBit(~1u), 30u)];
    global2 = Struct_3(!(!(!global2.d.x)), global1[_wgslsmith_index_u32(firstTrailingBit(0u), 17u)], vec4<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(firstTrailingBit(1i), _wgslsmith_dot_vec2_i32(vec2<i32>(global2.c.x, global1[_wgslsmith_index_u32(1u, 17u)]), global2.c.yw), 1i), firstLeadingBit(-1i)), reverseBits(-2147483647i), 2147483647i, max(countOneBits(-global1[_wgslsmith_index_u32(var_0.x, 17u)]), ~1i)), global2.d, ~func_1(Struct_3(false, -10634i, vec4<i32>(-2147483647i, global2.b, global1[_wgslsmith_index_u32(0u, 17u)], global2.b), vec2<bool>(global2.d.x, false), -1i | global1[_wgslsmith_index_u32(var_0.x, 17u)]), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(668f, -358f, -2254f)), vec3<f32>(-861f, 861f, 1000f)), -global2.c.xyx));
    var var_1 = vec4<i32>(0i, 1i, -6360i, global2.e);
    var var_2 = vec2<i32>(-(~56526i), ~global2.b);
    return max(4294967295u, 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(func_2(~u_input.a ^ _wgslsmith_mult_u32(u_input.a, 33373u), Struct_2(Struct_1(global0[_wgslsmith_index_u32(21386u, 30u)], vec2<bool>(global2.d.x, global2.a)), func_1(Struct_3(global2.d.x, global1[_wgslsmith_index_u32(u_input.a, 17u)], vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 17u)], global1[_wgslsmith_index_u32(90975u, 17u)], 2147483647i, global2.b), global2.d, -11126i), vec3<f32>(-497f, -220f, 1117f), vec3<i32>(-7946i, global2.c.x, global2.b)), Struct_1(global0[_wgslsmith_index_u32(1u, 30u)], vec2<bool>(false, true))), ~(~vec3<u32>(25351u, 122218u, 24091u))), global2.d), global2.b, Struct_1(global0[_wgslsmith_index_u32(func_3(), 30u)] >> (~(~global0[_wgslsmith_index_u32(4294967295u, 30u)]) % vec4<u32>(32u)), global2.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(global2.c >> (reverseBits(var_0.c.a) % vec4<u32>(32u)), vec4<i32>(global2.c.x, var_0.b, global2.b, countOneBits(global1[_wgslsmith_index_u32(var_0.a.a.x, 17u)]))) ^ global2.c, vec4<f32>(-801f, 1f, _wgslsmith_f_op_f32(floor(612f)), 508f), global1[_wgslsmith_index_u32(var_0.c.a.x, 17u)]);
}

