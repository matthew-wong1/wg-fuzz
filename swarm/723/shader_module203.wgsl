struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: u32,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~(-(~_wgslsmith_mult_i32(u_input.a, -2147483647i))));
}

