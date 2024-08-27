struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 11> = array<vec3<i32>, 11>(vec3<i32>(i32(-2147483648), i32(-2147483648), -24011i), vec3<i32>(i32(-2147483648), -1i, 1i), vec3<i32>(0i, -47004i, -53694i), vec3<i32>(1i, -1i, 26004i), vec3<i32>(1i, 81014i, -17050i), vec3<i32>(29189i, -1i, 0i), vec3<i32>(1i, 51141i, i32(-2147483648)), vec3<i32>(2147483647i, -60722i, 1i), vec3<i32>(-24105i, 0i, 2147483647i), vec3<i32>(0i, i32(-2147483648), 11023i), vec3<i32>(-59796i, -13402i, -4996i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    var var_0 = 97228u;
    let var_1 = Struct_1(718f);
    var var_2 = all(!vec2<bool>(false, any(vec2<bool>(false, true)) && true));
    let var_3 = -min(0i, u_input.a.x);
    var var_4 = any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, all(vec4<bool>(true, false, false, false)), -1265f > arg_0.x), var_3 == -36292i)) | !any(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true)));
    return _wgslsmith_f_op_f32(ceil(-257f));
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: i32, arg_3: u32) -> vec3<f32> {
    global0 = array<vec3<i32>, 11>();
    global0 = array<vec3<i32>, 11>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(301f, -293f) + vec2<f32>(1514f, 1414f)))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(270f, 1303f, -456f, var_0.x))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-122f - var_0.x), var_0.x, -1088f, var_0.x) * vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), -419f, -1353f, _wgslsmith_f_op_f32(func_3(vec4<f32>(752f, 532f, var_0.x, var_0.x))))), select(!vec4<bool>(arg_1, false, true, false), !(!vec4<bool>(false, arg_1, false, false)), arg_1))));
    var var_2 = 4294967295u;
    return _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, -1796f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1359f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, -403f))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(var_1.wwx - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 750f, var_0.x) - vec3<f32>(var_1.x, var_1.x, var_1.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_1.wzz, var_1.zzw, false)) * vec3<f32>(var_1.x, var_1.x, var_0.x)))), var_1.yyy)));
}

fn func_1(arg_0: i32) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(330f)));
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(-1i, true, -26307i, 4294967295u))), vec3<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(814f * var_0.a)), true))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, 1984f, 1000f) + vec3<f32>(717f, var_0.a, -916f)) + vec3<f32>(2583f, 1517f, var_0.a)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.a, -372f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-2365f, var_0.a, var_0.a), vec3<f32>(var_0.a, -1008f, var_0.a)))), vec3<f32>(_wgslsmith_f_op_f32(var_0.a * var_0.a), _wgslsmith_f_op_vec3_f32(func_2(u_input.a.x, false, -22137i, 0u)).x, _wgslsmith_f_op_f32(-var_0.a)))), any(vec2<bool>(true, true))))));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_1.x)), -686f);
    let var_3 = var_0;
    global0 = array<vec3<i32>, 11>();
    return abs(4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 11>();
    var var_0 = ~60027u;
    var_0 = ~(~select(func_1(~2147483647i), 1u, false));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(701f, -600f)))));
    var var_2 = ~_wgslsmith_sub_vec3_u32(~(~vec3<u32>(4294967295u, 19768u, 59530u)), vec3<u32>(1u, 1u, 1u));
    var var_3 = Struct_1(var_1.a);
    var var_4 = false;
    var var_5 = Struct_1(-2512f);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, ~vec3<i32>(_wgslsmith_clamp_i32(1i, -1i, u_input.a.x), 0i, firstTrailingBit(0i)), u_input.a.x, vec3<i32>(min(_wgslsmith_dot_vec4_i32(vec4<i32>(-38063i, 1i, 0i, -73669i), vec4<i32>(49969i, 1i, u_input.a.x, 1i)) >> (var_2.x % 32u), i32(-1i) * -18903i), u_input.a.x, -2147483647i));
}

