struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4> = array<i32, 4>(-19187i, 0i, 1i, -16228i);

var<private> global1: vec3<f32> = vec3<f32>(345f, -1042f, 212f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = arg_0.a;
    var var_1 = u_input.a;
    let var_2 = firstLeadingBit(min(vec3<u32>(max(37668u, 4294967295u), select(48697u, 1u, false), 1u) ^ min(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 4294967295u, 106161u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(4294967295u, ~0u, ~140281u), select(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 37542u, 4928u), vec3<u32>(61898u, 3249u, 25507u)), vec3<u32>(1u, 1u, 1u), !arg_0.b))));
    let var_3 = -vec4<i32>(~u_input.a, u_input.a, -2147483647i, u_input.a);
    var var_4 = _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_2.x, var_2.x & var_2.x, 40169u) >> (vec3<u32>(37670u, 55683u, _wgslsmith_dot_vec3_u32(var_2, var_2)) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_2.x, 40173u), vec3<u32>(1u, 4294967295u, var_2.x)), var_2.x, var_2.x)), ~abs(~vec3<u32>(4294967295u, 4294967295u, 56946u) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, var_2.x, var_2.x), var_2, vec3<u32>(66829u, var_2.x, var_2.x)) % vec3<u32>(32u))));
    return _wgslsmith_f_op_vec2_f32(-global1.xy);
}

fn func_2() -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-1013f - _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.x))))), true, all(vec3<bool>(true, true, true)));
    var var_1 = var_0;
    global0 = array<i32, 4>();
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_1(var_1.a, true, global0[_wgslsmith_index_u32(1u, 4u)] == _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(20041u, 4u)], 12601i, -2147483647i)), Struct_1(513f, !select(true, true, var_1.c), true))));
    let var_3 = Struct_1(792f, var_1.b, var_1.b);
    return false;
}

fn func_1(arg_0: vec4<i32>, arg_1: u32) -> bool {
    global0 = array<i32, 4>();
    global1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(global1.x, -575f, global1.x), vec3<f32>(-1503f, global1.x, -148f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, global1.x, 1000f), vec3<f32>(1501f, 360f, -341f), true)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(866f, 253f, global1.x), vec3<f32>(537f, global1.x, 2683f), false)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(440f, global1.x, 1880f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -150f, global1.x)))))));
    return select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * -1122f) - _wgslsmith_div_f32(global1.x, 793f)) >= _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(step(global1.x, 811f))), !all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true))), false) || !(!func_2());
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(min(-319f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(343f * _wgslsmith_div_f32(-559f, -110f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-919f, global1.x))))))), !func_1(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, global0[_wgslsmith_index_u32(20884u, 4u)], u_input.a, 0i), vec4<i32>(1i, global0[_wgslsmith_index_u32(4294967295u, 4u)], global0[_wgslsmith_index_u32(0u, 4u)], 12665i)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 105811u, 67947u), vec3<u32>(39008u, 53262u, 43995u)) >> (4828u % 32u)), all(!vec4<bool>(true, true, true, all(vec3<bool>(false, false, true)))));
    var var_1 = countOneBits(_wgslsmith_mod_u32(_wgslsmith_sub_u32(~firstTrailingBit(90544u), _wgslsmith_div_u32(0u, countOneBits(70397u))), ~_wgslsmith_div_u32(select(27277u, 4294967295u, var_0.b), 1u)));
    global0 = array<i32, 4>();
    var var_2 = !(~(-global0[_wgslsmith_index_u32(31749u, 4u)] & max(global0[_wgslsmith_index_u32(57011u, 4u)], -9156i)) <= ((1i ^ (6215i | u_input.a)) << (1u % 32u)));
    var var_3 = min(_wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_add_u32(1u, 29736u), ~(~1u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(4294967295u, 22418u, 27217u))), vec3<u32>(1u, 1u, 1u)), select(abs(1u), 4294967295u, !(!(!var_0.b))));
    let var_4 = Struct_1(global1.x, !any(select(vec2<bool>(false, false), vec2<bool>(true, var_0.b), vec2<bool>(var_0.b, false))), true);
    let var_5 = select(!(!(!vec4<bool>(true, true, var_4.b, false))), vec4<bool>(true, var_0.c, false, !any(vec3<bool>(var_0.b, var_4.c, var_4.c))), !(!(!select(vec4<bool>(true, true, var_0.c, false), vec4<bool>(var_0.c, var_0.b, var_4.b, var_0.b), vec4<bool>(false, false, var_4.b, var_0.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, _wgslsmith_f_op_f32(select(var_0.a, var_4.a, var_5.x)), _wgslsmith_f_op_f32(-global1.x)), vec3<f32>(1017f, _wgslsmith_f_op_f32(f32(-1f) * -254f), _wgslsmith_f_op_f32(-1265f + -1532f))))));
}

