struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<u32>,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: Struct_2) -> vec4<i32> {
    let var_0 = !(!(!vec4<bool>(arg_2.e.b, any(vec4<bool>(true, arg_2.c.b, arg_1.d.e.b, false)), true, true)));
    let var_1 = arg_1;
    var var_2 = Struct_4(Struct_2(~_wgslsmith_add_i32(max(arg_2.a, 0i), var_1.b), var_1.d.a, var_1.d.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-944f * 1833f) * var_1.d.e.a) * _wgslsmith_f_op_f32(floor(-722f))), Struct_1(arg_2.e.a, arg_1.b <= -55615i, vec4<u32>(45812u, var_1.a.c.x << (arg_2.e.d % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 30789u, arg_0.x, 1u), arg_0), countOneBits(arg_2.c.c.x)), abs(var_1.c))));
    var_2 = Struct_4(arg_1.d);
    var_2 = Struct_4(Struct_2(_wgslsmith_div_i32(~(var_2.a.b >> (arg_0.x % 32u)), var_1.b), -1i, Struct_1(937f, var_1.e, arg_1.a.c, ~u_input.a.x << (0u % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(-440f)), arg_2.e.b))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-482f))), false, _wgslsmith_mult_vec4_u32(arg_2.e.c, var_2.a.e.c) << (~u_input.a % vec4<u32>(32u)), abs(~arg_1.c))));
    return ~vec4<i32>(~(-arg_2.a), reverseBits(select(12904i, arg_1.d.b, true)), var_1.d.b, -1i) | -_wgslsmith_mult_vec4_i32((vec4<i32>(arg_1.b, arg_2.a, 1i, arg_2.b) << (vec4<u32>(86151u, 1u, 0u, u_input.a.x) % vec4<u32>(32u))) >> (~vec4<u32>(169607u, u_input.a.x, arg_2.c.c.x, 4294967295u) % vec4<u32>(32u)), ~vec4<i32>(arg_1.d.b, -5856i, var_2.a.b, arg_1.d.a) | firstTrailingBit(vec4<i32>(0i, 50085i, var_1.d.b, var_2.a.b)));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec2<f32>) -> bool {
    let var_0 = firstTrailingBit(-(~func_3(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) << (u_input.a % vec4<u32>(32u)), Struct_3(Struct_1(-107f, true, vec4<u32>(11463u, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.x), arg_0, 60802u, Struct_2(arg_0, arg_0, Struct_1(977f, true, u_input.a, u_input.a.x), 761f, Struct_1(376f, true, u_input.a, 50208u)), true), Struct_2(arg_0, 0i, Struct_1(arg_1, true, u_input.a, u_input.a.x), arg_1, Struct_1(arg_2.x, false, u_input.a, u_input.a.x)))));
    var var_1 = Struct_4(Struct_2(arg_0, -1i, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2.x, arg_2.x)) * arg_1), false, vec4<u32>(u_input.a.x, u_input.a.x << (u_input.a.x % 32u), u_input.a.x ^ u_input.a.x, ~4294967295u), _wgslsmith_mod_u32(1785u, u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(467f, arg_1)) + arg_2.x), Struct_1(1309f, true, ~abs(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), 1u)));
    var var_2 = arg_2.x;
    let var_3 = Struct_3(Struct_1(-501f, !(~u_input.a.x >= u_input.a.x), u_input.a, select(32931u, _wgslsmith_clamp_u32(var_1.a.e.c.x, 16906u, var_1.a.e.d), true) >> (~var_1.a.e.c.x % 32u)), ~var_0.x, _wgslsmith_clamp_u32((76560u | var_1.a.c.d) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 1u)) % 32u), _wgslsmith_mult_u32(~var_1.a.e.d, ~var_1.a.e.c.x), _wgslsmith_clamp_u32(4294967295u, 4294967295u, ~u_input.a.x)) ^ abs(u_input.a.x), Struct_2(-41542i, firstLeadingBit(abs(i32(-1i) * -4522i)), var_1.a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * -637f), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a.c.a - -1225f), _wgslsmith_div_f32(-889f, arg_1)), (true | var_1.a.e.b) && any(vec4<bool>(false, var_1.a.e.b, var_1.a.c.b, var_1.a.e.b)), u_input.a, var_1.a.c.d)), var_1.a.e.b);
    var_2 = arg_2.x;
    return !var_3.e;
}

fn func_4(arg_0: vec2<bool>, arg_1: f32, arg_2: bool, arg_3: Struct_2) -> Struct_1 {
    let var_0 = Struct_1(arg_3.d, !arg_2, abs(~(~arg_3.e.c)), 1u);
    let var_1 = Struct_2(_wgslsmith_mult_i32(-1i, ~_wgslsmith_add_i32(33942i, firstTrailingBit(arg_3.a))), ~abs(2147483647i), arg_3.e, var_0.a, Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(abs(-928f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_3.e.a, 1295f))))), true, _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(u_input.a ^ var_0.c, select(vec4<u32>(0u, 29171u, 54017u, arg_3.e.d), u_input.a, false)), ~(~vec4<u32>(18394u, 0u, var_0.c.x, u_input.a.x))), ~var_0.c.x));
    var var_2 = reverseBits(vec4<i32>(select(~var_1.a, _wgslsmith_clamp_i32(arg_3.b, arg_3.a, 38869i), all(vec4<bool>(arg_2, true, var_1.e.b, true))) << (0u % 32u), var_1.b << (_wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 18984u, u_input.a.x), var_0.c.zyz)) % 32u), abs(abs(var_1.b)), ~(-1i) << (~countOneBits(arg_3.c.d) % 32u)));
    var var_3 = Struct_1(325f, arg_0.x, var_1.c.c, ~arg_3.c.c.x);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(861f))) <= _wgslsmith_f_op_f32(sign(var_3.a));
    return var_0;
}

fn func_1(arg_0: f32, arg_1: vec4<u32>) -> Struct_4 {
    var var_0 = func_4(select(vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(true, true, true, true)), true), func_2(-1i, 257f, _wgslsmith_div_vec2_f32(vec2<f32>(639f, -431f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0))) + arg_0), false, Struct_2(1i, ~(-_wgslsmith_dot_vec2_i32(vec2<i32>(50193i, -42601i), vec2<i32>(0i, -1i))), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(arg_0)))), true, vec4<u32>(abs(7565u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 53688u, arg_1.x), vec3<u32>(43772u, arg_1.x, 33947u)), 4294967295u, u_input.a.x), _wgslsmith_dot_vec3_u32(u_input.a.wwz, arg_1.wzy >> (vec3<u32>(43038u, arg_1.x, arg_1.x) % vec3<u32>(32u)))), -620f, Struct_1(_wgslsmith_f_op_f32(arg_0 * 944f), !func_2(21144i, -499f, vec2<f32>(-1000f, arg_0)), _wgslsmith_div_vec4_u32(arg_1 >> (arg_1 % vec4<u32>(32u)), ~arg_1), 4294967295u)));
    var var_1 = var_0.a;
    let var_2 = Struct_5(false);
    let var_3 = func_4(select(select(vec2<bool>(true, var_2.a), !(!vec2<bool>(true, var_0.b)), vec2<bool>(true, var_0.b)), select(!vec2<bool>(true, var_0.b), vec2<bool>(true, func_4(vec2<bool>(var_2.a, false), var_0.a, var_0.b, Struct_2(-57787i, -1347i, Struct_1(-775f, false, var_0.c, 1u), 283f, Struct_1(arg_0, true, var_0.c, u_input.a.x))).b), true), any(select(vec4<bool>(var_0.b, false, true, false), vec4<bool>(true, false, false, var_0.b), select(vec4<bool>(var_0.b, false, false, var_2.a), vec4<bool>(var_0.b, false, var_2.a, true), vec4<bool>(true, true, var_0.b, false))))), _wgslsmith_f_op_f32(-var_0.a), true, Struct_2(1i, 1i, Struct_1(arg_0, true, arg_1, _wgslsmith_sub_u32(~u_input.a.x, _wgslsmith_dot_vec3_u32(var_0.c.xzy, arg_1.xzz))), _wgslsmith_f_op_f32(f32(-1f) * -134f), func_4(!select(vec2<bool>(true, true), vec2<bool>(var_0.b, var_2.a), vec2<bool>(var_2.a, var_0.b)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.a * arg_0), -1006f)), func_2(-22240i, -574f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 506f))), Struct_2(max(-1i, 1i), select(-53727i, 2147483647i, var_2.a), Struct_1(-1976f, false, arg_1, var_0.c.x), var_0.a, func_4(vec2<bool>(var_2.a, var_0.b), arg_0, true, Struct_2(0i, -11786i, Struct_1(1000f, var_0.b, u_input.a, var_0.d), var_0.a, Struct_1(arg_0, true, vec4<u32>(arg_1.x, 76495u, 17067u, var_0.c.x), u_input.a.x))))))).b;
    var var_4 = _wgslsmith_f_op_f32(-1044f * -778f);
    return Struct_4(Struct_2(i32(-1i) * -(~34114i), _wgslsmith_dot_vec3_i32(vec3<i32>(countOneBits(1496i), min(5063i, -2147483647i), -2147483647i), ~(-vec3<i32>(41917i, -13175i, -24077i))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - arg_0)), all(vec2<bool>(true, var_2.a)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a.x, 4294967295u, var_0.c.x, u_input.a.x), vec4<u32>(arg_1.x, 0u, 1u, var_0.d), var_0.c >> (u_input.a % vec4<u32>(32u))), 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) - -986f), func_4(select(vec2<bool>(false, true), !vec2<bool>(var_2.a, false), !vec2<bool>(var_3, var_2.a)), -1191f, any(select(vec3<bool>(false, true, var_2.a), vec3<bool>(var_3, false, var_3), vec3<bool>(true, var_3, var_2.a))), Struct_2(1i, -12820i, func_4(vec2<bool>(var_2.a, var_2.a), arg_0, true, Struct_2(-1i, 0i, Struct_1(var_0.a, false, vec4<u32>(arg_1.x, 9733u, 34364u, arg_1.x), var_0.c.x), 1588f, Struct_1(var_0.a, var_3, vec4<u32>(1u, var_0.c.x, 1u, 0u), 1u))), var_0.a, Struct_1(2089f, true, vec4<u32>(29426u, var_0.c.x, 23775u, var_0.c.x), 53991u)))));
}

fn func_5(arg_0: u32, arg_1: Struct_4) -> Struct_2 {
    var var_0 = select(vec4<bool>(!((arg_1.a.c.b && false) || false), abs(0u) > _wgslsmith_div_u32(~u_input.a.x, abs(arg_1.a.c.d)), func_4(select(select(vec2<bool>(true, arg_1.a.c.b), vec2<bool>(arg_1.a.c.b, false), arg_1.a.c.b), vec2<bool>(true, arg_1.a.c.b), !vec2<bool>(arg_1.a.e.b, arg_1.a.c.b)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.a.d, -921f) - -924f), true, arg_1.a).b, arg_1.a.c.b), vec4<bool>(any(!vec3<bool>(true, arg_1.a.e.b, arg_1.a.e.b)), !select(true, func_2(-2147483647i, arg_1.a.e.a, vec2<f32>(-917f, -563f)), !arg_1.a.c.b), true, select(!arg_1.a.e.b, true, false) == false), func_1(arg_1.a.d, arg_1.a.e.c).a.c.b);
    let var_1 = Struct_4(func_1(_wgslsmith_f_op_f32(arg_1.a.e.a - arg_1.a.e.a), _wgslsmith_mod_vec4_u32(u_input.a, ~(~vec4<u32>(u_input.a.x, 30722u, 4294967295u, 0u)))).a);
    var var_2 = Struct_3(func_4(var_0.yz, -1190f, var_1.a.e.b, var_1.a), arg_1.a.b, 910u, Struct_2(~_wgslsmith_mult_i32(func_1(arg_1.a.c.a, arg_1.a.c.c).a.a, -36162i), countOneBits(0i), Struct_1(arg_1.a.d, true, _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.a.c.d, 4294967295u, arg_1.a.e.c.x, u_input.a.x), vec4<u32>(33918u, 16210u, 4294967295u, var_1.a.e.d)) | (vec4<u32>(21167u, 1u, u_input.a.x, arg_1.a.e.d) | var_1.a.e.c), max(1u, ~55646u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-arg_1.a.e.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.d), _wgslsmith_f_op_f32(949f + 360f)))), func_4(!(!vec2<bool>(var_1.a.e.b, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1232f)), select(true, !var_1.a.c.b, func_1(-1014f, vec4<u32>(arg_1.a.e.d, 22684u, 29296u, 0u)).a.e.b), func_1(_wgslsmith_f_op_f32(step(236f, var_1.a.e.a)), vec4<u32>(arg_1.a.c.c.x, var_1.a.c.d, 0u, arg_1.a.c.d)).a)), var_1.a.e.b & ((_wgslsmith_f_op_f32(-var_1.a.c.a) <= _wgslsmith_f_op_f32(max(110f, arg_1.a.e.a))) | (any(var_0.zw) && arg_1.a.c.b)));
    var_0 = !select(!select(select(vec4<bool>(false, true, var_2.e, var_0.x), vec4<bool>(var_1.a.e.b, var_1.a.c.b, var_1.a.e.b, arg_1.a.e.b), false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)), !select(!vec4<bool>(true, false, false, var_0.x), select(vec4<bool>(var_1.a.c.b, var_1.a.c.b, arg_1.a.e.b, true), vec4<bool>(true, var_0.x, arg_1.a.e.b, true), vec4<bool>(var_2.e, false, arg_1.a.c.b, var_1.a.c.b)), vec4<bool>(true, false, arg_1.a.e.b, var_0.x)), true);
    var var_3 = _wgslsmith_clamp_i32(1i, countOneBits(-22236i), _wgslsmith_div_i32(-8730i, arg_1.a.b));
    return var_2.d;
}

fn func_6(arg_0: Struct_4) -> Struct_4 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(select(func_5(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(arg_0.a.c.c.xxy, arg_0.a.e.c.zww), ~arg_0.a.c.d), arg_0).c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -973f))), arg_0.a.e.b)), arg_0.a.c.b, vec4<u32>(arg_0.a.e.c.x, _wgslsmith_div_u32(func_1(arg_0.a.c.a, vec4<u32>(4294967295u, 4294967295u, u_input.a.x, 35559u)).a.c.d, _wgslsmith_mult_u32(0u, arg_0.a.e.c.x)) >> (1u % 32u), ~u_input.a.x, ~u_input.a.x), reverseBits(~1u));
    let var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.a, arg_0.a.c.a, -1133f, -1183f))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -158f), var_0.a, _wgslsmith_f_op_f32(arg_0.a.d - arg_0.a.d), func_5(arg_0.a.c.d, Struct_4(arg_0.a)).c.a))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, arg_0.a.d, arg_0.a.c.a, arg_0.a.c.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, arg_0.a.c.a, arg_0.a.e.a, -1000f) * vec4<f32>(arg_0.a.d, arg_0.a.e.a, -604f, -1269f)), select(vec4<bool>(false, arg_0.a.e.b, arg_0.a.e.b, arg_0.a.c.b), vec4<bool>(arg_0.a.c.b, true, true, arg_0.a.e.b), vec4<bool>(false, true, true, arg_0.a.e.b)))))))));
    let var_2 = firstTrailingBit(vec2<i32>(1i, 1i) >> (~u_input.a.yx % vec2<u32>(32u)));
    var_0 = arg_0.a.e;
    var_0 = func_5(var_0.d, Struct_4(Struct_2(0i, reverseBits(arg_0.a.b) >> (43878u % 32u), arg_0.a.e, _wgslsmith_div_f32(457f, _wgslsmith_f_op_f32(-887f + var_1.x)), arg_0.a.e))).e;
    return Struct_4(arg_0.a);
}

fn func_7(arg_0: Struct_4) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -230f), _wgslsmith_f_op_f32(-arg_0.a.c.a))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.a.c.a)))), 138f, -1506f, _wgslsmith_f_op_f32(f32(-1f) * -820f))));
    let var_1 = func_4(vec2<bool>(arg_0.a.c.b, any(select(vec3<bool>(arg_0.a.e.b, arg_0.a.e.b, false), vec3<bool>(arg_0.a.e.b, arg_0.a.c.b, false), func_6(Struct_4(Struct_2(-1i, 2147483647i, Struct_1(arg_0.a.d, arg_0.a.c.b, arg_0.a.e.c, 123694u), arg_0.a.e.a, arg_0.a.e))).a.e.b))), -742f, true, arg_0.a).b;
    var var_2 = -(~vec2<i32>(reverseBits(0i) << (arg_0.a.c.d % 32u), func_1(_wgslsmith_f_op_f32(var_0.x * -621f), _wgslsmith_add_vec4_u32(u_input.a, arg_0.a.c.c)).a.a));
    let var_3 = arg_0.a.c.b | false;
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(var_0.yyy, _wgslsmith_f_op_vec3_f32(vec3<f32>(662f, arg_0.a.d, var_0.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.e.a, var_0.x, 306f) * var_0.zwx))))) * var_0.wwx);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(Struct_4(func_5(u_input.a.x, func_1(-1184f, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))))));
    let var_1 = vec2<i32>(var_0.a.b, ~(-1i)) & vec2<i32>(~(~var_0.a.b), var_0.a.a);
    let var_2 = 2147483647i;
    var var_3 = vec2<i32>(var_2 & func_6(func_1(371f, _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 99828u, u_input.a.x), u_input.a))).a.a, var_0.a.a);
    let var_4 = Struct_3(var_0.a.c, func_6(var_0).a.a, func_7(func_7(func_1(func_1(var_0.a.e.a, u_input.a).a.e.a, _wgslsmith_sub_vec4_u32(u_input.a, u_input.a)))).a.c.c.x, func_6(var_0).a, func_2(var_1.x, _wgslsmith_f_op_f32(-var_0.a.e.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-521f, -420f))));
    var var_5 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a.a, var_0.a.c.a, _wgslsmith_f_op_f32(-2490f + 628f), var_0.a.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(831f, var_4.a.a, 1000f, -751f))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-277f, var_0.a.d, -756f, -680f))))), all(!vec2<bool>(false, var_4.a.b)) & var_0.a.c.b))));
    let var_6 = reverseBits((_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, var_4.d.c.c.x), var_0.a.c.c.xxw), vec3<u32>(var_4.c, 4294967295u, var_0.a.c.c.x)) ^ ~_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.a.c.d, 7815u, u_input.a.x), vec3<u32>(1u, var_0.a.e.c.x, var_0.a.c.c.x))) ^ u_input.a.xxy);
    var_5 = vec4<f32>(_wgslsmith_f_op_f32(-444f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -392f), _wgslsmith_f_op_f32(select(1857f, var_0.a.c.a, true)), var_0.a.c.b))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_5.x)) * var_4.a.a) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1849f, 809f))) * _wgslsmith_f_op_f32(-1187f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1536f - -711f)))), -945f, _wgslsmith_f_op_f32(floor(var_4.a.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1372f, 770f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_5.x, var_4.d.e.a) * var_5.ww)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.c.a, _wgslsmith_f_op_f32(var_5.x - -2292f)))), _wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(min(var_0.a.b, 30158i), abs(-12878i), abs(var_3.x), 66214i)), _wgslsmith_add_vec4_i32(vec4<i32>(select(var_4.b, var_1.x, false), ~var_0.a.a, -var_0.a.a, countOneBits(0i)), select(_wgslsmith_div_vec4_i32(vec4<i32>(0i, 0i, var_0.a.a, 59749i), vec4<i32>(-1i, var_3.x, 1i, var_1.x)), vec4<i32>(var_0.a.b, 2147483647i, var_2, var_4.b) >> (vec4<u32>(0u, 1u, 4294967295u, 104940u) % vec4<u32>(32u)), false))), -58466i, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-111f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_4.a.a)) + _wgslsmith_f_op_f32(-var_4.a.a))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5.x, var_4.a.a)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-723f, -393f))), false)))))));
}

