struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: u32,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 970f;

var<private> global1: vec3<bool> = vec3<bool>(true, true, true);

var<private> global2: array<u32, 14> = array<u32, 14>(0u, 0u, 4294967295u, 4294967295u, 0u, 42638u, 0u, 0u, 1u, 5499u, 64760u, 1u, 11698u, 17369u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(select(~(~(~vec2<u32>(35398u, u_input.a.x))), ~vec2<u32>(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(u_input.a.x, 14u)], 40078u), 0u), global1.xz));
}

