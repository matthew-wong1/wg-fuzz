struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 6>;

var<private> global1: bool = false;

var<private> global2: i32;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: Struct_1) -> f32 {
    return -620f;
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: u32, arg_3: vec2<u32>) -> vec4<f32> {
    global1 = (0u > arg_3.x) & true;
    global1 = true;
    var var_0 = vec3<u32>(4294967295u, arg_3.x, 1u);
    let var_1 = arg_0;
    global2 = 8495i;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-451f, _wgslsmith_f_op_f32(func_1(_wgslsmith_dot_vec4_i32(vec4<i32>(50169i, 34893i, 32026i, 2869i), vec4<i32>(0i, -38064i, 41356i, 2147483647i)), ~(-2147483647i), Struct_1(true))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.a.x - var_1.a.x))), _wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-612f, 443f, var_1.a.x, var_1.a.x) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-385f, arg_0.a.x, var_1.a.x, -507f)))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.a.x, -491f, -208f, 415f)))))), select(vec4<bool>(all(vec4<bool>(false, true, false, false)), true, select(false, true, true), true), vec4<bool>(true, true, true, var_0.x != 0u), true))));
}

fn func_2() -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(vec2<f32>(-1000f, -2465f)), firstLeadingBit(u_input.a), 49260u, _wgslsmith_clamp_vec2_u32(vec2<u32>(38753u, u_input.e.x), vec2<u32>(u_input.d, 10926u), global0[_wgslsmith_index_u32(u_input.d, 6u)]))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1254f, 1000f, 280f, 102f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-145f, 975f, -428f, -304f))))))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1084f, 860f, -269f, -731f)) * vec4<f32>(841f, 405f, -1932f, 167f)), vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(688f, _wgslsmith_f_op_f32(f32(-1f) * -239f), _wgslsmith_f_op_f32(select(151f, -1000f, true)), 1f)))));
    var var_1 = Struct_1(firstTrailingBit(firstLeadingBit(~u_input.c.x)) <= _wgslsmith_add_u32(~(u_input.a & 1u), 37764u | u_input.c.x));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(118f, _wgslsmith_f_op_vec4_f32(func_3(Struct_2(vec2<f32>(var_0.x, 690f)), 1u, u_input.e.x, u_input.c)).x)))));
    let var_3 = var_0.x;
    global2 = 1i;
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a.x), -519f)), -830f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), -808f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = true;
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-521f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1895f - 343f) + _wgslsmith_f_op_f32(f32(-1f) * -685f)), _wgslsmith_f_op_f32(-695f + -573f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(-33636i, 71158i, Struct_1(true))) + _wgslsmith_f_op_f32(max(-528f, -1208f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_2()), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-295f * 836f), _wgslsmith_f_op_f32(-250f - 366f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1670f, -1049f)), -1777f, _wgslsmith_f_op_f32(f32(-1f) * -1026f)), !(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true))))), (false || any(vec3<bool>(true, true, false))) | !(_wgslsmith_mult_u32(u_input.b.x, 49479u) > 43433u)));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-310f + var_0.x))) - _wgslsmith_f_op_f32(step(659f, _wgslsmith_f_op_f32(round(var_0.x)))))), -1548f);
    var_1 = _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(528f, var_0.x)))));
    var var_2 = false;
    var var_3 = i32(-1i) * -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(195f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x) + _wgslsmith_f_op_f32(f32(-1f) * -2570f))))), -firstTrailingBit(vec2<i32>(0i, -2384i)), _wgslsmith_f_op_vec3_f32(sign(var_0.xyy)), vec2<f32>(929f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.x, var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, false)) * _wgslsmith_f_op_f32(-398f + -491f))))), abs(12833u));
}

