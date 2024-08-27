struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<bool>,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<f32>(-253f, 435f, 1021f));

var<private> global1: array<Struct_1, 22>;

var<private> global2: array<bool, 15>;

var<private> global3: i32 = -11230i;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> StorageBuffer {
    return StorageBuffer(select(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(firstLeadingBit(u_input.b), vec3<u32>(u_input.c, 1u, u_input.b.x)), ~countOneBits(u_input.b)), u_input.b, select(!vec3<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 15u)], true), !(!vec3<bool>(global2[_wgslsmith_index_u32(6202u, 15u)], false, global2[_wgslsmith_index_u32(u_input.b.x, 15u)])), !vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 15u)], true, false))), global0.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2007f, -574f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

