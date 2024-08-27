struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 35610u;

var<private> global1: vec2<bool>;

var<private> global2: array<vec4<u32>, 13> = array<vec4<u32>, 13>(vec4<u32>(1u, 0u, 29911u, 44060u), vec4<u32>(0u, 5067u, 4840u, 54750u), vec4<u32>(0u, 7129u, 1u, 9445u), vec4<u32>(1u, 4294967295u, 4294967295u, 0u), vec4<u32>(39264u, 76840u, 0u, 4294967295u), vec4<u32>(1u, 4294967295u, 73379u, 65057u), vec4<u32>(4294967295u, 4294967295u, 64007u, 3437u), vec4<u32>(97057u, 1u, 0u, 27101u), vec4<u32>(4294967295u, 42472u, 0u, 4294967295u), vec4<u32>(3149u, 358u, 4294967295u, 79792u), vec4<u32>(73857u, 2776u, 26798u, 1u), vec4<u32>(1u, 0u, 14167u, 0u), vec4<u32>(46945u, 0u, 1u, 4294967295u));

var<private> global3: array<vec2<bool>, 20>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: vec4<bool>) -> u32 {
    let var_0 = -15929i;
    global0 = 54574u | u_input.a.x;
    global0 = 45714u;
    global0 = 1u;
    let var_1 = u_input.a;
    return _wgslsmith_dot_vec4_u32(min(u_input.b, global2[_wgslsmith_index_u32(~u_input.e, 13u)]), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(46976u, var_1.x), 13u)]);
}

fn func_3(arg_0: i32, arg_1: bool) -> f32 {
    let var_0 = Struct_1(vec2<i32>(min(-_wgslsmith_mod_i32(39846i, 2147483647i), 25985i), 28677i), 4294967295u, global1.x);
    global3 = array<vec2<bool>, 20>();
    let var_1 = Struct_1(-(-(~u_input.d) ^ ~_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.a.x, 36248i), vec2<i32>(0i, u_input.d.x))), ~31664u, true);
    global0 = ~_wgslsmith_mult_u32(~(~0u), var_1.b);
    global1 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(1360u, 4294967295u ^ min(u_input.e, var_0.b)) | u_input.e, 20u)];
    return 426f;
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: i32, arg_3: vec4<f32>) -> StorageBuffer {
    let var_0 = Struct_1(countOneBits(~(-(arg_0.xx >> (u_input.a % vec2<u32>(32u))))), 0u, false);
    global0 = ~(~func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), !(!vec4<bool>(var_0.c, var_0.c, true, true))));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -747f)))));
    var var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -229f) * _wgslsmith_f_op_f32(max(-250f, arg_3.x))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(round(arg_3.x)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(step(arg_1, -335f))), _wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(func_3(var_0.a.x, false)))))), -487f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -244f))), -472f);
    var var_3 = vec2<i32>(var_0.a.x, 24230i);
    return StorageBuffer(arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(u_input.d.x, -21431i);
    let x = u_input.a;
    s_output = func_1(firstTrailingBit(-(~vec3<i32>(1i, u_input.d.x, u_input.c)) | vec3<i32>(57221i, 1i, ~2147483647i)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -49841i, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(660f, _wgslsmith_f_op_f32(-816f * 339f))) * _wgslsmith_f_op_f32(165f * _wgslsmith_f_op_f32(f32(-1f) * -777f))), -1095f, _wgslsmith_f_op_f32(f32(-1f) * -2605f), 1f));
}

