struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec2<f32>,
    d: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(-1120f, -1000f, 530f, -121f), 41882u, vec3<i32>(26881i, -26474i, 0i));

var<private> global1: array<bool, 23> = array<bool, 23>(false, false, true, true, false, false, false, true, true, false, false, false, false, true, true, true, false, false, false, true, true, false, false);

var<private> global2: vec4<i32>;

var<private> global3: array<f32, 4> = array<f32, 4>(-1058f, 1076f, -1233f, -1728f);

var<private> global4: array<Struct_3, 9>;

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(226f, u_input.a);
}

