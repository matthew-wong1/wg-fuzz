struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
    c: Struct_2,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: bool, arg_2: vec4<bool>) -> vec3<f32> {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.yz))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, 215f) + _wgslsmith_f_op_f32(min(arg_0.x, arg_0.x))), _wgslsmith_f_op_f32(ceil(-687f))))), -2121f, Struct_2(-2189f, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - arg_0.x)), 75193i, 62798u, u_input.a.yxz), Struct_1(arg_0.x, _wgslsmith_mult_i32(28376i, u_input.b), ~_wgslsmith_mult_u32(4294967295u, u_input.d), u_input.a.wxz)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 718f, 1506f, 259f) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 480f, arg_0.x, arg_0.x))), vec4<f32>(arg_0.x, -188f, arg_0.x, _wgslsmith_f_op_f32(arg_0.x * 1444f))))));
    var var_1 = firstLeadingBit(select(_wgslsmith_mult_i32(u_input.a.x | -56338i, abs(var_0.c.b.d.x)), ~2147483647i, true) << (_wgslsmith_add_u32(_wgslsmith_div_u32(63796u, 71167u), var_0.c.c.c) % 32u));
    var_1 = _wgslsmith_dot_vec3_i32(~vec3<i32>((u_input.b >> (var_0.c.b.c % 32u)) | u_input.b, -1i, min(-7310i, var_0.c.b.b)), vec3<i32>(abs(u_input.c), ~u_input.b | u_input.b, i32(-1i) * -2147483647i));
    let var_2 = var_0.c.b.b;
    let var_3 = var_2;
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(1064f, _wgslsmith_f_op_f32(f32(-1f) * -179f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - -574f)))));
}

fn func_2(arg_0: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-339f, _wgslsmith_f_op_f32(-arg_0.c.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a, arg_0.a))))), (all(vec2<bool>(true, false)) & true) && select(true, any(vec2<bool>(true, true)), false), vec4<bool>(true, true, true, true)));
    var var_1 = ~abs(vec2<u32>(1u, reverseBits(_wgslsmith_mod_u32(arg_0.c.c, arg_0.c.c))));
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(trunc(var_0.yx)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -544f)), arg_0, vec4<f32>(1000f, _wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(arg_0.b.a - 599f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, 1085f)) * var_0.x))), _wgslsmith_f_op_f32(-var_0.x)));
    var var_3 = vec2<u32>(~4294967295u, ~countOneBits(1u));
    let var_4 = arg_0.c.a;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_4, arg_0.a), 645f))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, arg_2.b) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(341f, -784f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(228f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2.a.x, arg_0.x, true)) - _wgslsmith_f_op_f32(exp2(arg_0.x)))))), arg_2.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(arg_2.d, vec4<f32>(2089f, 834f, 204f, -575f)))) + vec4<f32>(arg_2.b, _wgslsmith_f_op_f32(-447f * -371f), arg_2.a.x, _wgslsmith_f_op_f32(-arg_0.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2.a.x, arg_0.x, arg_2.d.x, arg_2.a.x))), arg_2.d)))));
    let var_1 = var_0.d.zz;
    let var_2 = arg_2.d.x;
    let var_3 = arg_2.c;
    let var_4 = select(vec4<bool>(!all(vec4<bool>(false, true, false, true)) | true, false, true, true), select(vec4<bool>(any(vec3<bool>(true, true, false)), _wgslsmith_sub_u32(0u, u_input.d) >= abs(arg_2.c.b.c), false, false), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true)), false), all(vec4<bool>(true, true, true, true))), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(var_3.b.b < arg_2.c.c.b, true, select(false, true, true) && true, any(vec4<bool>(false, false, false, false))), true));
    return var_3.c;
}

fn func_1(arg_0: f32, arg_1: bool) -> f32 {
    let var_0 = Struct_2(-266f, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-822f, -517f), _wgslsmith_f_op_f32(f32(-1f) * -441f)))), reverseBits(u_input.c), 0u, u_input.a.www), func_4(vec3<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(arg_0, Struct_1(-1000f, 11960i, u_input.d, vec3<i32>(37893i, u_input.c, 1i)), Struct_1(588f, 1i, u_input.d, u_input.a.wwy))))), _wgslsmith_f_op_f32(arg_0 * arg_0)), ~vec2<i32>(u_input.a.x & -28164i, 1i), Struct_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1092f, arg_0))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0, arg_0), vec2<f32>(arg_0, -163f))), !arg_1)), arg_0, Struct_2(_wgslsmith_div_f32(-323f, -700f), Struct_1(621f, -29165i, 16885u, vec3<i32>(u_input.b, 15852i, -31620i)), Struct_1(-536f, 1i, u_input.d, vec3<i32>(u_input.b, -2147483647i, u_input.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1713f, arg_0, 1870f, -1354f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 160f, 1517f, arg_0)))), 88988u));
    var var_1 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0))), func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1294f, var_0.c.a, var_0.b.a)) + _wgslsmith_f_op_vec3_f32(func_3(vec3<f32>(var_0.a, arg_0, var_0.b.a), true, vec4<bool>(arg_1, false, false, arg_1)))), firstLeadingBit(vec2<i32>(2906i, u_input.a.x) | var_0.c.d.xz), Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, -1000f)), func_4(vec3<f32>(1000f, -995f, 2771f), vec2<i32>(-1i, -53579i), Struct_3(vec2<f32>(-181f, var_0.c.a), var_0.c.a, Struct_2(var_0.a, Struct_1(arg_0, u_input.a.x, 26616u, var_0.b.d), Struct_1(arg_0, 1i, var_0.b.c, u_input.a.zyx)), vec4<f32>(-1429f, -588f, var_0.c.a, arg_0)), u_input.d).a, var_0, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0, arg_0, arg_0, 379f)))), u_input.e).a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))))))));
    var var_2 = arg_1;
    var_2 = true;
    var var_3 = ~1u;
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 939f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(1703f - 206f), true))) * _wgslsmith_f_op_f32(-func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1424f, -286f, -335f)), _wgslsmith_add_vec2_i32(vec2<i32>(0i, -6153i), vec2<i32>(0i, u_input.a.x)), Struct_3(vec2<f32>(1778f, -431f), 3205f, Struct_2(670f, Struct_1(-359f, u_input.c, 11646u, vec3<i32>(u_input.c, -2147483647i, 1i)), Struct_1(1102f, u_input.a.x, 4294967295u, u_input.a.xzx)), vec4<f32>(193f, 1671f, 376f, -719f)), 0u >> (1u % 32u)).a));
    var var_1 = -vec2<i32>(-19994i, min(20226i, -_wgslsmith_mod_i32(2147483647i, -2147483647i)));
    let var_2 = _wgslsmith_div_u32(_wgslsmith_mult_u32(4294967295u, u_input.e) & u_input.d, firstLeadingBit(1u));
    let var_3 = vec4<bool>(true || !select(any(vec4<bool>(false, true, false, true)), true, select(true, false, true)), true, true, any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), any(vec3<bool>(true, false, true))))));
    let var_4 = vec3<bool>(!var_3.x, select(any(!select(vec2<bool>(var_3.x, var_3.x), vec2<bool>(var_3.x, false), vec2<bool>(var_3.x, false))), var_3.x, var_3.x), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1275f, 1329f) * vec2<f32>(1000f, 1000f)))), vec2<f32>(_wgslsmith_f_op_f32(trunc(-1197f)), 2035f), vec2<bool>(false, var_4.x))), max(-5118i, func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-622f, -173f, 1968f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1955f, -1988f, -612f)))), u_input.a.xw, Struct_3(_wgslsmith_f_op_vec3_f32(func_3(vec3<f32>(699f, -827f, 1038f), true, vec4<bool>(true, var_4.x, false, true))).yx, _wgslsmith_f_op_f32(f32(-1f) * -627f), Struct_2(-1093f, Struct_1(-1878f, u_input.c, 29732u, u_input.a.wxz), Struct_1(-233f, u_input.a.x, var_2, u_input.a.xxx)), vec4<f32>(-534f, 377f, -1419f, -1002f)), ~29121u).b));
}

