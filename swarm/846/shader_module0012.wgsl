struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: vec2<f32>,
    d: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: f32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 6>;

var<private> global1: array<vec4<f32>, 6> = array<vec4<f32>, 6>(vec4<f32>(1518f, -373f, -1034f, -814f), vec4<f32>(-1124f, 1000f, 898f, 1000f), vec4<f32>(1740f, 703f, 622f, 1121f), vec4<f32>(1000f, 1479f, 957f, -1249f), vec4<f32>(288f, 1000f, -619f, -770f), vec4<f32>(-1032f, 853f, -783f, -1054f));

var<private> global2: Struct_4 = Struct_4(Struct_2(false, -458f, Struct_1(false), vec2<f32>(1158f, -1475f)), -435f, 1000f);

var<private> global3: f32;

var<private> global4: array<vec3<i32>, 16>;

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global2.a.c.a);
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

