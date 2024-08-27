struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: f32,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 7>;

var<private> global1: Struct_1 = Struct_1(48423u, false, vec2<bool>(true, false));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> u32 {
    global1 = Struct_1(~global1.a, true | arg_0.c.x, global1.c);
    return ~1u;
}

fn func_2(arg_0: bool) -> vec4<u32> {
    global0 = array<vec2<i32>, 7>();
    global1 = Struct_1(func_3(Struct_1(global1.a, select(!arg_0, true, any(vec3<bool>(false, global1.c.x, global1.c.x))), global1.c), firstLeadingBit(~global1.a), _wgslsmith_f_op_f32(f32(-1f) * -479f)), !(!(!(!global1.c.x))), !(!(!vec2<bool>(true, global1.c.x))));
    var var_0 = !(!arg_0);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-536f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(abs(484f))))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1263f, 507f)) + 1117f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1082f + _wgslsmith_f_op_f32(select(2038f, 880f, true)))))));
    var var_2 = vec4<bool>(!all(vec3<bool>(true, false, true)), !(!(any(vec4<bool>(arg_0, global1.c.x, true, arg_0)) && all(vec4<bool>(false, global1.b, false, false)))), (~(u_input.a | -1i) != _wgslsmith_sub_i32(u_input.a, -u_input.a)) & false, all(select(select(vec4<bool>(true, true, global1.b, true), !vec4<bool>(arg_0, false, true, true), !vec4<bool>(false, arg_0, arg_0, true)), select(select(vec4<bool>(true, false, arg_0, arg_0), vec4<bool>(false, global1.c.x, global1.c.x, arg_0), vec4<bool>(false, false, global1.b, global1.c.x)), vec4<bool>(true, false, arg_0, global1.c.x), select(vec4<bool>(false, global1.c.x, false, true), vec4<bool>(global1.b, true, arg_0, true), vec4<bool>(global1.b, false, arg_0, true))), select(select(vec4<bool>(global1.c.x, false, arg_0, true), vec4<bool>(true, arg_0, arg_0, global1.b), true), vec4<bool>(false, arg_0, arg_0, global1.b), select(vec4<bool>(global1.c.x, arg_0, false, true), vec4<bool>(false, global1.b, true, arg_0), vec4<bool>(global1.b, false, false, false))))));
    return vec4<u32>(select(global1.a, _wgslsmith_mod_u32(max(0u, firstTrailingBit(global1.a)), _wgslsmith_add_u32(global1.a, ~1u)), any(vec3<bool>(var_2.x, all(vec4<bool>(true, arg_0, var_2.x, false)), var_2.x))), ~global1.a, ~global1.a, 75932u);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: u32, arg_3: i32) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1362f, -1474f, -752f, -279f)) + vec4<f32>(-1978f, _wgslsmith_f_op_f32(f32(-1f) * -763f), _wgslsmith_f_op_f32(round(-1629f)), _wgslsmith_f_op_f32(f32(-1f) * -109f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-528f * 296f))), _wgslsmith_div_f32(-1002f, 2810f)), Struct_1(~arg_1.x, _wgslsmith_dot_vec2_u32(arg_0.yx, arg_1.xx) != _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 36650u), min(vec2<u32>(0u, 14768u), vec2<u32>(13608u, 0u))), vec2<bool>(select(global1.b, true, true), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-872f, 942f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-286f, 1329f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-937f, -869f))), vec2<bool>(any(global1.c), false))) + vec2<f32>(_wgslsmith_f_op_f32(ceil(-627f)), _wgslsmith_f_op_f32(max(2098f, _wgslsmith_f_op_f32(f32(-1f) * -1238f))))));
    let var_1 = !(!any(var_0.c.c));
    var var_2 = 159f;
    let var_3 = 33328i;
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(var_0.a + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) * _wgslsmith_f_op_f32(-var_0.a.x)), -1788f, _wgslsmith_f_op_f32(abs(-568f)), var_0.a.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a.x))))))), Struct_1(0u, true, vec2<bool>(var_1, all(select(vec2<bool>(false, false), var_0.c.c, vec2<bool>(true, var_1))))), vec2<f32>(-477f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1854f)))));
    return Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(601f, -519f, var_0.d.x, var_0.a.x)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-820f, _wgslsmith_f_op_f32(-var_0.a.x), var_0.d.x, _wgslsmith_f_op_f32(-var_0.a.x)) - vec4<f32>(-200f, var_0.d.x, var_0.d.x, _wgslsmith_f_op_f32(f32(-1f) * -264f)))), -950f, Struct_1(1u, !(!(!var_0.c.c.x)), select(vec2<bool>(!global1.c.x, !global1.c.x), var_0.c.c, true)), _wgslsmith_f_op_vec2_f32(-var_0.a.zw));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<bool>) -> StorageBuffer {
    var var_0 = arg_0.c;
    global0 = array<vec2<i32>, 7>();
    let var_1 = arg_0.c.a;
    global0 = array<vec2<i32>, 7>();
    global0 = array<vec2<i32>, 7>();
    return StorageBuffer(-1087f, ~(~80696u));
}

fn func_1(arg_0: f32, arg_1: vec4<u32>) -> StorageBuffer {
    let var_0 = u_input.a;
    global0 = array<vec2<i32>, 7>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-933f, arg_0), vec2<f32>(621f, arg_0))), vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-654f - 966f)))));
    global0 = array<vec2<i32>, 7>();
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-595f, 221f), -878f));
    return func_5(func_4(func_2(true), vec4<u32>((1u ^ global1.a) & arg_1.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 7759u, 7209u), vec3<u32>(48375u, arg_1.x, arg_1.x)), _wgslsmith_add_u32(global1.a, global1.a), global1.a), _wgslsmith_mod_u32(arg_1.x, 21860u), -2147483647i), vec4<bool>(global1.c.x, global1.b, true, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 40517i;
    let var_1 = abs(select(_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(global1.a, 4294967295u), global1.a), min(vec2<u32>(1u, global1.a), ~vec2<u32>(global1.a, 6411u))), vec2<u32>(1u, 1u), select(global1.c, vec2<bool>(global1.b | global1.b, any(vec3<bool>(global1.b, global1.c.x, global1.c.x))), global1.c.x)));
    let x = u_input.a;
    s_output = func_1(660f, ~(~vec4<u32>(4294967295u, var_1.x, var_1.x, global1.a & var_1.x)));
}

