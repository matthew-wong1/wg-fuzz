struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: u32,
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

var<private> global0: array<bool, 21> = array<bool, 21>(false, false, true, true, true, true, true, false, true, false, true, false, true, true, false, false, false, true, false, true, false);

var<private> global1: array<u32, 24>;

var<private> global2: array<bool, 18>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(u_input.e, global1[_wgslsmith_index_u32(u_input.b, 24u)], u_input.b), 1u) | ~max(vec2<u32>(102548u, 1u), vec2<u32>(u_input.b, global1[_wgslsmith_index_u32(1u, 24u)])), _wgslsmith_sub_vec2_u32(~abs(vec2<u32>(u_input.e, 22708u)), max(min(vec2<u32>(4294967295u, 101419u), vec2<u32>(4294967295u, u_input.b)), ~vec2<u32>(1u, u_input.e)))));
}

