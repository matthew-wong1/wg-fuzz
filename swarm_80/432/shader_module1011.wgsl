struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<f32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: vec4<bool> = vec4<bool>(true, true, false, true);

var<private> global2: array<i32, 2>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1() -> vec2<bool> {
    let var_0 = vec2<f32>(global0.x, -473f);
    return vec2<bool>(global1.x, global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_u32(1u, 1u & _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), select(~vec2<u32>(34544u, 1u), ~vec2<u32>(17358u, 1u), vec2<bool>(global1.x, true))));
    let var_1 = abs(global2[_wgslsmith_index_u32(abs(4294967295u), 2u)]);
    var var_2 = vec2<i32>(-36038i, -14528i);
    let var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))), global0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(global0.x))))))), 1117f);
}

