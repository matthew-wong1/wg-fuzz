struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31>;

var<private> global1: vec2<f32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec4<i32>, arg_1: f32) -> vec2<i32> {
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-716f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1546f)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -425f), _wgslsmith_f_op_f32(552f + global1.x)))));
    var var_0 = Struct_1(arg_0.x, vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(min(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(u_input.a.x, 26365u, u_input.a.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 4294967295u, 67315u) ^ vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), vec3<u32>(4294967295u, u_input.a.x, u_input.a.x) << (vec3<u32>(52389u, 60935u, 1u) % vec3<u32>(32u)), ~vec3<u32>(u_input.a.x, u_input.a.x, 2947u))), 31u)], global0[_wgslsmith_index_u32(~602u, 31u)], !global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 31u)]), global0[_wgslsmith_index_u32(u_input.a.x, 31u)] != global0[_wgslsmith_index_u32(u_input.a.x, 31u)]);
    global1 = vec2<f32>(global1.x, _wgslsmith_f_op_f32(-280f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + 1000f) - _wgslsmith_div_f32(global1.x, 378f)))));
    let var_1 = -1212f;
    return vec2<i32>(arg_0.x, arg_0.x);
}

fn func_1(arg_0: bool) -> f32 {
    let var_0 = ~_wgslsmith_div_i32(8190i, _wgslsmith_dot_vec2_i32(func_2(vec4<i32>(-2147483647i, 44071i, -2147483647i, 1i), global1.x), abs(vec2<i32>(2147483647i, 2147483647i))));
    let var_1 = Struct_1(33525i, vec3<bool>(true, arg_0, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(u_input.a), vec2<u32>(u_input.a.x, 4294967295u) << (vec2<u32>(0u, 1u) % vec2<u32>(32u))), 31u)]), global1.x <= _wgslsmith_f_op_f32(1086f * global1.x));
    global0 = array<bool, 31>();
    global0 = array<bool, 31>();
    global0 = array<bool, 31>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - 754f);
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> Struct_2 {
    global0 = array<bool, 31>();
    var var_0 = vec4<bool>(true, false, false, true);
    let var_1 = -firstTrailingBit(vec2<i32>(43654i | ~arg_0.a, ~(arg_0.a & arg_0.a)));
    let var_2 = _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(399f * arg_1)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.x + arg_1))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -481f))))));
    var_0 = !select(!vec4<bool>(global0[_wgslsmith_index_u32(~u_input.a.x, 31u)], select(arg_0.b.x, true, true), false, true), !select(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 31u)], true, true, var_0.x), vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.a.x, 31u)], true), false), any(var_0.xw));
    return Struct_2(1i, var_2, var_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1118f * _wgslsmith_f_op_f32(min(arg_1, 154f))) - var_2), 178f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_3(Struct_1(1i, !vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 31u)], !global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, 5063u), 31u)]), global1.x >= _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(!global0[_wgslsmith_index_u32(u_input.a.x, 31u)]))) * global1.x));
    var var_1 = firstLeadingBit(min(0u, 31311u));
    var_0 = Struct_2(0i, global1.x, vec2<i32>(max(_wgslsmith_div_i32(max(2147483647i, var_0.c.x), i32(-1i) * -1i), var_0.c.x), 1i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)))), 231f));
    let var_2 = vec3<bool>(!global0[_wgslsmith_index_u32(u_input.a.x, 31u)], !global0[_wgslsmith_index_u32(u_input.a.x, 31u)], false);
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global1.x, 1146f), vec2<f32>(global1.x, global1.x))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-963f, -491f))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(290f, 1000f), vec2<f32>(global1.x, var_0.d))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1.x, -531f))) - vec2<f32>(-720f, 825f))))));
    var_1 = ~67797u;
    let var_3 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-710f + -185f), -269f, var_0.b)));
    let var_4 = reverseBits(countOneBits(_wgslsmith_mult_vec3_u32(~(vec3<u32>(19451u, u_input.a.x, 1u) & vec3<u32>(u_input.a.x, 0u, u_input.a.x)), _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 69563u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(66848u, 1u, 9164u))))));
    var var_5 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-668f)) + global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.b + var_0.b), _wgslsmith_f_op_f32(-436f - 1000f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d - var_3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-695f * _wgslsmith_f_op_f32(-var_0.d)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(min(vec2<u32>(~var_4.x, _wgslsmith_dot_vec3_u32(var_4, vec3<u32>(2285u, u_input.a.x, 46659u))), u_input.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.x, global1.x, _wgslsmith_f_op_f32(step(var_0.d, 982f)), _wgslsmith_f_op_f32(-755f - 2442f))) - vec4<f32>(_wgslsmith_div_f32(var_3.x, _wgslsmith_div_f32(var_5.x, var_3.x)), var_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + _wgslsmith_f_op_f32(var_5.x - var_0.b)), _wgslsmith_f_op_f32(f32(-1f) * -376f))), vec4<u32>(51613u, 1u, var_4.x, ~_wgslsmith_sub_u32(~u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_4.x, 4294967295u, var_4.x), var_4))));
}

