struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(0u, 42813u, 44489u, 1u);

var<private> global1: u32;

var<private> global2: array<vec2<bool>, 7>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<bool>, 7>();
    global2 = array<vec2<bool>, 7>();
    global2 = array<vec2<bool>, 7>();
    var var_0 = -reverseBits(-69739i);
    global1 = global0.x;
    var var_1 = select(vec4<bool>(false, true, ~(i32(-1i) * -84157i) == u_input.a, false), !vec4<bool>(true, true, any(select(global2[_wgslsmith_index_u32(1u, 7u)], vec2<bool>(true, false), true)), true), false);
    global2 = array<vec2<bool>, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~firstTrailingBit(vec4<u32>(3922u, global0.x, 2832u, global0.x)))), global0.x ^ ~(global0.x >> (~108791u % 32u)), _wgslsmith_f_op_f32(sign(1f)));
}

