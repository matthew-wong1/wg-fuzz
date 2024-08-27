struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 13>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: bool, arg_1: Struct_4, arg_2: f32, arg_3: vec2<f32>) -> f32 {
    var var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, 619f, -1840f, arg_2)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(352f, -407f, global0[_wgslsmith_index_u32(u_input.a.x, 13u)], -1003f), vec4<f32>(-386f, arg_3.x, 1549f, 252f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2, global0[_wgslsmith_index_u32(8853u, 13u)], 1008f, 907f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1299f, arg_3.x, -483f, arg_2), vec4<f32>(-1038f, global0[_wgslsmith_index_u32(12210u, 13u)], global0[_wgslsmith_index_u32(20043u, 13u)], -583f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_2, -1099f, global0[_wgslsmith_index_u32(4294967295u, 13u)]) + vec4<f32>(1651f, arg_2, arg_3.x, arg_2)))))));
    var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 13u)]), _wgslsmith_f_op_f32(floor(arg_2)), -503f, -330f) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1069f, arg_3.x, arg_3.x, arg_3.x)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(var_0.a, vec4<f32>(-1000f, var_0.a.x, 441f, arg_3.x), false)))), vec4<f32>(_wgslsmith_f_op_f32(min(arg_2, arg_3.x)), _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], arg_3.x)), arg_3.x, _wgslsmith_div_f32(-632f, 1000f)))));
    global0 = array<f32, 13>();
    let var_1 = _wgslsmith_div_f32(465f, global0[_wgslsmith_index_u32(abs(u_input.a.x) << (11483u % 32u), 13u)]);
    global0 = array<f32, 13>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1683f), 2203f);
}

fn func_2() -> bool {
    global0 = array<f32, 13>();
    var var_0 = 0i;
    var var_1 = true;
    var_1 = !(!all(vec4<bool>(true, false, false, select(false, false, false))));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-440f, global0[_wgslsmith_index_u32(4294967295u, 13u)]), 300f)))) * 1f), ~u_input.a.zz);
    return true;
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: bool) -> i32 {
    let var_0 = ~(~(~(-1i)));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(abs(2812f)), u_input.a.wz);
    let var_2 = Struct_4(all(vec2<bool>(true, true)));
    let var_3 = countOneBits(_wgslsmith_div_i32(72401i, var_0));
    var var_4 = ~vec2<i32>(var_0, -84937i);
    return abs(1i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1484f + global0[_wgslsmith_index_u32(u_input.a.x, 13u)])), _wgslsmith_f_op_f32(func_1(12149u < u_input.a.x, Struct_4(true), _wgslsmith_f_op_f32(147f * 608f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1080f, 281f) * vec2<f32>(global0[_wgslsmith_index_u32(6701u, 13u)], -1197f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1637f, -432f) + vec2<f32>(global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(7681u, 13u)]))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1207f, global0[_wgslsmith_index_u32(1u, 13u)]))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-737f, 1144f)))))), vec2<i32>(1i, func_3(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~84211u, u_input.a.x), 13u)], ~u_input.a.x, func_2())), reverseBits(_wgslsmith_add_u32(0u, select(u_input.a.x, u_input.a.x, false))));
}

