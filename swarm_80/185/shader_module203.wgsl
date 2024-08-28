struct Struct_1 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: array<bool, 30>;

var<private> global2: vec3<f32>;

var<private> global3: array<Struct_1, 22>;

var<private> global4: Struct_1 = Struct_1(14509i, 1u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<u32>, arg_1: f32, arg_2: bool) -> vec2<u32> {
    var var_0 = ~vec3<i32>(global4.a, global4.a, max(-2147483647i, global4.a));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(floor(global2.x)), _wgslsmith_f_op_f32(1000f * 2099f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(266f, arg_1, -791f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-228f, arg_1, 574f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -388f, -279f)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(sign(307f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1 + global2.x))))));
    global0 = vec2<bool>(true, true);
    var var_2 = 226f;
    let var_3 = Struct_1(_wgslsmith_div_i32(global4.a, ~global4.a), ~_wgslsmith_add_u32(global4.b, 80269u));
    return arg_0.zy;
}

fn func_2() -> vec2<u32> {
    global3 = array<Struct_1, 22>();
    global1 = array<bool, 30>();
    global3 = array<Struct_1, 22>();
    let var_0 = global3[_wgslsmith_index_u32(~4294967295u, 22u)];
    let var_1 = global3[_wgslsmith_index_u32(3424u, 22u)];
    return firstLeadingBit(~u_input.a.xx) << ((~func_3(~u_input.a.wwz, _wgslsmith_f_op_f32(abs(-430f)), global0.x) << (select(firstTrailingBit(~u_input.a.ww), ~func_3(u_input.a.wxz, global2.x, global0.x), true) % vec2<u32>(32u))) % vec2<u32>(32u));
}

fn func_1() -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(-1122f - global2.x), -915f));
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(func_2(), ~u_input.a.ww), 22u)];
    var var_2 = _wgslsmith_dot_vec3_u32(~(~vec3<u32>(global4.b, ~u_input.a.x, ~1u)), vec3<u32>(var_1.b, ~4294967295u, func_2().x) | vec3<u32>(~func_2().x, ~(global4.b | var_1.b), ~global4.b));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(636f * global2.x), global2.x, var_0.x, global2.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1219f, 109f, -866f, var_0.x) - vec4<f32>(global2.x, -576f, global2.x, var_0.x))))));
    let var_4 = ~_wgslsmith_mod_vec4_i32(~(vec4<i32>(var_1.a, var_1.a, global4.a, 70366i) | _wgslsmith_add_vec4_i32(vec4<i32>(global4.a, -2147483647i, 9871i, var_1.a), vec4<i32>(var_1.a, 0i, global4.a, var_1.a))), vec4<i32>(var_1.a, abs(17149i), global4.a, _wgslsmith_dot_vec2_i32(vec2<i32>(global4.a, -23689i), vec2<i32>(2147483647i, var_1.a) & vec2<i32>(36947i, var_1.a))));
    return StorageBuffer(1u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(327f, 399f, 1472f, global2.x) * vec4<f32>(138f, -162f, var_3.x, 703f)), vec4<f32>(var_0.x, -1000f, global2.x, 681f), false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-899f, global2.x, 1000f, 305f), vec4<f32>(var_0.x, 904f, var_3.x, var_0.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[_wgslsmith_index_u32(global4.b ^ 4991u, 22u)];
    global1 = array<bool, 30>();
    global3 = array<Struct_1, 22>();
    global1 = array<bool, 30>();
    let var_1 = u_input.a.zy;
    let x = u_input.a;
    s_output = func_1();
}

