struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: vec2<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: bool) -> vec2<bool> {
    let var_0 = _wgslsmith_div_vec4_i32(select(abs(~vec4<i32>(47494i, u_input.b, 2147483647i, u_input.b)) << (reverseBits(arg_1.e.d) % vec4<u32>(32u)), firstTrailingBit(countOneBits(abs(vec4<i32>(18060i, arg_1.e.b.x, arg_1.e.b.x, arg_1.b.b.x)))), true), ~(vec4<i32>(u_input.b, abs(-14943i), _wgslsmith_mult_i32(0i, -79111i), min(2147483647i, 0i)) & -_wgslsmith_mod_vec4_i32(vec4<i32>(29946i, u_input.b, arg_1.e.b.x, 6911i), vec4<i32>(-8460i, arg_1.e.b.x, 1i, u_input.b))));
    let var_1 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(abs(0u), ~u_input.a) << (arg_1.b.d.zz % vec2<u32>(32u)), vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, arg_1.e.d.x, 46633u), vec3<u32>(arg_1.e.d.x, arg_1.b.c, 26370u) ^ arg_1.e.d.xyw), ~u_input.a)), _wgslsmith_dot_vec2_u32(arg_1.b.d.yx, vec2<u32>(4294967295u, _wgslsmith_mod_u32(5338u, arg_1.b.c))), ~_wgslsmith_dot_vec4_u32(reverseBits(_wgslsmith_add_vec4_u32(arg_1.e.d, vec4<u32>(1u, arg_1.e.c, arg_1.e.c, 33648u))), arg_1.b.d));
    var var_2 = vec3<bool>(true, _wgslsmith_f_op_f32(abs(arg_0)) == _wgslsmith_f_op_f32(f32(-1f) * -1000f), !any(select(vec4<bool>(arg_1.d.x, arg_2, arg_1.d.x, true), vec4<bool>(arg_1.c, true, true, true), vec4<bool>(arg_2, arg_1.d.x, arg_1.d.x, false))) || false);
    let var_3 = 1i;
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-arg_1.e.a)))), -vec2<i32>((1i & var_0.x) | _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.b.b.x, 49112i), vec2<i32>(u_input.b, var_3)), arg_1.b.b.x), 4294967295u, firstLeadingBit(min(vec4<u32>(_wgslsmith_div_u32(var_1, u_input.a), ~4294967295u, _wgslsmith_mult_u32(13024u, arg_1.a), var_1), arg_1.b.d)), true);
    return select(vec2<bool>(2638u < u_input.a, arg_2), !arg_1.d, true);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    var var_0 = vec2<bool>(arg_1.e, arg_1.e);
    var_0 = !func_3(_wgslsmith_f_op_f32(189f + _wgslsmith_f_op_f32(-1f)), arg_0, all(vec3<bool>(true, true, true)));
    var var_1 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_div_f32(2188f, _wgslsmith_f_op_f32(-arg_1.a.x)), _wgslsmith_f_op_f32(exp2(arg_1.a.x)), arg_1.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_0.e.a.x)), _wgslsmith_f_op_f32(max(228f, 1188f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(407f, 999f, arg_1.a.x, arg_1.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.a.x, arg_0.b.a.x, 1750f, arg_1.a.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1293f, arg_1.a.x, arg_1.a.x, arg_0.e.a.x))))));
    var_0 = vec2<bool>(true & any(!select(vec4<bool>(arg_0.e.e, true, false, false), vec4<bool>(arg_1.e, arg_0.b.e, arg_0.d.x, false), vec4<bool>(true, false, var_0.x, arg_0.b.e))), var_0.x);
    var var_2 = ~u_input.a;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-441f)), 1433f));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: Struct_1) -> u32 {
    let var_0 = vec3<i32>(reverseBits(u_input.b), ((arg_2.b.x & -u_input.b) << (37842u % 32u)) ^ u_input.b, ~arg_0.x);
    let var_1 = 1f;
    let var_2 = select(vec3<u32>(u_input.a, 1u, reverseBits(~0u)), select(arg_2.d.zyw ^ arg_2.d.zwx, arg_2.d.xxx, !(!all(vec3<bool>(arg_2.e, arg_2.e, true)))), vec3<bool>(all(vec3<bool>(true, select(false, arg_2.e, arg_1.x), all(vec2<bool>(false, false)))), true, false | arg_2.e));
    let var_3 = vec3<bool>(false, true, arg_2.e);
    var var_4 = ~_wgslsmith_sub_u32(1u, ~(~1u));
    return abs(var_2.x) & var_2.x;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = reverseBits(arg_1);
    var var_1 = Struct_2(func_4(vec4<i32>(firstLeadingBit(_wgslsmith_div_i32(u_input.b, u_input.b)), ~u_input.b, -44488i, -u_input.b), vec2<bool>(true, any(vec2<bool>(arg_0.x, arg_0.x))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(func_2(Struct_2(arg_1.x, Struct_1(vec3<f32>(1382f, -456f, 617f), vec2<i32>(u_input.b, u_input.b), 40156u, vec4<u32>(25239u, var_0.x, 1u, 74022u), arg_0.x), false, arg_0.zz, Struct_1(vec3<f32>(439f, -2140f, 1315f), vec2<i32>(0i, -7224i), 10845u, arg_1, false)), Struct_1(vec3<f32>(397f, 1000f, -597f), vec2<i32>(92915i, -2147483647i), 4426u, vec4<u32>(arg_2.x, arg_2.x, 21902u, arg_1.x), arg_0.x))), _wgslsmith_f_op_f32(max(-123f, 541f)), _wgslsmith_f_op_f32(abs(649f))), ~(vec2<i32>(u_input.b, -25974i) | vec2<i32>(u_input.b, -1i)), arg_2.x, ~countOneBits(vec4<u32>(1u, u_input.a, 4294967295u, arg_1.x)), true)), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(518f, 868f, 643f) - _wgslsmith_div_vec3_f32(vec3<f32>(234f, -657f, -1107f), vec3<f32>(-890f, 1119f, -792f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-142f, -865f, -1614f) + vec3<f32>(-271f, -1073f, -493f)))), select(firstLeadingBit(firstLeadingBit(vec2<i32>(u_input.b, u_input.b))), _wgslsmith_div_vec2_i32(-vec2<i32>(-25679i, -17562i), min(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(u_input.b, u_input.b))), !(!arg_0.x)), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(min(arg_1.wxz, vec3<u32>(arg_1.x, arg_1.x, arg_2.x)), _wgslsmith_mult_vec3_u32(arg_1.wzy, vec3<u32>(u_input.a, 1u, 13001u))), 4294967295u), abs(_wgslsmith_add_vec4_u32(arg_1, var_0)) | select(~var_0, ~arg_1, arg_0), arg_0.x), false, vec2<bool>(arg_0.x, true), Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -645f), _wgslsmith_f_op_f32(-1891f - 191f)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-889f, 1262f, -833f), vec3<f32>(-800f, -1174f, 186f))))))), abs(vec2<i32>(reverseBits(2147483647i), ~9824i)), 1u, ~(vec4<u32>(var_0.x, arg_1.x, arg_1.x, u_input.a) & var_0), ~(18223u ^ var_0.x) < 0u));
    var_1 = Struct_2(~_wgslsmith_dot_vec2_u32(~min(vec2<u32>(0u, 0u), arg_2), arg_2), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-297f, var_1.e.a.x, var_1.e.a.x) * var_1.e.a)))), var_1.b.b, ~arg_2.x, var_0, any(arg_0.wz)), arg_0.x, !select(var_1.d, var_1.d, false), var_1.e);
    var_1 = Struct_2(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(arg_1, arg_1), ~37474u), var_1.b, !((var_1.e.c << (33461u % 32u)) > var_0.x), arg_0.zw, Struct_1(vec3<f32>(738f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(105f + 179f), var_1.b.a.x)), _wgslsmith_f_op_f32(exp2(var_1.e.a.x))), vec2<i32>(1i, i32(-1i) * -7230i) ^ select(~vec2<i32>(3292i, 5562i), vec2<i32>(u_input.b, -14906i), any(var_1.d)), ~48997u, vec4<u32>(arg_2.x, arg_2.x, 1u, arg_1.x), var_1.d.x));
    let var_2 = vec3<bool>(!(var_1.e.a.x < _wgslsmith_f_op_f32(floor(-483f))), false, true);
    return Struct_1(var_1.b.a, _wgslsmith_clamp_vec2_i32(firstLeadingBit(min(reverseBits(vec2<i32>(0i, u_input.b)), ~vec2<i32>(u_input.b, var_1.e.b.x))), _wgslsmith_mult_vec2_i32(~(var_1.b.b << (arg_2 % vec2<u32>(32u))), ~(-vec2<i32>(var_1.b.b.x, var_1.e.b.x))), var_1.e.b), _wgslsmith_sub_u32(~58361u, ~func_4(vec4<i32>(73878i, var_1.e.b.x, u_input.b, 0i), arg_0.zz, var_1.b)), var_1.e.d, true);
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> Struct_2 {
    let var_0 = arg_0;
    let var_1 = !(!all(vec2<bool>(true, !arg_0.e.e)));
    var var_2 = ~firstTrailingBit(var_0.b.b.x);
    let var_3 = arg_0;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.b.a.x, var_3.e.a.x)) + _wgslsmith_f_op_f32(-665f - var_0.e.a.x)));
    return Struct_2(13541u, func_1(select(!select(vec4<bool>(true, arg_1, true, false), vec4<bool>(false, arg_2.e, false, arg_2.e), false), select(vec4<bool>(false, arg_0.e.e, true, false), vec4<bool>(false, var_0.b.e, false, arg_1), arg_2.e), _wgslsmith_f_op_f32(-arg_2.a.x) < -550f), vec4<u32>(reverseBits(1u), arg_2.d.x, _wgslsmith_mult_u32(~1u, func_1(vec4<bool>(false, arg_2.e, arg_2.e, false), var_3.b.d, vec2<u32>(31018u, u_input.a)).c), ~var_3.b.c), vec2<u32>(~42319u, func_4(vec4<i32>(8716i, 2147483647i, 82672i, arg_0.b.b.x) << (var_0.e.d % vec4<u32>(32u)), vec2<bool>(var_0.b.e, arg_0.b.e), func_1(vec4<bool>(true, true, true, false), vec4<u32>(var_0.b.c, arg_2.d.x, var_3.a, 45248u), arg_2.d.yz)))), arg_1, vec2<bool>(arg_0.e.e, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(var_0.e.a.x)))) > func_1(!vec4<bool>(true, false, var_3.b.e, arg_0.d.x), ~vec4<u32>(4294967295u, arg_0.e.c, var_0.e.c, 18414u), ~var_3.e.d.yz).a.x), func_1(!(!(!vec4<bool>(false, arg_2.e, false, false))), ~abs(vec4<u32>(var_0.e.d.x, var_0.a, 12183u, var_0.e.d.x)) | (func_1(vec4<bool>(arg_0.d.x, true, true, false), arg_0.b.d, vec2<u32>(arg_2.c, 4294967295u)).d ^ ~vec4<u32>(29352u, var_0.b.c, arg_2.c, 1u)), firstLeadingBit(arg_0.e.d.zw)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_2(1u, func_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), max(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 21841u, 66353u), vec4<u32>(64436u, 55082u, 0u, u_input.a))), _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 33783u), vec2<u32>(0u, u_input.a)), ~vec2<u32>(u_input.a, 0u), ~vec2<u32>(u_input.a, 4294967295u))), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec3<bool>(true, false, true)))), select(vec2<bool>(false, true), vec2<bool>(true, true), select(all(vec4<bool>(false, true, false, true)), true, true)), Struct_1(vec3<f32>(-285f, 1f, -818f), abs(vec2<i32>(u_input.b, 0i)), _wgslsmith_clamp_u32(4294967295u, firstTrailingBit(u_input.a), u_input.a), firstLeadingBit(vec4<u32>(0u, u_input.a, u_input.a, 4294967295u)) & vec4<u32>(u_input.a, 4294967295u, u_input.a, 0u), !all(vec3<bool>(false, true, false)))), !all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false))) & (all(vec2<bool>(true, true)) & (53489i < _wgslsmith_clamp_i32(u_input.b, u_input.b, 0i))), func_1(vec4<bool>(all(vec3<bool>(false, false, false)), true, true, true), countOneBits(~vec4<u32>(u_input.a, 27198u, 950u, 1u)), _wgslsmith_add_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, u_input.a)), min(vec2<u32>(u_input.a, 33152u), min(vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, u_input.a))))));
    let var_1 = func_5(func_5(var_0, true, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1175f, var_0.b.a.x, 423f) * vec3<f32>(var_0.b.a.x, 458f, -642f))), firstLeadingBit(-var_0.b.b), u_input.a, var_0.e.d, !var_0.d.x)), !func_3(_wgslsmith_f_op_f32(f32(-1f) * -1207f), func_5(Struct_2(var_0.e.c, var_0.b, var_0.e.e, var_0.d, Struct_1(vec3<f32>(-817f, -1183f, 1178f), vec2<i32>(2147483647i, u_input.b), u_input.a, var_0.e.d, true)), var_0.c, Struct_1(vec3<f32>(-1163f, 201f, -1516f), var_0.e.b, 1u, var_0.e.d, false)), false).x == select(var_0.d.x, true, var_0.e.e), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e.a.x, _wgslsmith_f_op_f32(max(1505f, var_0.e.a.x)), var_0.b.a.x)), ~vec2<i32>(-1i, -2147483647i), u_input.a ^ (reverseBits(118062u) & var_0.a), func_1(!vec4<bool>(false, var_0.b.e, false, true), vec4<u32>(u_input.a, ~20069u, 0u, var_0.a), vec2<u32>(var_0.a, ~u_input.a)).d, false));
    let var_2 = func_1(select(vec4<bool>(var_1.e.e, var_1.e.e, !(var_0.d.x || false), var_0.d.x), select(vec4<bool>(var_0.b.e, all(var_1.d), select(var_1.d.x, true, var_1.d.x), any(var_0.d)), !(!vec4<bool>(false, true, var_0.c, true)), !func_1(vec4<bool>(var_1.b.e, var_0.e.e, false, var_1.b.e), var_0.b.d, var_0.b.d.wx).e), !vec4<bool>(!var_0.d.x, var_1.b.a.x == -112f, all(vec3<bool>(var_1.e.e, false, false)), var_0.e.b.x > 27935i)), ~(firstLeadingBit(vec4<u32>(var_1.b.d.x, 88238u, 0u, u_input.a)) & (vec4<u32>(4294967295u, var_0.a, var_0.a, 22836u) | vec4<u32>(1868u, var_0.e.d.x, var_1.b.d.x, 1u))) | countOneBits(abs(firstTrailingBit(var_0.b.d))), ~(~firstLeadingBit(vec2<u32>(u_input.a, u_input.a))));
    var var_3 = _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-(var_1.b.b.x ^ 34437i), u_input.b, abs(1i)), _wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(11281i, var_2.b.x, var_1.e.b.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(40751i, -18807i, -1637i), vec3<i32>(-1i, var_1.b.b.x, u_input.b))) >> (var_2.d.zxy % vec3<u32>(32u))), select(_wgslsmith_clamp_vec3_i32(-vec3<i32>(9510i, var_1.b.b.x, u_input.b) >> (~vec3<u32>(var_1.b.c, 77255u, 17003u) % vec3<u32>(32u)), firstTrailingBit(vec3<i32>(u_input.b, 2147483647i, var_2.b.x)) << (func_5(var_0, false, Struct_1(var_1.b.a, vec2<i32>(-5370i, var_2.b.x), var_1.e.c, vec4<u32>(u_input.a, 0u, 0u, var_0.b.c), false)).e.d.xyz % vec3<u32>(32u)), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.b.x, var_0.e.b.x), vec2<i32>(var_1.b.b.x, u_input.b)), var_2.b.x, i32(-1i) * -1i)), vec3<i32>(_wgslsmith_div_i32(select(-5510i, u_input.b, var_1.d.x), firstLeadingBit(-26662i)), countOneBits(u_input.b & var_0.b.b.x), -1i), select(!(!vec3<bool>(var_1.c, var_0.c, true)), select(vec3<bool>(var_2.e, var_1.b.e, true), select(vec3<bool>(var_2.e, false, true), vec3<bool>(var_1.d.x, false, var_2.e), var_0.c), vec3<bool>(true, true, true)), false)));
    let var_4 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(var_1.e.a.x * var_2.a.x), _wgslsmith_f_op_f32(-var_0.e.a.x), var_0.e.a.x), vec2<i32>(~27463i ^ func_1(!vec4<bool>(var_2.e, true, true, var_1.b.e), _wgslsmith_sub_vec4_u32(vec4<u32>(4866u, 1u, u_input.a, var_2.c), var_2.d), var_0.e.d.yx).b.x, ~(~(~var_2.b.x))), firstTrailingBit(var_0.e.d.x), ~vec4<u32>(1u, ~var_1.b.c & 0u, 38288u, _wgslsmith_clamp_u32(~45705u, ~var_2.c, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.d.x, u_input.a, 0u, 1u), vec4<u32>(var_0.b.c, 45822u, 63058u, u_input.a)))), var_2.e & ((0i | -var_2.b.x) <= var_1.b.b.x));
    var_3 = vec3<i32>(19395i, max(-2147483647i, func_5(Struct_2(4294967295u, var_4, var_4.e, vec2<bool>(false, var_4.e), Struct_1(vec3<f32>(-666f, 366f, var_0.b.a.x), vec2<i32>(-29738i, 0i), 24045u, var_1.b.d, false)), var_4.e & var_2.e, Struct_1(vec3<f32>(var_1.e.a.x, 207f, 977f), vec2<i32>(15785i, var_2.b.x), 0u, vec4<u32>(15623u, 0u, var_4.c, 0u), var_4.e)).e.b.x << ((func_5(var_0, var_4.e, Struct_1(vec3<f32>(-825f, var_0.e.a.x, var_1.e.a.x), vec2<i32>(1690i, -67769i), 58486u, vec4<u32>(0u, 6918u, 65424u, 4294967295u), var_4.e)).a >> (34410u % 32u)) % 32u)), ~(6469i << (_wgslsmith_div_u32(~49828u, var_1.b.c) % 32u)));
    var_3 = vec3<i32>(var_2.b.x, 58660i, var_2.b.x) << (_wgslsmith_div_vec3_u32(func_5(func_5(Struct_2(var_2.d.x, var_4, true, vec2<bool>(var_4.e, true), Struct_1(var_1.e.a, vec2<i32>(var_1.e.b.x, var_1.e.b.x), 29751u, var_2.d, var_0.b.e)), !var_0.c, func_5(var_1, var_1.d.x, var_0.e).e), all(vec2<bool>(var_0.b.e, var_2.e)), Struct_1(_wgslsmith_f_op_vec3_f32(var_2.a * var_0.e.a), var_1.b.b, ~59791u, var_2.d, false)).e.d.zyy, ~var_1.b.d.wzz) % vec3<u32>(32u));
    var_3 = vec3<i32>(var_4.b.x, 11093i, var_2.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(31412i, -var_1.e.b.x, ~_wgslsmith_mod_i32(-var_0.e.b.x, u_input.b << (0u % 32u)), -var_0.e.b.x), 85295i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-func_1(vec4<bool>(true, var_2.e, var_4.e, var_4.e), vec4<u32>(17428u, 25866u, 1u, 0u), vec2<u32>(1u, 0u)).a.x)))));
}

