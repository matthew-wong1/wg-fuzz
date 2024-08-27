struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: bool,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec2<u32>,
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

var<private> global0: vec3<i32>;

var<private> global1: array<vec2<u32>, 2>;

var<private> global2: Struct_3 = Struct_3(Struct_2(0i, vec2<i32>(i32(-2147483648), 2147483647i), true, Struct_1(i32(-2147483648), -1i, 1709f, vec3<i32>(-1i, -38150i, 1i)), 4294967295u), -784f, Struct_2(-1i, vec2<i32>(2147483647i, -16411i), false, Struct_1(i32(-2147483648), 1i, -872f, vec3<i32>(-23140i, -1i, -43777i)), 47529u));

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(global2.a.b | u_input.c.yx);
}

