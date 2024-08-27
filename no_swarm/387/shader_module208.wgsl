struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 17>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<u32>) -> f32 {
    global0 = array<vec2<u32>, 17>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-572f + -106f));
    let var_1 = Struct_2(select(select(select(vec3<bool>(false, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(true, false, arg_0.x)), select(!vec3<bool>(true, arg_0.x, false), select(vec3<bool>(false, false, true), vec3<bool>(arg_0.x, false, arg_0.x), false), true | arg_0.x), arg_0.x || arg_0.x), vec3<bool>(any(vec4<bool>(arg_0.x, false, arg_0.x, true)), any(vec3<bool>(true, true, true)), _wgslsmith_mult_u32(arg_1.x, 1u) > 1u), !all(!vec3<bool>(arg_0.x, true, false))));
    global0 = array<vec2<u32>, 17>();
    var var_2 = Struct_1(var_1.a.x, vec4<bool>(false, all(var_1.a), true, true));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-120f)), _wgslsmith_f_op_f32(-487f - _wgslsmith_f_op_f32(f32(-1f) * -912f))));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: bool) -> Struct_3 {
    var var_0 = true;
    var_0 = false;
    let var_1 = any(arg_0.a.yx);
    let var_2 = false != any(arg_0.a.xx);
    let var_3 = !(!vec2<bool>(_wgslsmith_f_op_f32(func_2(arg_0.a.zy, arg_1)) >= -2164f, false));
    return Struct_3(firstLeadingBit(vec2<i32>(u_input.b, u_input.b)), _wgslsmith_f_op_f32(select(272f, -314f, false)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: i32, arg_3: vec3<f32>) -> vec3<bool> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)) * arg_3.x), 1f, _wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(120f - -1775f));
    global0 = array<vec2<u32>, 17>();
    let var_1 = !arg_1.a.x;
    let var_2 = Struct_3(arg_0.a | select(arg_0.a, vec2<i32>(u_input.b, 0i), any(arg_1.a.xy)), arg_0.b);
    global0 = array<vec2<u32>, 17>();
    return !arg_1.a;
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: f32, arg_3: vec4<i32>) -> Struct_3 {
    var var_0 = -884f;
    var var_1 = Struct_3(arg_3.zz, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(func_1(arg_0, vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), true).b * arg_2)))));
    var_1 = Struct_3(arg_3.ww, 1556f);
    global0 = array<vec2<u32>, 17>();
    let var_2 = arg_0.a.x;
    return func_1(arg_0, reverseBits(~_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, 23579u), vec4<u32>(u_input.a, u_input.a, 0u, u_input.a) << (vec4<u32>(4294967295u, u_input.a, 1u, 81595u) % vec4<u32>(32u)))), true);
}

fn func_5(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = -86716i;
    return Struct_1(!arg_1.x, select(!vec4<bool>(!arg_1.x, true, any(vec3<bool>(arg_1.x, true, true)), false), !(!select(vec4<bool>(true, arg_1.x, arg_1.x, false), vec4<bool>(true, true, false, arg_1.x), vec4<bool>(true, false, arg_1.x, arg_1.x))), false));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 17>();
    let var_0 = func_5(func_1(Struct_2(vec3<bool>(true, false, select(true, false, false))), firstLeadingBit(countOneBits(abs(vec4<u32>(u_input.a, u_input.a, 0u, 1u)))), all(vec3<bool>(false, all(vec2<bool>(true, true)), select(true, true, false)))), vec3<bool>(true, true, true), func_4(Struct_2(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), func_3(Struct_3(vec2<i32>(2147483647i, u_input.b), 292f), Struct_2(vec3<bool>(false, false, false)), u_input.b, vec3<f32>(-1120f, -506f, 919f)), true)), false, func_1(Struct_2(vec3<bool>(true, true, true)), ~(~vec4<u32>(u_input.a, u_input.a, 30603u, 0u)), true).b, -(~select(vec4<i32>(u_input.b, -6699i, 32233i, u_input.b), vec4<i32>(u_input.b, 2972i, u_input.b, 0i), vec4<bool>(false, true, false, false)))), ~(-_wgslsmith_sub_vec2_i32(~vec2<i32>(0i, u_input.b), ~vec2<i32>(2147483647i, 1i))));
    var var_1 = Struct_2(func_5(func_1(Struct_2(select(vec3<bool>(true, false, var_0.a), var_0.b.yxx, vec3<bool>(false, var_0.a, var_0.b.x))), vec4<u32>(1u, u_input.a, 1u, abs(4294967295u)), !(!var_0.a)), !select(var_0.b.yzx, vec3<bool>(true, false, false), !var_0.a), Struct_3(vec2<i32>(max(-32628i, 45503i), max(2147483647i, -5867i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-858f * 2046f), _wgslsmith_f_op_f32(max(-695f, -1231f)))), vec2<i32>(firstLeadingBit(func_1(Struct_2(vec3<bool>(var_0.b.x, false, var_0.a)), vec4<u32>(u_input.a, u_input.a, 18013u, 87340u), var_0.a).a.x), ~_wgslsmith_sub_i32(79734i, u_input.b))).b.xxz);
    var_1 = Struct_2(!(!var_0.b.wyw));
    let var_2 = func_5(Struct_3(max(firstLeadingBit(vec2<i32>(-14765i, -50244i)) ^ min(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, u_input.b)), ~vec2<i32>(-30032i, u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) + _wgslsmith_f_op_f32(step(-1559f, _wgslsmith_f_op_f32(-2433f + 1000f))))), select(!select(var_1.a, var_1.a, !var_0.b.zwy), !(!func_3(Struct_3(vec2<i32>(u_input.b, -7146i), -335f), Struct_2(vec3<bool>(false, false, false)), u_input.b, vec3<f32>(-274f, 505f, -802f))), !func_3(Struct_3(vec2<i32>(34383i, -2147483647i), 525f), Struct_2(vec3<bool>(true, var_1.a.x, var_0.a)), ~u_input.b, vec3<f32>(498f, 402f, -112f))), func_4(Struct_2(var_0.b.zww), (true || !var_0.b.x) || true, 652f, vec4<i32>(~u_input.b, ~1i, _wgslsmith_dot_vec4_i32(vec4<i32>(54482i, -2147483647i, -4270i, u_input.b), vec4<i32>(-150i, -23202i, u_input.b, u_input.b)), max(19263i, u_input.b)) >> ((select(vec4<u32>(1u, u_input.a, 91553u, 1619u), vec4<u32>(0u, 65893u, u_input.a, u_input.a), false) << (~vec4<u32>(u_input.a, u_input.a, u_input.a, 22215u) % vec4<u32>(32u))) % vec4<u32>(32u))), ~firstLeadingBit(~vec2<i32>(23925i, -13144i)));
    global0 = array<vec2<u32>, 17>();
    global0 = array<vec2<u32>, 17>();
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(179f, 1000f, -1356f, 1000f), vec4<f32>(-1025f, -1000f, -205f, -230f))))) - vec4<f32>(477f, -1380f, -951f, _wgslsmith_f_op_f32(-270f * 335f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1301f, 161f, 566f, -401f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(540f, 137f, 1492f, -1048f) * vec4<f32>(1481f, -2161f, -1190f, -473f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-360f, -787f, 1160f, 749f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-774f + 538f), func_1(Struct_2(vec3<bool>(true, var_2.a, var_1.a.x)), vec4<u32>(u_input.a, 83840u, 40285u, u_input.a), false).b, _wgslsmith_f_op_f32(-772f + -427f), -707f)))), var_1.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, vec3<f32>(-1410f, -1845f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1899f, 484f, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_3.x)) + var_3.x))), ~1u);
}

