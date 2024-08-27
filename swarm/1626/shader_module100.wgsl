struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20> = array<i32, 20>(-6609i, -25219i, 0i, -1i, 19193i, 1i, -12849i, 2147483647i, 1i, -20264i, -36093i, 6223i, -63699i, -5142i, 36366i, 1i, 0i, -1i, 18130i, -1i);

var<private> global1: i32 = 2147483647i;

var<private> global2: array<i32, 8>;

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, true);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, u_input.b.x);
}

