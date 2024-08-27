struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: u32, arg_3: Struct_2) -> bool {
    return !all(!(!vec3<bool>(true, arg_1, arg_3.a.x)));
}

fn func_2() -> f32 {
    global0 = array<vec4<i32>, 32>();
    let var_0 = Struct_1(vec4<bool>(any(vec3<bool>(true, func_3(vec2<u32>(u_input.a, 82387u), true, 26656u, Struct_2(vec2<bool>(false, false))), true)), true, true, false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-279f)), _wgslsmith_f_op_f32(f32(-1f) * -2292f), _wgslsmith_f_op_f32(-1509f - -1000f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1240f, -1979f, -1000f) * vec3<f32>(239f, 1124f, -610f))))), vec3<u32>(firstLeadingBit(~u_input.a) & u_input.a, u_input.a, 1u), 552f, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-487f, 1000f, true))) + -595f), 435f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(970f)) + 1f))));
    global0 = array<vec4<i32>, 32>();
    global0 = array<vec4<i32>, 32>();
    global0 = array<vec4<i32>, 32>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -370f)) - _wgslsmith_f_op_f32(sign(var_0.e.x)));
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2())));
    let var_1 = vec4<u32>(u_input.a ^ ~(~(~100710u)), u_input.a, u_input.a, u_input.a);
    var var_2 = -251f;
    let var_3 = -170f;
    global0 = array<vec4<i32>, 32>();
    return _wgslsmith_f_op_f32(var_0 * -1412f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -160f), _wgslsmith_div_f32(-749f, -1699f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<bool>(true, false, true, true)))), _wgslsmith_f_op_f32(-339f + _wgslsmith_f_op_f32(-1388f - -705f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1111f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -1842f) * _wgslsmith_f_op_f32(max(339f, 208f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1134f, 1270f, 2474f, 585f), vec4<f32>(1352f, 401f, 1665f, -565f))))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(1f, _wgslsmith_f_op_f32(-471f * -639f), _wgslsmith_f_op_f32(f32(-1f) * -832f), _wgslsmith_f_op_f32(-874f * -312f)))))));
    let var_1 = true;
    let var_2 = all(!(!select(select(vec3<bool>(var_1, false, false), vec3<bool>(true, true, var_1), vec3<bool>(var_1, false, var_1)), vec3<bool>(true, true, true), !var_1)));
    var_0 = vec4<f32>(374f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1438f + 537f) - _wgslsmith_f_op_f32(-575f * _wgslsmith_f_op_f32(min(var_0.x, -755f)))) - _wgslsmith_f_op_f32(-1159f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1050f - 1821f) * var_0.x))), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(519f * 1180f)) + -934f)));
    var var_3 = global0[_wgslsmith_index_u32(35568u, 32u)];
    var var_4 = vec2<i32>(~var_3.x, -(var_3.x | _wgslsmith_add_i32(9036i, _wgslsmith_div_i32(44671i, var_3.x))));
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(ceil(-1661f)), _wgslsmith_f_op_f32(1581f - var_0.x), _wgslsmith_f_op_f32(sign(var_0.x))))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 210f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1559f)))), -592f, 270f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))));
    let var_5 = vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + var_0.x) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1893f, var_0.x))), any(vec2<bool>(false, true)));
    let x = u_input.a;
    s_output = StorageBuffer(41291u, 4294967295u, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 1682f, var_0.x, 1474f) + vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(145f, 239f, var_0.x, 1441f))))), vec4<bool>(any(var_5), var_5.x, true, true))))));
}

