struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec3<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
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

var<private> global0: vec4<i32> = vec4<i32>(1i, 1i, 19541i, 2147483647i);

var<private> global1: vec2<i32> = vec2<i32>(1i, 2147483647i);

var<private> global2: array<vec4<i32>, 1>;

var<private> global3: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(global2[_wgslsmith_index_u32(~global3.d, 1u)])) << (~(abs(vec4<u32>(global3.d, global3.d, 1u, 13200u)) >> (~vec4<u32>(global3.d, 0u, global3.d, global3.d) % vec4<u32>(32u))) % vec4<u32>(32u)));
}

