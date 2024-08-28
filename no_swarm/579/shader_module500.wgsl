struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9> = array<f32, 9>(1723f, 799f, 739f, 979f, 131f, -644f, -937f, -317f, 418f);

var<private> global1: array<vec2<i32>, 13> = array<vec2<i32>, 13>(vec2<i32>(14578i, -1i), vec2<i32>(36309i, -4470i), vec2<i32>(-1i, -1i), vec2<i32>(38085i, -18195i), vec2<i32>(-62320i, 0i), vec2<i32>(1i, 14094i), vec2<i32>(1i, 2147483647i), vec2<i32>(-1i, 7727i), vec2<i32>(-9492i, 2147483647i), vec2<i32>(7705i, i32(-2147483648)), vec2<i32>(-9836i, -4026i), vec2<i32>(33075i, 11041i), vec2<i32>(0i, -1i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, vec2<f32>(344f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(58596u, 9u)]))))));
}

