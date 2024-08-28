struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: bool,
    d: vec4<bool>,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
    e: vec3<i32>,
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

var<private> global0: array<f32, 14>;

var<private> global1: vec3<bool>;

var<private> global2: vec3<bool> = vec3<bool>(true, true, false);

var<private> global3: array<vec4<f32>, 29>;

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec4<u32>(1u, 1u, 1u, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x);
}

