struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_2,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22> = array<f32, 22>(148f, -124f, 1215f, -1296f, -1604f, 863f, -330f, -766f, -3077f, -1054f, -613f, -488f, -1735f, -593f, -940f, 266f, -223f, 641f, -271f, 629f, -1822f, -1525f);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, ~_wgslsmith_sub_vec4_u32(vec4<u32>(min(6264u, u_input.e), u_input.e << (u_input.e % 32u), ~u_input.a, u_input.e), (vec4<u32>(u_input.e, 1u, u_input.e, u_input.e) | vec4<u32>(74060u, u_input.a, 4294967295u, u_input.e)) & ~vec4<u32>(u_input.e, u_input.e, 63584u, 4294967295u)), vec2<f32>(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(20786u, 22u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(823u, 22u)])) * _wgslsmith_f_op_f32(f32(-1f) * -513f)), all(vec3<bool>(true, var_0, false)))), global0[_wgslsmith_index_u32(u_input.e, 22u)]));
}

