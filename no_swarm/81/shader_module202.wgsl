struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: f32,
    d: vec2<bool>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
    d: u32,
    e: f32,
}

struct Struct_4 {
    a: bool,
    b: vec2<f32>,
    c: vec3<i32>,
    d: vec2<bool>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: u32) -> vec4<bool> {
    return select(arg_2.e, arg_2.e, all(vec2<bool>(!arg_2.d.x, true)));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: i32) -> Struct_2 {
    let var_0 = func_3(~arg_1.yy, Struct_2(arg_2), Struct_1(98296u, vec3<bool>(all(vec3<bool>(true, true, true)), !all(vec3<bool>(false, false, false)), u_input.e >= u_input.d.x), -2973f, !select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true), false), vec4<bool>(true, true, true, true)), u_input.a.x);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(489f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(879f, 154f) + _wgslsmith_f_op_f32(sign(-681f)))))), -851f);
    let var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(312f, 706f, -1002f) * vec3<f32>(var_1, var_1, 354f)) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1, 657f, 1444f))))))));
    let var_3 = i32(-1i) * -2147483647i;
    let var_4 = var_2.yx;
    return Struct_2(abs(1i));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: Struct_4) -> f32 {
    let var_0 = select(_wgslsmith_clamp_vec4_i32(select(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.e, arg_1.a, u_input.e, -28793i), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_3.c.x, -1i, u_input.b, -4508i), vec4<i32>(-1i, 27107i, -2147483647i, 1i))), firstTrailingBit(~vec4<i32>(arg_1.a, arg_3.c.x, u_input.b, u_input.e)), arg_0), -_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.e, arg_3.c.x, u_input.b, -25324i) << (vec4<u32>(0u, 0u, arg_2.x, 13135u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, arg_3.c.x, arg_3.c.x, 2147483647i), vec4<i32>(u_input.b, arg_1.a, arg_3.c.x, arg_3.c.x))), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, arg_1.a), u_input.d.yx) << (17221u % 32u), func_2(vec3<i32>(u_input.d.x, 2147483647i, arg_1.a), firstLeadingBit(u_input.d), ~2147483647i).a, reverseBits(_wgslsmith_mod_i32(u_input.b, -3669i)), -1i)), vec4<i32>(-76932i, _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b, 2147483647i), _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_3.c.x, arg_1.a), u_input.c.yx), arg_3.c.zz, min(arg_3.c.xx, vec2<i32>(arg_3.c.x, arg_3.c.x)))), 1i, select(-min(arg_3.c.x, -10782i), u_input.c.x, true)), arg_0.x);
    let var_1 = arg_0.zyz;
    let var_2 = u_input.a.yz | max(select(max(u_input.a.yy, select(u_input.a.xx, vec2<u32>(arg_2.x, u_input.a.x), false)), countOneBits(arg_2) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 55978u), arg_2) % vec2<u32>(32u)), 0u <= (arg_2.x & u_input.a.x)), ~vec2<u32>(105298u, 8670u) | countOneBits(abs(u_input.a.zz)));
    let var_3 = select(max(~var_0.zz, abs(select(arg_3.c.zx, -arg_3.c.xz, arg_3.d))), select(_wgslsmith_sub_vec2_i32(~var_0.yw, -vec2<i32>(arg_1.a, 950i)) >> (_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, arg_3.e), vec2<u32>(4294967295u, var_2.x)), vec2<u32>(1u, arg_2.x)) % vec2<u32>(32u)), select(var_0.wz, vec2<i32>(-29619i, arg_3.c.x), var_1.x & (arg_0.x || arg_0.x)), arg_0.zx), !(!(!vec2<bool>(arg_0.x, false))));
    let var_4 = vec2<i32>(abs(var_0.x), -var_3.x);
    return 405f;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(vec4<bool>(true, true, true, true), func_2(countOneBits(u_input.d), vec3<i32>(u_input.d.x, -42197i, u_input.e), ~u_input.d.x), vec2<u32>(u_input.a.x, 1u), Struct_4(true, vec2<f32>(613f, -217f), u_input.c, vec2<bool>(true, false), min(u_input.a.x, 9650u)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1506f, 926f)))))) > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(150f - 1010f)));
    var var_1 = func_2(~u_input.c, u_input.c, ~(-2147483647i));
    var var_2 = Struct_3(u_input.a.x, Struct_1(~4294967295u, vec3<bool>(func_3(_wgslsmith_mult_vec2_i32(vec2<i32>(var_1.a, 31319i), vec2<i32>(var_1.a, var_1.a)), func_2(u_input.d, u_input.d, 25924i), Struct_1(u_input.a.x, vec3<bool>(var_0, var_0, true), 784f, vec2<bool>(true, var_0), vec4<bool>(var_0, false, true, var_0)), u_input.a.x).x, true && var_0, !select(var_0, var_0, var_0)), _wgslsmith_f_op_f32(166f - _wgslsmith_f_op_f32(f32(-1f) * -153f)), !func_3(u_input.d.yz << (u_input.a.xx % vec2<u32>(32u)), Struct_2(var_1.a), Struct_1(1u, vec3<bool>(true, true, false), -947f, vec2<bool>(false, false), vec4<bool>(false, var_0, var_0, false)), u_input.a.x & 1u).yz, vec4<bool>(true, true, true, true)), Struct_2(var_1.a), 14208u, -2345f);
    var var_3 = func_2(select(vec3<i32>(min(2147483647i, -39625i), 0i, _wgslsmith_mult_i32(-1i, -54547i)) & select(u_input.d, _wgslsmith_clamp_vec3_i32(vec3<i32>(66894i, -1i, u_input.c.x), u_input.c, u_input.d), false), vec3<i32>(0i, var_2.c.a, min(var_2.c.a, -1i)), func_3(u_input.d.xz, func_2(u_input.c, u_input.d, i32(-1i) * -2147483647i), var_2.b, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), abs(vec2<u32>(1u, var_2.b.a)))).zxx), u_input.d, var_1.a);
    let var_4 = ~var_2.d <= (_wgslsmith_dot_vec4_u32(~(~vec4<u32>(0u, var_2.d, 4294967295u, u_input.a.x)), vec4<u32>(var_2.b.a, u_input.a.x, u_input.a.x, ~var_2.d)) ^ abs(~var_2.a));
    return Struct_1(reverseBits(55246u), select(vec3<bool>(var_4, true, true), vec3<bool>(!var_2.b.b.x, !select(var_2.b.b.x, false, false), true), var_2.b.b), -624f, vec2<bool>(all(func_3(u_input.d.xy, Struct_2(19194i), var_2.b, _wgslsmith_clamp_u32(4294967295u, u_input.a.x, 1u))), var_2.b.e.x), var_2.b.e);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: u32, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = func_1().d.x;
    let var_1 = arg_0.b.d;
    var var_2 = arg_0.b.c;
    var_2 = arg_0.e;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_1().c, arg_0.e));
    return Struct_1(~(~arg_0.d), vec3<bool>(all(!vec2<bool>(var_1.x, false)) || arg_0.b.d.x, var_1.x, func_1().e.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(arg_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.c) - -480f))), arg_0.e)), !vec2<bool>(var_1.x, true), arg_0.b.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_3(u_input.a.x | ~_wgslsmith_mult_u32(4294967295u, u_input.a.x), func_1(), Struct_2(15299i), ~_wgslsmith_sub_u32(abs(u_input.a.x), ~152870u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1737f, 578f))), func_1(), u_input.a.x, u_input.a.yz);
    let var_1 = false || (~(-u_input.c.x) <= 21954i);
    let var_2 = u_input.a.x;
    let var_3 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(-2338f * var_0.c)))), -568f, _wgslsmith_div_f32(-1015f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.c)) + var_0.c))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, var_0.c, -508f)) - vec3<f32>(var_0.c, var_0.c, var_0.c)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(123f, -434f, -753f))))))));
    var_0 = Struct_1(4294967295u, func_1().e.xzz, 1191f, !var_0.e.wy, var_0.e);
    var var_4 = vec4<u32>(~60569u, var_0.a, _wgslsmith_mult_u32(~(~_wgslsmith_dot_vec3_u32(u_input.a, u_input.a)), countOneBits(~func_1().a)), u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x + var_3.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1309f, _wgslsmith_f_op_f32(-var_3.x))), _wgslsmith_div_f32(742f, _wgslsmith_f_op_f32(-975f * _wgslsmith_f_op_f32(trunc(-1779f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.c)) + _wgslsmith_f_op_f32(1689f * var_3.x)), var_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_3.x)) - var_3.x), var_3.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_3 * _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(var_3, vec3<f32>(var_0.c, 882f, -886f)), vec3<f32>(363f, var_3.x, 1601f)))));
}

