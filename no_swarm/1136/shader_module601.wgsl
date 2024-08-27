struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<f32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_4 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
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

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true && !any(vec3<bool>(true, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.b, -2147483647i, ~(i32(-1i) * -1i), 0i) >> (~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.a, 31328u, 4294967295u), max(vec4<u32>(u_input.e, 20179u, u_input.e, 1u), vec4<u32>(91072u, u_input.a, 28884u, 17637u)), vec4<u32>(88u, u_input.e, u_input.a, u_input.d) << (vec4<u32>(u_input.e, u_input.d, 0u, u_input.e) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(647f)) + _wgslsmith_f_op_f32(trunc(-136f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-985f + 267f)))));
}

