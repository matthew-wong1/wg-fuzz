struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: vec4<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25> = array<f32, 25>(1734f, 613f, 964f, 2640f, 3206f, -482f, -399f, 679f, -932f, 1047f, -1405f, 145f, -300f, 1000f, -1000f, 901f, -926f, -1326f, 666f, 310f, -1960f, -1290f, -464f, -2033f, -191f);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_4) -> vec2<i32> {
    global0 = array<f32, 25>();
    var var_0 = !vec4<bool>(true, u_input.e.x > ~1u, true, all(!select(vec2<bool>(true, false), vec2<bool>(false, false), false)));
    let var_1 = arg_2.b;
    var var_2 = vec4<bool>(var_0.x, var_0.x & ((arg_2.a == 46842u) & true), var_0.x, any(var_0.wyw));
    var var_3 = var_1.a.d.wyy;
    return -_wgslsmith_add_vec2_i32(~arg_0.b.zz, arg_0.b.yz);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: bool) -> vec2<i32> {
    var var_0 = !select(vec3<bool>(arg_0.d, select(any(vec2<bool>(true, false)), arg_0.d | true, false), false), vec3<bool>(true, arg_0.d, select(!arg_0.d, false, true)), true);
    let var_1 = !(!vec4<bool>(var_0.x, false, _wgslsmith_mod_i32(u_input.d, arg_0.b.x) != u_input.c, var_0.x));
    return -arg_0.b;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 25u)]), ~abs(vec3<i32>(-35175i, -2147483647i, -2147483647i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(~u_input.e.x, 25u)])), _wgslsmith_f_op_f32(f32(-1f) * -271f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(336f, 1352f, 124f, global0[_wgslsmith_index_u32(u_input.e.x, 25u)]))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.e.x, 25u)], -129f, global0[_wgslsmith_index_u32(u_input.a, 25u)], -144f) - vec4<f32>(global0[_wgslsmith_index_u32(52534u, 25u)], -3043f, global0[_wgslsmith_index_u32(693u, 25u)], global0[_wgslsmith_index_u32(1u, 25u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-417f * global0[_wgslsmith_index_u32(u_input.a, 25u)])))), func_4(Struct_3(Struct_1(global0[_wgslsmith_index_u32(0u, 25u)], ~vec3<i32>(-1i, -31519i, -2147483647i), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.e.x, 25u)]), _wgslsmith_div_vec4_f32(vec4<f32>(-1279f, global0[_wgslsmith_index_u32(19826u, 25u)], global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)]), vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 25u)], global0[_wgslsmith_index_u32(u_input.e.x, 25u)], global0[_wgslsmith_index_u32(65697u, 25u)], 718f)), _wgslsmith_f_op_f32(f32(-1f) * -1164f)), _wgslsmith_div_vec2_i32(func_3(Struct_1(-784f, vec3<i32>(u_input.b, u_input.d, 2147483647i), -537f, vec4<f32>(global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(23668u, 25u)], -1425f, global0[_wgslsmith_index_u32(u_input.e.x, 25u)]), -2068f), vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 25u)], 172f), Struct_4(0u, Struct_2(Struct_1(global0[_wgslsmith_index_u32(0u, 25u)], vec3<i32>(u_input.d, u_input.c, 56304i), global0[_wgslsmith_index_u32(4294967295u, 25u)], vec4<f32>(-883f, 114f, global0[_wgslsmith_index_u32(1u, 25u)], -1501f), global0[_wgslsmith_index_u32(u_input.a, 25u)]), Struct_1(global0[_wgslsmith_index_u32(u_input.a, 25u)], vec3<i32>(u_input.b, u_input.c, u_input.b), -802f, vec4<f32>(global0[_wgslsmith_index_u32(14595u, 25u)], 444f, 588f, global0[_wgslsmith_index_u32(u_input.e.x, 25u)]), 809f), Struct_1(866f, vec3<i32>(14121i, u_input.b, u_input.c), -803f, vec4<f32>(-469f, global0[_wgslsmith_index_u32(u_input.a, 25u)], global0[_wgslsmith_index_u32(u_input.a, 25u)], -1470f), global0[_wgslsmith_index_u32(50962u, 25u)]), vec4<i32>(-24463i, -6774i, -73225i, u_input.c)))), ~vec2<i32>(-19276i, u_input.c)), Struct_2(Struct_1(-577f, vec3<i32>(4420i, u_input.c, u_input.b), 515f, vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 25u)], -508f, -965f, 2056f), global0[_wgslsmith_index_u32(71276u, 25u)]), Struct_1(462f, vec3<i32>(u_input.b, u_input.d, -16687i), -1412f, vec4<f32>(-2070f, -310f, 1204f, -122f), 1139f), Struct_1(global0[_wgslsmith_index_u32(u_input.a, 25u)], vec3<i32>(u_input.c, 2147483647i, u_input.c), 1513f, vec4<f32>(866f, 1000f, global0[_wgslsmith_index_u32(u_input.a, 25u)], -1186f), -792f), ~vec4<i32>(1i, 17936i, 1i, -2147483647i)), true), u_input.e, true), Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(u_input.a, 25u)])) + global0[_wgslsmith_index_u32(u_input.a ^ u_input.a, 25u)]), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-9768i, u_input.c), vec2<i32>(u_input.d, -2147483647i)), -u_input.b, abs(u_input.b)), global0[_wgslsmith_index_u32(~1u, 25u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-361f, global0[_wgslsmith_index_u32(4294967295u, 25u)], -1589f, -1000f))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0[_wgslsmith_index_u32(u_input.e.x, 25u)], -263f, global0[_wgslsmith_index_u32(u_input.e.x, 25u)], global0[_wgslsmith_index_u32(u_input.e.x, 25u)]), vec4<f32>(global0[_wgslsmith_index_u32(34195u, 25u)], -1000f, global0[_wgslsmith_index_u32(u_input.a, 25u)], 370f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(1u, 25u)])) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 25u)] - global0[_wgslsmith_index_u32(u_input.a, 25u)]))), Struct_1(_wgslsmith_f_op_f32(-1978f * global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.a, 20664u), vec4<u32>(u_input.a, 0u, u_input.e.x, 0u)), 25u)]), _wgslsmith_clamp_vec3_i32(select(vec3<i32>(6165i, u_input.d, 52872i), vec3<i32>(53167i, u_input.d, u_input.c), true), vec3<i32>(u_input.b, u_input.d, 44425i), -vec3<i32>(u_input.b, u_input.d, u_input.d)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a | 19596u, 25u)] + 575f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 25u)], -374f, 1000f, 1111f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(8731u, 25u)], global0[_wgslsmith_index_u32(u_input.e.x, 25u)], global0[_wgslsmith_index_u32(1u, 25u)], -616f))), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(min(u_input.a, u_input.a), 25u)], global0[_wgslsmith_index_u32(min(69361u, u_input.e.x), 25u)])), Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.e.x, u_input.e.x << (37569u % 32u)), 25u)], vec3<i32>(~u_input.c, -65032i, -29756i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(103446u, 25u)], -1231f)) * global0[_wgslsmith_index_u32(u_input.e.x ^ u_input.e.x, 25u)]), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 25u)], global0[_wgslsmith_index_u32(16205u, 25u)], global0[_wgslsmith_index_u32(1u, 25u)], 428f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1632f, global0[_wgslsmith_index_u32(26037u, 25u)], global0[_wgslsmith_index_u32(83141u, 25u)], global0[_wgslsmith_index_u32(u_input.e.x, 25u)]) - vec4<f32>(global0[_wgslsmith_index_u32(u_input.e.x, 25u)], -1166f, 711f, global0[_wgslsmith_index_u32(u_input.a, 25u)])), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(1585f))))), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, -51837i, -1i, u_input.c), vec4<i32>(_wgslsmith_mult_i32(10388i, 1i), u_input.d, _wgslsmith_div_i32(-2147483647i, 24257i), i32(-1i) * -7636i), abs(~vec4<i32>(u_input.d, 23883i, u_input.b, u_input.c)))), false);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.c.b.d.yxy - var_0.a.d.wwy)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(662f, global0[_wgslsmith_index_u32(56007u, 25u)], 1718f) - var_0.c.a.d.xzw))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(1u, 25u)], var_0.c.a.e)))))));
    var var_2 = vec3<u32>(abs(reverseBits(u_input.e.x)), u_input.e.x, countOneBits(39581u << (1u % 32u)));
    var var_3 = Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.x - -578f)))), -((vec3<i32>(-21242i, -2147483647i, u_input.b) ^ vec3<i32>(1i, u_input.c, var_0.a.b.x)) >> ((vec3<u32>(4294967295u, 25753u, 4294967295u) ^ vec3<u32>(u_input.a, u_input.a, u_input.e.x)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -874f)), vec4<f32>(_wgslsmith_f_op_f32(ceil(531f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))), -1210f, _wgslsmith_f_op_f32(-152f + _wgslsmith_f_op_f32(sign(-1000f)))), var_1.x), _wgslsmith_mult_vec2_i32(var_0.c.a.b.xy, vec2<i32>(_wgslsmith_dot_vec2_i32(-var_0.b, func_4(Struct_3(var_0.a, var_0.b, Struct_2(var_0.a, Struct_1(global0[_wgslsmith_index_u32(var_2.x, 25u)], vec3<i32>(u_input.c, var_0.c.c.b.x, var_0.a.b.x), var_1.x, vec4<f32>(-1814f, 1000f, var_1.x, 269f), var_1.x), Struct_1(var_1.x, vec3<i32>(10990i, var_0.b.x, -43176i), var_1.x, var_0.a.d, var_1.x), var_0.c.d), var_0.d), u_input.e, true)), (i32(-1i) * -2147483647i) << (~var_2.x % 32u))), var_0.c, var_0.d);
    let var_4 = 4294967295u;
    return var_3.c;
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    let var_0 = arg_0.c;
    global0 = array<f32, 25>();
    let var_1 = vec3<bool>(arg_0.d, arg_0.d, arg_0.d);
    global0 = array<f32, 25>();
    var var_2 = vec3<i32>(-abs(~(-u_input.b)), u_input.c & 27325i, _wgslsmith_clamp_i32(~_wgslsmith_add_i32(u_input.b, -var_0.b.b.x), max(-2147483647i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(arg_0.a.b.yz, var_0.d.yy), ~22466i, 1i)), arg_0.a.b.x));
    return func_2().b;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_4, arg_2: f32) -> Struct_3 {
    let var_0 = _wgslsmith_clamp_u32(~arg_1.a, arg_1.a, ~(~firstTrailingBit(u_input.a)));
    let var_1 = func_2();
    var var_2 = Struct_1(func_2().a.a, ~select(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, arg_0.d.x, arg_0.a.b.x), vec3<i32>(arg_1.b.d.x, arg_0.d.x, 61763i)), -(~var_1.c.b), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false))), 302f, arg_0.a.d, _wgslsmith_f_op_f32(max(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.a + _wgslsmith_f_op_f32(sign(-1557f))) * var_1.c.d.x))));
    let var_3 = ~min(abs(_wgslsmith_mod_u32(~9214u, arg_1.a)), _wgslsmith_clamp_u32(1u, 1u, ~(~u_input.a)));
    global0 = array<f32, 25>();
    return Struct_3(arg_1.b.b, arg_0.a.b.yy, Struct_2(arg_1.b.b, func_2().b, Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.c))), vec3<i32>(-24319i, arg_0.c.b.x, _wgslsmith_dot_vec3_i32(var_1.b.b, vec3<i32>(u_input.b, 0i, 22279i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1707f) + _wgslsmith_f_op_f32(668f - 1000f)), arg_1.b.b.d, -673f), vec4<i32>(-_wgslsmith_clamp_i32(2147483647i, u_input.b, var_2.b.x), arg_0.d.x, reverseBits(-30650i ^ u_input.b), -_wgslsmith_div_i32(u_input.b, arg_1.b.c.b.x))), !(true || any(vec3<bool>(true, true, false))) || any(vec3<bool>(true, true, true)));
}

fn func_1(arg_0: Struct_1) -> i32 {
    global0 = array<f32, 25>();
    let var_0 = !(select(any(vec3<bool>(false, false, true)), true, false) | (_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-258f - 136f), arg_0.c, all(vec3<bool>(true, true, true)))) < 124f));
    var var_1 = func_6(Struct_2(func_5(Struct_3(Struct_1(-662f, vec3<i32>(arg_0.b.x, u_input.d, -2291i), -2743f, vec4<f32>(-165f, 1310f, global0[_wgslsmith_index_u32(u_input.e.x, 25u)], 454f), global0[_wgslsmith_index_u32(4294967295u, 25u)]), -vec2<i32>(-41386i, arg_0.b.x), func_2(), !var_0)), arg_0, func_5(Struct_3(arg_0, arg_0.b.zx, Struct_2(Struct_1(global0[_wgslsmith_index_u32(13867u, 25u)], arg_0.b, 1901f, vec4<f32>(-210f, global0[_wgslsmith_index_u32(u_input.a, 25u)], -513f, -222f), -1747f), Struct_1(953f, vec3<i32>(-21477i, u_input.d, arg_0.b.x), 481f, arg_0.d, global0[_wgslsmith_index_u32(4294967295u, 25u)]), Struct_1(global0[_wgslsmith_index_u32(u_input.e.x, 25u)], arg_0.b, -1143f, arg_0.d, -1000f), vec4<i32>(1i, 69802i, -34348i, -2147483647i)), !var_0)), vec4<i32>(arg_0.b.x, ~_wgslsmith_div_i32(0i, 2862i), abs(arg_0.b.x), ~_wgslsmith_mult_i32(u_input.c, u_input.d))), Struct_4(1u, Struct_2(arg_0, arg_0, arg_0, vec4<i32>(countOneBits(arg_0.b.x), abs(u_input.c), _wgslsmith_add_i32(-38213i, -43348i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 2147483647i), arg_0.b.yy)))), arg_0.a);
    var var_2 = Struct_3(func_5(func_6(var_1.c, Struct_4(u_input.a >> (u_input.e.x % 32u), var_1.c), -309f)), firstTrailingBit(var_1.a.b.yx), func_6(func_2(), Struct_4(98745u, Struct_2(var_1.c.b, func_2().b, var_1.c.a, _wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.b, -39262i, arg_0.b.x), var_1.c.d))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.a + global0[_wgslsmith_index_u32(u_input.e.x, 25u)]))))).c, var_0 & func_6(func_6(func_2(), Struct_4(0u, Struct_2(var_1.c.b, Struct_1(-1239f, vec3<i32>(arg_0.b.x, var_1.b.x, var_1.c.b.b.x), var_1.a.a, vec4<f32>(var_1.a.e, 305f, var_1.a.e, var_1.c.c.a), -1364f), arg_0, vec4<i32>(-30627i, var_1.c.c.b.x, -2149i, arg_0.b.x))), 1183f).c, Struct_4(~938u, var_1.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(u_input.a, 25u)], -517f)) - _wgslsmith_f_op_f32(round(927f)))).d);
    let var_3 = func_6(var_2.c, Struct_4(_wgslsmith_div_u32(0u, _wgslsmith_dot_vec2_u32(~u_input.e.xx, firstLeadingBit(vec2<u32>(u_input.a, u_input.e.x)))), func_6(func_6(func_6(var_1.c, Struct_4(u_input.a, Struct_2(Struct_1(-188f, vec3<i32>(0i, var_2.a.b.x, -32629i), arg_0.a, vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 25u)], -451f, 1566f, -318f), var_1.c.b.e), var_2.c.c, Struct_1(global0[_wgslsmith_index_u32(u_input.e.x, 25u)], vec3<i32>(var_1.b.x, -1i, 0i), global0[_wgslsmith_index_u32(u_input.a, 25u)], vec4<f32>(var_2.c.c.a, -1268f, 150f, arg_0.c), -747f), var_1.c.d)), -740f).c, Struct_4(u_input.a, var_1.c), _wgslsmith_div_f32(724f, arg_0.d.x)).c, Struct_4(u_input.a, var_1.c), _wgslsmith_div_f32(1471f, var_2.a.a)).c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(Struct_2(Struct_1(1630f, var_2.a.b, global0[_wgslsmith_index_u32(u_input.e.x, 25u)], vec4<f32>(816f, arg_0.e, global0[_wgslsmith_index_u32(0u, 25u)], -1000f), 676f), Struct_1(global0[_wgslsmith_index_u32(u_input.e.x, 25u)], vec3<i32>(-47005i, 21627i, arg_0.b.x), global0[_wgslsmith_index_u32(4294967295u, 25u)], vec4<f32>(-1238f, var_2.a.c, global0[_wgslsmith_index_u32(8560u, 25u)], 1459f), -973f), arg_0, vec4<i32>(var_1.a.b.x, var_2.a.b.x, u_input.d, var_2.b.x)), Struct_4(1u, Struct_2(arg_0, arg_0, Struct_1(var_2.c.a.a, var_1.c.d.www, var_1.c.a.d.x, var_2.c.c.d, var_2.c.c.a), vec4<i32>(-41777i, var_1.c.a.b.x, 23134i, -32532i))), 549f).c.b.c - var_2.a.a))).d;
    return arg_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(-267f, select(vec3<i32>(u_input.c, 51550i, 0i), vec3<i32>(u_input.c, i32(-1i) * -17332i, func_1(Struct_1(global0[_wgslsmith_index_u32(79301u, 25u)], vec3<i32>(7709i, -2147483647i, u_input.b), global0[_wgslsmith_index_u32(u_input.a, 25u)], vec4<f32>(-1861f, 1000f, -335f, 1209f), -845f))), true), -390f, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-606f, global0[_wgslsmith_index_u32(25148u, 25u)], global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(0u, 25u)]) + vec4<f32>(global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(u_input.e.x, 25u)], 1677f, -141f)))))), -2458f), func_6(Struct_2(Struct_1(_wgslsmith_f_op_f32(-285f - global0[_wgslsmith_index_u32(12807u, 25u)]), -vec3<i32>(u_input.c, -1519i, u_input.b), -370f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1043f, global0[_wgslsmith_index_u32(0u, 25u)], -1330f, 1038f)), _wgslsmith_f_op_f32(558f - global0[_wgslsmith_index_u32(u_input.a, 25u)])), Struct_1(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(30662u, 25u)], -1000f), -vec3<i32>(19285i, u_input.b, 1i), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.e.x, 25u)]), vec4<f32>(-1783f, -700f, -546f, global0[_wgslsmith_index_u32(u_input.e.x, 25u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(3545u, 25u)])), func_6(func_2(), Struct_4(0u, Struct_2(Struct_1(985f, vec3<i32>(38572i, u_input.b, u_input.d), global0[_wgslsmith_index_u32(4294967295u, 25u)], vec4<f32>(global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(53488u, 25u)], global0[_wgslsmith_index_u32(u_input.e.x, 25u)], global0[_wgslsmith_index_u32(u_input.e.x, 25u)]), global0[_wgslsmith_index_u32(u_input.a, 25u)]), Struct_1(global0[_wgslsmith_index_u32(u_input.a, 25u)], vec3<i32>(u_input.c, u_input.b, -2147483647i), -3640f, vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 25u)], 2076f, global0[_wgslsmith_index_u32(37074u, 25u)], global0[_wgslsmith_index_u32(32427u, 25u)]), global0[_wgslsmith_index_u32(u_input.a, 25u)]), Struct_1(261f, vec3<i32>(-7572i, u_input.b, 1i), global0[_wgslsmith_index_u32(u_input.e.x, 25u)], vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 25u)], global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(u_input.e.x, 25u)], global0[_wgslsmith_index_u32(u_input.e.x, 25u)]), global0[_wgslsmith_index_u32(1u, 25u)]), vec4<i32>(9597i, -2147483647i, 5164i, u_input.c))), global0[_wgslsmith_index_u32(select(u_input.e.x, 11065u, true), 25u)]).a, ~(-vec4<i32>(2147483647i, u_input.c, u_input.b, 7978i))), Struct_4(u_input.a ^ ~51741u, func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(27944u, 25u)]))))).c.b, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.e.x, u_input.a), 25u)], _wgslsmith_div_f32(-366f, global0[_wgslsmith_index_u32(48150u, 25u)]))), vec3<i32>(~1763i, 0i, 19758i), 1009f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(334f, 101f, global0[_wgslsmith_index_u32(u_input.a, 25u)], -602f), vec4<f32>(global0[_wgslsmith_index_u32(u_input.e.x, 25u)], -1000f, global0[_wgslsmith_index_u32(32120u, 25u)], -1791f))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0[_wgslsmith_index_u32(u_input.e.x, 25u)], global0[_wgslsmith_index_u32(u_input.e.x, 25u)], global0[_wgslsmith_index_u32(u_input.a, 25u)], -329f), vec4<f32>(157f, 513f, -500f, 1000f)))), vec4<f32>(974f, -997f, _wgslsmith_f_op_f32(max(-1564f, 334f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.e.x, 25u)]))), -2013f), _wgslsmith_sub_vec4_i32(vec4<i32>(func_3(func_2().a, _wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(16186u, 25u)], global0[_wgslsmith_index_u32(37104u, 25u)]), vec2<f32>(377f, global0[_wgslsmith_index_u32(1u, 25u)])), Struct_4(4294967295u, Struct_2(Struct_1(1000f, vec3<i32>(u_input.b, 4949i, 2147483647i), -749f, vec4<f32>(1424f, 477f, -486f, 141f), -884f), Struct_1(208f, vec3<i32>(-12946i, 18377i, 14525i), global0[_wgslsmith_index_u32(31652u, 25u)], vec4<f32>(global0[_wgslsmith_index_u32(39956u, 25u)], global0[_wgslsmith_index_u32(u_input.e.x, 25u)], 119f, global0[_wgslsmith_index_u32(59327u, 25u)]), global0[_wgslsmith_index_u32(u_input.a, 25u)]), Struct_1(global0[_wgslsmith_index_u32(71847u, 25u)], vec3<i32>(u_input.d, 1i, -34099i), -319f, vec4<f32>(global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(u_input.a, 25u)], 290f, global0[_wgslsmith_index_u32(24262u, 25u)]), 329f), vec4<i32>(u_input.d, u_input.b, -12344i, u_input.d)))).x, func_5(Struct_3(Struct_1(170f, vec3<i32>(2147483647i, 0i, u_input.b), global0[_wgslsmith_index_u32(u_input.e.x, 25u)], vec4<f32>(638f, global0[_wgslsmith_index_u32(0u, 25u)], 292f, -877f), global0[_wgslsmith_index_u32(u_input.e.x, 25u)]), vec2<i32>(47918i, -1i), Struct_2(Struct_1(-1384f, vec3<i32>(-2147483647i, u_input.c, -9557i), global0[_wgslsmith_index_u32(6086u, 25u)], vec4<f32>(1582f, 1154f, global0[_wgslsmith_index_u32(u_input.e.x, 25u)], global0[_wgslsmith_index_u32(u_input.a, 25u)]), -107f), Struct_1(global0[_wgslsmith_index_u32(u_input.e.x, 25u)], vec3<i32>(0i, u_input.b, u_input.d), global0[_wgslsmith_index_u32(u_input.a, 25u)], vec4<f32>(681f, global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(38645u, 25u)], global0[_wgslsmith_index_u32(88124u, 25u)]), -1103f), Struct_1(-976f, vec3<i32>(u_input.b, u_input.d, u_input.d), -407f, vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 25u)], global0[_wgslsmith_index_u32(61419u, 25u)], global0[_wgslsmith_index_u32(5243u, 25u)], global0[_wgslsmith_index_u32(u_input.e.x, 25u)]), global0[_wgslsmith_index_u32(u_input.e.x, 25u)]), vec4<i32>(38015i, 27314i, 1i, u_input.d)), false)).b.x << (0u % 32u), ~func_3(Struct_1(global0[_wgslsmith_index_u32(64786u, 25u)], vec3<i32>(u_input.c, u_input.d, 45667i), global0[_wgslsmith_index_u32(0u, 25u)], vec4<f32>(-881f, global0[_wgslsmith_index_u32(u_input.e.x, 25u)], global0[_wgslsmith_index_u32(153113u, 25u)], -219f), global0[_wgslsmith_index_u32(4294967295u, 25u)]), vec2<f32>(-1060f, global0[_wgslsmith_index_u32(10031u, 25u)]), Struct_4(4294967295u, Struct_2(Struct_1(-1000f, vec3<i32>(u_input.c, u_input.b, u_input.d), global0[_wgslsmith_index_u32(5115u, 25u)], vec4<f32>(-543f, global0[_wgslsmith_index_u32(u_input.a, 25u)], 384f, global0[_wgslsmith_index_u32(18400u, 25u)]), 835f), Struct_1(1247f, vec3<i32>(u_input.b, u_input.d, 10295i), 886f, vec4<f32>(-1286f, -354f, -528f, global0[_wgslsmith_index_u32(u_input.a, 25u)]), -412f), Struct_1(1158f, vec3<i32>(2147483647i, u_input.b, u_input.d), global0[_wgslsmith_index_u32(u_input.a, 25u)], vec4<f32>(173f, -1128f, 335f, global0[_wgslsmith_index_u32(u_input.a, 25u)]), -1000f), vec4<i32>(-2147483647i, u_input.c, 2147483647i, u_input.c)))).x, 1i), countOneBits(vec4<i32>(-1i) * -vec4<i32>(-55224i, -2147483647i, -1i, 2147483647i))));
    var var_1 = func_5(Struct_3(var_0.c, firstLeadingBit(var_0.d.zx) & firstLeadingBit(var_0.d.wy), func_6(Struct_2(var_0.c, Struct_1(-1640f, vec3<i32>(0i, var_0.b.b.x, var_0.d.x), -1263f, var_0.a.d, 2461f), var_0.c, _wgslsmith_mult_vec4_i32(vec4<i32>(-1829i, 2147483647i, -25426i, 2147483647i), vec4<i32>(u_input.d, 0i, 24678i, -4722i))), Struct_4(~u_input.a, func_2()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.e.x, 25u)] + global0[_wgslsmith_index_u32(u_input.a, 25u)]) + 222f)).c, firstTrailingBit(~u_input.e.x) > ~u_input.a)).d.xyw;
    let var_2 = false;
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(max(u_input.e.x, u_input.a), 25u)]), _wgslsmith_f_op_f32(f32(-1f) * -329f)) + _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-2606f * _wgslsmith_f_op_f32(-var_1.x)))), 260f);
    let var_4 = firstTrailingBit(_wgslsmith_mult_i32(reverseBits(~(0i & var_0.d.x)), _wgslsmith_div_i32(firstLeadingBit(reverseBits(23720i)), func_5(Struct_3(var_0.b, var_0.c.b.xy, Struct_2(var_0.c, Struct_1(var_3.x, var_0.a.b, 511f, vec4<f32>(var_0.a.c, -582f, 244f, -412f), -1362f), Struct_1(-827f, var_0.c.b, var_1.x, vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 25u)], 1000f, 1305f, var_1.x), var_3.x), var_0.d), false)).b.x)));
    var var_5 = max(reverseBits(firstTrailingBit(select(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(24291u, u_input.a, u_input.a)), _wgslsmith_add_vec3_u32(u_input.e, u_input.e), select(vec3<bool>(var_2, false, var_2), vec3<bool>(true, true, true), false)))), _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(14190u, 0u, ~u_input.e.x), vec3<u32>(76475u, 14852u << (u_input.e.x % 32u), ~4294967295u)), ~_wgslsmith_clamp_vec3_u32(select(vec3<u32>(5480u, 0u, 4294967295u), vec3<u32>(u_input.e.x, 25205u, u_input.a), var_2), ~vec3<u32>(0u, 1u, 14691u), vec3<u32>(4294967295u, u_input.e.x, u_input.a) & vec3<u32>(4294967295u, 4294967295u, u_input.e.x))));
    var_0 = func_6(func_6(func_2(), Struct_4(0u, func_6(func_6(Struct_2(var_0.b, Struct_1(var_0.a.a, vec3<i32>(var_4, 9487i, -34470i), 1000f, var_0.c.d, -959f), var_0.c, var_0.d), Struct_4(14367u, Struct_2(var_0.b, Struct_1(var_1.x, vec3<i32>(var_0.a.b.x, -2147483647i, var_4), 145f, vec4<f32>(110f, var_1.x, var_1.x, var_0.b.a), -605f), var_0.c, vec4<i32>(-35495i, 2147483647i, -44874i, u_input.b))), global0[_wgslsmith_index_u32(4294967295u, 25u)]).c, Struct_4(13547u, Struct_2(Struct_1(var_3.x, vec3<i32>(2147483647i, var_0.c.b.x, var_0.a.b.x), var_1.x, var_0.b.d, 1000f), var_0.b, var_0.b, vec4<i32>(1i, var_0.c.b.x, var_0.d.x, 2147483647i))), 887f).c), var_1.x).c, Struct_4(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), _wgslsmith_add_vec2_u32(vec2<u32>(5009u, var_5.x), u_input.e.xy))), func_6(Struct_2(Struct_1(-145f, vec3<i32>(-48879i, var_4, u_input.d), 1000f, var_0.c.d, 2582f), func_5(Struct_3(var_0.a, vec2<i32>(var_4, var_4), Struct_2(Struct_1(global0[_wgslsmith_index_u32(var_5.x, 25u)], var_0.c.b, -1006f, var_0.b.d, global0[_wgslsmith_index_u32(4294967295u, 25u)]), Struct_1(var_0.b.e, var_0.d.zww, 1000f, var_0.b.d, -140f), Struct_1(var_1.x, var_0.a.b, 685f, vec4<f32>(-634f, var_0.b.e, -205f, var_1.x), 564f), vec4<i32>(var_0.d.x, var_0.a.b.x, var_0.b.b.x, u_input.b)), true)), var_0.a, firstTrailingBit(vec4<i32>(u_input.c, 1i, -1i, u_input.b))), Struct_4(firstTrailingBit(var_5.x), func_2()), global0[_wgslsmith_index_u32(4294967295u, 25u)]).c), global0[_wgslsmith_index_u32(52943u, 25u)]).c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)), var_1.x)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-260f)), _wgslsmith_f_op_f32(var_1.x - 984f), var_2))), vec2<f32>(_wgslsmith_div_f32(var_0.c.d.x, _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.c.c, var_1.x), 1f)), _wgslsmith_f_op_f32(-689f * var_3.x)));
}

