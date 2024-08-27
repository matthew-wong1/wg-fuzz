struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec2<u32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: i32,
    c: vec4<f32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<i32>, 29> = array<vec3<i32>, 29>(vec3<i32>(-39121i, -1i, 0i), vec3<i32>(0i, 0i, 4242i), vec3<i32>(2147483647i, -39707i, -1i), vec3<i32>(-57463i, -34091i, -23976i), vec3<i32>(-31096i, 19459i, i32(-2147483648)), vec3<i32>(-21029i, -24110i, 0i), vec3<i32>(-16769i, 0i, 28089i), vec3<i32>(22i, -1i, 17470i), vec3<i32>(-17319i, 2147483647i, -57380i), vec3<i32>(-26751i, -20847i, 25173i), vec3<i32>(-21614i, i32(-2147483648), -35947i), vec3<i32>(2147483647i, 2147483647i, -4987i), vec3<i32>(-16986i, 2147483647i, 17801i), vec3<i32>(-1i, i32(-2147483648), 0i), vec3<i32>(38456i, -1i, 25489i), vec3<i32>(-1i, 2147483647i, -1i), vec3<i32>(2147483647i, -13802i, 45753i), vec3<i32>(-16029i, -1i, 2147483647i), vec3<i32>(1i, 28908i, -29367i), vec3<i32>(1447i, i32(-2147483648), 0i), vec3<i32>(21298i, 70481i, -85796i), vec3<i32>(i32(-2147483648), 1i, 2147483647i), vec3<i32>(-13182i, i32(-2147483648), 30922i), vec3<i32>(17745i, 0i, 11427i), vec3<i32>(0i, -4226i, 5673i), vec3<i32>(2147483647i, 1i, -2490i), vec3<i32>(-7998i, i32(-2147483648), -20877i), vec3<i32>(2147483647i, -62955i, 2147483647i), vec3<i32>(0i, 0i, -1i));

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.xyy, 4294967295u, ~(global0.a.x ^ -1954i), firstTrailingBit(global0.a.zy), firstTrailingBit(vec2<u32>(4033u, u_input.c)));
}

