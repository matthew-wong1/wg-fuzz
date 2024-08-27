struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec3<u32>,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec3<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(abs(-2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1f, -1032f)) - 629f), _wgslsmith_add_u32(u_input.b.x, countOneBits(~firstTrailingBit(54282u))), u_input.c, u_input.d);
}

