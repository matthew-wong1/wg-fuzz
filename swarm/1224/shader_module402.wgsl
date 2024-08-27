struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26> = array<u32, 26>(35143u, 1u, 0u, 29586u, 4294967295u, 4294967295u, 52966u, 31515u, 18696u, 0u, 45832u, 1u, 61901u, 4294967295u, 4294967295u, 45176u, 4294967295u, 86183u, 36832u, 29038u, 1u, 4294967295u, 9265u, 0u, 62270u, 21591u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: vec3<u32>, arg_3: Struct_2) -> f32 {
    let var_0 = arg_3.b;
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(arg_3.a));
    let var_2 = var_1.x;
    var var_3 = _wgslsmith_clamp_i32(firstLeadingBit(~1i) & _wgslsmith_clamp_i32(u_input.a, -_wgslsmith_sub_i32(42511i, arg_0.x), 0i), 7512i, u_input.a);
    global0 = array<u32, 26>();
    return -262f;
}

fn func_2(arg_0: i32) -> vec2<f32> {
    var var_0 = u_input.b;
    var_0 = -vec2<i32>(abs(var_0.x), max(arg_0, u_input.b.x));
    let var_1 = !(_wgslsmith_clamp_i32(~arg_0, 1i, min(-49827i, var_0.x) << (1u % 32u)) <= (((i32(-1i) * -1i) >> (1u % 32u)) | _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(u_input.a, var_0.x, u_input.a)), vec3<i32>(u_input.b.x, 0i, var_0.x))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(357f + 1164f) + _wgslsmith_f_op_f32(f32(-1f) * -1313f)), _wgslsmith_f_op_f32(func_3(-vec3<i32>(766i, 1i, arg_0), vec2<bool>(var_1, false), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 26u)], 26u)], global0[_wgslsmith_index_u32(u_input.c.x, 26u)], 0u), Struct_2(vec3<f32>(446f, -1406f, -743f), Struct_1(vec2<bool>(var_1, false)), 604f))), 276f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-657f * 652f)), _wgslsmith_f_op_f32(max(685f, -1325f)), 650f), true)), Struct_1(select(!(!vec2<bool>(var_1, var_1)), vec2<bool>(any(vec2<bool>(var_1, var_1)), !var_1), true)), 602f);
    global0 = array<u32, 26>();
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.c, _wgslsmith_f_op_f32(386f * _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(round(var_2.a.x)))))) * vec2<f32>(var_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-193f + _wgslsmith_f_op_f32(f32(-1f) * -1064f)))));
}

fn func_1(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = arg_0.a.x;
    var_0 = arg_0.a.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_dot_vec3_i32(max(vec3<i32>(u_input.a, -21160i, u_input.a) ^ vec3<i32>(0i, 0i, u_input.b.x), vec3<i32>(-52961i, u_input.b.x, -1i)) & vec3<i32>(-63538i, firstLeadingBit(u_input.b.x), _wgslsmith_dot_vec2_i32(u_input.b, u_input.b)), max(-(vec3<i32>(u_input.a, u_input.a, 1i) & vec3<i32>(u_input.a, -29770i, u_input.a)), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 7008i, u_input.b.x), ~vec3<i32>(u_input.b.x, u_input.b.x, -1i))))));
    var var_2 = true;
    var var_3 = Struct_1(arg_0.a);
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = !select(vec2<bool>(!all(vec3<bool>(false, true, true)), var_0), select(func_1(Struct_1(vec2<bool>(false, var_0))), select(vec2<bool>(false, var_0), vec2<bool>(var_0, false), vec2<bool>(var_0, var_0)), !select(vec2<bool>(true, false), vec2<bool>(var_0, true), vec2<bool>(var_0, var_0))), func_1(Struct_1(!vec2<bool>(var_0, var_0))));
    global0 = array<u32, 26>();
    var var_2 = Struct_1(!vec2<bool>(true, any(!vec3<bool>(var_1.x, true, true))));
    var var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1517f, -1339f, 1944f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-937f, -388f, -899f))), vec3<f32>(1831f, 1917f, -1304f), vec3<bool>(5265u > global0[_wgslsmith_index_u32(0u, 26u)], var_1.x, !var_0))))), Struct_1(var_2.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<i32>(-1i, 1i, 18623i), vec2<bool>(var_2.a.x, var_1.x), vec3<u32>(1u, global0[_wgslsmith_index_u32(0u, 26u)], 61967u), Struct_2(vec3<f32>(852f, -822f, 847f), Struct_1(var_2.a), -1000f))) + _wgslsmith_f_op_f32(-226f - 1088f))) + -1114f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-196f * var_3.a.x), var_3.c, _wgslsmith_f_op_f32(select(var_3.a.x, var_3.c, false)), _wgslsmith_f_op_f32(-var_3.c)))), ~firstLeadingBit(u_input.c.x), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_3.a, vec3<f32>(1000f, 424f, var_3.a.x)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_3.a), var_3.a)))));
}

