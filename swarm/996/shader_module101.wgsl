struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 25>;

var<private> global1: array<u32, 25>;

var<private> global2: array<Struct_3, 17>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = vec4<bool>(arg_0, !arg_0, all(vec3<bool>(arg_0, all(!vec3<bool>(false, arg_0, true)), !(!arg_0))), false);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2304f, 1681f, -1000f, 1400f), vec4<f32>(-1281f, -332f, -291f, 1000f), var_0))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-883f, 1339f, -336f, -684f)))))));
    var var_2 = !vec2<bool>(true, var_0.x);
    global0 = array<Struct_3, 25>();
    global1 = array<u32, 25>();
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(max(-1937f, _wgslsmith_f_op_f32(abs(var_1.x))))));
}

fn func_3(arg_0: f32) -> u32 {
    global2 = array<Struct_3, 17>();
    global1 = array<u32, 25>();
    let var_0 = vec2<u32>(~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(min(1u, global1[_wgslsmith_index_u32(2962u, 25u)]), 25u)]), 25u)], 25u)], 25u)]), reverseBits(0u));
    global0 = array<Struct_3, 25>();
    var var_1 = 42261i;
    return global1[_wgslsmith_index_u32(var_0.x, 25u)];
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: u32) -> StorageBuffer {
    global0 = array<Struct_3, 25>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(arg_0.a - arg_1.d));
    var var_1 = Struct_1(var_0.a);
    let var_2 = vec2<u32>(_wgslsmith_mod_u32(arg_2, func_3(_wgslsmith_f_op_f32(-1706f * _wgslsmith_f_op_f32(exp2(arg_0.a))))), abs(_wgslsmith_mult_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1.a.x, 25u)], 25u)], 12504u)) ^ 0u);
    var var_3 = all(vec3<bool>(false, true, !any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true)))));
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1376f - -948f) + 1007f)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.a, var_1.a))) * -1000f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.a))))), 350f), -772f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1004f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-244f + _wgslsmith_f_op_f32(f32(-1f) * -117f)))), -944f)));
    let x = u_input.a;
    s_output = func_2(func_1(!all(vec4<bool>(true, false, false, true))), Struct_3(vec4<u32>(~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 25u)], 25u)]), global1[_wgslsmith_index_u32(~106307u, 25u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~37645u, 25u)], 25u)], 25u)], global1[_wgslsmith_index_u32(1u, 25u)]), vec3<i32>(-u_input.b, 12806i, 1i), 4294967295u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-3603f + -646f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1140f, 296f)), _wgslsmith_f_op_f32(f32(-1f) * -883f)))), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~1u, 25u)], 25u)] >> ((global1[_wgslsmith_index_u32(~26371u, 25u)] >> ((1u << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4176u, 25u)], 25u)] % 32u)) % 32u)) % 32u), 25u)], 25u)]);
}

