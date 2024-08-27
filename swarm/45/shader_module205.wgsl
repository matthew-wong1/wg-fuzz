struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
    d: vec3<bool>,
    e: f32,
}

struct Struct_4 {
    a: f32,
    b: vec2<bool>,
    c: vec4<u32>,
    d: vec2<bool>,
    e: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> f32 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(428f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -969f) + -558f))), vec2<bool>(any(vec2<bool>(true, arg_0.b.x)), !(false && (u_input.a >= u_input.a))), ~(~(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, arg_1, 1u, 4294967295u), vec4<u32>(0u, arg_1, arg_1, u_input.b)))), arg_0.b.xx, any(vec2<bool>(true, true)));
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1805f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-212f - -1539f)))), 1054f, -1120f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a))), -1010f, 463f)));
    var var_2 = _wgslsmith_f_op_f32(ceil(var_0.a));
    let var_3 = vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-164f - _wgslsmith_div_f32(var_1.x, var_0.a))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(270f * var_1.x))), _wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_f32(-var_0.a)))))));
    var var_4 = Struct_1(~arg_0.a, vec3<bool>(arg_0.c, var_0.d.x, all(vec4<bool>(true, false, u_input.a != -2147483647i, var_0.d.x))), true);
    return _wgslsmith_f_op_f32(f32(-1f) * -1738f);
}

fn func_2(arg_0: bool) -> vec3<u32> {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(func_3(Struct_1(vec2<u32>(min(4294967295u, u_input.b), 1u), vec3<bool>(true, all(vec2<bool>(true, arg_0)), true), true), 1u | ~u_input.b)), vec2<bool>(any(vec2<bool>(all(vec2<bool>(arg_0, arg_0)), false)), false), vec4<u32>(_wgslsmith_div_u32(~(u_input.b >> (0u % 32u)), 0u), 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(24092u, 37409u, u_input.b, 1u) << (~vec4<u32>(0u, 53573u, u_input.b, u_input.b) % vec4<u32>(32u)), max(vec4<u32>(u_input.b, 51576u, u_input.b, 11307u) & vec4<u32>(1u, 4294967295u, 4294967295u, u_input.b), ~vec4<u32>(u_input.b, 1054u, 4294967295u, u_input.b))), ~(~select(u_input.b, u_input.b, true))), !vec2<bool>(true, select(false, true, true)), arg_0);
    var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -725f), _wgslsmith_f_op_f32(var_0.a + 479f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.a * var_0.a)))) - var_0.a), vec2<bool>(true, true), select(var_0.c << (var_0.c % vec4<u32>(32u)), ~(~select(var_0.c, var_0.c, arg_0)), select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_0, arg_0, false, var_0.d.x), !vec4<bool>(var_0.e, var_0.e, true, var_0.d.x))), vec2<bool>(firstLeadingBit(~2147483647i) >= _wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.a, 2147483647i), 1i), true), false && (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.a)) + _wgslsmith_f_op_f32(ceil(519f))) < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(439f + -741f)))));
    var_0 = Struct_4(var_0.a, var_0.d, firstLeadingBit(_wgslsmith_sub_vec4_u32(~vec4<u32>(var_0.c.x, 20627u, 17431u, 0u) & ~vec4<u32>(0u, 1u, 6302u, u_input.b), var_0.c)), vec2<bool>(true | all(vec4<bool>(arg_0, false, false, true)), all(select(vec4<bool>(false, true, var_0.e, true), !vec4<bool>(var_0.e, false, true, false), !vec4<bool>(true, arg_0, false, false)))), any(select(!vec4<bool>(false, arg_0, var_0.b.x, arg_0), !vec4<bool>(false, arg_0, var_0.b.x, true), select(vec4<bool>(false, true, true, arg_0), vec4<bool>(var_0.e, false, true, arg_0), vec4<bool>(true, arg_0, true, var_0.b.x)))) & !(_wgslsmith_sub_u32(u_input.b, var_0.c.x) < u_input.b));
    var_0 = Struct_4(_wgslsmith_f_op_f32(-497f + 1012f), select(vec2<bool>(var_0.e, arg_0), !(!(!var_0.b)), vec2<bool>(any(vec3<bool>(var_0.e, var_0.d.x, arg_0)), all(!vec4<bool>(arg_0, arg_0, true, arg_0)))), vec4<u32>(countOneBits(~1u) | _wgslsmith_add_u32(u_input.b, 3935u), _wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(17779u, 1u, 4294967295u, 46120u), vec4<u32>(var_0.c.x, var_0.c.x, 4294967295u, var_0.c.x)), vec4<u32>(0u, var_0.c.x, _wgslsmith_clamp_u32(17884u, 6128u, u_input.b), 0u)), 0u, var_0.c.x), select(select(select(var_0.d, var_0.b, !vec2<bool>(var_0.b.x, arg_0)), !var_0.d, all(vec4<bool>(var_0.b.x, var_0.e, var_0.d.x, true))), !var_0.b, !var_0.d), select(~u_input.b, var_0.c.x, var_0.d.x) >= ~max(u_input.b ^ u_input.b, ~49244u));
    var var_1 = Struct_4(1119f, vec2<bool>(abs(~0i) < _wgslsmith_div_i32(-u_input.a, ~u_input.a), true), ~(~(~(vec4<u32>(u_input.b, var_0.c.x, var_0.c.x, 0u) & vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b)))), !select(select(!vec2<bool>(true, var_0.d.x), vec2<bool>(false, true), true), var_0.b, any(select(var_0.b, var_0.b, true))), !(!(!any(vec4<bool>(false, var_0.b.x, true, true)))));
    return vec3<u32>(var_0.c.x, 0u, 18266u);
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = _wgslsmith_div_vec3_u32(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, arg_0, arg_0), ~vec3<u32>(96153u, 0u, arg_0))), _wgslsmith_mult_vec3_u32(vec3<u32>(7546u & u_input.b, _wgslsmith_mult_u32(16089u, arg_0), arg_0), abs(func_2(true))));
    let var_1 = -278f;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_1, -712f))) - _wgslsmith_div_f32(_wgslsmith_div_f32(var_1, var_1), var_1)))));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-550f, var_1, true)) - var_1);
    var_2 = var_1;
    return 1018f;
}

fn func_4(arg_0: f32) -> Struct_1 {
    let var_0 = Struct_3(Struct_2(Struct_1(abs(countOneBits(vec2<u32>(7790u, u_input.b))), select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true))), !(arg_0 >= 203f)), Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 148783u) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)), vec2<u32>(u_input.b, u_input.b) << (vec2<u32>(10876u, u_input.b) % vec2<u32>(32u))), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false))), vec3<i32>(~u_input.a, -7424i, max(u_input.a, 9646i)) | select(_wgslsmith_clamp_vec3_i32(vec3<i32>(-8160i, u_input.a, u_input.a), vec3<i32>(-2147483647i, -25900i, u_input.a), vec3<i32>(u_input.a, 2242i, -15030i)), -vec3<i32>(u_input.a, -57642i, 42081i), true), Struct_1(vec2<u32>(_wgslsmith_mod_u32(u_input.b, 1u), ~64846u), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false), false)), Struct_2(Struct_1(~(~vec2<u32>(25146u, u_input.b)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true), 1u >= _wgslsmith_mod_u32(u_input.b, 0u)), Struct_1(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b), vec2<u32>(32646u, u_input.b)), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), any(vec3<bool>(false, false, false))), vec3<i32>(_wgslsmith_mult_i32(4707i, 1i), 37353i, _wgslsmith_div_i32(-u_input.a, -2147483647i >> (u_input.b % 32u))), Struct_1(~select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(0u, 34001u), true), vec3<bool>(true, true, true), any(vec4<bool>(true, true, true, true)))), 81844u, !select(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))) + arg_0));
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(var_0.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(vec2<u32>(var_0.c, var_0.a.b.a.x), vec3<bool>(true, var_0.d.x, var_0.a.b.c), false), 1u)))))));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(-var_0.e), _wgslsmith_f_op_f32(f32(-1f) * -652f));
    var var_2 = Struct_1(~(~var_0.b.b.a), !vec3<bool>(true, all(select(vec4<bool>(var_0.d.x, true, false, true), vec4<bool>(var_0.b.a.c, var_0.a.d.c, var_0.b.b.c, var_0.b.b.c), true)), var_0.b.a.b.x), -517f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-822f * 901f), _wgslsmith_f_op_f32(f32(-1f) * -1092f), false))));
    let var_3 = vec2<i32>(2147483647i, 24555i);
    return var_0.b.a;
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_5) -> Struct_5 {
    var var_0 = firstTrailingBit(~(-(~vec3<i32>(13433i, u_input.a, u_input.a))));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(func_1(~arg_2.a.a.x)), select(select(!arg_2.a.b.zz, vec2<bool>(true, arg_2.a.b.x), vec2<bool>(arg_0.b.x, all(vec3<bool>(true, false, arg_2.a.b.x)))), select(vec2<bool>(-2147483647i >= var_0.x, !arg_0.c), func_4(-1391f).b.xy, max(arg_0.a.x, 12675u) != 4294967295u), arg_2.a.b.x), abs(vec4<u32>(_wgslsmith_div_u32(0u, 4294967295u), arg_2.a.a.x, arg_2.a.a.x, ~u_input.b) | countOneBits(~vec4<u32>(126145u, arg_0.a.x, arg_2.a.a.x, arg_2.a.a.x))), !arg_2.a.b.xy, any(vec3<bool>(true, all(arg_0.b), arg_0.b.x)));
    var_0 = reverseBits(vec3<i32>(-1i) * -(firstTrailingBit(vec3<i32>(6417i, 22250i, var_0.x)) & vec3<i32>(u_input.a, -2147483647i, u_input.a)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-arg_2.b.wz);
    var_2 = _wgslsmith_f_op_vec2_f32(arg_2.b.yw + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-197f, 112f))), _wgslsmith_f_op_vec2_f32(abs(arg_2.b.yy))))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1199f, _wgslsmith_f_op_f32(max(635f, var_1.a)))))));
    return Struct_5(Struct_1(~vec2<u32>(var_1.c.x, u_input.b & arg_0.a.x), !arg_0.b, var_1.e), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(931f, -1546f, -361f, var_1.a)) + arg_2.b)))));
}

fn func_6(arg_0: Struct_5, arg_1: vec3<bool>, arg_2: vec2<u32>) -> Struct_4 {
    let var_0 = Struct_2(Struct_1(arg_0.a.a, select(arg_1, arg_1, arg_0.a.b.x), false), Struct_1(select(vec2<u32>(_wgslsmith_add_u32(1u, 27166u), _wgslsmith_mod_u32(34566u, 37114u)), arg_0.a.a, any(vec3<bool>(false, arg_1.x, arg_1.x))), arg_0.a.b, true), vec3<i32>(1i, -2147483647i, -(~5640i)) << ((~(vec3<u32>(0u, 4294967295u, arg_0.a.a.x) & vec3<u32>(arg_2.x, u_input.b, 1u)) & vec3<u32>(~arg_0.a.a.x, select(1u, 40240u, arg_0.a.c), arg_0.a.a.x)) % vec3<u32>(32u)), Struct_1((arg_2 & vec2<u32>(arg_2.x, arg_2.x)) >> (countOneBits(arg_0.a.a) % vec2<u32>(32u)), vec3<bool>(arg_1.x || any(vec4<bool>(arg_1.x, false, arg_0.a.b.x, false)), true, arg_1.x), all(vec3<bool>(arg_1.x, any(arg_0.a.b.zz), false))));
    let var_1 = func_5(var_0.b, _wgslsmith_f_op_f32(543f * arg_0.b.x), Struct_5(var_0.d, arg_0.b)).a.b;
    let var_2 = func_4(-340f);
    let var_3 = arg_0;
    var var_4 = ~6967u | ~arg_2.x;
    return Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -454f), func_5(Struct_1(~select(arg_2, arg_2, var_1.x), !vec3<bool>(var_1.x, var_3.a.b.x, var_2.c), 19718u > arg_2.x), _wgslsmith_f_op_f32(f32(-1f) * -649f), func_5(Struct_1(var_0.b.a, func_5(Struct_1(arg_2, vec3<bool>(true, arg_0.a.b.x, false), var_1.x), var_3.b.x, Struct_5(var_0.a, vec4<f32>(-121f, -687f, 584f, var_3.b.x))).a.b, var_0.a.b.x || false), var_3.b.x, func_5(var_3.a, _wgslsmith_f_op_f32(func_1(1u)), func_5(var_0.a, arg_0.b.x, Struct_5(Struct_1(vec2<u32>(arg_2.x, var_2.a.x), vec3<bool>(true, true, var_0.d.b.x), false), var_3.b))))).a.b.yx, ~_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(var_3.a.a.x, 14195u, var_2.a.x, 1u)), vec4<u32>(var_0.d.a.x, var_3.a.a.x, 1u, 1u)), ~vec4<u32>(80735u, var_0.a.a.x, 0u, 4294967295u)), var_3.a.b.zy, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1684f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1370f * -1000f))) + 464f), 280f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(421f - 1008f)) + 260f))));
    let var_1 = func_6(func_5(Struct_1(~(vec2<u32>(u_input.b, u_input.b) & vec2<u32>(49427u, 80903u)), vec3<bool>(u_input.a > -1i, true, true), true), _wgslsmith_f_op_f32(f32(-1f) * -325f), Struct_5(func_4(_wgslsmith_f_op_f32(func_1(u_input.b))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(var_0 * vec4<f32>(var_0.x, var_0.x, -789f, -1410f)))))), select(func_4(809f).b, !vec3<bool>(true, u_input.a < u_input.a, true), true), func_5(Struct_1(select(~vec2<u32>(17201u, u_input.b), _wgslsmith_mod_vec2_u32(vec2<u32>(3335u, u_input.b), vec2<u32>(52855u, u_input.b)), vec2<bool>(false, true)), select(vec3<bool>(false, true, true), func_5(Struct_1(vec2<u32>(u_input.b, u_input.b), vec3<bool>(false, true, false), true), 923f, Struct_5(Struct_1(vec2<u32>(u_input.b, 1u), vec3<bool>(false, true, false), false), vec4<f32>(var_0.x, var_0.x, var_0.x, -987f))).a.b, true), true), var_0.x, func_5(func_5(func_4(-570f), func_5(Struct_1(vec2<u32>(u_input.b, u_input.b), vec3<bool>(false, false, false), true), -483f, Struct_5(Struct_1(vec2<u32>(u_input.b, 17766u), vec3<bool>(false, true, false), true), vec4<f32>(var_0.x, var_0.x, 1000f, -146f))).b.x, func_5(Struct_1(vec2<u32>(8107u, 25963u), vec3<bool>(true, true, false), false), -1000f, Struct_5(Struct_1(vec2<u32>(57025u, u_input.b), vec3<bool>(false, true, true), true), var_0))).a, var_0.x, Struct_5(func_5(Struct_1(vec2<u32>(u_input.b, 4294967295u), vec3<bool>(true, false, false), true), 169f, Struct_5(Struct_1(vec2<u32>(103885u, 4294967295u), vec3<bool>(true, false, true), false), var_0)).a, _wgslsmith_f_op_vec4_f32(-var_0)))).a.a);
    let var_2 = false;
    let var_3 = !vec3<bool>(func_5(Struct_1(var_1.c.ww, select(vec3<bool>(true, var_1.b.x, var_2), vec3<bool>(var_1.d.x, true, true), true), !var_1.e), 1576f, func_5(Struct_1(var_1.c.xy, vec3<bool>(true, var_2, var_1.e), var_2), var_1.a, func_5(Struct_1(var_1.c.zy, vec3<bool>(true, false, false), false), -2426f, Struct_5(Struct_1(var_1.c.yy, vec3<bool>(var_1.d.x, true, var_1.e), var_1.e), var_0)))).a.b.x, var_2, true);
    var var_4 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0.x)), 1f)), var_1.b, func_6(Struct_5(func_5(Struct_1(vec2<u32>(u_input.b, 1u), var_3, true), var_0.x, Struct_5(Struct_1(var_1.c.yx, var_3, var_2), vec4<f32>(-373f, 1000f, 1175f, var_0.x))).a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_0, var_0)))), vec3<bool>(var_3.x, select(select(true, var_1.e, true), 1699f <= var_1.a, var_3.x), var_1.c.x > _wgslsmith_add_u32(u_input.b, 4294967295u)), ~var_1.c.zz).c, !vec2<bool>(!func_6(Struct_5(Struct_1(vec2<u32>(var_1.c.x, 1u), vec3<bool>(var_1.b.x, false, false), var_3.x), var_0), var_3, vec2<u32>(42182u, u_input.b)).e, -1525f > func_5(Struct_1(var_1.c.yx, vec3<bool>(true, var_2, false), true), -399f, Struct_5(Struct_1(vec2<u32>(var_1.c.x, var_1.c.x), vec3<bool>(var_2, false, var_1.d.x), true), vec4<f32>(-371f, 108f, -260f, var_1.a))).b.x), false);
    var_4 = func_6(Struct_5(Struct_1(vec2<u32>(17704u, ~0u), select(var_3, select(vec3<bool>(var_3.x, var_4.e, var_2), var_3, false), var_3.x), true), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0 + var_0)), var_0))), !vec3<bool>(true, !(u_input.a >= u_input.a), false), vec2<u32>(_wgslsmith_mult_u32(~_wgslsmith_div_u32(var_4.c.x, 12291u), var_1.c.x), _wgslsmith_mult_u32(16053u, u_input.b)));
    var var_5 = var_1;
    var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(0u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1048f) + 1000f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1669f)) - _wgslsmith_f_op_f32(ceil(655f))))), var_4.a));
}

