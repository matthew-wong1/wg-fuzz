struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: u32,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
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

var<private> global0: i32 = -33188i;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> vec4<i32> {
    var var_0 = -_wgslsmith_dot_vec3_i32(abs(~(~vec3<i32>(u_input.c, 9331i, u_input.c))), vec3<i32>(firstLeadingBit(u_input.c) >> (1u % 32u), u_input.b, u_input.b));
    let var_1 = abs(-(~firstTrailingBit(-vec2<i32>(u_input.c, 5525i))));
    let var_2 = any(vec2<bool>(false, select(!select(true, true, false), true, true)));
    let var_3 = -1i;
    let var_4 = Struct_1(firstTrailingBit(~vec3<u32>(u_input.a, u_input.a ^ 4294967295u, ~4294967295u)), firstLeadingBit(vec2<u32>(u_input.a, u_input.a | (u_input.a << (0u % 32u)))), vec4<i32>(-_wgslsmith_add_i32(~var_1.x, i32(-1i) * -39036i), _wgslsmith_clamp_i32(0i, u_input.b, 0i), 0i, _wgslsmith_mult_i32(-1i, firstLeadingBit(_wgslsmith_clamp_i32(var_3, -1i, 38483i)))), ~_wgslsmith_mod_u32(4294967295u, 11755u));
    return vec4<i32>(_wgslsmith_dot_vec4_i32(var_4.c, vec4<i32>(_wgslsmith_mod_i32(var_3, var_4.c.x), 1i, i32(-1i) * -1i, ~reverseBits(-19137i))), -4668i, 94740i, ~(-2147483647i));
}

fn func_2() -> u32 {
    var var_0 = Struct_1(min(~vec3<u32>(u_input.a, 0u, u_input.a), select(vec3<u32>(31185u, 34319u, 0u), firstLeadingBit(vec3<u32>(4294967295u, 101916u, 4294967295u)), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true))) ^ ~(abs(vec3<u32>(u_input.a, u_input.a, 4294967295u)) << (abs(vec3<u32>(41276u, 0u, 43207u)) % vec3<u32>(32u))), ~vec2<u32>(1u | u_input.a, _wgslsmith_mult_u32(u_input.a, u_input.a | u_input.a)), max(vec4<i32>(~u_input.b, firstLeadingBit(u_input.c), -43726i, u_input.c) & func_3(), func_3()), 7029u);
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1382f * _wgslsmith_f_op_f32(-453f + 273f)) * 1f)), -833f));
    var_0 = Struct_1(vec3<u32>(var_0.a.x, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(max(vec4<u32>(1u, u_input.a, 29031u, var_0.d), vec4<u32>(var_0.a.x, 1u, u_input.a, 28901u)), select(vec4<u32>(2341u, 8527u, 1318u, var_0.d), vec4<u32>(39463u, u_input.a, var_0.a.x, u_input.a), vec4<bool>(true, false, true, true)), ~vec4<u32>(var_0.d, u_input.a, var_0.a.x, var_0.b.x)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, var_0.b.x, 33352u, var_0.b.x), vec4<u32>(20398u, u_input.a, var_0.b.x, var_0.a.x), ~vec4<u32>(43724u, 0u, var_0.a.x, 0u))), 4294967295u), vec2<u32>(countOneBits(~(~u_input.a)), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, u_input.a, var_0.b.x, var_0.d) << (vec4<u32>(3248u, u_input.a, 1u, u_input.a) % vec4<u32>(32u)), vec4<u32>(0u, 61702u, 29562u, var_0.d)))), _wgslsmith_sub_vec4_i32(vec4<i32>(countOneBits(~var_0.c.x), -22486i, var_0.c.x & -1i, max(var_0.c.x, u_input.b) ^ -u_input.c), vec4<i32>(max(-60562i, select(u_input.b, u_input.c, true)), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 1i, -3824i), _wgslsmith_clamp_vec3_i32(vec3<i32>(132i, var_0.c.x, -46575i), var_0.c.xxw, vec3<i32>(u_input.c, u_input.b, var_0.c.x))), u_input.b, ~firstLeadingBit(-2147483647i))), ~_wgslsmith_dot_vec2_u32(var_0.b, _wgslsmith_sub_vec2_u32(var_0.b, vec2<u32>(var_0.a.x, var_0.b.x))) ^ 0u);
    let var_2 = select(!(!vec3<bool>(false, true, all(vec2<bool>(false, false)))), select(vec3<bool>(true, u_input.c == -2147483647i, any(vec2<bool>(true, false))), select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), any(select(vec2<bool>(false, false), vec2<bool>(true, false), false))), -(~var_0.c.x) > firstLeadingBit(i32(-1i) * -2147483647i)), all(vec4<bool>(true, true, true, true)) && true);
    var_0 = Struct_1(vec3<u32>(~(~firstLeadingBit(88497u)), ~76915u, max(1u, _wgslsmith_mod_u32(4294967295u, u_input.a))), var_0.a.xz, abs(vec4<i32>(43917i, -7286i, 26583i, var_0.c.x)), firstLeadingBit(46854u));
    return ~(_wgslsmith_div_u32(var_0.a.x >> (_wgslsmith_div_u32(u_input.a, u_input.a) % 32u), 0u) | abs(var_0.b.x));
}

fn func_4(arg_0: vec2<i32>, arg_1: f32, arg_2: u32, arg_3: Struct_1) -> Struct_2 {
    global0 = ~(7207i ^ reverseBits(_wgslsmith_div_i32(arg_3.c.x, arg_3.c.x)));
    var var_0 = _wgslsmith_sub_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(8890u, u_input.a, arg_3.a.x, 41446u), vec4<u32>(19817u, arg_2, arg_2, 4294967295u)), vec4<u32>(1u, ~31005u, u_input.a, arg_3.d)) ^ vec4<u32>(abs(~func_2()), arg_2, arg_3.b.x, arg_3.b.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1, arg_1, arg_1))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1, 2254f, 578f), vec3<f32>(-148f, arg_1, -463f)))) * vec3<f32>(_wgslsmith_f_op_f32(arg_1 + 192f), 794f, arg_1)) * vec3<f32>(arg_1, _wgslsmith_f_op_f32(1887f * _wgslsmith_f_op_f32(abs(-1000f))), _wgslsmith_f_op_f32(round(arg_1)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -507f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-519f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-607f, -2506f))), true)), arg_1)));
    let var_2 = vec3<i32>(_wgslsmith_mult_i32(func_3().x, func_3().x) >> ((~22697u << (var_0.x % 32u)) % 32u), 19477i, -_wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_add_i32(2147483647i, 0i), ~(-61400i)), ~3430i));
    let var_3 = countOneBits(~_wgslsmith_div_u32(arg_3.a.x, arg_2));
    return Struct_2(vec4<bool>(false, !(!all(vec2<bool>(true, true))), !all(vec2<bool>(true, false)) == true, true), arg_3, _wgslsmith_mod_u32(firstTrailingBit(1u), _wgslsmith_mod_u32(~var_3, 2568u)), arg_3.d, Struct_1(_wgslsmith_mod_vec3_u32(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, 944u), vec3<u32>(21637u, 4294967295u, arg_2))), ~vec3<u32>(0u, 23024u, arg_3.a.x)), firstLeadingBit(vec2<u32>(u_input.a, ~37008u)), arg_3.c, ~(1597u ^ _wgslsmith_mod_u32(var_3, 24961u))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    let var_0 = arg_0.b.a.yy;
    let var_1 = !(!vec2<bool>(arg_1.a.x, any(vec3<bool>(false, arg_0.a.x, true))));
    let var_2 = func_4(select(arg_0.e.c.xy, vec2<i32>(-23938i, 0i), select(select(vec2<bool>(true, true), select(vec2<bool>(false, arg_1.a.x), vec2<bool>(true, arg_0.a.x), arg_0.a.xy), arg_1.a.xy), arg_0.a.xw, vec2<bool>(!var_1.x, var_1.x))), _wgslsmith_f_op_f32(min(-392f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-686f, _wgslsmith_f_op_f32(ceil(1784f))) + 832f))), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(32022u, u_input.a, 1u, 45234u), _wgslsmith_mult_vec4_u32(vec4<u32>(36559u, 108561u, arg_1.c, 1u), vec4<u32>(arg_1.b.a.x, 13851u, arg_1.e.b.x, var_0.x))), _wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(54119u, var_0.x, 4294967295u, var_0.x)), ~vec4<u32>(12546u, 0u, u_input.a, arg_0.b.d))), vec4<u32>(~arg_1.d & arg_1.b.d, 20184u, 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 52394u), vec2<u32>(u_input.a, arg_1.d)))), Struct_1(firstTrailingBit(vec3<u32>(23622u, 1u, 1u)), _wgslsmith_add_vec2_u32(vec2<u32>(1u, arg_0.d), vec2<u32>(func_4(arg_1.b.c.yy, 1645f, arg_0.b.b.x, arg_0.e).e.a.x, 0u)), -vec4<i32>(arg_0.e.c.x, min(u_input.b, -1i), -93469i, 1i), 31436u));
    global0 = -_wgslsmith_sub_i32(_wgslsmith_add_i32(~2147483647i, 13068i), -firstLeadingBit(0i)) << (_wgslsmith_dot_vec2_u32(vec2<u32>(func_4(arg_1.b.c.wy, _wgslsmith_f_op_f32(min(865f, -554f)), arg_1.c, Struct_1(arg_0.e.a, vec2<u32>(arg_1.d, 11307u), var_2.e.c, 53364u)).c, 73264u), arg_1.b.b) % 32u);
    var var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-627f, -1181f), vec2<f32>(1849f, -1647f))))))));
    return var_2.c;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: u32, arg_3: vec2<u32>) -> vec3<i32> {
    let var_0 = Struct_2(vec4<bool>(true, false, !(_wgslsmith_f_op_f32(ceil(-105f)) > arg_0), true), Struct_1(arg_1.a, _wgslsmith_clamp_vec2_u32(arg_3, arg_3, ~(~vec2<u32>(arg_3.x, 1u))), select(vec4<i32>(_wgslsmith_div_i32(-2147483647i, arg_1.c.x), 55955i ^ u_input.b, firstLeadingBit(arg_1.c.x), _wgslsmith_mod_i32(-10369i, arg_1.c.x)), -firstLeadingBit(arg_1.c), true), _wgslsmith_mod_u32(~20173u >> (arg_3.x % 32u), 4294967295u)), func_5(Struct_2(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true)), Struct_1(~vec3<u32>(arg_3.x, u_input.a, 1u), vec2<u32>(arg_1.a.x, 64480u), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, arg_1.c.x, -21684i, 963i), vec4<i32>(5185i, -17656i, arg_1.c.x, u_input.c)), u_input.a), arg_3.x, 35690u, arg_1), func_4(vec2<i32>(u_input.c, -1i) & _wgslsmith_add_vec2_i32(arg_1.c.wz, vec2<i32>(arg_1.c.x, 0i)), arg_0, func_2(), arg_1)), arg_3.x, func_4(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(1i, -41718i), -2147483647i ^ arg_1.c.x), -(vec2<i32>(39555i, arg_1.c.x) ^ arg_1.c.zx)), _wgslsmith_div_f32(arg_0, arg_0), arg_1.b.x, func_4(arg_1.c.ww, arg_0, ~(~1u), func_4(arg_1.c.xy, _wgslsmith_f_op_f32(-1113f * arg_0), ~arg_1.d, Struct_1(arg_1.a, vec2<u32>(0u, 1809u), vec4<i32>(arg_1.c.x, arg_1.c.x, 7695i, arg_1.c.x), arg_3.x)).e).e).b);
    let var_1 = var_0.e.c.www;
    global0 = _wgslsmith_mod_i32(~var_1.x, -firstLeadingBit(var_1.x));
    var var_2 = var_0;
    let var_3 = Struct_2(!(!var_2.a), func_4(min(_wgslsmith_div_vec2_i32(arg_1.c.wx, vec2<i32>(1i, -2147483647i)), vec2<i32>(1i, ~(-7247i))), _wgslsmith_div_f32(867f, 1996f), ~var_2.c, Struct_1(var_2.e.a, _wgslsmith_mult_vec2_u32(abs(arg_1.a.xx), vec2<u32>(0u, arg_2) >> (var_0.b.b % vec2<u32>(32u))), -vec4<i32>(-29423i, -2147483647i, var_0.e.c.x, 648i), _wgslsmith_clamp_u32(~var_0.b.a.x, arg_1.d, 18814u))).e, 1u, 1u, var_2.b);
    return -var_3.b.c.yyx;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.b;
    global0 = ~_wgslsmith_mod_i32(~(~(i32(-1i) * -23724i)), max(16098i, _wgslsmith_dot_vec3_i32(min(vec3<i32>(u_input.b, u_input.c, -5189i), vec3<i32>(u_input.b, u_input.c, -2147483647i)), func_1(1115f, Struct_1(vec3<u32>(84853u, u_input.a, 3365u), vec2<u32>(u_input.a, 4294967295u), vec4<i32>(26204i, -2147483647i, u_input.c, 1i), u_input.a), u_input.a, vec2<u32>(u_input.a, u_input.a)))));
    global0 = 21633i;
    global0 = min(u_input.c, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32((vec4<i32>(1i, 30798i, 0i, u_input.c) ^ vec4<i32>(-2147483647i, u_input.c, u_input.c, 0i)) ^ (vec4<i32>(1i, -15565i, 53727i, u_input.c) >> (vec4<u32>(34569u, 0u, u_input.a, u_input.a) % vec4<u32>(32u))), select(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.b) << (vec4<u32>(21021u, 27702u, 1u, 69727u) % vec4<u32>(32u)), vec4<i32>(u_input.b, u_input.b, 1i, u_input.c), vec4<bool>(true, true, true, true))), -1i));
    var var_0 = ~countOneBits(max(vec2<i32>(u_input.b, 0i) | (vec2<i32>(u_input.b, u_input.b) >> (vec2<u32>(0u, 1u) % vec2<u32>(32u))), ~(~vec2<i32>(u_input.c, u_input.c))));
    global0 = _wgslsmith_div_i32(-9367i, _wgslsmith_dot_vec4_i32(vec4<i32>(~(-15957i), i32(-1i) * -1i, -abs(u_input.c), 34117i), vec4<i32>(abs(u_input.c), var_0.x, 1i, var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-320f, 1013f, false)))) + _wgslsmith_f_op_f32(f32(-1f) * -710f)), ~max(-2147483647i, func_3().x));
}

