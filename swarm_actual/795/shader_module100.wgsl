struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec3<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec2<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 23>;

var<private> global1: Struct_3;

var<private> global2: Struct_1 = Struct_1(vec3<u32>(0u, 1u, 2376u), -1102f, vec3<u32>(52788u, 1u, 20203u), vec2<bool>(false, true));

var<private> global3: array<vec2<f32>, 22> = array<vec2<f32>, 22>(vec2<f32>(-519f, 704f), vec2<f32>(-1454f, -1000f), vec2<f32>(-166f, -1443f), vec2<f32>(275f, 1584f), vec2<f32>(615f, -1013f), vec2<f32>(349f, -730f), vec2<f32>(1841f, 2324f), vec2<f32>(-534f, -738f), vec2<f32>(-1000f, 273f), vec2<f32>(323f, -960f), vec2<f32>(805f, 270f), vec2<f32>(301f, -423f), vec2<f32>(119f, 122f), vec2<f32>(-159f, -567f), vec2<f32>(735f, -330f), vec2<f32>(-1000f, 674f), vec2<f32>(-1144f, 1066f), vec2<f32>(266f, -864f), vec2<f32>(1572f, -1510f), vec2<f32>(288f, 754f), vec2<f32>(234f, -624f), vec2<f32>(1000f, 686f));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<f32>) -> vec3<i32> {
    global1 = Struct_3(!global1.a && true, global1.b, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(global3[_wgslsmith_index_u32(u_input.a.x, 22u)], vec2<f32>(_wgslsmith_f_op_f32(min(global1.c.x, -345f)), arg_0.x)))), Struct_2(-global1.d.a & ~(global1.b.a << (global2.a.x % 32u))));
    var var_0 = false;
    global1 = Struct_3(global2.d.x, Struct_2(countOneBits(9527i)), vec2<f32>(311f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(370f)) - _wgslsmith_div_f32(global1.c.x, global1.c.x)))), Struct_2(~0i));
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, global1.c.x, 359f, global1.c.x), vec4<f32>(-263f, global1.c.x, global2.b, global1.c.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-global2.b), _wgslsmith_f_op_f32(-300f * 1403f), _wgslsmith_f_op_f32(-301f * global2.b))), select(vec4<bool>(global1.a && global2.d.x, true, false, global1.a), !global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(1u, 23u)])))));
    let var_2 = Struct_1(max(global2.c, ~global2.a), _wgslsmith_f_op_f32(-global2.b), vec3<u32>(~(~32571u), global2.c.x & 1u, ~global2.c.x), global2.d);
    return ~vec3<i32>(~(-_wgslsmith_mult_i32(-2147483647i, global1.d.a)), -u_input.b & (u_input.d.x | -1i), 8486i);
}

fn func_2(arg_0: Struct_3) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(arg_0.c, _wgslsmith_f_op_vec2_f32(global1.c * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global2.b, arg_0.c.x))))))), true));
    var var_1 = ~func_3(global3[_wgslsmith_index_u32(global2.a.x, 22u)]);
    global2 = Struct_1(vec3<u32>(reverseBits(0u), countOneBits(max(4294967295u, u_input.a.x)), global2.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1096f, arg_0.c.x)) + 310f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.c.x)) - _wgslsmith_f_op_f32(min(global1.c.x, global1.c.x))))), ~_wgslsmith_sub_vec3_u32(~vec3<u32>(1u, global2.a.x, 22186u), ~vec3<u32>(4402u, 89566u, 1001u) | ~global2.c), !(!select(select(global2.d, vec2<bool>(global2.d.x, arg_0.a), global2.d), global2.d, !vec2<bool>(true, global2.d.x))));
    global0 = array<vec4<bool>, 23>();
    var var_2 = Struct_3(all(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a.zww, global2.c), 23u)]), arg_0.d, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(global1.c, vec2<f32>(var_0.x, global2.b))), _wgslsmith_f_op_vec2_f32(select(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(368u, u_input.c.x), 22u)], _wgslsmith_f_op_vec2_f32(-var_0), vec2<bool>(arg_0.a, global2.d.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(488f, 771f) * vec2<f32>(arg_0.c.x, arg_0.c.x)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global3[_wgslsmith_index_u32(u_input.c.x, 22u)] * vec2<f32>(global2.b, 579f)), _wgslsmith_f_op_vec2_f32(-var_0))))), global1.b);
    return reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, ~u_input.a.x, _wgslsmith_sub_u32(69814u | global2.a.x, ~4294967295u), ~u_input.c.x), max(u_input.a, vec4<u32>(49582u, 1u, ~13995u, global2.a.x))));
}

fn func_1() -> Struct_2 {
    var var_0 = ~vec2<u32>(global2.c.x, ~_wgslsmith_dot_vec4_u32(func_2(Struct_3(global2.d.x, Struct_2(u_input.d.x), vec2<f32>(global1.c.x, global2.b), global1.b)), ~u_input.c));
    var var_1 = global1.d;
    var_0 = vec2<u32>(u_input.a.x, _wgslsmith_clamp_u32(global2.c.x, u_input.a.x >> (~(u_input.a.x | var_0.x) % 32u), ~0u));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.x, -1336f, global1.c.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b, global2.b, global2.b)))) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global2.b, global2.b, -1226f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.x, -1940f, global1.c.x) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b, 309f, global2.b))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.x, 1078f, global2.b) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.x, 845f, global2.b) + vec3<f32>(global1.c.x, -1000f, global1.c.x))))));
    global3 = array<vec2<f32>, 22>();
    return global1.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(sign(-366f)) < _wgslsmith_f_op_f32(464f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-246f * global2.b))), Struct_2(u_input.d.x), global3[_wgslsmith_index_u32(global2.c.x, 22u)], func_1());
    let var_1 = var_0.c.x;
    let var_2 = Struct_3(!var_0.a, var_0.d, vec2<f32>(global1.c.x, var_0.c.x), func_1());
    global0 = array<vec4<bool>, 23>();
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -273f);
    var_0 = Struct_3(true, func_1(), vec2<f32>(var_2.c.x, 1000f), func_1());
    let var_4 = Struct_1(~global2.c, -1052f, u_input.c.xyx, !(!vec2<bool>(all(vec4<bool>(true, true, global2.d.x, true)), !var_0.a)));
    global1 = var_2;
    let var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(var_5.b, _wgslsmith_f_op_f32(-1114f + var_2.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(543f, 487f, 304f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c.x, -700f, -1330f) - vec3<f32>(-1360f, var_0.c.x, -1000f))))), _wgslsmith_f_op_f32(-global2.b), 25404u);
}

