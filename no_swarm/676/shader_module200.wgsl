struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: f32,
    b: f32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a & 1u, countOneBits(countOneBits(1u)) >> (u_input.a % 32u), _wgslsmith_sub_i32(-(~u_input.c), u_input.b));
}

