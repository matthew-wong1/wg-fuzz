struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -220f;

var<private> global1: array<Struct_3, 17>;

var<private> global2: i32 = i32(-2147483648);

var<private> global3: Struct_3;

var<private> global4: array<vec4<f32>, 17> = array<vec4<f32>, 17>(vec4<f32>(-917f, -1375f, -411f, 1000f), vec4<f32>(-934f, -1000f, -797f, 1475f), vec4<f32>(-1593f, -198f, -1305f, -1000f), vec4<f32>(-837f, -933f, -161f, -684f), vec4<f32>(-243f, 679f, -1335f, -391f), vec4<f32>(1428f, 1286f, -823f, 460f), vec4<f32>(-742f, 300f, 1252f, -764f), vec4<f32>(182f, 1000f, -761f, -1583f), vec4<f32>(-1178f, 633f, 567f, -476f), vec4<f32>(1134f, 1051f, 3168f, -219f), vec4<f32>(1042f, -257f, 207f, 2537f), vec4<f32>(1377f, 126f, -922f, -1243f), vec4<f32>(1537f, 714f, -1367f, 987f), vec4<f32>(-1764f, -1395f, 1419f, 289f), vec4<f32>(-1850f, 585f, 819f, -374f), vec4<f32>(-1003f, 136f, -2072f, 209f), vec4<f32>(-369f, 863f, 759f, -225f));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> Struct_3 {
    var var_0 = !vec4<bool>(true, true, !(true | (0u <= global3.a.a)), all(vec2<bool>(all(vec4<bool>(false, false, true, true)), true)));
    let var_1 = _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(u_input.d.x, ~global3.b >> (u_input.b.x % 32u), _wgslsmith_sub_i32(_wgslsmith_mod_i32(global3.b, 2147483647i), 1i)));
    global4 = array<vec4<f32>, 17>();
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(global4[_wgslsmith_index_u32(14692u, 17u)], global4[_wgslsmith_index_u32(global3.a.a, 17u)])))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.b.x, -299f, global3.a.b.x, -995f)))) - _wgslsmith_f_op_vec4_f32(-global4[_wgslsmith_index_u32(u_input.e.x, 17u)])) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1336f, global3.a.b.x, global3.a.b.x, -1269f)), global4[_wgslsmith_index_u32(global3.a.a, 17u)]) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1363f, 1007f, -104f, -661f), global4[_wgslsmith_index_u32(global3.a.a, 17u)])) + global4[_wgslsmith_index_u32(0u, 17u)])) + _wgslsmith_f_op_vec4_f32(global4[_wgslsmith_index_u32(1u, 17u)] * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global3.a.b.x, global3.a.b.x, global3.a.b.x, global3.a.b.x), global4[_wgslsmith_index_u32(43968u, 17u)]) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2209f, -873f, 866f, 1085f))))));
    let var_3 = Struct_2(Struct_1(u_input.e.x, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_2.xzy)) - _wgslsmith_f_op_vec3_f32(-global3.a.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(global3.a.b)))))), !(!select(!vec4<bool>(true, true, var_0.x, false), !vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(var_0.x, var_0.x, true, true))), 2147483647i, global3.a);
    return global1[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(~u_input.e.x, ~4294967295u) >> (global3.a.a % 32u)), 17u)];
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = abs(abs(max(u_input.d.x, 1i)));
    let var_1 = all(select(!vec2<bool>(any(vec2<bool>(true, true)), select(false, false, false)), vec2<bool>(_wgslsmith_add_u32(71337u, 1u) >= select(0u, 21114u, true), any(select(vec2<bool>(false, false), vec2<bool>(false, false), true))), (i32(-1i) * -9703i) > _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(u_input.d.yzx, u_input.a), 48410i)));
    let var_2 = vec2<u32>(~27810u, 1u);
    let var_3 = func_2();
    global4 = array<vec4<f32>, 17>();
    return !select(!select(!vec4<bool>(false, true, true, var_1), vec4<bool>(var_1, var_1, true, var_1), !vec4<bool>(false, var_1, var_1, true)), select(vec4<bool>(var_1, !var_1, !var_1, true), !select(vec4<bool>(var_1, var_1, var_1, var_1), vec4<bool>(var_1, var_1, true, var_1), true), select(!vec4<bool>(false, var_1, false, var_1), !vec4<bool>(false, var_1, true, var_1), select(vec4<bool>(var_1, var_1, var_1, true), vec4<bool>(var_1, var_1, true, true), vec4<bool>(var_1, var_1, var_1, var_1)))), vec4<bool>(any(vec3<bool>(var_1, var_1, false)) && all(vec3<bool>(true, true, var_1)), !(0u == var_2.x), var_1, var_1));
}

fn func_1() -> Struct_1 {
    let var_0 = global3.a.a >> (0u % 32u);
    global3 = Struct_3(Struct_1(54884u, vec3<f32>(680f, _wgslsmith_f_op_f32(step(1986f, _wgslsmith_div_f32(247f, 516f))), 263f)), select(_wgslsmith_add_i32(global3.b << ((global3.a.a << (46640u % 32u)) % 32u), _wgslsmith_dot_vec3_i32(u_input.a ^ u_input.d.wyz, _wgslsmith_add_vec3_i32(vec3<i32>(1i, global3.b, -24851i), vec3<i32>(14161i, -29972i, u_input.d.x)))), ~u_input.d.x, all(vec3<bool>(false, all(vec2<bool>(true, false)), true))));
    let var_1 = !all(!vec3<bool>(true, false, u_input.d.x != 14837i));
    let var_2 = func_2();
    let var_3 = Struct_2(func_2().a, !vec4<bool>(true, all(func_3(u_input.b.xz, global3.a)), true, var_1), 20285i << (u_input.b.x % 32u), Struct_1(min(u_input.e.x, ~(~19931u)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.a.b.x, -342f, _wgslsmith_f_op_f32(-939f * var_2.a.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.a.b))))));
    return func_2().a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-global3.a.b.zy);
    let var_1 = func_1();
    global2 = ~_wgslsmith_mult_i32(70627i, _wgslsmith_add_i32(u_input.d.x, ~(i32(-1i) * -2147483647i)));
    let var_2 = vec3<bool>(true, true, true);
    global0 = 288f;
    let var_3 = global3.a.b.x;
    global1 = array<Struct_3, 17>();
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(func_2().a.b.x))) + -422f);
    global1 = array<Struct_3, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(-947f, vec2<i32>(u_input.d.x, 2147483647i));
}

