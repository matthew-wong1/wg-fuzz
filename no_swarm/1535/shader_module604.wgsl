struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec2<bool>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: u32,
    d: Struct_3,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, false, false);

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.yy, (vec2<u32>(30429u, ~76410u) ^ select(select(vec2<u32>(14511u, u_input.b.x), u_input.b.yz, global0.zy), u_input.b.zx, !global0.zx)) >> ((u_input.b.yy ^ ~vec2<u32>(u_input.b.x, u_input.c)) % vec2<u32>(32u)));
}

