struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: Struct_3,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 26>;

var<private> global1: array<u32, 18>;

var<private> global2: Struct_4;

var<private> global3: vec3<i32>;

var<private> global4: array<bool, 14>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: bool) -> i32 {
    global1 = array<u32, 18>();
    return -35702i;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec3<i32>(max(func_1(false), firstTrailingBit(reverseBits(1i | global3.x))), func_1(!any(vec3<bool>(global4[_wgslsmith_index_u32(58194u, 14u)], global4[_wgslsmith_index_u32(13601u, 14u)], false))), -33250i);
    global2 = Struct_4(abs(~_wgslsmith_sub_vec2_u32(firstLeadingBit(u_input.e.yw), global2.a >> (vec2<u32>(u_input.e.x, 114563u) % vec2<u32>(32u)))), global2.b, Struct_3(~firstTrailingBit(abs(1u))), false, global2.e);
    let x = u_input.a;
    s_output = StorageBuffer(5584i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-global2.e), global2.e)))), 1453f);
}

