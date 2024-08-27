struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec2<bool>, 11> = array<vec2<bool>, 11>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: u32) -> f32 {
    global0 = -1441f;
    var var_0 = ~u_input.a;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(688f + -869f)))))));
}

fn func_2(arg_0: Struct_3, arg_1: i32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-arg_0.a.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-222f)) * 254f))), arg_0.a.x, arg_0.a.x));
    global1 = array<vec2<bool>, 11>();
    global0 = _wgslsmith_f_op_f32(-var_1.x);
    global0 = arg_0.a.x;
    return Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, -118f, var_1.x) - vec3<f32>(1000f, -1297f, arg_0.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(476f, arg_0.a.x, var_1.x))) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(738f, _wgslsmith_f_op_f32(round(-1049f)), _wgslsmith_f_op_f32(f32(-1f) * -332f))))), 146f);
}

fn func_3(arg_0: Struct_3) -> f32 {
    global0 = _wgslsmith_f_op_f32(arg_0.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1426f)))))));
    let var_0 = Struct_1(~select(_wgslsmith_sub_vec4_i32(~u_input.c, vec4<i32>(u_input.a, u_input.b.x, u_input.a, -1i)), firstTrailingBit(vec4<i32>(2147483647i, -23156i, -38465i, u_input.b.x)), vec4<bool>(arg_0.a.x <= arg_0.b, arg_0.b > -2458f, true, false)), u_input.c, 5730u);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a.x - _wgslsmith_f_op_f32(exp2(arg_0.a.x))), -1000f), arg_0.b, all(vec3<bool>(true, true, true)))) - 401f);
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0.b * arg_0.b), -627f, func_2(func_2(func_2(arg_0, 49818i), u_input.a), 1i).b) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(759f, arg_0.a.x, arg_0.a.x) - arg_0.a) * arg_0.a))))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1402f - _wgslsmith_f_op_f32(abs(-758f))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1439f)))))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2003f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-830f, -610f, 3633f), vec3<f32>(-633f, 1000f, -394f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(226f, 1584f, -191f)), vec3<bool>(false, true, false))))) + vec3<f32>(-277f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(~u_input.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(func_2(Struct_3(vec3<f32>(270f, -732f, 954f), -346f), 2147483647i))))));
    var var_1 = i32(-1i) * -37584i;
    var var_2 = Struct_3(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(-var_0.x)));
    let var_3 = Struct_2(Struct_1(u_input.c, u_input.c, ~(~_wgslsmith_clamp_u32(50650u, 0u, u_input.d))), 1u);
    var_2 = func_2(Struct_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_2(Struct_3(vec3<f32>(var_2.b, var_0.x, 1081f), var_0.x), 5914i).a * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, 1050f, -466f)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1724f, -700f, var_0.x))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b + 1079f)))), u_input.a);
    let var_4 = vec4<bool>(true, true, false, any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    let var_5 = _wgslsmith_clamp_vec2_i32(vec2<i32>(var_3.a.b.x, ~var_3.a.a.x), vec2<i32>(firstLeadingBit(abs(0i)), var_3.a.b.x), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2360f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b - var_2.a.x))), _wgslsmith_f_op_f32(-765f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1817f) * -1000f))), 1i, _wgslsmith_f_op_f32(func_3(Struct_3(var_0, _wgslsmith_f_op_f32(f32(-1f) * -1360f)))));
}

