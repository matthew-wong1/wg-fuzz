struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: vec4<u32>,
    d: f32,
    e: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec2<bool>,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = i32(-1i) * -10556i;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-244f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1135f, 1283f)) - 1340f), 1f)));
    let var_2 = _wgslsmith_div_vec2_u32(abs(~(~vec2<u32>(u_input.c, u_input.c))), _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(48191u, u_input.c)), vec2<u32>(0u, 4294967295u)) & ~(vec2<u32>(u_input.c, u_input.c) | vec2<u32>(34519u, 4294967295u))) | vec2<u32>(min(u_input.c, u_input.c), u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(-1002f, u_input.b.x);
}

