struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
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

var<private> global0: vec2<bool> = vec2<bool>(false, false);

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<bool>(any(select(vec3<bool>(select(true, false, false), !global0.x, true), select(select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), !vec3<bool>(true, global0.x, true), any(vec4<bool>(true, global0.x, false, false))), all(select(vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(global0.x, false, true, true), vec4<bool>(global0.x, global0.x, true, global0.x))))), false);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(1u));
}

