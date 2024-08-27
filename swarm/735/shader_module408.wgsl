struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: f32,
    d: vec2<u32>,
    e: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: f32;

var<private> global1: array<vec3<bool>, 22>;

var<private> global2: Struct_2 = Struct_2(vec4<f32>(703f, 860f, 280f, 165f), vec3<i32>(1i, 27038i, -1i), -17078i, -1i);

var<private> global3: array<u32, 28> = array<u32, 28>(15204u, 8027u, 40597u, 1u, 1u, 0u, 36644u, 7834u, 32393u, 1u, 11279u, 19368u, 1u, 4294967295u, 0u, 0u, 1u, 1201u, 29936u, 1u, 34000u, 4294967295u, 10911u, 16001u, 53488u, 178u, 0u, 25073u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer((~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 28u)], 28u)] >> ((abs(global3[_wgslsmith_index_u32(26332u, 28u)]) ^ ~1u) % 32u)) | 1u);
}

