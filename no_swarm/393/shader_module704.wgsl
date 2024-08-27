struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(111931u, false), Struct_1(0u, true), Struct_1(73857u, true));

var<private> global1: Struct_1 = Struct_1(11645u, true);

var<private> global2: array<f32, 19>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1.a >> (_wgslsmith_mod_u32(7524u, ~0u) % 32u), 1u), 3u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(0u, 19u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -225f) * global2[_wgslsmith_index_u32(firstLeadingBit(0u ^ u_input.a), 19u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(73429u, 19u)], _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(abs(4294967295u), 19u)], 431f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1115f - global2[_wgslsmith_index_u32(global1.a, 19u)]) + _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global1.a, 19u)])), global2[_wgslsmith_index_u32(~global1.a, 19u)]) * vec4<f32>(_wgslsmith_f_op_f32(-179f + -841f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1068f))), global2[_wgslsmith_index_u32(1u, 19u)], global2[_wgslsmith_index_u32(u_input.a, 19u)])), u_input.b.x);
}

