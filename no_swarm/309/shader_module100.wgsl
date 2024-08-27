struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
    d: vec2<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<bool, 10> = array<bool, 10>(false, true, true, true, true, true, false, true, false, false);

var<private> global2: array<f32, 29> = array<f32, 29>(675f, 521f, -205f, 350f, 1113f, 1854f, 1528f, 511f, 385f, 368f, -1440f, -568f, 516f, -692f, -274f, 219f, -440f, 1000f, 748f, -514f, -1577f, -1364f, 293f, 721f, -847f, 552f, 751f, -887f, -525f);

var<private> global3: array<vec2<bool>, 3>;

var<private> global4: array<vec3<bool>, 18>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> u32 {
    return 4294967295u;
}

fn func_2(arg_0: u32, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1569f - _wgslsmith_f_op_f32(-476f + -259f)));
    global0 = abs(~reverseBits(arg_1.x)) >> ((u_input.b.x | arg_0) % 32u);
    global4 = array<vec3<bool>, 18>();
    var var_1 = ~_wgslsmith_div_vec3_u32(~vec3<u32>(func_3(Struct_1(u_input.b.x, vec2<f32>(global2[_wgslsmith_index_u32(arg_1.x, 29u)], -514f), vec4<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 29u)], global2[_wgslsmith_index_u32(arg_0, 29u)], 569f, 847f)), 695f), abs(1u), _wgslsmith_sub_u32(arg_1.x, 79045u)), u_input.b.wyy);
    global2 = array<f32, 29>();
    return Struct_1(select(14873u, abs(u_input.b.x & _wgslsmith_mod_u32(50222u, 1u)), false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-141f, global2[_wgslsmith_index_u32(1u, 29u)]) * vec2<f32>(global2[_wgslsmith_index_u32(62637u, 29u)], global2[_wgslsmith_index_u32(var_1.x, 29u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(var_1.x, 29u)], -345f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 29u)], global2[_wgslsmith_index_u32(0u, 29u)]) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(var_1.x, 29u)], global2[_wgslsmith_index_u32(12108u, 29u)]) * vec2<f32>(-306f, 1180f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1607f, global2[_wgslsmith_index_u32(1u, 29u)], 1944f, 1807f), vec4<f32>(-382f, global2[_wgslsmith_index_u32(var_1.x, 29u)], 404f, global2[_wgslsmith_index_u32(1u, 29u)]))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2[_wgslsmith_index_u32(arg_0, 29u)], 1679f, global2[_wgslsmith_index_u32(var_1.x, 29u)], global2[_wgslsmith_index_u32(var_1.x, 29u)]), vec4<f32>(1343f, 678f, global2[_wgslsmith_index_u32(arg_0, 29u)], 1000f), true)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-691f, global2[_wgslsmith_index_u32(20296u, 29u)], 491f, -661f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 29u)], -886f, global2[_wgslsmith_index_u32(30681u, 29u)], global2[_wgslsmith_index_u32(0u, 29u)]) * vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 29u)], -2444f, -127f, global2[_wgslsmith_index_u32(34412u, 29u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-927f, 1292f, global2[_wgslsmith_index_u32(72683u, 29u)], global2[_wgslsmith_index_u32(22947u, 29u)])))))));
}

fn func_1(arg_0: bool) -> f32 {
    global1 = array<bool, 10>();
    global4 = array<vec3<bool>, 18>();
    global3 = array<vec2<bool>, 3>();
    global3 = array<vec2<bool>, 3>();
    var var_0 = func_2(u_input.b.x, ~_wgslsmith_sub_vec4_u32(~u_input.b, u_input.b));
    return _wgslsmith_f_op_f32(f32(-1f) * -181f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 10>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(func_1(any(global3[_wgslsmith_index_u32(u_input.b.x, 3u)]))))) * func_2(_wgslsmith_dot_vec4_u32(u_input.b, min(vec4<u32>(u_input.b.x, 2934u, u_input.b.x, 6094u), u_input.b)), vec4<u32>(reverseBits(79074u), reverseBits(23844u), _wgslsmith_div_u32(u_input.b.x, u_input.b.x), u_input.b.x)).c.x) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-725f, 256f)) * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b.x, 29u)])) + -792f))));
    let var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~u_input.b.x, 29u)] + 458f))), global2[_wgslsmith_index_u32(1u, 29u)]), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(2033f, -2533f), vec2<f32>(global2[_wgslsmith_index_u32(48769u, 29u)], global2[_wgslsmith_index_u32(4294967295u, 29u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(1735u, 29u)], global2[_wgslsmith_index_u32(u_input.b.x, 29u)]) * vec2<f32>(242f, 558f)))) - vec2<f32>(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(1u, 29u)], 704f), _wgslsmith_f_op_f32(1222f - global2[_wgslsmith_index_u32(25023u, 29u)]))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(19196u, 29u)], global2[_wgslsmith_index_u32(u_input.b.x, 29u)]) + vec2<f32>(-425f, global2[_wgslsmith_index_u32(u_input.b.x, 29u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 29u)], global2[_wgslsmith_index_u32(4294967295u, 29u)])), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 10u)], true))))));
    var var_2 = u_input.b.xwx;
    let var_3 = vec2<i32>(u_input.c.x, u_input.d);
    global3 = array<vec2<bool>, 3>();
    var var_4 = u_input.b;
    var var_5 = countOneBits(vec4<i32>(u_input.a.x, -_wgslsmith_mult_i32(var_3.x >> (11589u % 32u), u_input.a.x), -_wgslsmith_mult_i32(_wgslsmith_add_i32(0i, var_3.x), ~3158i), var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-698f)), _wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(50941u, 10u)])))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-func_2(0u, vec4<u32>(var_2.x, u_input.b.x, var_2.x, u_input.b.x)).c.zxy))));
}

