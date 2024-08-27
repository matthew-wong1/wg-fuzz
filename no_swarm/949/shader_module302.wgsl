struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19> = array<u32, 19>(27383u, 4294967295u, 29586u, 40226u, 1991u, 20602u, 8969u, 70668u, 4294967295u, 0u, 0u, 0u, 1u, 41263u, 1283u, 4294967295u, 1u, 1u, 24667u);

var<private> global1: array<vec2<i32>, 4> = array<vec2<i32>, 4>(vec2<i32>(-22340i, 6412i), vec2<i32>(23836i, 2147483647i), vec2<i32>(-64573i, 0i), vec2<i32>(2147483647i, 0i));

var<private> global2: f32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 286f;
    var var_0 = ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~50101u, 19u)], 19u)];
    let var_1 = -1000f;
    global1 = array<vec2<i32>, 4>();
    let var_2 = u_input.a;
    global1 = array<vec2<i32>, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a, ~4398u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], _wgslsmith_sub_u32(~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 19u)], 19u)], 19u)], 19u)], 19u)]), global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 19u)], 19u)], 19u)], 19u)], 1u)), 19u)])), 19u)], 19u)]);
}

