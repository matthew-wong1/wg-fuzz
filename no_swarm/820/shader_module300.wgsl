struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(12386i, -1i, -74692i, 2147483647i), vec2<u32>(1u, 1u), 4294967295u, vec2<u32>(4294967295u, 33883u));

var<private> global1: Struct_1;

var<private> global2: array<vec4<i32>, 14>;

var<private> global3: vec4<f32>;

var<private> global4: array<vec3<u32>, 10>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~global0.d.x | (~_wgslsmith_add_u32(global1.b.x, 4294967295u) << (~3044u % 32u)), global1.b);
}

