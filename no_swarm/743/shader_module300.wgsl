struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec4<bool>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: Struct_2,
    d: u32,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: vec4<f32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-488f, 332f, 472f, -860f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d.x;
    var_0 = ~u_input.a.x;
    var var_1 = !all(vec2<bool>(true, true));
    var var_2 = global0.x;
    var_2 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(751f, global0.x, false)), 162f, _wgslsmith_f_op_f32(-global0.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(global0.x, -666f)), _wgslsmith_f_op_f32(1000f - global0.x), global0.x))), -21685i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.x)) - 604f), 4294967295u, _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(~u_input.b.x, u_input.b.x), 0u, u_input.b.x, ~99514u), ~select(~vec4<u32>(u_input.b.x, 0u, 0u, u_input.b.x), vec4<u32>(0u, u_input.b.x, u_input.b.x, 4294967295u), vec4<bool>(true, true, true, true))));
}

