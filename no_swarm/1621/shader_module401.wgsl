struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: vec2<f32> = vec2<f32>(-308f, -464f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: f32) -> u32 {
    var var_0 = !vec3<bool>(true, _wgslsmith_add_i32(arg_1.x, countOneBits(arg_0.x)) <= ~29847i, !any(vec2<bool>(false, false)));
    var var_1 = true;
    let var_2 = abs(vec2<i32>(min(~1i, abs(abs(arg_0.x))), 2147483647i));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(arg_2 - 1000f)), -1595f, -730f);
    var_0 = select(vec3<bool>(true, true, true | var_0.x), !vec3<bool>(false, !(15600i >= arg_1.x), _wgslsmith_f_op_f32(arg_2 - global1.x) < _wgslsmith_div_f32(-2118f, -763f)), select(vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, !any(vec2<bool>(var_0.x, true)), var_0.x), any(var_0.yz)));
    return ~49039u;
}

fn func_2() -> u32 {
    var var_0 = Struct_1(!vec3<bool>(true, any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))), false));
    let var_1 = Struct_1(select(!vec3<bool>(true, global1.x <= -507f, true), !(!(!var_0.a)), true));
    var var_2 = func_3(vec2<i32>(40685i, 0i), vec2<i32>(countOneBits(0i), min(23439i, _wgslsmith_sub_i32(29066i, u_input.a))) ^ max(-vec2<i32>(-2147483647i, -2704i), vec2<i32>(_wgslsmith_mod_i32(u_input.a, -47164i), 1i)), global1.x);
    var var_3 = _wgslsmith_f_op_f32(-389f - _wgslsmith_f_op_f32(-global1.x));
    let var_4 = ~min(abs(1u), ~abs(4294967295u) & _wgslsmith_sub_u32(1u, select(29181u, 4294967295u, var_0.a.x)));
    return var_4;
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> vec4<f32> {
    var var_0 = global1.x;
    let var_1 = min(vec3<u32>(38400u, ~(~(~80346u)), 1u), vec3<u32>(_wgslsmith_div_u32(1u, func_2()), firstLeadingBit(_wgslsmith_mult_u32(firstTrailingBit(0u), 4294967295u)), select(~(~0u), min(19899u, select(15530u, 48554u, false)), arg_1.a.x)));
    var var_2 = arg_1;
    var var_3 = arg_1;
    var var_4 = 37798u;
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-270f + 1047f)) * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global0.x, global1.x), _wgslsmith_f_op_f32(ceil(178f))))), 1060f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, -841f, true))) - 1000f), global1.x) - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-548f)), _wgslsmith_f_op_f32(f32(-1f) * -266f)), 1210f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1055f)) + _wgslsmith_f_op_f32(abs(-202f)))), global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(1i, Struct_1(vec3<bool>(all(vec3<bool>(true, false, true)), true, false)))) * vec4<f32>(-2206f, global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(986f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.x)))), -360f));
    let var_0 = !vec3<bool>(false, all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), true)), any(vec4<bool>(true, false, true, true)));
    var var_1 = Struct_1(vec3<bool>(var_0.x, var_0.x, false));
    var var_2 = u_input.a >= u_input.a;
    var var_3 = func_3(vec2<i32>(u_input.a, 6672i), vec2<i32>(50105i, u_input.a), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-1000f + global0.x))) - _wgslsmith_div_f32(113f, -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(-global1.x)), var_0.x && any(vec4<bool>(true, var_0.x, false, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, 717f, -851f, 1566f), vec4<f32>(366f, global1.x, global1.x, global1.x), vec4<bool>(true, true, var_0.x, false))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(208f, global0.x, 1108f, global1.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global0.x, global0.x)) - vec4<f32>(global1.x, global1.x, -117f, global1.x))))), 2365f);
}

