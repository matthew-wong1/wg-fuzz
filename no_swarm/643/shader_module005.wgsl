struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: i32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: u32,
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

var<private> global0: i32 = 2147483647i;

var<private> global1: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(4665i, -475f, vec3<f32>(1587f, 396f, 1661f), 24871i, vec4<bool>(true, false, true, true)), Struct_1(i32(-2147483648), 262f, vec3<f32>(-434f, -2068f, -651f), -1i, vec4<bool>(false, false, false, true)));

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(firstLeadingBit(0i)));
}

