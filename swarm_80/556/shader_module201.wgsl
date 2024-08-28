struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: u32,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(_wgslsmith_clamp_vec4_i32(u_input.b, u_input.b, u_input.b));
    let var_1 = vec2<u32>(u_input.e, ~firstLeadingBit(~u_input.c.x) ^ 1u);
    var var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1011f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(196f)))))));
}

