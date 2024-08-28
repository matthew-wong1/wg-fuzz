struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 18410i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> f32 {
    global0 = firstTrailingBit(i32(-1i) * -1i);
    var var_0 = Struct_2(-_wgslsmith_div_vec4_i32(vec4<i32>(i32(-1i) * -2147483647i, -20962i, u_input.a, _wgslsmith_mult_i32(0i, u_input.a)), -(vec4<i32>(0i, 2147483647i, u_input.a, -46663i) << (vec4<u32>(1u, 80902u, 0u, 117373u) % vec4<u32>(32u)))), Struct_1(max(-12257i, u_input.a), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-848f, -624f, 1650f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-693f, 157f, -1000f))), vec3<f32>(-1217f, -825f, 1509f)))), firstTrailingBit(select(0u, 4294967295u, true)) ^ ~57661u, true, min(firstLeadingBit(~vec3<u32>(0u, 1u, 26255u)), vec3<u32>(1u, 1u, ~1u))), true, Struct_1(u_input.a ^ 2147483647i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(836f, -1797f, 2007f) * vec3<f32>(-252f, 753f, 415f)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1155f, -387f, -1143f), vec3<f32>(-1854f, -1135f, 1914f))))), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 4294967295u, 1u), ~vec3<u32>(0u, 6878u, 59778u)), _wgslsmith_add_u32(1u, ~4927u)), true, select(vec3<u32>(firstTrailingBit(55480u), 72498u, 7423u), vec3<u32>(79391u, 3088u, 0u), select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), true))), ~select(-vec3<i32>(u_input.a, u_input.a, u_input.a), reverseBits(~vec3<i32>(11841i, u_input.a, -46606i)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), true)));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.b.b.x, _wgslsmith_f_op_f32(step(-568f, var_0.b.b.x))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.b.b.x, -1019f)))))) + _wgslsmith_f_op_vec2_f32(max(var_0.b.b.zx, _wgslsmith_div_vec2_f32(var_0.d.b.yy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.b.x, var_0.b.b.x)) * vec2<f32>(var_0.b.b.x, var_0.d.b.x))))));
    let var_2 = firstLeadingBit(-_wgslsmith_mod_i32(var_0.d.a << (43237u % 32u), 0i) ^ 1i);
    let var_3 = Struct_1(-14272i, var_0.d.b, ~1868u, true, reverseBits(~select(~vec3<u32>(var_0.d.c, 59993u, var_0.d.c), var_0.d.e, true)));
    return _wgslsmith_f_op_f32(f32(-1f) * -2513f);
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> i32 {
    let var_0 = arg_0.e.xy;
    global0 = _wgslsmith_dot_vec4_i32(-vec4<i32>(arg_0.a, -25687i, u_input.a, 62012i), _wgslsmith_mult_vec4_i32(vec4<i32>(-10794i, -u_input.a, select(_wgslsmith_div_i32(arg_0.a, u_input.a), firstLeadingBit(arg_0.a), true), ~u_input.a), -(~(~vec4<i32>(-1i, arg_0.a, -16989i, u_input.a)))));
    var var_1 = _wgslsmith_f_op_f32(-arg_0.b.x);
    var var_2 = Struct_2(~reverseBits(vec4<i32>(u_input.a, u_input.a | u_input.a, -35016i, u_input.a)), Struct_1(1i, vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.b.x))), 321f, arg_0.b.x), 26980u, arg_0.d, abs(vec3<u32>(countOneBits(arg_0.e.x), ~arg_0.e.x, reverseBits(var_0.x)))), true && arg_0.d, Struct_1(arg_0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1813f, 956f, arg_0.b.x) - vec3<f32>(2480f, -476f, 762f)))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1, 219f, arg_1)))))), _wgslsmith_div_u32(0u >> (_wgslsmith_mod_u32(var_0.x, 3474u) % 32u), _wgslsmith_dot_vec3_u32(arg_0.e, vec3<u32>(arg_0.e.x, 1u, arg_0.c))), any(select(vec2<bool>(arg_0.d, true), !vec2<bool>(arg_0.d, true), true)), arg_0.e), firstTrailingBit(vec3<i32>(_wgslsmith_dot_vec3_i32(max(vec3<i32>(u_input.a, 0i, u_input.a), vec3<i32>(-7336i, u_input.a, u_input.a)), vec3<i32>(-39135i, arg_0.a, u_input.a) | vec3<i32>(arg_0.a, -2147483647i, -2147483647i)), -2147483647i, -firstLeadingBit(700i))));
    let var_3 = 29351u;
    return _wgslsmith_mult_i32(_wgslsmith_mult_i32(arg_0.a, _wgslsmith_dot_vec2_i32(~var_2.e.zx, _wgslsmith_mod_vec2_i32(var_2.a.zx, var_2.e.yy))), -51500i);
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: i32, arg_3: vec2<bool>) -> vec2<i32> {
    global0 = arg_2;
    global0 = firstLeadingBit(func_4(Struct_1(arg_2 ^ -1i, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, 2451f, -639f))), _wgslsmith_f_op_vec3_f32(sign(arg_0))), _wgslsmith_mult_u32(1u, 1u), arg_3.x, reverseBits(vec3<u32>(57031u, 3739u, 14430u))), _wgslsmith_f_op_f32(func_3())));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(873f, _wgslsmith_f_op_f32(385f - _wgslsmith_f_op_f32(sign(arg_1))))));
    let var_1 = 20906i;
    let var_2 = Struct_2(~countOneBits(-_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 6119i, var_1, -24874i), vec4<i32>(var_1, -22225i, 3490i, arg_2))), Struct_1(_wgslsmith_dot_vec2_i32(~vec2<i32>(6099i, 0i), select(vec2<i32>(-12319i, u_input.a) ^ vec2<i32>(-13388i, var_1), vec2<i32>(arg_2, u_input.a), select(vec2<bool>(arg_3.x, true), vec2<bool>(arg_3.x, arg_3.x), vec2<bool>(arg_3.x, arg_3.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1, arg_0.x, -751f))), vec3<f32>(244f, -436f, 437f))), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(1u, 1u)), vec2<u32>(1u, 1u)), true, ~vec3<u32>(~1u, _wgslsmith_clamp_u32(12458u, 4294967295u, 1u), min(1u, 46792u))), any(!select(!vec4<bool>(true, arg_3.x, arg_3.x, false), select(vec4<bool>(arg_3.x, false, arg_3.x, arg_3.x), vec4<bool>(false, arg_3.x, arg_3.x, arg_3.x), vec4<bool>(false, arg_3.x, arg_3.x, arg_3.x)), select(vec4<bool>(arg_3.x, true, false, arg_3.x), vec4<bool>(arg_3.x, false, arg_3.x, true), vec4<bool>(arg_3.x, arg_3.x, arg_3.x, false)))), Struct_1(countOneBits((i32(-1i) * -1i) | arg_2), vec3<f32>(_wgslsmith_f_op_f32(floor(arg_0.x)), _wgslsmith_f_op_f32(-501f - _wgslsmith_f_op_f32(arg_0.x * -1796f)), _wgslsmith_f_op_f32(floor(arg_0.x))), 21904u, any(vec2<bool>(arg_0.x > arg_1, true)), vec3<u32>(1u, 1u, 1u)), select(vec3<i32>(_wgslsmith_add_i32(u_input.a, arg_2), -u_input.a, 1i) & _wgslsmith_add_vec3_i32(abs(vec3<i32>(u_input.a, u_input.a, arg_2)), select(vec3<i32>(35796i, 14439i, 60001i), vec3<i32>(2147483647i, -9610i, -22622i), arg_3.x)), min(firstTrailingBit(~vec3<i32>(arg_2, u_input.a, 31732i)), -_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, arg_2, arg_2), vec3<i32>(2147483647i, var_1, 2147483647i))), select(arg_3.x, arg_3.x, arg_3.x || arg_3.x)));
    return vec2<i32>(-2147483647i, -u_input.a);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(arg_1.b + _wgslsmith_f_op_vec3_f32(exp2(arg_0.b)));
    global0 = _wgslsmith_add_i32(firstTrailingBit(-1i), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -50796i) << (vec2<u32>(arg_0.e.x, 0u) % vec2<u32>(32u)), func_2(vec3<f32>(arg_1.b.x, -440f, arg_1.b.x), 2747f, 13367i, vec2<bool>(arg_0.d, true))) << (arg_0.c % 32u), func_2(_wgslsmith_f_op_vec3_f32(-arg_0.b), arg_0.b.x, _wgslsmith_div_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.a, -2147483647i, arg_0.a), vec3<i32>(-24030i, arg_1.a, 5881i))), select(vec2<bool>(arg_0.d, arg_1.d), !vec2<bool>(arg_1.d, arg_0.d), !arg_1.d)).x));
    let var_1 = false;
    global0 = arg_0.a;
    var var_2 = vec2<i32>(min(arg_1.a, _wgslsmith_mult_i32(~firstLeadingBit(arg_1.a), 50840i)), -1i);
    return arg_0;
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec2<f32>) -> vec4<f32> {
    let var_0 = ~(arg_1.c ^ firstTrailingBit(67981u));
    let var_1 = arg_1;
    global0 = var_1.a;
    let var_2 = true;
    global0 = func_1(func_1(var_1, var_1), Struct_1(arg_1.a, var_1.b, ~(~arg_1.c ^ var_1.e.x), ~(-var_1.a) > 0i, var_1.e)).a;
    return vec4<f32>(func_1(Struct_1(5302i, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, -1000f, 713f)))), arg_1.c, false, _wgslsmith_sub_vec3_u32(var_1.e & var_1.e, vec3<u32>(arg_1.c, 0u, 17739u))), Struct_1(-40553i, arg_0, var_1.e.x, arg_1.d, var_1.e)).b.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_1.b.x, 964f))))), -1200f, _wgslsmith_f_op_f32(-211f * _wgslsmith_f_op_f32(f32(-1f) * -1545f)));
}

fn func_6(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: bool, arg_3: f32) -> StorageBuffer {
    global0 = u_input.a;
    let var_0 = Struct_2(~(-select(countOneBits(vec4<i32>(26380i, u_input.a, u_input.a, u_input.a)), vec4<i32>(2337i, 1i, -13073i, u_input.a), !arg_1.x)), Struct_1(u_input.a & func_1(func_1(Struct_1(u_input.a, arg_0.zxw, 61182u, arg_2, vec3<u32>(61316u, 4294967295u, 0u)), Struct_1(u_input.a, vec3<f32>(721f, arg_0.x, 180f), 4294967295u, false, vec3<u32>(4294967295u, 58534u, 0u))), func_1(Struct_1(-24115i, vec3<f32>(-1003f, 720f, arg_3), 6884u, arg_2, vec3<u32>(60278u, 54080u, 4294967295u)), Struct_1(1i, arg_0.zxw, 47622u, false, vec3<u32>(15445u, 4294967295u, 125305u)))).a, _wgslsmith_f_op_vec3_f32(vec3<f32>(-2194f, _wgslsmith_div_f32(arg_3, arg_3), _wgslsmith_f_op_f32(max(arg_3, arg_3))) * arg_0.wzy), _wgslsmith_mult_u32(0u, 55457u), false, vec3<u32>(1u, ~(~2370u), min(1u, 4294967295u) >> (func_1(Struct_1(u_input.a, arg_0.zzw, 26346u, true, vec3<u32>(53141u, 0u, 0u)), Struct_1(2147483647i, vec3<f32>(arg_0.x, 2258f, arg_0.x), 1u, true, vec3<u32>(14776u, 1u, 26270u))).e.x % 32u))), false, func_1(func_1(func_1(Struct_1(u_input.a, vec3<f32>(arg_0.x, arg_0.x, 1657f), 0u, true, vec3<u32>(0u, 0u, 16083u)), Struct_1(u_input.a, vec3<f32>(arg_3, -1214f, 1000f), 4294967295u, false, vec3<u32>(138511u, 3216u, 80694u))), Struct_1(u_input.a | u_input.a, _wgslsmith_f_op_vec3_f32(arg_0.xwz * arg_0.yzx), 4294967295u, true, ~vec3<u32>(11936u, 1u, 33254u))), Struct_1(-func_1(Struct_1(u_input.a, vec3<f32>(arg_3, 1402f, arg_0.x), 1u, false, vec3<u32>(0u, 36851u, 68513u)), Struct_1(24748i, vec3<f32>(1704f, arg_0.x, arg_0.x), 0u, false, vec3<u32>(45963u, 1u, 0u))).a, _wgslsmith_f_op_vec3_f32(arg_0.yyz + vec3<f32>(1000f, arg_0.x, arg_0.x)), abs(firstLeadingBit(1u)), (u_input.a & u_input.a) == func_2(vec3<f32>(1563f, arg_3, arg_0.x), arg_3, 2147483647i, arg_1.wz).x, vec3<u32>(1u, 1u, 1u))), vec3<i32>(select(select(2147483647i, u_input.a, any(vec4<bool>(true, true, true, arg_1.x))), 45293i, !(u_input.a != 51637i)), -u_input.a, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(u_input.a, u_input.a)), firstTrailingBit(vec2<i32>(u_input.a, 9509i))), countOneBits(select(-2147483647i, u_input.a, false)))));
    global0 = u_input.a;
    var var_1 = 0i;
    let var_2 = abs(vec2<u32>(_wgslsmith_add_u32(~_wgslsmith_clamp_u32(var_0.d.c, 24501u, var_0.b.c), ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_0.b.e.x), vec2<u32>(var_0.b.c, 22875u))), _wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(var_0.d.c, var_0.d.c), vec2<u32>(85406u, var_0.d.e.x)), ~(vec2<u32>(var_0.b.e.x, 4294967295u) | vec2<u32>(var_0.d.c, var_0.b.e.x)))));
    return StorageBuffer(1u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a;
    let x = u_input.a;
    s_output = func_6(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(1291f, 487f, -174f, 793f), vec4<f32>(1310f, 747f, 826f, -1000f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, -1026f, -683f, -193f))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1025f, 1439f, 792f, -757f), vec4<f32>(277f, 218f, 1530f, -733f))) + vec4<f32>(1000f, -1886f, 791f, 355f)))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_5(vec3<f32>(-1000f, -931f, -375f), func_1(Struct_1(22535i, vec3<f32>(438f, -1209f, -246f), 0u, false, vec3<u32>(52348u, 48735u, 0u)), Struct_1(0i, vec3<f32>(-1000f, -1177f, -1292f), 29277u, true, vec3<u32>(1u, 1u, 8192u))), _wgslsmith_div_vec2_f32(vec2<f32>(-721f, 474f), vec2<f32>(-850f, 612f))))))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, select(0i, 896i, false) >= 2147483647i)), true, 544f);
}

