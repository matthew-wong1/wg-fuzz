struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: Struct_1,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7> = array<i32, 7>(17962i, -1i, 25331i, -1i, -12211i, 75657i, 2147483647i);

var<private> global1: array<Struct_1, 7>;

var<private> global2: array<u32, 13> = array<u32, 13>(0u, 7464u, 0u, 4294967295u, 74891u, 1u, 28545u, 31225u, 13904u, 41350u, 1u, 31244u, 1u);

var<private> global3: array<Struct_1, 21>;

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(19136i, -2147483647i));
}

