struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec3<u32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 1>;

var<private> global1: array<vec4<f32>, 17>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, ~(~_wgslsmith_sub_i32(~3388i, ~u_input.b.x)));
}

