struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_1,
    d: f32,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: Struct_4;

var<private> global2: vec2<i32>;

var<private> global3: array<f32, 27> = array<f32, 27>(-334f, 1000f, -691f, 368f, 367f, -256f, -1000f, 1000f, 1487f, -264f, 951f, -998f, -2029f, -672f, 1552f, 550f, -226f, -494f, -176f, 1059f, -748f, 2105f, -1163f, 643f, -482f, 812f, 1000f);

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~global0.wxy, global0.yz, min(abs(vec3<u32>(0u | u_input.c, 15228u, u_input.a.x)), ~u_input.a.wxz));
}

