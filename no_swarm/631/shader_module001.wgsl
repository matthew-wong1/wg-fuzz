struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<bool, 25> = array<bool, 25>(true, false, true, false, false, false, true, false, true, true, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false);

var<private> global1: array<vec3<f32>, 15> = array<vec3<f32>, 15>(vec3<f32>(572f, 1279f, 697f), vec3<f32>(-897f, -1603f, 397f), vec3<f32>(136f, -1608f, 669f), vec3<f32>(1099f, 222f, -671f), vec3<f32>(670f, -1477f, 657f), vec3<f32>(-956f, -954f, 472f), vec3<f32>(292f, 1229f, -437f), vec3<f32>(2320f, 657f, -991f), vec3<f32>(721f, -142f, 1000f), vec3<f32>(172f, -204f, 933f), vec3<f32>(1161f, -1000f, 873f), vec3<f32>(-279f, -536f, -162f), vec3<f32>(398f, 861f, -249f), vec3<f32>(1270f, 776f, -523f), vec3<f32>(1856f, 928f, 1072f));

var<private> global2: Struct_3;

var<private> global3: vec4<u32> = vec4<u32>(0u, 1u, 15126u, 4265u);

var<private> global4: f32;

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(-(~1i));
}

