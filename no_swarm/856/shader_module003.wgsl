struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
    d: vec2<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12>;

var<private> global1: vec2<u32>;

var<private> global2: array<bool, 18> = array<bool, 18>(true, false, false, false, true, false, true, false, false, false, false, true, true, true, false, false, false, true);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(11614u, 2016f, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(48353u, global1.x), select(~_wgslsmith_dot_vec3_u32(vec3<u32>(48255u, global1.x, global1.x), vec3<u32>(global1.x, u_input.a, 2011u)), ~global1.x, any(vec3<bool>(false, false, true)))), 12u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-212f)), _wgslsmith_f_op_f32(f32(-1f) * -1489f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1057f))) * 1000f));
}

