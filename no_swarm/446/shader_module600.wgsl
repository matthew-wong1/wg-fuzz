struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<i32>,
    d: bool,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1 = Struct_1(false, 883f, vec4<i32>(35347i, -17667i, 7610i, i32(-2147483648)), true, vec3<bool>(false, true, false));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_1) -> f32 {
    global0 = max(17381u, 1u);
    global0 = 1u;
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_2.b - 959f), _wgslsmith_f_op_f32(-arg_2.b)) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, arg_2.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, arg_2.b))))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_2.b, global1.b))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.b, 1016f))), !global1.e.xx)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_2.b, global1.b))))))), select(global1.e.xx, !(!(!arg_0)), all(select(vec4<bool>(arg_0.x, global1.a, false, false), !vec4<bool>(arg_1, true, false, false), vec4<bool>(arg_2.a, arg_2.a, true, false))))));
    let var_1 = arg_2.b;
    let var_2 = vec3<bool>(global1.a, arg_2.e.x, !(var_1 > var_0.x));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -988f)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) * _wgslsmith_f_op_f32(global1.b - -414f));
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(min(global1.b, _wgslsmith_f_op_f32(func_3(vec2<bool>(false, false), arg_0.d | false, arg_0))))))));
    let var_1 = global1.e;
    var var_2 = var_1.xx;
    let var_3 = arg_0.b;
    return Struct_1(!any(!vec3<bool>(arg_0.e.x, var_2.x, global1.a)), 1030f, arg_0.c, any(select(vec4<bool>(!var_1.x, false, var_1.x, !var_1.x), select(!vec4<bool>(true, false, global1.d, true), vec4<bool>(false, var_2.x, true, var_2.x), !global1.e.x), !global1.d)), global1.e);
}

fn func_1(arg_0: Struct_1) -> bool {
    let var_0 = arg_0;
    global1 = func_2(arg_0);
    var var_1 = func_2(arg_0);
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 771f, _wgslsmith_f_op_f32(-1597f + _wgslsmith_f_op_f32(f32(-1f) * -1590f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1098f, arg_0.b, 616f), vec3<f32>(208f, -1000f, 233f)))))) * vec3<f32>(_wgslsmith_f_op_f32(floor(arg_0.b)), arg_0.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(560f * var_0.b))))));
    var var_3 = var_1.d;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(((select(true, false, global1.e.x) | func_1(Struct_1(global1.a, 414f, vec4<i32>(u_input.c, u_input.b, 1i, 37988i), false, vec3<bool>(global1.a, global1.e.x, false)))) || global1.d) && false);
    let var_1 = vec3<bool>(any(!func_2(Struct_1(false, -561f, vec4<i32>(global1.c.x, -50717i, -37959i, 23334i), false, global1.e)).e), all(vec2<bool>(false, !all(vec4<bool>(global1.d, global1.e.x, false, true)))), true);
    global0 = 1u;
    global0 = ~22099u;
    global0 = _wgslsmith_add_u32((1u >> (_wgslsmith_clamp_u32(firstLeadingBit(87118u), max(43841u, 4294967295u), 1u) % 32u)) >> (7725u % 32u), firstTrailingBit(82491u));
    let var_2 = Struct_1(760i >= ~_wgslsmith_div_i32(i32(-1i) * -6366i, global1.c.x), 938f, ~firstLeadingBit(-max(global1.c, global1.c)), false, vec3<bool>(func_1(Struct_1(!global1.e.x, _wgslsmith_f_op_f32(-global1.b), vec4<i32>(u_input.b, 54657i, u_input.a, u_input.b), any(vec3<bool>(false, false, global1.a)), !vec3<bool>(global1.d, global1.e.x, var_1.x))), !global1.e.x, true));
    var var_3 = !global1.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1967f, _wgslsmith_f_op_f32(floor(-443f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b, global1.b) * vec2<f32>(var_2.b, var_2.b)) + vec2<f32>(global1.b, -1449f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1482f, var_2.b) + vec2<f32>(global1.b, global1.b)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.b, global1.b), vec2<f32>(340f, 2159f), var_1.xx))))));
}

