struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: bool,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec3<bool>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-519f + 190f) * _wgslsmith_f_op_f32(622f - -409f)), _wgslsmith_f_op_f32(1130f * _wgslsmith_f_op_f32(min(-240f, 1680f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-635f, 144f))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -991f) - _wgslsmith_f_op_f32(max(var_0.x, 761f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-881f + 2143f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1817f, -1275f)) + _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, 459f), vec2<f32>(-198f, var_0.x))))));
    var var_1 = true;
    var_1 = arg_0.x;
    var_1 = any(vec3<bool>(arg_0.x, !(false || (arg_0.x & arg_0.x)), all(!(!arg_0.yy))));
    return !vec3<bool>(!all(vec3<bool>(true, arg_0.x, arg_0.x)) && (arg_0.x && arg_0.x), true & select(arg_0.x, false, 29900i != u_input.b.x), any(select(select(vec4<bool>(true, arg_0.x, true, arg_0.x), vec4<bool>(true, false, arg_0.x, arg_0.x), false), vec4<bool>(false, false, true, true), true)));
}

fn func_2(arg_0: u32, arg_1: u32) -> f32 {
    let var_0 = 5536i;
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1342f) + vec2<f32>(-733f, -1302f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -250f))), true));
    let var_2 = _wgslsmith_sub_i32(0i, -2147483647i);
    var var_3 = select(var_1.a.c || all(select(vec3<bool>(true, false, var_1.a.c), vec3<bool>(false, true, false), vec3<bool>(false, var_1.a.c, false))), var_1.a.c, var_1.a.c) || var_1.a.c;
    let var_4 = select(!select(vec3<bool>(true, true, true), vec3<bool>(true, var_1.a.c | var_1.a.c, any(vec3<bool>(var_1.a.c, var_1.a.c, var_1.a.c))), !select(vec3<bool>(var_1.a.c, true, var_1.a.c), vec3<bool>(var_1.a.c, true, true), false)), !select(!(!vec3<bool>(var_1.a.c, true, false)), vec3<bool>(!var_1.a.c, !var_1.a.c, true), select(func_3(vec3<bool>(var_1.a.c, true, true)), select(vec3<bool>(var_1.a.c, var_1.a.c, var_1.a.c), vec3<bool>(true, var_1.a.c, false), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, var_1.a.c), vec3<bool>(var_1.a.c, var_1.a.c, var_1.a.c), vec3<bool>(var_1.a.c, false, var_1.a.c)))), vec3<bool>((var_2 | -19365i) <= countOneBits(max(4584i, -2147483647i)), any(!(!vec3<bool>(var_1.a.c, var_1.a.c, true))), true));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.a.x) - -853f));
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_div_f32(_wgslsmith_div_f32(966f, _wgslsmith_f_op_f32(ceil(-461f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-195f))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, -1814f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, 355f) + vec3<f32>(914f, var_0, 1328f))), vec3<bool>(true, true, var_0 == 1675f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1153f, 146f, var_0))))) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(118f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(640f, var_0) - _wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0, var_0, true)) + var_0)))));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(func_2(~_wgslsmith_div_u32(u_input.d.x, u_input.d.x), reverseBits(39250u))), var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -214f))), var_0));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, 720f, var_1.x), vec3<f32>(var_0, -116f, 674f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 905f, var_0)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0, -1600f, var_1.x))), false)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-455f, 1863f, var_0) + vec3<f32>(-1511f, 944f, var_1.x))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(606f, -1239f, var_0))) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.x, var_1.x, -293f)))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(-1122f, -230f, -630f), vec3<f32>(-1318f, -961f, -1000f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0, var_0, 302f))))))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 294f, -307f) * vec3<f32>(1074f, 1188f, var_1.x))) + _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -778f, -164f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1634f, var_0, var_1.x)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_1.yy))))), !any(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false))));
    return firstTrailingBit(~u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1000f;
    var var_1 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1488f, 1462f, true)) * 185f), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1394f - 583f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1201f, -1638f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-715f, 363f) - vec2<f32>(940f, -749f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-299f, 1284f) * vec2<f32>(-534f, 974f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(443f, 997f)))))), any(vec2<bool>(true, true))));
    var var_2 = ~vec4<i32>((_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(u_input.b.x, 0i, u_input.b.x)) | u_input.b.x) | _wgslsmith_clamp_i32(func_1(), u_input.b.x, i32(-1i) * -1i), 1i, _wgslsmith_dot_vec3_i32(u_input.b, max(vec3<i32>(u_input.b.x, u_input.b.x, -1i), vec3<i32>(0i, u_input.b.x, u_input.b.x))), u_input.b.x);
    var var_3 = _wgslsmith_f_op_f32(var_1.a.b.x * var_1.a.b.x);
    let var_4 = vec2<f32>(-878f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.a.a.x), var_1.a.a.x, !var_1.a.c)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.a.a.x))))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2011f))))));
    var var_5 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(-1183f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), u_input.d.x, 36335u);
}

