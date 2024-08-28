struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: i32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(-147f, -2009f, 1722f), vec3<i32>(262i, -32269i, i32(-2147483648)), vec3<f32>(-589f, 1059f, -1000f), 2147483647i, vec2<f32>(661f, -151f));

var<private> global1: vec4<f32> = vec4<f32>(-785f, -1394f, 369f, -1408f);

var<private> global2: Struct_1 = Struct_1(vec3<f32>(-272f, -1352f, 1520f), vec3<i32>(-78649i, 38699i, 0i), vec3<f32>(-1084f, -2279f, -734f), 0i, vec2<f32>(1688f, 1114f));

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(countOneBits(-(~vec4<i32>(global2.d, 48807i, u_input.c.x, -2147483647i)))), u_input.b);
}

