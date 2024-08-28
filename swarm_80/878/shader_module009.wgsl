struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec4<i32> {
    let var_0 = vec4<bool>(any(vec3<bool>(all(vec2<bool>(true, false)), all(vec2<bool>(false, false)) || true, any(vec3<bool>(false, false, true)))), (i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(-17465i, -2147483647i), u_input.d.xy)) > 0i, any(select(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true))), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))) & false);
    let var_1 = !var_0;
    var var_2 = vec4<i32>(u_input.a, _wgslsmith_add_i32(-(~_wgslsmith_dot_vec3_i32(vec3<i32>(48935i, -1i, -17069i), vec3<i32>(u_input.a, u_input.b.x, u_input.b.x))), _wgslsmith_dot_vec4_i32(vec4<i32>(firstTrailingBit(2147483647i), i32(-1i) * -25645i, _wgslsmith_sub_i32(u_input.b.x, u_input.d.x), ~u_input.a), vec4<i32>(-1i, u_input.e, u_input.a >> (u_input.c % 32u), max(u_input.e, -4312i)))), _wgslsmith_sub_i32(-17101i << ((u_input.c >> (u_input.c % 32u)) % 32u), _wgslsmith_clamp_i32(-13630i, _wgslsmith_sub_i32(u_input.b.x << (65122u % 32u), -36127i), 0i)), u_input.a);
    let var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(348f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 1005f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-742f, 189f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(363f, -138f), vec2<f32>(338f, 532f))) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1281f, -1217f))))))));
    var_2 = vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(-(~vec3<i32>(42576i, 0i, -5505i)), var_2.wwx), ~(~(~vec3<i32>(var_2.x, u_input.a, -1i)))), u_input.a, -1i, u_input.d.x);
    return vec4<i32>(-1i, abs(~var_2.x) & -26669i, var_2.x, _wgslsmith_add_i32(-u_input.d.x, u_input.e));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = arg_2.a;
    let var_1 = arg_2;
    let var_2 = vec4<i32>(~u_input.a, ~(i32(-1i) * -u_input.d.x), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, u_input.a, u_input.a) ^ vec4<i32>(u_input.b.x, 781i, 27844i, -36760i), vec4<i32>(u_input.a, u_input.b.x, u_input.d.x, u_input.d.x)), ~vec4<i32>(u_input.e, -11146i, u_input.b.x, u_input.e)), 1i) & func_3();
    var var_3 = var_1;
    var var_4 = Struct_1(vec3<bool>(var_3.a.a.x, true, true));
    return var_1.a;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec3<u32>) -> u32 {
    let var_0 = 279u;
    var var_1 = Struct_2(Struct_1(vec3<bool>(arg_1.a.x || select(arg_1.a.x, arg_1.a.x, true), arg_1.a.x, select(true, arg_1.a.x, arg_1.a.x))));
    var_1 = Struct_2(func_2(Struct_1(!func_2(Struct_1(var_1.a.a), arg_2, Struct_2(var_1.a), vec3<bool>(arg_1.a.x, false, true)).a), select(_wgslsmith_mod_vec3_u32(~vec3<u32>(7831u, arg_2.x, 29405u), ~arg_2), vec3<u32>(0u, arg_2.x, arg_2.x) >> (min(vec3<u32>(var_0, u_input.c, arg_2.x), arg_2) % vec3<u32>(32u)), true | var_1.a.a.x), Struct_2(Struct_1(!vec3<bool>(false, arg_1.a.x, false))), select(vec3<bool>(arg_1.a.x, true, false), func_2(func_2(Struct_1(vec3<bool>(var_1.a.a.x, false, arg_1.a.x)), vec3<u32>(20711u, 115976u, 47150u), Struct_2(arg_1), var_1.a.a), countOneBits(arg_2), Struct_2(arg_1), arg_1.a).a, false)));
    var var_2 = Struct_2(arg_1);
    var var_3 = Struct_2(Struct_1(vec3<bool>(any(vec4<bool>(var_2.a.a.x, false, false, true)), true, var_1.a.a.x)));
    return ~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(arg_2.x, 43275u, 36923u)) >> (max(vec3<u32>(6443u, u_input.c, u_input.c), arg_2) % vec3<u32>(32u)), arg_2), ~var_0);
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1) -> i32 {
    var var_0 = Struct_2(Struct_1(vec3<bool>(u_input.e >= -2147483647i, true, !any(arg_1.a.yy))));
    var var_1 = ~(vec3<u32>(~(~u_input.c), _wgslsmith_sub_u32(12628u, u_input.c), u_input.c) | ~vec3<u32>(0u, 0u | arg_0.x, 1u | arg_0.x));
    let var_2 = Struct_2(func_2(func_2(arg_1, ~_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.x, u_input.c, 0u), vec3<u32>(0u, 21046u, 4294967295u)), Struct_2(Struct_1(var_0.a.a)), var_0.a.a), select(vec3<u32>(1u, 0u, arg_0.x), countOneBits(vec3<u32>(0u, arg_0.x, arg_0.x)), true) & vec3<u32>(u_input.c << (var_1.x % 32u), var_1.x, 20060u), Struct_2(func_2(func_2(Struct_1(arg_1.a), vec3<u32>(17311u, 3270u, arg_0.x), Struct_2(var_0.a), vec3<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x)), min(vec3<u32>(16928u, 0u, 4294967295u), vec3<u32>(0u, 4227u, u_input.c)), Struct_2(arg_1), select(arg_1.a, vec3<bool>(arg_1.a.x, var_0.a.a.x, true), var_0.a.a.x))), select(arg_1.a, select(var_0.a.a, !var_0.a.a, arg_1.a.x), !(!var_0.a.a))));
    var_1 = ~min(firstLeadingBit(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, 1u, 1u), vec3<u32>(4294967295u, var_1.x, 0u))), _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(93912u, arg_0.x, 0u), vec3<u32>(4294967295u, 51252u, u_input.c)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, var_1.x, u_input.c), vec3<u32>(55097u, 6864u, 4294967295u))));
    let var_3 = u_input.b.zx;
    return -1i;
}

fn func_1(arg_0: vec3<f32>) -> vec4<f32> {
    var var_0 = vec2<i32>(_wgslsmith_clamp_i32(16173i, (u_input.e << (33924u % 32u)) | u_input.b.x, _wgslsmith_clamp_i32(-1i, -16995i, -46314i) & -1i) ^ firstLeadingBit(~u_input.d.x), func_5(vec2<u32>(func_4(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, -1i, u_input.d.x, u_input.e), vec4<i32>(u_input.a, u_input.b.x, u_input.a, u_input.d.x)), func_2(Struct_1(vec3<bool>(false, false, true)), vec3<u32>(u_input.c, 0u, u_input.c), Struct_2(Struct_1(vec3<bool>(false, true, true))), vec3<bool>(false, false, true)), vec3<u32>(u_input.c, 21165u, u_input.c) >> (vec3<u32>(u_input.c, 683u, 61359u) % vec3<u32>(32u))), u_input.c), func_2(Struct_1(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false)), _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(37019u, 41721u, 0u), vec3<u32>(0u, u_input.c, u_input.c), vec3<u32>(u_input.c, u_input.c, u_input.c)), vec3<u32>(u_input.c, u_input.c, u_input.c) >> (vec3<u32>(u_input.c, u_input.c, 0u) % vec3<u32>(32u)), vec3<u32>(79639u, u_input.c, u_input.c)), Struct_2(func_2(Struct_1(vec3<bool>(false, true, true)), vec3<u32>(0u, 1u, 0u), Struct_2(Struct_1(vec3<bool>(true, false, true))), vec3<bool>(true, true, false))), vec3<bool>(any(vec4<bool>(true, true, true, false)), func_2(Struct_1(vec3<bool>(true, false, false)), vec3<u32>(1u, 0u, 0u), Struct_2(Struct_1(vec3<bool>(true, false, false))), vec3<bool>(true, false, false)).a.x, true))));
    var var_1 = abs(u_input.b.zx);
    var var_2 = ~_wgslsmith_mod_i32(func_3().x, var_0.x);
    var var_3 = Struct_2(Struct_1(func_2(Struct_1(vec3<bool>(true, true, true)), vec3<u32>(reverseBits(u_input.c), u_input.c, 0u), Struct_2(func_2(Struct_1(vec3<bool>(false, false, false)), vec3<u32>(u_input.c, 0u, u_input.c), Struct_2(Struct_1(vec3<bool>(false, true, false))), vec3<bool>(true, true, true))), vec3<bool>(arg_0.x <= 733f, true, any(vec2<bool>(false, true)))).a));
    var var_4 = true;
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -1604f, arg_0.x, -931f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 1623f, arg_0.x, arg_0.x) * vec4<f32>(arg_0.x, 235f, arg_0.x, -1105f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -1771f, 1043f, arg_0.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 571f, arg_0.x, arg_0.x) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-613f, arg_0.x, 430f, -777f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 356f)) - vec4<f32>(2412f, -1000f, 431f, 343f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(120f, 274f, arg_0.x, arg_0.x), vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -876f)))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(888f, 672f, -769f, -594f)))), select(select(select(vec4<bool>(false, var_3.a.a.x, var_3.a.a.x, false), vec4<bool>(var_3.a.a.x, false, true, var_3.a.a.x), true), vec4<bool>(true, false, var_3.a.a.x, true), arg_0.x != -1000f), vec4<bool>(any(var_3.a.a), var_3.a.a.x && true, var_3.a.a.x == true, any(var_3.a.a)), select(select(vec4<bool>(var_3.a.a.x, var_3.a.a.x, var_3.a.a.x, var_3.a.a.x), vec4<bool>(false, true, true, var_3.a.a.x), true), select(vec4<bool>(false, var_3.a.a.x, var_3.a.a.x, var_3.a.a.x), vec4<bool>(var_3.a.a.x, false, var_3.a.a.x, var_3.a.a.x), var_3.a.a.x), true)))));
}

fn func_6(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: f32, arg_3: vec2<u32>) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(vec3<bool>(true, arg_1.x < 0u, false)));
    var_0 = Struct_2(var_0.a);
    let var_1 = 81385i;
    var_0 = Struct_2(Struct_1(!var_0.a.a));
    var var_2 = Struct_2(Struct_1(vec3<bool>(true, var_0.a.a.x, true)));
    return Struct_2(Struct_1(!vec3<bool>(var_2.a.a.x, any(vec3<bool>(false, true, var_0.a.a.x)), any(vec2<bool>(var_2.a.a.x, var_0.a.a.x)))));
}

fn func_7(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32, arg_3: vec2<f32>) -> Struct_1 {
    return Struct_1(arg_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(_wgslsmith_f_op_vec4_f32(func_1(vec3<f32>(_wgslsmith_f_op_f32(-953f * 560f), _wgslsmith_f_op_f32(floor(1351f)), _wgslsmith_f_op_f32(-536f - 1713f)))), _wgslsmith_mod_vec3_u32(abs(vec3<u32>(u_input.c, 25845u, 75636u)), ~vec3<u32>(44u, u_input.c, 17105u) | (vec3<u32>(53488u, u_input.c, u_input.c) | vec3<u32>(1u, 1u, u_input.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-841f, _wgslsmith_f_op_f32(-2257f * 1181f))) - 559f), vec2<u32>(~u_input.c, u_input.c) ^ _wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.c, 3995u), vec2<u32>(57639u, u_input.c))), func_2(func_2(func_2(Struct_1(vec3<bool>(true, false, true)), vec3<u32>(1u, 1u, 1u), func_6(vec4<f32>(-267f, -525f, -489f, -517f), vec3<u32>(u_input.c, u_input.c, u_input.c), -926f, vec2<u32>(u_input.c, u_input.c)), vec3<bool>(true, true, true)), vec3<u32>(reverseBits(86104u), ~5349u, firstTrailingBit(0u)), Struct_2(func_6(vec4<f32>(-1360f, -959f, -2412f, -230f), vec3<u32>(u_input.c, 1u, u_input.c), -210f, vec2<u32>(0u, u_input.c)).a), vec3<bool>(false, false, true)), ~vec3<u32>(~47539u, 36611u, ~u_input.c), Struct_2(Struct_1(vec3<bool>(true, true, true))), func_6(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(417f, -192f, 1585f, 1348f) - vec4<f32>(651f, 370f, 144f, -618f))), ~_wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.c, u_input.c), vec3<u32>(1u, u_input.c, u_input.c)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec4_f32(func_1(vec3<f32>(968f, -184f, 119f))).x)), vec2<u32>(u_input.c | 25802u, _wgslsmith_dot_vec3_u32(vec3<u32>(68567u, u_input.c, 13170u), vec3<u32>(4294967295u, 4294967295u, u_input.c)))).a.a), -18586i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(792f, -1005f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-140f, 1009f) + vec2<f32>(-1715f, -924f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1384f, 1000f), vec2<f32>(-974f, -1564f)))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    var_1 = -158f;
    var var_2 = func_6(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1358f)), 1704f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-640f, 511f)), _wgslsmith_f_op_f32(-289f * -386f))), _wgslsmith_f_op_f32(sign(1221f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-959f + -950f)) - _wgslsmith_f_op_f32(min(-108f, _wgslsmith_f_op_f32(f32(-1f) * -988f))))), ~vec3<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.c), ~vec2<u32>(25880u, u_input.c)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 20960u), vec3<u32>(67381u, 60387u, u_input.c))), -819f, ~(~(~(~vec2<u32>(4294967295u, 39218u)))));
    var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -296f) * -710f), 470f), 282f, var_0.a.x))));
    let var_3 = !vec4<bool>(all(select(!vec2<bool>(var_2.a.a.x, var_0.a.x), !vec2<bool>(true, var_0.a.x), var_2.a.a.xx)), var_2.a.a.x, false, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.d.zx, reverseBits(u_input.b.zx)), reverseBits(-u_input.d.zx ^ u_input.d.zz)));
}

