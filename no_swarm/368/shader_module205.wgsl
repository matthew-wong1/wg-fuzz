struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: i32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>) -> vec3<bool> {
    return vec3<bool>(!all(!vec4<bool>(arg_0.e.x, arg_0.e.x, true, arg_0.e.x)), !select(all(!vec4<bool>(arg_0.e.x, false, true, true)), !(arg_0.d < -1751i), arg_0.e.x), all(select(arg_0.e, !select(vec3<bool>(arg_0.e.x, arg_0.e.x, true), arg_0.e, arg_0.e.x), !vec3<bool>(true, arg_0.e.x, arg_0.e.x))));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(min(-729f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1078f, 526f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1167f + -955f) + _wgslsmith_f_op_f32(ceil(-672f)))))), u_input.b.zzw, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-732f))), u_input.c, select(vec3<bool>(true, true, true), vec3<bool>(any(vec4<bool>(true, false, true, true)) | true, true, true), !func_1(Struct_1(-865f, u_input.b.wxw, 391f, 2147483647i, vec3<bool>(false, false, true)), ~vec3<u32>(1u, 1u, u_input.a))));
    var var_1 = true;
    var_1 = !var_0.e.x;
    var var_2 = var_0;
    var_2 = var_0;
    return 93969u;
}

fn func_2() -> Struct_1 {
    var var_0 = vec3<f32>(-1510f, 949f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1859f)));
    var var_1 = vec4<u32>(~(u_input.a << (_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(39359u, u_input.b.x), vec2<u32>(1u, u_input.a)), vec2<u32>(57832u, 123529u)) % 32u)), u_input.a, abs(1u << ((~48813u & _wgslsmith_mult_u32(u_input.a, 25359u)) % 32u)), 0u);
    var_1 = vec4<u32>(_wgslsmith_mult_u32(~(_wgslsmith_clamp_u32(26141u, 7126u, var_1.x) << (u_input.a % 32u)), ~u_input.a), ~0u, 22127u, ~func_3());
    var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-311f, var_0.x, 1000f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_0.x, -1000f)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, -538f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1387f, -1024f, var_0.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-581f, 1000f, -835f) + vec3<f32>(var_0.x, -1000f, 1569f)))), func_1(Struct_1(_wgslsmith_f_op_f32(exp2(var_0.x)), vec3<u32>(u_input.b.x, 68318u, var_1.x), -1488f, i32(-1i) * -12505i, vec3<bool>(true, false, true)), var_1.zzx))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, 292f) - vec3<f32>(var_0.x, -659f, 1156f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 935f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1473f, 1769f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(131f, var_0.x, 1740f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(595f, var_0.x, var_0.x), vec3<f32>(var_0.x, 476f, -293f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-464f, 2047f, var_0.x)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x))))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(min(var_0.x, var_0.x)), true)) + -3056f))), _wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -616f));
    return Struct_1(var_0.x, vec3<u32>(u_input.a, _wgslsmith_mod_u32(var_1.x, u_input.a), ~_wgslsmith_dot_vec2_u32(var_1.yy, firstTrailingBit(var_1.zw))), _wgslsmith_f_op_f32(abs(var_0.x)), u_input.c, !select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true), vec3<bool>(true, var_0.x > var_0.x, true), any(vec2<bool>(true, false))));
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_1 {
    return func_2();
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = vec3<bool>(false, all(select(select(vec2<bool>(true, true), func_1(arg_1, vec3<u32>(49067u, u_input.a, arg_1.b.x)).yx, arg_0.x), arg_0.xx, arg_1.c != _wgslsmith_f_op_f32(min(-534f, arg_1.a)))), !all(arg_0));
    var var_1 = Struct_1(339f, _wgslsmith_mod_vec3_u32(abs(arg_1.b), vec3<u32>(4294967295u, 31491u, arg_1.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(arg_1.a, 1532f, arg_1.e.x)))) + func_4(arg_1.c, _wgslsmith_add_vec3_u32(u_input.b.xww, vec3<u32>(arg_1.b.x, 0u, 1u)), arg_1).c), arg_1.c), -7547i, arg_0.yzz);
    let var_2 = max(~(~vec3<i32>(1i, 16315i, reverseBits(var_1.d))), _wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(20i, -2147483647i, var_1.d) & vec3<i32>(var_1.d, u_input.c, 0i)) ^ (countOneBits(vec3<i32>(-39364i, arg_1.d, 0i)) << ((vec3<u32>(u_input.a, arg_1.b.x, u_input.a) >> (arg_1.b % vec3<u32>(32u))) % vec3<u32>(32u))), abs(_wgslsmith_mod_vec3_i32(vec3<i32>(-28670i, 14790i, var_1.d) ^ vec3<i32>(4422i, 1i, var_1.d), min(vec3<i32>(-35279i, 2147483647i, -3060i), vec3<i32>(-2147483647i, -728i, arg_1.d)))), ~(-vec3<i32>(-26887i, -2147483647i, -10933i))));
    var var_3 = Struct_1(var_1.a, vec3<u32>(arg_1.b.x, _wgslsmith_clamp_u32(~_wgslsmith_clamp_u32(9087u, var_1.b.x, var_1.b.x), _wgslsmith_dot_vec3_u32(var_1.b, max(vec3<u32>(40745u, 7755u, u_input.b.x), arg_1.b)), ~_wgslsmith_mult_u32(u_input.a, arg_1.b.x)), 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1352f)))), var_1.d, !vec3<bool>(true, !arg_1.e.x, select(13818u >= arg_1.b.x, var_1.e.x, arg_0.x)));
    var var_4 = func_4(_wgslsmith_f_op_f32(-var_1.c), vec3<u32>(var_3.b.x, func_2().b.x, _wgslsmith_sub_u32(4294967295u, 0u | u_input.a)) | ~_wgslsmith_sub_vec3_u32(firstLeadingBit(arg_1.b), vec3<u32>(18855u, u_input.b.x, u_input.a)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(607f, arg_1.a))), ~(arg_1.b ^ ~vec3<u32>(1u, arg_1.b.x, arg_1.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.a, arg_1.a)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -903f))), -10976i, arg_0.wzw));
    return Struct_1(_wgslsmith_f_op_f32(sign(var_1.a)), vec3<u32>(~1u, 1u, var_1.b.x), -1000f, _wgslsmith_clamp_i32(0i, 1i, -2147483647i >> (_wgslsmith_mult_u32(var_1.b.x, var_4.b.x) % 32u)), select(vec3<bool>(any(vec2<bool>(true, var_0.x)) != false, all(func_4(var_3.c, vec3<u32>(46971u, 0u, var_4.b.x), Struct_1(-110f, vec3<u32>(var_4.b.x, var_3.b.x, arg_1.b.x), 1575f, u_input.c, arg_1.e)).e.zy), func_1(func_4(-713f, vec3<u32>(var_3.b.x, arg_1.b.x, u_input.b.x), Struct_1(arg_1.c, vec3<u32>(var_3.b.x, 1u, 97566u), 756f, u_input.c, arg_0.wzx)), select(vec3<u32>(u_input.a, arg_1.b.x, 1u), u_input.b.zxz, vec3<bool>(var_4.e.x, false, arg_1.e.x))).x), vec3<bool>(true, true, true), select(vec3<bool>(false, !var_1.e.x, true), vec3<bool>(var_4.e.x && true, u_input.a >= u_input.a, true), func_1(arg_1, _wgslsmith_add_vec3_u32(vec3<u32>(var_4.b.x, arg_1.b.x, 46861u), var_1.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec4<bool>(!(!(u_input.c > -16036i)), true & (all(vec4<bool>(false, false, false, true)) && any(vec3<bool>(true, true, false))), any(select(vec3<bool>(true, true, true), func_1(Struct_1(-257f, u_input.b.yxy, -890f, u_input.c, vec3<bool>(false, false, true)), vec3<u32>(u_input.a, 28166u, 60225u)), func_1(Struct_1(1000f, vec3<u32>(u_input.b.x, u_input.a, 335u), -228f, -6517i, vec3<bool>(false, false, true)), vec3<u32>(0u, u_input.b.x, 4294967295u)))), _wgslsmith_sub_u32(11041u, u_input.a) <= ~_wgslsmith_add_u32(u_input.a, u_input.b.x)), func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-607f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(328f * 1000f))), u_input.b.yyx, func_2()));
    var var_1 = vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - var_0.a)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) * var_0.c) + -965f))), 1143f);
    var var_2 = max(select(_wgslsmith_add_vec2_i32(vec2<i32>(min(var_0.d, 59372i), -8664i), vec2<i32>(-61915i, _wgslsmith_add_i32(var_0.d, u_input.c))), abs(~vec2<i32>(13789i, -1i)) | vec2<i32>(-var_0.d, u_input.c), vec2<bool>(var_0.e.x, true)), ~_wgslsmith_sub_vec2_i32(vec2<i32>(-36552i, ~55017i), -reverseBits(vec2<i32>(2147483647i, u_input.c))));
    var var_3 = var_0.b.yx;
    var_2 = -(~(-(~vec2<i32>(-34313i, -2147483647i))) | vec2<i32>(max(-2147483647i, -var_0.d), _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, 2147483647i, -1i), vec3<i32>(1i, 40870i, 0i))));
    var var_4 = vec4<bool>(true, !all(!(!vec2<bool>(var_0.e.x, var_0.e.x))), select(var_0.e.x, !(!var_0.e.x), var_0.e.x), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.c, var_0.c, true))), var_0.c) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(834f)))), var_0.d);
}

