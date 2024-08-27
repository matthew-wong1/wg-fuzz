struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(0u, 4703u, 1u, 1u), vec3<i32>(2147483647i, i32(-2147483648), 2147483647i), vec3<i32>(-5620i, 15694i, 2147483647i));

var<private> global1: array<vec3<i32>, 32>;

var<private> global2: Struct_1;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(88782u, ~_wgslsmith_sub_i32(~(-55400i), -max(-3841i, -15792i)), global0.c.x);
}

