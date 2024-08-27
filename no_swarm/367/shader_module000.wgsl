struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec3<bool>,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19> = array<i32, 19>(33741i, -26658i, 20810i, 13756i, i32(-2147483648), 6549i, -1i, 49715i, 1i, 2147483647i, -4318i, 0i, -1i, -39122i, -4153i, 1i, 12339i, -10686i, 15331i);

var<private> global1: Struct_1;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(false);
    let x = u_input.a;
    s_output = StorageBuffer(16985i, ~min(~_wgslsmith_sub_i32(u_input.a, 0i), -min(28910i, u_input.c.x)), u_input.b.x);
}

