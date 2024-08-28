struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, vec3<f32>(-158f, 117f, 1264f), -499f);

var<private> global1: vec2<f32>;

@compute
@workgroup_size(1)
fn main() {
    global1 = global0.b.yy;
    let var_0 = !vec2<bool>(global0.a, !any(select(vec3<bool>(global0.a, true, global0.a), vec3<bool>(global0.a, global0.a, global0.a), global0.a)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, u_input.c.x, u_input.c.x);
}

