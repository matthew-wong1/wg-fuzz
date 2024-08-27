struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: i32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(1292f, -262f, -1114f, 702f);

var<private> global1: vec4<f32> = vec4<f32>(-867f, 342f, 175f, -1389f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<f32>) -> vec4<f32> {
    var var_0 = Struct_1(-(-1i >> (~u_input.a.x % 32u)));
    var var_1 = select(vec2<bool>(select(!all(vec3<bool>(false, false, false)), true, select(true, all(vec4<bool>(true, true, true, false)), u_input.a.x <= u_input.a.x)), true), !vec2<bool>(true, ~0u <= _wgslsmith_add_u32(u_input.a.x, 0u)), vec2<bool>(true, any(vec2<bool>(true, true)) & true));
    var var_2 = vec3<u32>(_wgslsmith_div_u32((u_input.a.x & ~u_input.a.x) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(62372u, u_input.a.x, u_input.a.x, 43389u), vec4<u32>(0u, u_input.a.x, 43236u, u_input.a.x)) % 32u), select(0u, 53666u, !var_1.x)), 0u, u_input.a.x);
    var_1 = !(!select(vec2<bool>(any(vec2<bool>(true, false)), false & var_1.x), select(select(vec2<bool>(var_1.x, false), vec2<bool>(true, var_1.x), vec2<bool>(var_1.x, true)), !vec2<bool>(true, var_1.x), !var_1.x), !(!vec2<bool>(true, var_1.x))));
    var_1 = !vec2<bool>(arg_0.x > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1790f) - arg_0.x), true);
    return _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.x, global1.x, _wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(select(-1647f, global0.x, true)))), _wgslsmith_f_op_f32(-812f - _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(abs(global1.x)))))));
}

fn func_2(arg_0: f32) -> bool {
    global1 = _wgslsmith_f_op_vec4_f32(func_3(global1.ww));
    return any(!(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true))));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(countOneBits(-1i));
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1405f, global0.x, -594f, global0.x), vec4<f32>(global0.x, 2054f, global0.x, 456f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global0.x, -2984f, global1.x) * vec4<f32>(global1.x, -420f, 1000f, -1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(700f, global1.x, global0.x, -485f)))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(235f, 1170f), _wgslsmith_f_op_f32(-1404f + global1.x), 833f, -805f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global1.x, -106f, global1.x)))))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-216f, -390f, -988f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(589f, global1.x), global1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global0.x, 850f, global1.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1290f, global0.x, global1.x, global0.x) - vec4<f32>(-701f, -1570f, global0.x, global1.x)))), !vec4<bool>(true, global1.x < 503f, true, func_2(-455f)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, global1.x, -397f, global1.x), vec4<f32>(global0.x, -279f, -1538f, global0.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 1089f, global0.x, global0.x))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-447f, _wgslsmith_f_op_f32(select(global0.x, global1.x, true)), _wgslsmith_f_op_f32(min(global1.x, 998f)), _wgslsmith_f_op_f32(exp2(global1.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1109f, 935f, -506f, global0.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1225f, global0.x, global1.x, 2637f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-803f, _wgslsmith_f_op_f32(f32(-1f) * -911f), _wgslsmith_div_f32(global1.x, global0.x), _wgslsmith_f_op_f32(select(447f, 691f, false)))) + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(f32(-1f) * -2100f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(642f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    global1 = vec4<f32>(_wgslsmith_f_op_f32(-662f * _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(276f, -251f)))))).x), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-590f + _wgslsmith_f_op_f32(f32(-1f) * -1038f)) + -648f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(676f + _wgslsmith_f_op_f32(global1.x * global1.x)))));
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(global1.x))));
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>) -> f32 {
    var var_0 = _wgslsmith_div_u32(countOneBits(arg_1.x), 1u) > u_input.a.x;
    var_0 = true;
    var var_1 = !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), all(vec2<bool>(true, true))));
    var_0 = var_1.x;
    let var_2 = -select(_wgslsmith_div_vec3_i32(-vec3<i32>(arg_0.a, arg_0.a, arg_0.a), vec3<i32>(_wgslsmith_div_i32(arg_0.a, arg_0.a), arg_0.a >> (1u % 32u), arg_0.a)), -(vec3<i32>(arg_0.a, arg_0.a, -2147483647i) << (u_input.a % vec3<u32>(32u))) | ~vec3<i32>(1i, 1i, 1i), true && var_1.x);
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-2147483647i);
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.x + global0.x)))), global1.x, _wgslsmith_f_op_f32(abs(-334f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1271f + 2912f) - _wgslsmith_f_op_f32(-global1.x)), 1f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_4(func_1(u_input.a, Struct_1(var_0.a), Struct_1(2147483647i)), ~u_input.a.yy)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -848f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1099f, global0.x, true)) - global1.x))));
    var var_1 = true;
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(round(1777f)), _wgslsmith_f_op_f32(1766f - global0.x), _wgslsmith_div_f32(global0.x, global0.x), 2329f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_4(var_0, vec2<u32>(u_input.a.x, 25327u))), global1.x, _wgslsmith_f_op_f32(-227f - global1.x), _wgslsmith_f_op_f32(abs(-371f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 1000f, 1362f, global0.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, 2323f, 987f, 395f), vec4<f32>(global0.x, global0.x, global1.x, 590f), vec4<bool>(false, false, false, false))), vec4<f32>(global0.x, 611f, global0.x, 1139f)) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(859f, global1.x, 629f, global0.x) * vec4<f32>(-208f, -668f, global1.x, -274f))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-827f, _wgslsmith_f_op_f32(-global0.x), -404f, 1782f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1082f, global0.x, 386f, global0.x)))));
    var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(global0.wz, vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(231f)) * _wgslsmith_f_op_f32(1729f * -1127f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-388f, _wgslsmith_div_f32(-1220f, -702f))) + global1.x), -982f), _wgslsmith_sub_i32(-2147483647i | _wgslsmith_sub_i32(1i, var_0.a), ~_wgslsmith_div_i32(i32(-1i) * -2147483647i, var_0.a)), vec4<f32>(-988f, -597f, _wgslsmith_f_op_f32(abs(2837f)), _wgslsmith_f_op_f32(-1124f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x + global0.x), _wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_f_op_f32(-global0.x));
}

