struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec4<f32>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<u32>,
    d: bool,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a.yy, u_input.a.zz), ~vec2<u32>(17536u, 27846u)), vec2<u32>(u_input.a.x, 1u)), min(min(vec2<u32>(18858u, 28005u), ~u_input.a.ww), vec2<u32>(~39880u, abs(55589u)))));
}

