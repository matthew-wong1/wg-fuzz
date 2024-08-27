struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!vec3<bool>(all(vec3<bool>(true, false, true)), all(vec4<bool>(false, false, false, true)), any(vec3<bool>(true, true, false)))));
    var var_1 = vec3<i32>(-2147483647i, u_input.b, abs(-1i ^ u_input.b));
    let var_2 = 1061f;
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -743f) + _wgslsmith_f_op_f32(var_2 * var_2)), -228f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2, 127f))) - vec2<f32>(var_2, var_2))));
    let x = u_input.a;
    s_output = StorageBuffer(select(countOneBits(vec3<u32>(u_input.a >> (73152u % 32u), u_input.a, 5798u)), ~(~vec3<u32>(1u, u_input.a, 45369u) & vec3<u32>(51500u, global0[_wgslsmith_index_u32(132079u, 16u)], u_input.a)), !(!select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(false, var_0.x, var_0.x), var_0.x))), _wgslsmith_f_op_f32(abs(var_2)), vec2<f32>(var_2, _wgslsmith_f_op_f32(-579f + 1796f)));
}

