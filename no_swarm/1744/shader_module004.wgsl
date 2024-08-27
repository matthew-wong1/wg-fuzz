struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<bool>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(~select(12615u, 32861u, all(vec3<bool>(false, true, true))) <= 4294967295u, any(vec2<bool>(false, any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true)))), true);
    let var_1 = select(vec2<bool>(true, any(var_0.xy)), !(!(!vec2<bool>(var_0.x, var_0.x))), var_0.xz);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(firstTrailingBit(reverseBits(vec4<i32>(u_input.a.x, u_input.b.x, 2147483647i, -67867i)))));
}

