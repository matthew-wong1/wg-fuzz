struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: i32,
    d: vec2<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> i32 {
    let var_0 = select(!(!vec3<bool>(true, !arg_0.e, arg_0.e & true)), select(!vec3<bool>(any(vec2<bool>(true, false)), true, true), select(!(!vec3<bool>(arg_0.e, arg_0.e, false)), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, arg_0.e, false)), select(vec3<bool>(arg_0.e, arg_0.e, false), vec3<bool>(true, true, false), arg_0.e), false), vec3<bool>(!arg_0.e, all(vec4<bool>(true, false, false, arg_0.e)), arg_0.e && false)), true), vec3<bool>(true, !(!any(vec2<bool>(true, false))), true));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(629f, arg_0.a.x, -694f)) * _wgslsmith_f_op_vec3_f32(trunc(arg_0.a)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(arg_0.a.xy)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-115f, arg_1))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.b.x, arg_1))))), 1i, ~select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b), var_0.zz) & arg_0.d, false));
    var var_2 = vec3<u32>(u_input.b, var_1.a.d.x, firstTrailingBit(select(_wgslsmith_clamp_u32(u_input.b, u_input.b, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.d.x, 49656u, 0u, 30453u), vec4<u32>(25069u, 4580u, u_input.b, 42277u)), false))) ^ ~(vec3<u32>(37543u, 1u, abs(1u)) & (vec3<u32>(var_1.a.d.x, 1u, 52047u) >> (select(vec3<u32>(var_1.a.d.x, 21374u, u_input.b), vec3<u32>(arg_0.d.x, 4294967295u, u_input.b), arg_0.e) % vec3<u32>(32u))));
    var var_3 = arg_1;
    let var_4 = var_1.a.e;
    return i32(-1i) * -30460i;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> vec3<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-arg_1.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.b.x, 1000f, arg_2.b.x), _wgslsmith_f_op_vec3_f32(-arg_1.a))), vec3<bool>(true, any(!vec2<bool>(arg_1.e, arg_1.e)), arg_0))), vec2<f32>(-1175f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2267f)) + arg_2.a.x)), _wgslsmith_mult_i32(abs(0i), arg_3.a.c), ~_wgslsmith_div_vec2_u32(vec2<u32>(arg_2.d.x, 4294967295u) & (vec2<u32>(89366u, u_input.b) ^ vec2<u32>(29024u, arg_3.a.d.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 37127u) ^ vec2<u32>(1u, arg_3.a.d.x), _wgslsmith_mod_vec2_u32(arg_3.a.d, vec2<u32>(arg_3.a.d.x, u_input.b)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-195f + arg_3.a.b.x))))) > -986f);
    var var_1 = arg_3;
    let var_2 = vec2<u32>(~1u, arg_1.d.x) | arg_2.d;
    let var_3 = arg_3;
    let var_4 = var_3.a.e;
    return vec3<f32>(425f, 902f, -472f);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: f32) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(true, Struct_1(vec3<f32>(797f, arg_2, arg_2), _wgslsmith_f_op_vec2_f32(-arg_0), 1i, vec2<u32>(1u, 1u), arg_1.x > arg_0.x), Struct_1(_wgslsmith_f_op_vec3_f32(-arg_1), vec2<f32>(-781f, 732f), func_3(Struct_1(arg_1, arg_0, 13493i, vec2<u32>(0u, u_input.b), true), arg_1.x), vec2<u32>(u_input.b, 0u), true), Struct_2(Struct_1(vec3<f32>(arg_1.x, 3644f, arg_0.x), vec2<f32>(arg_2, -405f), u_input.a.x, vec2<u32>(u_input.b, u_input.b), true)))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), -282f, -1000f), vec3<f32>(477f, _wgslsmith_f_op_f32(sign(arg_2)), -1276f)))), vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(step(-172f, 1745f))), u_input.c, max(vec2<u32>(firstTrailingBit(u_input.b), _wgslsmith_add_u32(4294967295u, ~u_input.b)), vec2<u32>(u_input.b, u_input.b)), select(all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), true)), true, true));
    var var_1 = select(!vec4<bool>(all(vec2<bool>(true, false)), all(vec2<bool>(true, var_0.e)), any(vec2<bool>(true, true)), any(select(vec2<bool>(false, false), vec2<bool>(true, false), var_0.e))), !select(!vec4<bool>(true, var_0.e, var_0.e, false), select(select(vec4<bool>(var_0.e, var_0.e, var_0.e, false), vec4<bool>(var_0.e, var_0.e, var_0.e, false), false), select(vec4<bool>(var_0.e, var_0.e, false, var_0.e), vec4<bool>(true, var_0.e, var_0.e, var_0.e), vec4<bool>(var_0.e, false, false, var_0.e)), var_0.e), var_0.e | var_0.e), select(!select(!vec4<bool>(false, var_0.e, var_0.e, true), vec4<bool>(var_0.e, var_0.e, var_0.e, true), select(vec4<bool>(var_0.e, true, true, var_0.e), vec4<bool>(var_0.e, false, var_0.e, true), false)), vec4<bool>(_wgslsmith_f_op_f32(-arg_2) < _wgslsmith_f_op_f32(max(arg_1.x, arg_2)), false, var_0.e, all(select(vec4<bool>(var_0.e, true, var_0.e, var_0.e), vec4<bool>(false, var_0.e, false, false), false))), true | !(var_0.e && true)));
    var_1 = !select(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, var_0.e, false, false), vec4<bool>(var_0.e, var_1.x, false, var_0.e))), !select(!vec4<bool>(true, var_1.x, var_0.e, false), vec4<bool>(true, true, true, true), !vec4<bool>(var_0.e, var_1.x, true, var_0.e)), !select(vec4<bool>(true, var_0.e, var_0.e, true), select(vec4<bool>(false, true, var_0.e, true), vec4<bool>(false, var_1.x, var_1.x, true), vec4<bool>(var_0.e, true, var_0.e, var_0.e)), var_0.e));
    var_1 = vec4<bool>(!(var_0.d.x > ~1u) == select(true, false, var_0.e), true, var_1.x, (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1030f))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2, arg_1.x)) - _wgslsmith_f_op_f32(select(-1944f, -591f, false)))) || !(true == all(vec2<bool>(var_1.x, true))));
    var var_2 = var_1.ww;
    return all(!vec4<bool>(arg_1.x > -2209f, var_2.x || false, false, true)) && ((_wgslsmith_f_op_f32(-1575f - -662f) > arg_0.x) && !(!var_1.x));
}

fn func_1(arg_0: f32) -> i32 {
    var var_0 = vec2<u32>(u_input.b, u_input.b);
    var var_1 = !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(false, true, true)), true, func_2(vec2<f32>(arg_0, 426f), vec3<f32>(-2096f, arg_0, arg_0), 1844f))));
    var var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1187f, 2027f, _wgslsmith_f_op_f32(round(1465f)), -1319f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_0)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(ceil(-1122f)), arg_0), _wgslsmith_div_vec4_f32(vec4<f32>(363f, _wgslsmith_div_f32(arg_0, arg_0), _wgslsmith_f_op_f32(sign(668f)), _wgslsmith_f_op_f32(-arg_0)), vec4<f32>(-385f, -497f, arg_0, 1026f))))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-arg_0), var_2.x))), var_2.yy, ~20505i, reverseBits(select(firstLeadingBit(firstTrailingBit(vec2<u32>(41487u, var_0.x))), ~(~vec2<u32>(55747u, u_input.b)), var_1.zz)), any(select(select(!vec3<bool>(var_1.x, false, var_1.x), select(vec3<bool>(true, false, true), vec3<bool>(true, var_1.x, true), true), false), vec3<bool>(4294967295u >= var_0.x, true, true), any(!vec3<bool>(false, var_1.x, var_1.x)))));
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2696f, -733f, arg_0) - var_2.ywz)))), _wgslsmith_f_op_vec3_f32(sign(var_3.a)), var_1.x)), var_3.a.xx, ~_wgslsmith_div_i32(var_3.c, _wgslsmith_div_i32(var_3.c, u_input.c)) | -2147483647i, ~min(vec2<u32>(u_input.b, 10705u), vec2<u32>(~u_input.b, ~0u)), select(!select(false, true, true), true, any(vec2<bool>(var_3.a.x > -1350f, var_3.e))));
    return ~(-u_input.a.x);
}

fn func_5(arg_0: i32, arg_1: vec2<i32>) -> i32 {
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1153f + 1189f), _wgslsmith_f_op_f32(-930f + 1628f))), -518f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1686f * -413f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1119f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-496f, -1180f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(2667f, 453f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(123f, -640f))))))), _wgslsmith_mod_i32(82569i, arg_0), ~vec2<u32>(~6414u, ~(~u_input.b)), true);
    var var_1 = vec2<i32>(arg_0, _wgslsmith_dot_vec2_i32(u_input.a.wy, countOneBits(~u_input.a.yx)));
    var_1 = _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.c, 6718i), -_wgslsmith_add_vec2_i32(vec2<i32>(-20094i, 1i), -arg_1) << (vec2<u32>(~0u, firstLeadingBit(_wgslsmith_mult_u32(4294967295u, u_input.b))) % vec2<u32>(32u)), select(u_input.a.zx, vec2<i32>(i32(-1i) * -6687i, var_1.x), select(vec2<bool>(true, !var_0.e), select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(false, var_0.e), vec2<bool>(var_0.e, false)), false)));
    var_1 = firstLeadingBit(~countOneBits(arg_1));
    var_1 = vec2<i32>(-79343i, -1i);
    return var_0.c;
}

fn func_6(arg_0: vec3<i32>, arg_1: bool) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-507f, -770f, 1016f) * vec3<f32>(1083f, 1000f, -3175f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-579f, 104f, 694f), vec3<f32>(-692f, -592f, -1141f), vec3<bool>(arg_1, true, arg_1))) - vec3<f32>(-532f, 1393f, 122f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1518f, -353f, -1069f), vec3<f32>(492f, 119f, -584f), arg_1)) * _wgslsmith_div_vec3_f32(vec3<f32>(927f, -264f, 405f), vec3<f32>(607f, 427f, -148f))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-502f, _wgslsmith_f_op_vec3_f32(func_4(arg_1, Struct_1(vec3<f32>(-565f, 1000f, -2065f), vec2<f32>(1008f, 100f), -52314i, vec2<u32>(55299u, u_input.b), arg_1), Struct_1(vec3<f32>(-2362f, 913f, -117f), vec2<f32>(607f, 1321f), arg_0.x, vec2<u32>(u_input.b, 37937u), arg_1), Struct_2(Struct_1(vec3<f32>(-539f, 1102f, 1204f), vec2<f32>(-2404f, -1430f), arg_0.x, vec2<u32>(1u, u_input.b), arg_1)))).x) - vec2<f32>(_wgslsmith_f_op_f32(-826f * -1000f), 307f)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1483f - -688f)), _wgslsmith_f_op_f32(step(-355f, 1010f))))), func_5(arg_0.x, ~(-(arg_0.zx >> (vec2<u32>(0u, u_input.b) % vec2<u32>(32u))))), abs(~(~(~vec2<u32>(4294967295u, u_input.b)))), true);
    let var_1 = _wgslsmith_mult_i32(var_0.c, _wgslsmith_sub_i32(~arg_0.x ^ _wgslsmith_dot_vec4_i32(~u_input.a, -u_input.a), func_3(var_0, _wgslsmith_f_op_f32(abs(var_0.b.x)))));
    let var_2 = _wgslsmith_mod_vec3_u32(firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.d.x & u_input.b, var_0.d.x, 4294967295u), _wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(u_input.b, var_0.d.x, 0u)), vec3<u32>(41426u, var_0.d.x, 37068u), vec3<u32>(1u, 1u, 81541u)))), _wgslsmith_add_vec3_u32(~firstLeadingBit(vec3<u32>(0u, 14864u, var_0.d.x) | vec3<u32>(u_input.b, u_input.b, 0u)), ~(~max(vec3<u32>(4294967295u, var_0.d.x, 4294967295u), vec3<u32>(var_0.d.x, 48777u, 4294967295u)))));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(854f)), 1498f, _wgslsmith_f_op_f32(f32(-1f) * -172f))), vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(741f, var_0.a.x))), -u_input.a.x, ~var_2.xz << (~var_0.d % vec2<u32>(32u)), !(!(!arg_1))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(vec3<i32>(1i & func_5(func_1(-2010f), ~u_input.a.yw), 0i, 2147483647i), (all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), true)) | !(u_input.b <= u_input.b)) != select(all(vec4<bool>(true, true, true, true)), _wgslsmith_sub_i32(u_input.c, u_input.a.x) > _wgslsmith_add_i32(u_input.c, u_input.a.x), all(vec4<bool>(true, true, false, false))));
    let var_1 = var_0.a;
    let var_2 = vec3<bool>(true, false & var_1.e, true);
    var var_3 = func_6(u_input.a.ywx, any(!vec3<bool>(func_2(var_0.a.a.xy, var_1.a, var_0.a.b.x), all(var_2.xy), func_6(vec3<i32>(u_input.c, -2147483647i, var_1.c), var_0.a.e).a.e))).a;
    let var_4 = vec4<u32>(abs(_wgslsmith_sub_u32(54465u, _wgslsmith_add_u32(var_1.d.x, 24303u))), ~_wgslsmith_sub_u32(~_wgslsmith_mod_u32(u_input.b, u_input.b), ~_wgslsmith_div_u32(var_1.d.x, 7433u)), select(_wgslsmith_mult_u32(~(1u ^ var_3.d.x), var_0.a.d.x), _wgslsmith_mod_u32(0u, 15593u), var_2.x), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, var_3.d.x, _wgslsmith_mod_u32(4294967295u, var_0.a.d.x)), vec3<u32>(u_input.b, ~0u, ~29333u)), vec3<u32>(var_3.d.x, u_input.b, ~_wgslsmith_mod_u32(u_input.b, var_0.a.d.x))));
    var var_5 = select(var_1.d, var_1.d, var_2.yy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_1.a.x + var_3.a.x), func_6(~_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_1.c, u_input.c, 0i), vec3<i32>(31186i, var_0.a.c, -2147483647i)), vec3<i32>(24046i, var_1.c, var_3.c), _wgslsmith_div_vec3_i32(vec3<i32>(0i, var_3.c, 2147483647i), vec3<i32>(-2147483647i, var_3.c, 52093i))), false).a.d, -func_3(func_6(vec3<i32>(var_1.c, 25265i, var_3.c), true).a, var_0.a.a.x));
}

