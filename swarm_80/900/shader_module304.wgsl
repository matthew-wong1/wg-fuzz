struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<f32>,
    d: vec2<u32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2) -> u32 {
    var var_0 = arg_1.a.x;
    let var_1 = select(vec3<bool>(true, true, true), vec3<bool>(!(_wgslsmith_f_op_f32(arg_1.b.b.x - 135f) != -1000f), (_wgslsmith_sub_i32(-2147483647i, 0i) ^ arg_1.a.x) <= u_input.a.x, all(select(vec2<bool>(false, arg_0.b.a.b), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(arg_2.a.b, false)), arg_2.a.b))), 50925i == (-62125i ^ -arg_1.a.x));
    let var_2 = u_input.c.x;
    var var_3 = 0u < (_wgslsmith_div_u32(~7363u, _wgslsmith_dot_vec3_u32(arg_2.c, vec3<u32>(var_2, u_input.c.x, var_2)) | min(33642u, 4294967295u)) ^ arg_1.c.x);
    let var_4 = Struct_2(Struct_1(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, arg_0.a.x, arg_0.a.x, arg_0.a.x) >> (vec4<u32>(arg_0.b.d, var_2, 92236u, 1u) % vec4<u32>(32u)), vec4<i32>(arg_2.a.a, -2147483647i, arg_0.b.a.a, -17723i)), select(arg_0.a.x, arg_0.a.x, true)), select(true, all(var_1), arg_0.b.a.b || true), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.b.b.x), _wgslsmith_f_op_f32(step(arg_0.b.a.e.x, arg_1.b.a.c.x)), 123f < arg_2.a.c.x)), -828f), vec2<u32>(_wgslsmith_mult_u32(arg_0.b.a.d.x, 94148u), u_input.c.x) & u_input.c.xy, vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.b.b.x))), 2806f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b.x - -1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-437f, _wgslsmith_f_op_f32(-545f * 1000f), 1455f))), arg_1.b.c, ~3778u, ~1u);
    return 46568u;
}

fn func_2(arg_0: vec4<bool>, arg_1: bool, arg_2: vec2<f32>) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(u_input.a.x | u_input.a.x, arg_0.x, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2), _wgslsmith_f_op_vec2_f32(-arg_2)))), ~u_input.c.zz, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-198f, arg_2.x, -412f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-703f, arg_2.x, -312f), vec3<f32>(1313f, -228f, -706f), vec3<bool>(arg_0.x, arg_0.x, arg_1))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1091f, arg_2.x, arg_2.x))))))), vec3<u32>(u_input.c.x, _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(68374u, 30408u, 8615u, 43737u)), _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.c.x, u_input.c.x), ~0u)), ~_wgslsmith_mod_u32(func_3(Struct_3(vec4<i32>(26797i, 63259i, 18739i, u_input.a.x), Struct_2(Struct_1(u_input.a.x, arg_0.x, arg_2, vec2<u32>(u_input.c.x, u_input.c.x), vec3<f32>(arg_2.x, arg_2.x, arg_2.x)), vec3<f32>(1855f, 1010f, -597f), u_input.c.wxz, 1u, 1u), u_input.c), Struct_3(vec4<i32>(u_input.b, 40126i, u_input.a.x, u_input.b), Struct_2(Struct_1(u_input.a.x, true, vec2<f32>(arg_2.x, 2209f), vec2<u32>(u_input.c.x, u_input.c.x), vec3<f32>(arg_2.x, 761f, arg_2.x)), vec3<f32>(-559f, arg_2.x, -1410f), vec3<u32>(u_input.c.x, 1u, 27410u), 48772u, u_input.c.x), vec4<u32>(0u, u_input.c.x, u_input.c.x, 4713u)), Struct_2(Struct_1(-35593i, false, vec2<f32>(arg_2.x, arg_2.x), vec2<u32>(u_input.c.x, 1u), vec3<f32>(-924f, arg_2.x, arg_2.x)), vec3<f32>(arg_2.x, -755f, -1000f), vec3<u32>(1u, 25158u, 1u), 0u, 17651u)), ~26215u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, _wgslsmith_add_u32(_wgslsmith_add_u32(u_input.c.x, u_input.c.x), abs(51512u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(49651u, u_input.c.x, u_input.c.x, 4294967295u), u_input.c), ~14163u), ~vec4<u32>(min(0u, 58263u), 34828u, 0u, u_input.c.x)), _wgslsmith_dot_vec3_u32(~select(~vec3<u32>(u_input.c.x, u_input.c.x, 1214u), ~vec3<u32>(141u, u_input.c.x, 83127u), !vec3<bool>(true, arg_0.x, true)), vec3<u32>(~u_input.c.x & ~u_input.c.x, ~59989u, ~46617u)));
    var var_1 = arg_1;
    let var_2 = var_0.a.e;
    var_0 = Struct_2(Struct_1(i32(-1i) * -(i32(-1i) * -1i), true, vec2<f32>(-209f, _wgslsmith_f_op_f32(-var_0.a.c.x)), ~(~u_input.c.xy), vec3<f32>(_wgslsmith_div_f32(-233f, _wgslsmith_f_op_f32(-arg_2.x)), arg_2.x, _wgslsmith_f_op_f32(-var_0.a.e.x))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * var_0.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1196f - var_2.x))), _wgslsmith_div_f32(-362f, -926f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(select(-789f, -418f, arg_1))))), ~u_input.c.zxw, u_input.c.x, 0u);
    var_0 = Struct_2(Struct_1(-5767i, true, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(var_0.b.xx)))), vec2<f32>(-906f, -608f)), select(u_input.c.xw, ~u_input.c.yz | (vec2<u32>(4294967295u, var_0.a.d.x) ^ var_0.c.yz), true), var_0.b), vec3<f32>(-1292f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2.x)) + _wgslsmith_div_f32(-2080f, var_0.a.c.x)) + var_2.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.x, -104f, arg_1))), var_0.b.x)), _wgslsmith_div_vec3_u32(~vec3<u32>(func_3(Struct_3(vec4<i32>(-47197i, 0i, -15831i, var_0.a.a), Struct_2(var_0.a, vec3<f32>(-1580f, var_2.x, var_2.x), vec3<u32>(18983u, 4294967295u, 61886u), 1u, var_0.e), vec4<u32>(var_0.d, var_0.c.x, 1u, 0u)), Struct_3(vec4<i32>(53273i, -4143i, -2147483647i, 1i), Struct_2(var_0.a, vec3<f32>(arg_2.x, -1369f, 546f), var_0.c, 11814u, var_0.c.x), u_input.c), Struct_2(var_0.a, vec3<f32>(var_2.x, 1777f, -1996f), var_0.c, var_0.e, 49132u)), u_input.c.x & var_0.a.d.x, firstTrailingBit(var_0.d)), vec3<u32>(max(_wgslsmith_add_u32(var_0.d, u_input.c.x), var_0.a.d.x), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(var_0.c.xz, vec2<u32>(var_0.a.d.x, u_input.c.x)), var_0.d), ~(~var_0.e))), abs(var_0.d), _wgslsmith_sub_u32(~(~var_0.e), 36934u) & _wgslsmith_sub_u32(~var_0.c.x, abs(var_0.a.d.x)));
    return Struct_2(var_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.a.c.x, -335f, var_0.a.e.x))) - vec3<f32>(_wgslsmith_f_op_f32(984f * 1294f), _wgslsmith_f_op_f32(arg_2.x * -208f), -981f))), vec3<u32>(1u, u_input.c.x, _wgslsmith_dot_vec4_u32(u_input.c ^ u_input.c, ~vec4<u32>(9096u, u_input.c.x, 56751u, u_input.c.x)) << (~select(var_0.e, var_0.a.d.x, arg_1) % 32u)), 8633u, 29552u);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec4<f32>, arg_3: i32) -> Struct_1 {
    let var_0 = func_2(vec4<bool>(arg_0.b, false, _wgslsmith_div_i32(arg_0.a, 0i) != 1i, all(select(!vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(arg_0.b, arg_0.b), !arg_0.b))), false, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-981f - arg_2.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2.x * 281f), _wgslsmith_f_op_f32(-386f * arg_2.x), all(vec4<bool>(true, arg_0.b, arg_0.b, arg_0.b))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1121f, 666f))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(arg_2.xz, vec2<f32>(arg_2.x, arg_0.e.x)), arg_0.e.yy))))));
    var var_1 = func_2(vec4<bool>(!any(vec2<bool>(true, false)), !(!(!arg_0.b)), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - -2232f)) <= _wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(trunc(arg_0.e.x)))), 27448u <= _wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(arg_0.d.x, 0u), arg_0.d.x), _wgslsmith_add_u32(~63121u, _wgslsmith_dot_vec2_u32(u_input.c.xw, arg_0.d))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_0.a.e.yx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, -579f)))), _wgslsmith_f_op_vec2_f32(arg_2.xx + arg_0.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.zz * vec2<f32>(arg_0.c.x, -1030f))) * _wgslsmith_f_op_vec2_f32(-arg_2.yx))))).a.c.x;
    var_1 = arg_0.c.x;
    var_1 = 667f;
    let var_2 = Struct_3(~vec4<i32>(~(-1i) | max(var_0.a.a, u_input.a.x), _wgslsmith_add_i32(_wgslsmith_mult_i32(arg_0.a, 28384i), u_input.a.x & u_input.b), arg_0.a, -arg_0.a), var_0, ~abs(~(vec4<u32>(48067u, 4294967295u, arg_0.d.x, 18911u) << (u_input.c % vec4<u32>(32u)))));
    return Struct_1(func_2(!(!vec4<bool>(arg_0.b, var_2.b.a.b, var_0.a.b, true)), false, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_2.b.a.e.zy), var_0.a.c))).a.a, arg_0.b, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, var_2.b.a.e.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(299f, _wgslsmith_f_op_f32(-arg_2.x))), select(vec2<bool>(true, true), select(vec2<bool>(var_0.a.b, var_2.b.a.b), select(vec2<bool>(false, var_2.b.a.b), vec2<bool>(var_0.a.b, var_2.b.a.b), vec2<bool>(var_2.b.a.b, false)), vec2<bool>(arg_0.b, false)), vec2<bool>(true, true)))), firstLeadingBit(vec2<u32>(_wgslsmith_div_u32(~4294967295u, 61534u), countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.d, var_2.c.x), vec2<u32>(u_input.c.x, var_0.a.d.x))))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-740f, _wgslsmith_f_op_f32(-var_2.b.b.x), func_2(select(vec4<bool>(false, var_2.b.a.b, true, arg_0.b), vec4<bool>(false, arg_0.b, var_0.a.b, var_2.b.a.b), arg_0.b), true, var_2.b.b.yx).b.x))));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<f32>) -> f32 {
    var var_0 = Struct_2(Struct_1(u_input.b, true, vec2<f32>(-1000f, -488f), ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(arg_2.d.x, 4294967295u), arg_1.a.d)), arg_3), _wgslsmith_f_op_vec3_f32(arg_1.a.e + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.x, arg_3.x, 443f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-196f, arg_1.a.e.x, -1000f))))), vec3<u32>(arg_0, ~14923u, _wgslsmith_div_u32(~_wgslsmith_div_u32(u_input.c.x, arg_0), 1494u << (arg_0 % 32u))), 1u, _wgslsmith_add_u32(countOneBits(arg_1.d), arg_1.e));
    let var_1 = max(1i, ~firstLeadingBit(var_0.a.a));
    var var_2 = func_2(select(!(!vec4<bool>(arg_2.b, var_0.a.b, var_0.a.b, arg_1.a.b)), select(vec4<bool>(select(arg_2.b, true, true), true, arg_1.a.b, !arg_1.a.b), !(!vec4<bool>(var_0.a.b, false, var_0.a.b, arg_1.a.b)), select(select(vec4<bool>(arg_2.b, false, arg_1.a.b, arg_1.a.b), vec4<bool>(false, var_0.a.b, true, arg_1.a.b), vec4<bool>(true, arg_2.b, var_0.a.b, var_0.a.b)), select(vec4<bool>(false, arg_2.b, arg_2.b, true), vec4<bool>(false, var_0.a.b, true, arg_1.a.b), arg_2.b), true)), select(select(select(vec4<bool>(true, false, arg_2.b, true), vec4<bool>(true, var_0.a.b, arg_2.b, arg_2.b), vec4<bool>(var_0.a.b, var_0.a.b, arg_1.a.b, arg_2.b)), !vec4<bool>(false, false, true, arg_1.a.b), true), select(vec4<bool>(false, false, true, arg_2.b), select(vec4<bool>(var_0.a.b, arg_2.b, arg_1.a.b, var_0.a.b), vec4<bool>(var_0.a.b, arg_1.a.b, var_0.a.b, true), vec4<bool>(true, true, true, true)), vec4<bool>(false, arg_2.b, true, arg_1.a.b)), select(!vec4<bool>(var_0.a.b, arg_2.b, true, arg_1.a.b), !vec4<bool>(arg_1.a.b, var_0.a.b, true, arg_2.b), vec4<bool>(var_0.a.b, true, false, arg_1.a.b)))), !(all(select(vec4<bool>(arg_1.a.b, false, arg_1.a.b, true), vec4<bool>(false, arg_2.b, arg_2.b, arg_2.b), var_0.a.b)) | select(false, func_2(vec4<bool>(false, arg_1.a.b, arg_1.a.b, var_0.a.b), arg_1.a.b, arg_3.xx).a.b, var_0.a.b)), arg_2.c);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-486f + -486f))), -122f));
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: vec3<f32>, arg_3: Struct_3) -> StorageBuffer {
    var var_0 = ~(~(~_wgslsmith_add_u32(_wgslsmith_sub_u32(arg_0, arg_3.b.e), reverseBits(u_input.c.x))));
    var_0 = _wgslsmith_mult_u32(~(~abs(23244u)), _wgslsmith_sub_u32(~func_3(arg_3, arg_3, Struct_2(arg_3.b.a, arg_2, u_input.c.wyx, u_input.c.x, arg_3.b.a.d.x)), u_input.c.x));
    var_0 = 0u;
    let var_1 = 6805i;
    let var_2 = arg_3.b.a.b;
    return StorageBuffer(~1u, vec4<i32>(var_1, _wgslsmith_sub_i32(_wgslsmith_div_i32(i32(-1i) * -3622i, var_1 >> (39765u % 32u)), arg_1), ~51853i, -(i32(-1i) * -var_1)), _wgslsmith_sub_i32(~(~_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(arg_3.b.a.a, arg_1))), ~(~var_1)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(1u, ~select(u_input.b, 1271i >> (u_input.c.x % 32u), true && (u_input.c.x <= 22145u)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-532f, _wgslsmith_f_op_f32(ceil(1839f)), _wgslsmith_f_op_f32(func_4(_wgslsmith_mult_u32(1u, u_input.c.x), Struct_2(Struct_1(2147483647i, true, vec2<f32>(-448f, 319f), u_input.c.zw, vec3<f32>(-1191f, -396f, -1778f)), vec3<f32>(592f, 702f, 423f), u_input.c.zww, 34068u, 0u), func_1(Struct_1(1i, true, vec2<f32>(849f, -765f), vec2<u32>(u_input.c.x, 18652u), vec3<f32>(2039f, 637f, -170f)), vec3<u32>(u_input.c.x, 40458u, u_input.c.x), vec4<f32>(-844f, -1904f, -1776f, -1168f), 0i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2065f, -343f, -308f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -396f, 1157f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(586f, -593f, 1678f)))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1015f), func_2(vec4<bool>(true, true, true, false), true, vec2<f32>(-885f, 1000f)).b.x, _wgslsmith_f_op_f32(-1273f * 394f))), all(vec4<bool>(true, true, true, true)))), Struct_3(abs(_wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(15993i, 7189i, -2147483647i, u_input.a.x)), max(vec4<i32>(u_input.b, u_input.a.x, 0i, -10087i), vec4<i32>(-15388i, -1i, 41375i, 1i)))), func_2(select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), func_1(Struct_1(u_input.a.x, true, vec2<f32>(-1255f, -1774f), u_input.c.zw, vec3<f32>(968f, 1039f, -143f)), u_input.c.wzx, vec4<f32>(-401f, -233f, 264f, -712f), 1i).b), any(vec2<bool>(false, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1424f, 804f), vec2<f32>(392f, 739f)) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-2175f, 316f))))), select(u_input.c, select(countOneBits(u_input.c), vec4<u32>(7963u, u_input.c.x, u_input.c.x, 7202u), vec4<bool>(false, false, true, true)), true)));
}

