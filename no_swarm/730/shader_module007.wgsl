struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(-1865f), Struct_1(368f), Struct_1(864f), Struct_1(501f), Struct_1(-841f), Struct_1(-218f), Struct_1(-2039f), Struct_1(-1188f), Struct_1(-1369f), Struct_1(-901f), Struct_1(1047f), Struct_1(-782f), Struct_1(-994f), Struct_1(-2173f), Struct_1(1000f), Struct_1(-1450f), Struct_1(-480f), Struct_1(587f), Struct_1(184f), Struct_1(-1096f), Struct_1(-314f), Struct_1(-576f), Struct_1(1288f), Struct_1(-1315f), Struct_1(1281f), Struct_1(2415f), Struct_1(-623f), Struct_1(356f), Struct_1(1337f));

var<private> global1: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(-1694f), Struct_1(-1320f), Struct_1(1000f), Struct_1(-714f), Struct_1(-279f), Struct_1(497f), Struct_1(-291f), Struct_1(-145f), Struct_1(-1000f), Struct_1(1462f), Struct_1(-715f), Struct_1(-512f), Struct_1(-380f), Struct_1(-574f), Struct_1(486f), Struct_1(-238f), Struct_1(1510f));

var<private> global2: array<i32, 4> = array<i32, 4>(-88554i, 2147483647i, -9726i, -39454i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1059f, 1756f)))))), abs(~vec2<i32>(-1i, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(1i, u_input.a.x, global2[_wgslsmith_index_u32(u_input.b, 4u)], -17274i)))), vec4<f32>(-395f, _wgslsmith_div_f32(-1262f, _wgslsmith_f_op_f32(1169f + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), -239f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1057f))), u_input.a.zy);
}

