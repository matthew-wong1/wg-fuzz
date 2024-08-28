struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30>;

var<private> global1: array<Struct_2, 22>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    global1 = array<Struct_2, 22>();
    var var_0 = _wgslsmith_div_f32(-1326f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -762f), -551f)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-169f - _wgslsmith_div_f32(-509f, 659f)))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-376f + 1326f)))))));
    global0 = array<i32, 30>();
    global1 = array<Struct_2, 22>();
    return -785f;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<f32>) -> f32 {
    let var_0 = arg_0.wxw;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(func_3(~(~u_input.b.zyy))));
    let var_2 = Struct_3(var_1.a);
    return _wgslsmith_div_f32(276f, _wgslsmith_div_f32(-220f, _wgslsmith_f_op_f32(-var_2.a)));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_1) -> f32 {
    global1 = array<Struct_2, 22>();
    let var_0 = ~_wgslsmith_sub_u32(~arg_0 << (22610u % 32u), ~(~u_input.b.x) >> (arg_0 % 32u));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_mult_vec3_u32(u_input.b.zxz, vec3<u32>(0u, var_0, 0u)))))) - arg_2.b.yy);
    return _wgslsmith_f_op_f32(-var_1.x);
}

fn func_1(arg_0: vec2<i32>) -> vec4<bool> {
    global0 = array<i32, 30>();
    global0 = array<i32, 30>();
    var var_0 = _wgslsmith_sub_u32(u_input.b.x, 13793u);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(reverseBits(u_input.b.x) | 1u, _wgslsmith_f_op_f32(func_2(vec4<bool>(false, false, false, true), vec4<f32>(1000f, 353f, -723f, -318f))) == _wgslsmith_f_op_f32(215f + 348f), Struct_1(1532f, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1210f, 544f, 2334f), vec3<f32>(-2341f, -640f, 1040f))))))));
    global1 = array<Struct_2, 22>();
    return select(select(select(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), true), select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true)), true), !(global0[_wgslsmith_index_u32(u_input.b.x, 30u)] >= u_input.a.x)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), false), vec4<bool>(true, all(vec3<bool>(true, false, true)), any(vec4<bool>(false, false, true, true)), var_1.a >= var_1.a)), false), !(!(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), false))), u_input.b.x > ~u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, !(!any(vec2<bool>(true, false))), all(vec4<bool>(true & all(vec3<bool>(false, true, true)), _wgslsmith_dot_vec2_i32(u_input.a.zx, u_input.a.zx) <= -1i, _wgslsmith_clamp_i32(-1i, global0[_wgslsmith_index_u32(8977u, 30u)], u_input.a.x) < 1i, all(vec4<bool>(false, false, true, false)))));
    global1 = array<Struct_2, 22>();
    let var_1 = vec3<bool>(!var_0.x, !(all(func_1(u_input.a.yy)) & var_0.x), (false || !func_1(vec2<i32>(-2147483647i, 0i)).x) & any(select(vec4<bool>(true, var_0.x, false, var_0.x), !vec4<bool>(true, true, true, var_0.x), select(vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(var_0.x, var_0.x, true, true)))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1683f)) + 322f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(u_input.b.yzx)), _wgslsmith_div_f32(1000f, 1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1973f * -2113f), _wgslsmith_f_op_f32(-1393f * -934f))) + _wgslsmith_div_vec3_f32(vec3<f32>(113f, _wgslsmith_f_op_f32(trunc(721f)), _wgslsmith_f_op_f32(f32(-1f) * -1023f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-362f, 323f, -1411f)))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -123f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b.x, var_2.b.x, var_2.a) * vec3<f32>(var_2.b.x, 499f, var_2.b.x)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(var_2.b.x)), _wgslsmith_f_op_f32(func_4(0u, true, Struct_1(var_2.a, vec3<f32>(377f, var_2.b.x, var_2.b.x)))), var_2.a))));
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_3.b, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(1009f, var_2.b.x, var_3.b.x) * vec3<f32>(-512f, 1152f, var_2.a))))))));
}

