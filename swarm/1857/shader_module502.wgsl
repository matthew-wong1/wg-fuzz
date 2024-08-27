struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec2<bool>,
    d: i32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct Struct_5 {
    a: i32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<u32, 18> = array<u32, 18>(0u, 1u, 0u, 1u, 84990u, 23547u, 4294967295u, 4294967295u, 1u, 682u, 46483u, 4427u, 32017u, 29915u, 0u, 4294967295u, 11540u, 1u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(0u, u_input.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.e.yx)) - vec2<f32>(_wgslsmith_f_op_f32(-global0.e.x), _wgslsmith_f_op_f32(-global0.a.x)))), global1[_wgslsmith_index_u32(~(4398u | u_input.a.x), 18u)], -458f);
}

