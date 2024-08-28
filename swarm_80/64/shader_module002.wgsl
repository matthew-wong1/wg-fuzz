struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: i32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_2 = Struct_2(vec4<f32>(-1550f, -263f, 1343f, 1128f));

var<private> global2: array<vec3<bool>, 11> = array<vec3<bool>, 11>(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false));

var<private> global3: bool = true;

var<private> global4: Struct_3 = Struct_3(vec2<u32>(32554u, 4294967295u), vec2<u32>(28951u, 54751u));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    global1 = Struct_2(vec4<f32>(global1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -888f), _wgslsmith_f_op_f32(-global1.a.x), global1.a.x));
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1361f, global1.a.x, global1.a.x, global1.a.x)), global1.a, vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(517f, global1.a.x, 343f, global1.a.x))))))));
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.a + vec4<f32>(var_0.x, var_0.x, var_0.x, 1000f)), _wgslsmith_f_op_vec4_f32(-global1.a))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, global1.a.x, 2275f, var_0.x)) + _wgslsmith_f_op_vec4_f32(round(global1.a)))))));
    let var_1 = u_input.a.wwy;
    var var_2 = abs(~vec3<u32>(global4.a.x, _wgslsmith_sub_u32(~global4.a.x, countOneBits(65056u)), ~54434u));
    return global4.a.x;
}

fn func_4(arg_0: u32) -> bool {
    global4 = Struct_3(countOneBits(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(~global4.b, max(global4.a, vec2<u32>(arg_0, 42946u))), ~global4.b)), ~vec2<u32>(4294967295u, select(abs(global4.b.x), 22451u, all(vec4<bool>(false, true, true, true)))));
    global3 = false;
    let var_0 = false;
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-2076f, -494f, 959f, -1303f), global1.a) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, 523f, 417f, 507f) + vec4<f32>(global1.a.x, global1.a.x, 253f, global1.a.x)))))));
    let var_1 = vec2<bool>(select(var_0, var_0, false), var_0);
    return (!(!var_1.x) & var_1.x) || !any(vec2<bool>(var_0 || var_1.x, true));
}

fn func_2() -> Struct_2 {
    global4 = Struct_3(global4.a, max(vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(31075u, global4.b.x), _wgslsmith_mod_u32(global4.a.x, 4294967295u)), global4.a.x), firstTrailingBit(vec2<u32>(1u, global4.b.x))));
    let var_0 = func_4(_wgslsmith_add_u32(1u, _wgslsmith_mod_u32(max(global4.b.x, 1u), func_3() << (global4.b.x % 32u))));
    var var_1 = Struct_1(var_0 || var_0, vec2<u32>(1u, 1u), 18699i);
    let var_2 = vec4<bool>(var_0, !(!var_0), false, any(global2[_wgslsmith_index_u32(0u, 11u)]));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(681f)) + global1.a.x) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-451f - global1.a.x), _wgslsmith_f_op_f32(global1.a.x + global1.a.x))))));
    return Struct_2(global1.a);
}

fn func_1() -> Struct_1 {
    global1 = func_2();
    var var_0 = global1.a.x;
    global1 = func_2();
    global2 = array<vec3<bool>, 11>();
    var var_1 = func_2();
    return Struct_1(false, firstTrailingBit(global4.a), abs(min(u_input.a.x, 22424i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = global4.a.x;
    let var_2 = global1.a.x;
    var var_3 = Struct_3(select(var_0.b, ~(~firstLeadingBit(var_0.b)), !var_0.a), var_0.b);
    global3 = !var_0.a;
    let var_4 = Struct_1(!((0i == _wgslsmith_clamp_i32(-2147483647i, -2147483647i, u_input.a.x)) == var_0.a), _wgslsmith_clamp_vec2_u32(select(max(vec2<u32>(40771u, var_3.b.x), ~vec2<u32>(4294967295u, 71882u)), ~(var_3.b | vec2<u32>(global4.a.x, global4.a.x)), select(vec2<bool>(false, var_0.a), !vec2<bool>(var_0.a, false), !vec2<bool>(var_0.a, false))), vec2<u32>(~firstLeadingBit(global4.b.x), ~var_0.b.x), global4.a), -2752i);
    var var_5 = 209f;
    var var_6 = func_2();
    var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1171f)))))) - _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x + 200f) - _wgslsmith_f_op_f32(-global1.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_6.a.x, -1064f, var_6.a.x) * vec3<f32>(var_6.a.x, global1.a.x, -1000f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1083f, var_6.a.x, 636f)))), _wgslsmith_f_op_vec3_f32(-var_6.a.ywx))) + var_6.a.yzx), 528f, _wgslsmith_f_op_f32(250f - -928f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_6.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1113f))), 1130f));
}

