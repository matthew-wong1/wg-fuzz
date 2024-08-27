struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_3(Struct_1(2147483647i, -1841f, vec2<f32>(816f, 2211f), vec2<u32>(15169u, 4294967295u)), false, false), Struct_2(4294967295u, vec4<i32>(1i, i32(-2147483648), -31107i, i32(-2147483648))));

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(abs(~global0.b.b.zzw));
}

