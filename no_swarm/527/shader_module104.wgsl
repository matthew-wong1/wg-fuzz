struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(-28995i), Struct_1(4038i), Struct_1(-5295i), Struct_1(1i), Struct_1(0i), Struct_1(-93615i), Struct_1(1i), Struct_1(0i), Struct_1(19917i), Struct_1(38830i), Struct_1(0i), Struct_1(-14590i), Struct_1(-24884i), Struct_1(2147483647i), Struct_1(25191i), Struct_1(4912i), Struct_1(-58221i), Struct_1(14414i), Struct_1(1i), Struct_1(i32(-2147483648)), Struct_1(1i), Struct_1(28653i), Struct_1(45821i), Struct_1(405i), Struct_1(i32(-2147483648)), Struct_1(2147483647i), Struct_1(-4001i), Struct_1(31654i), Struct_1(-5271i), Struct_1(1i), Struct_1(12364i));

var<private> global2: array<f32, 23>;

var<private> global3: array<Struct_1, 17>;

var<private> global4: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1534f, global2[_wgslsmith_index_u32(u_input.b, 23u)], global2[_wgslsmith_index_u32(1u, 23u)], -677f))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2[_wgslsmith_index_u32(0u, 23u)], -101f, -803f, global2[_wgslsmith_index_u32(u_input.b, 23u)]))))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(301f))), _wgslsmith_div_f32(749f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 23u)])))))), global2[_wgslsmith_index_u32(~(~43989u), 23u)], firstLeadingBit(_wgslsmith_dot_vec4_i32(~(~vec4<i32>(1i, global4.a, u_input.a, -38187i)), vec4<i32>(global4.a, abs(-1i), ~1i, -u_input.a))));
}

