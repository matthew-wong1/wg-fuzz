struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: i32 = -9140i;

var<private> global2: array<vec4<i32>, 18> = array<vec4<i32>, 18>(vec4<i32>(-10330i, 37177i, -60858i, 57447i), vec4<i32>(-43889i, 1066i, -9212i, -1i), vec4<i32>(51197i, 1i, -6243i, -1i), vec4<i32>(2147483647i, -1i, 1i, 30511i), vec4<i32>(0i, 5121i, -713i, 0i), vec4<i32>(1i, 0i, -9504i, 0i), vec4<i32>(-24888i, -21037i, 53201i, 0i), vec4<i32>(27437i, -7039i, -1i, 12879i), vec4<i32>(-1i, 0i, 15841i, -24650i), vec4<i32>(-1i, -2626i, 50486i, -23282i), vec4<i32>(2147483647i, 36944i, -23675i, i32(-2147483648)), vec4<i32>(-23531i, 2147483647i, -1i, -4107i), vec4<i32>(-33239i, 2544i, -6323i, -81011i), vec4<i32>(9958i, -1i, -31808i, -16981i), vec4<i32>(0i, -35565i, 1i, 4070i), vec4<i32>(1i, 1i, 28595i, 1i), vec4<i32>(-1i, 48838i, 0i, 2147483647i), vec4<i32>(1i, -11079i, -1i, 1i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = true;
    let var_1 = arg_1;
    global1 = -u_input.a.x;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2364f - _wgslsmith_f_op_f32(arg_0.a * arg_1.a)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-909f)), _wgslsmith_f_op_f32(693f - 198f)))));
    global2 = array<vec4<i32>, 18>();
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.a)))))));
}

fn func_2(arg_0: vec3<bool>) -> vec4<f32> {
    let var_0 = func_1(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(690f))))))), Struct_1(-1235f));
    let var_1 = arg_0.x;
    var var_2 = var_0;
    global1 = ~u_input.a.x;
    var var_3 = vec3<i32>(abs(u_input.a.x), firstTrailingBit(i32(-1i) * -1i), _wgslsmith_mod_i32(u_input.a.x, -_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a.x, -11107i, u_input.a.x), u_input.a.wyy)));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a + _wgslsmith_f_op_f32(-381f * -637f))), var_2.a, _wgslsmith_f_op_f32(var_0.a - var_0.a), 944f) + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * var_2.a)), 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_2.a, 1034f)))), -558f, _wgslsmith_f_op_f32(var_2.a * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_2.a)), _wgslsmith_f_op_f32(var_2.a * var_2.a)))));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec2<i32>, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = select(select(!select(vec2<bool>(true, true), vec2<bool>(true, false), true), !select(vec2<bool>(true, true), vec2<bool>(true, false), arg_0.a <= 216f), any(vec4<bool>(true, true, true, true))), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 17290u, u_input.b, 4294967295u), vec4<u32>(u_input.b, u_input.b, 56202u, u_input.b)) > 10052u), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(false, false), select(true, false, true)), vec2<bool>(true, true), !(74706i <= u_input.a.x)), select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), true)), select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))), vec2<bool>(false, true))), !(!select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true), true)));
    var var_1 = Struct_1(arg_3.a);
    let var_2 = abs(u_input.a.wxw);
    var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -315f));
    var_0 = vec2<bool>(true, all(!vec3<bool>(any(vec3<bool>(var_0.x, true, true)), var_0.x, false)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -201f), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, 1026f, var_1.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~select(~(vec2<u32>(u_input.b, u_input.b) & vec2<u32>(45632u, 0u)), countOneBits(firstTrailingBit(vec2<u32>(24540u, 56245u))), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true))));
    let var_1 = func_1(Struct_1(1000f), Struct_1(_wgslsmith_f_op_f32(-114f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -602f), _wgslsmith_f_op_f32(f32(-1f) * -468f)))));
    var var_2 = vec4<u32>(u_input.b, ~(~_wgslsmith_mod_u32(var_0.x, 43728u)), 40954u, _wgslsmith_mod_u32(u_input.b, u_input.b));
    var var_3 = var_1;
    var var_4 = _wgslsmith_f_op_vec4_f32(func_2(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true)));
    let var_5 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1718f * -299f)), -180f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_4.x * var_1.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(func_1(Struct_1(var_3.a), Struct_1(1012f)), u_input.a.x, u_input.a.zy, Struct_1(var_1.a))))) + var_4.wyx);
    var var_6 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_5.x, var_1.a, 1116f, var_3.a) - vec4<f32>(var_4.x, -718f, var_4.x, var_3.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(270f, -124f, -431f, var_1.a))) + vec4<f32>(_wgslsmith_f_op_f32(-var_1.a), var_1.a, _wgslsmith_f_op_f32(f32(-1f) * -322f), var_1.a)) * vec4<f32>(_wgslsmith_f_op_f32(-var_4.x), _wgslsmith_f_op_f32(var_4.x * _wgslsmith_f_op_f32(-var_1.a)), var_1.a, -350f)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

