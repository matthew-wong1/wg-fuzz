struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec4<u32>,
    d: f32,
    e: i32,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: vec3<f32>,
    d: vec2<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 108f;

var<private> global1: array<bool, 25> = array<bool, 25>(true, false, false, true, false, true, true, false, false, true, true, false, true, true, false, true, true, true, false, true, false, false, true, false, true);

var<private> global2: Struct_2 = Struct_2(vec4<f32>(1000f, -1559f, -1247f, -1628f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32) -> f32 {
    global2 = Struct_2(_wgslsmith_f_op_vec4_f32(abs(global2.a)));
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.x, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.x) * 359f), global2.a.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1915f, global2.a.x, global2.a.x, _wgslsmith_f_op_f32(round(-973f)))));
    global2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1936f, var_0.x, 1f))));
    let var_1 = any(vec4<bool>(false, false, false, global1[_wgslsmith_index_u32(u_input.a.x, 25u)]));
    var var_2 = vec2<i32>(30773i, u_input.b);
    return -1874f;
}

fn func_2(arg_0: vec4<bool>, arg_1: bool, arg_2: i32, arg_3: vec4<bool>) -> f32 {
    let var_0 = vec4<f32>(-2022f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-719f - _wgslsmith_f_op_f32(-global2.a.x)))), _wgslsmith_f_op_f32(f32(-1f) * -903f), global2.a.x);
    global2 = Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(sign(446f)), _wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(func_3(46949u)), _wgslsmith_div_f32(global2.a.x, -1637f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(764f, var_0.x, var_0.x, global2.a.x)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_0, vec4<f32>(global2.a.x, -1224f, global2.a.x, var_0.x)) + _wgslsmith_f_op_vec4_f32(-global2.a))), !(!(global1[_wgslsmith_index_u32(2883u, 25u)] != true)))));
    let var_1 = vec3<i32>(1i, -2531i, -46764i ^ _wgslsmith_mult_i32(u_input.c, abs(-492i))) | vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_2, u_input.c), abs(vec2<i32>(u_input.b, u_input.b)), ~vec2<i32>(arg_2, -23321i)), vec2<i32>(~(-1i), _wgslsmith_div_i32(u_input.b, -28446i))), _wgslsmith_add_i32(_wgslsmith_mult_i32(firstTrailingBit(u_input.c), u_input.c), _wgslsmith_dot_vec3_i32(~vec3<i32>(arg_2, arg_2, -2147483647i), firstTrailingBit(vec3<i32>(-1i, u_input.b, arg_2)))), _wgslsmith_mod_i32(i32(-1i) * -1i, ~17045i));
    let var_2 = select(arg_0.yx, vec2<bool>(!((u_input.a.x & 3946u) != (u_input.a.x & 5349u)), all(vec3<bool>(any(arg_0), true, arg_1))), !vec2<bool>(false && arg_3.x, any(vec2<bool>(false, arg_3.x))));
    let var_3 = ~(min(var_1, _wgslsmith_sub_vec3_i32(max(vec3<i32>(-39598i, -13703i, 56631i), var_1), var_1)) >> (~reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(24647u, 4294967295u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 1u))) % vec3<u32>(32u)));
    return _wgslsmith_f_op_f32(func_3(119736u));
}

fn func_1(arg_0: bool) -> Struct_3 {
    var var_0 = vec2<f32>(-491f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(!select(vec4<bool>(false, arg_0, true, true), vec4<bool>(arg_0, false, global1[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(4294967295u, 25u)]), true), true, _wgslsmith_add_i32(u_input.c, u_input.b) << (81213u % 32u), !(!vec4<bool>(false, arg_0, global1[_wgslsmith_index_u32(4294967295u, 25u)], arg_0)))), global2.a.x, true)));
    var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-global2.a.wx), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-global2.a.x)) + vec2<f32>(_wgslsmith_div_f32(global2.a.x, 455f), var_0.x)))));
    var var_1 = -178f;
    var_1 = _wgslsmith_f_op_f32(-2172f * _wgslsmith_f_op_f32(func_2(!select(!vec4<bool>(true, arg_0, true, false), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], false, true, false), u_input.a.x != 0u), any(vec3<bool>(true, all(vec2<bool>(false, true)), false)), -4420i ^ u_input.c, vec4<bool>(any(select(vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 25u)], false), vec3<bool>(arg_0, true, global1[_wgslsmith_index_u32(u_input.a.x, 25u)]), false)), arg_0, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, u_input.a.x, u_input.a.x) | u_input.a.x, 25u)], arg_0))));
    global1 = array<bool, 25>();
    return Struct_3(vec4<bool>(false, all(select(vec4<bool>(arg_0, arg_0, arg_0, global1[_wgslsmith_index_u32(u_input.a.x, 25u)]), select(vec4<bool>(arg_0, false, global1[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(4294967295u, 25u)]), vec4<bool>(false, arg_0, false, global1[_wgslsmith_index_u32(u_input.a.x, 25u)]), global1[_wgslsmith_index_u32(u_input.a.x, 25u)]), false)), false, true), Struct_1(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(688f + -269f), _wgslsmith_f_op_f32(-1285f * 2307f)), vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), -1006f))), vec3<bool>(!arg_0, true, !global1[_wgslsmith_index_u32(4294967295u, 25u)]), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-414f - 544f) + _wgslsmith_f_op_f32(-var_0.x)))), abs(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, 19806i, -2147483647i, 0i), vec4<i32>(u_input.b, 2147483647i, u_input.b, -1i))) << (~(vec4<u32>(63509u, u_input.a.x, u_input.a.x, u_input.a.x) ^ vec4<u32>(u_input.a.x, u_input.a.x, 19705u, 8528u)) % vec4<u32>(32u))), ~firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 103385u), vec4<u32>(22840u, u_input.a.x, u_input.a.x, u_input.a.x)) | (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) ^ vec4<u32>(24591u, u_input.a.x, 4294967295u, u_input.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-611f + 1100f) + -295f)), -_wgslsmith_sub_i32(firstTrailingBit(u_input.b), -(~u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 36787u;
    var var_1 = func_1(false);
    var var_2 = Struct_4(-29741i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.a.x))), ~vec2<u32>(abs(u_input.a.x), abs(1u)), var_1.b.d.xyx);
    global1 = array<bool, 25>();
    var var_3 = vec3<bool>(select(true, var_1.c.x < _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, var_1.c.x, var_2.c.x, 4294967295u), firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, 5564u, var_1.c.x))), false), any(vec2<bool>(all(var_1.b.b.zy), true)), global1[_wgslsmith_index_u32(~abs(~u_input.a.x), 25u)]);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-553f)) * var_1.b.c)))), vec2<f32>(-1379f, var_1.b.a.x));
}

