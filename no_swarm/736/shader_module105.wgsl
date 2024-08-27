struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: Struct_1,
    d: vec4<u32>,
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

var<private> global0: Struct_2 = Struct_2(vec3<bool>(true, true, true), vec4<f32>(639f, 1658f, -289f, 543f), Struct_1(24879i, vec4<u32>(4294967295u, 30033u, 140299u, 100759u), vec2<f32>(907f, 1000f), vec2<f32>(725f, -344f)), vec4<u32>(75035u, 0u, 4294967295u, 35241u));

var<private> global1: array<Struct_1, 3>;

var<private> global2: Struct_2 = Struct_2(vec3<bool>(true, false, false), vec4<f32>(169f, -1931f, 2180f, -1715f), Struct_1(-1i, vec4<u32>(1u, 76551u, 100014u, 30948u), vec2<f32>(239f, 1719f), vec2<f32>(730f, 142f)), vec4<u32>(18663u, 11808u, 14922u, 4294967295u));

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(375i);
}

