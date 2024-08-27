struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<f32>,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec2<f32>;

var<private> global2: array<Struct_2, 10>;

var<private> global3: array<vec4<f32>, 5> = array<vec4<f32>, 5>(vec4<f32>(-1000f, -265f, 107f, 269f), vec4<f32>(-296f, 1642f, -1174f, 1078f), vec4<f32>(-237f, 173f, -596f, 1005f), vec4<f32>(-650f, -249f, 1014f, 489f), vec4<f32>(2275f, 248f, 1002f, 620f));

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = u_input.a.x;
    global2 = array<Struct_2, 10>();
    var var_2 = 1700f;
    global1 = global0.a.b.yw;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zxx);
}

