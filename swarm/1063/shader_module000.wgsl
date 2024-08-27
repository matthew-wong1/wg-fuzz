struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
    d: i32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 11>();
    global0 = array<u32, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -236f) + _wgslsmith_f_op_f32(-1231f + 1640f)), 832f, true)), _wgslsmith_clamp_vec4_u32(~((vec4<u32>(global0[_wgslsmith_index_u32(10812u, 11u)], 5888u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 11u)], 11u)], 11u)], 0u) & vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 11u)], 11u)], 11u)], 11u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 11u)], 4294967295u, 4294967295u)) >> ((vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 11u)], 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 11u)], global0[_wgslsmith_index_u32(1u, 11u)]) | vec4<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 11u)], 11u)], 11u)], 11u)], 30956u, 0u)) % vec4<u32>(32u))), vec4<u32>(~(global0[_wgslsmith_index_u32(83490u, 11u)] | global0[_wgslsmith_index_u32(4294967295u, 11u)]), global0[_wgslsmith_index_u32(13749u, 11u)], ~_wgslsmith_div_u32(4294967295u, global0[_wgslsmith_index_u32(0u, 11u)]), abs(1u | global0[_wgslsmith_index_u32(10370u, 11u)])), abs(countOneBits(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 11u)], 11u)], 11u)], 11u)], global0[_wgslsmith_index_u32(32286u, 11u)], 1u, 7814u)))));
}

