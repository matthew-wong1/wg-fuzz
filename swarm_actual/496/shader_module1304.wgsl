struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: bool,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_2,
    d: vec3<f32>,
}

struct Struct_4 {
    a: bool,
    b: vec4<bool>,
    c: Struct_2,
    d: vec4<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18>;

var<private> global1: array<vec3<f32>, 24>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(select(725f, 1f, global0[_wgslsmith_index_u32(u_input.b, 18u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(686f - -1052f)))), select(firstLeadingBit(~vec3<u32>(31053u, 1u, 70238u)) ^ ~abs(vec3<u32>(35339u, 19797u, u_input.b)), ~vec3<u32>(37083u, 38733u, u_input.b) >> (vec3<u32>(~u_input.b, ~30743u, 21670u) % vec3<u32>(32u)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-456f + _wgslsmith_f_op_f32(max(962f, 359f))))), vec2<u32>(u_input.b, u_input.b));
}

