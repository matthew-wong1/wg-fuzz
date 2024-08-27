struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
    d: bool,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec2<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(32995u, false, false, false, vec3<bool>(true, true, false)), Struct_1(9987u, false, false, true, vec3<bool>(false, false, false)), Struct_1(0u, true, false, false, vec3<bool>(true, true, true)), Struct_1(18542u, true, false, true, vec3<bool>(true, true, true)), Struct_1(1u, true, true, false, vec3<bool>(true, true, true)), Struct_1(4294967295u, true, true, false, vec3<bool>(true, true, false)), Struct_1(1u, false, false, true, vec3<bool>(false, false, true)), Struct_1(0u, false, false, true, vec3<bool>(true, true, false)), Struct_1(68790u, true, false, false, vec3<bool>(false, false, true)), Struct_1(0u, true, false, false, vec3<bool>(false, false, true)), Struct_1(1u, true, true, false, vec3<bool>(false, true, true)), Struct_1(0u, true, true, true, vec3<bool>(false, true, false)), Struct_1(30185u, false, false, false, vec3<bool>(true, true, true)), Struct_1(12534u, true, false, true, vec3<bool>(false, false, true)), Struct_1(4294967295u, true, false, false, vec3<bool>(true, false, true)), Struct_1(4294967295u, false, true, false, vec3<bool>(false, true, true)), Struct_1(0u, true, true, true, vec3<bool>(true, true, false)), Struct_1(0u, false, false, false, vec3<bool>(false, true, false)), Struct_1(1u, true, true, true, vec3<bool>(false, true, true)), Struct_1(4294967295u, false, true, false, vec3<bool>(true, false, true)), Struct_1(4294967295u, true, false, false, vec3<bool>(true, false, false)), Struct_1(44717u, false, true, true, vec3<bool>(false, false, false)), Struct_1(4294967295u, false, false, true, vec3<bool>(false, false, false)), Struct_1(0u, true, false, true, vec3<bool>(false, false, false)));

var<private> global1: array<vec3<f32>, 29>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(~0u, 24u)];
    global1 = array<vec3<f32>, 29>();
    var var_1 = global0[_wgslsmith_index_u32(var_0.a ^ ~1u, 24u)];
    let var_2 = 889f;
    let var_3 = Struct_1(var_0.a, !all(select(var_1.e.xx, select(vec2<bool>(true, false), vec2<bool>(var_1.c, true), true), var_1.e.zz)), all(select(vec4<bool>(false, var_0.b, true, var_0.b), select(vec4<bool>(var_1.e.x, true, true, true), vec4<bool>(false, true, var_0.b, false), vec4<bool>(true, var_1.e.x, var_0.c, var_0.c)), !var_0.c)) & ((_wgslsmith_add_u32(var_0.a, 4294967295u) < _wgslsmith_dot_vec2_u32(vec2<u32>(25932u, 1u), vec2<u32>(var_1.a, 64697u))) || var_1.e.x), var_0.b, var_0.e);
    return ~min(18922u, _wgslsmith_add_u32(var_3.a, var_1.a));
}

fn func_2() -> Struct_1 {
    global1 = array<vec3<f32>, 29>();
    var var_0 = global0[_wgslsmith_index_u32(abs(u_input.a) ^ 1u, 24u)];
    var var_1 = func_3() | 0u;
    return global0[_wgslsmith_index_u32(u_input.a, 24u)];
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = Struct_1(abs(select(4867u, _wgslsmith_div_u32(22465u, _wgslsmith_div_u32(u_input.a, 1u)), all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true)))), true, true, false, vec3<bool>(true, true, true));
    var var_1 = Struct_1(~reverseBits(arg_0), var_0.d, var_0.c, false, vec3<bool>(!var_0.e.x, !(!var_0.b), !any(!vec2<bool>(true, var_0.c))));
    let var_2 = Struct_1(u_input.a, !all(vec3<bool>(true, !var_0.b, u_input.a >= 38038u)), !(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1153f * 432f))) == -363f), any(!select(vec2<bool>(false, var_1.d), var_1.e.zz, !vec2<bool>(var_0.e.x, var_0.e.x))), !vec3<bool>(true, false, !(var_1.a <= 12657u)));
    var var_3 = func_2();
    let var_4 = !(_wgslsmith_mult_u32(var_0.a, var_3.a) <= 33367u);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(min(u_input.a, ~_wgslsmith_add_u32(u_input.a, _wgslsmith_div_u32(countOneBits(38924u), _wgslsmith_div_u32(u_input.a, 23968u)))), 24u)];
    let var_1 = func_1(reverseBits(6068u));
    let var_2 = func_1(_wgslsmith_clamp_u32(~_wgslsmith_mult_u32(3559u, 1u), var_0.a, var_1.a));
    global0 = array<Struct_1, 24>();
    let var_3 = global0[_wgslsmith_index_u32(u_input.a, 24u)];
    var var_4 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(374f, 370f, 1227f, -736f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-767f, 1287f, 1152f, -561f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2141f, -779f, 769f, -379f)))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(sign(1241f)), -1000f, -293f, _wgslsmith_f_op_f32(876f * -408f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, -2541f, -1672f, -852f), vec4<f32>(579f, 1000f, -1514f, 1000f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1298f, -234f, 102f, 725f)))))), global1[_wgslsmith_index_u32(var_0.a, 29u)], vec2<f32>(_wgslsmith_f_op_f32(554f * _wgslsmith_f_op_f32(f32(-1f) * -231f)), _wgslsmith_f_op_f32(select(-794f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))), true))), vec2<u32>(_wgslsmith_div_u32(firstTrailingBit(max(1u, 0u)), var_3.a), ~var_1.a));
}

