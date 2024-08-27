struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1, arg_3: Struct_3) -> f32 {
    let var_0 = arg_0.a;
    let var_1 = any(select(vec3<bool>(!(!arg_0.b), arg_0.b, false), !(!(!vec3<bool>(arg_0.b, true, arg_0.b))), true));
    let var_2 = true;
    var var_3 = arg_3;
    var var_4 = select(!select(!vec4<bool>(arg_0.b, var_2, var_2, var_1), !select(vec4<bool>(var_2, arg_0.b, true, arg_0.b), vec4<bool>(true, true, true, false), var_2), var_1), select(!vec4<bool>(true, !var_2, true, arg_2.c.x < u_input.b.x), vec4<bool>(false, true, true, arg_0.b || any(vec3<bool>(true, var_2, true))), select(!vec4<bool>(var_1, var_2, true, var_2), vec4<bool>(var_2, all(vec3<bool>(true, arg_0.b, var_2)), true, false), vec4<bool>(4294967295u >= var_0.d.x, !arg_0.b, arg_0.b, var_1 | var_2))), vec4<bool>(!(-u_input.a >= arg_0.a.c.x), true, any(vec3<bool>(false, true, arg_0.b)), all(!(!vec3<bool>(true, arg_0.b, true)))));
    return var_0.b;
}

fn func_2(arg_0: i32) -> f32 {
    var var_0 = Struct_3(u_input.c);
    var var_1 = Struct_1(vec3<i32>(1i, 1i, abs(firstTrailingBit(u_input.b.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(u_input.c.xzz, -755f, vec3<i32>(var_0.a.x, u_input.c.x, 0i), vec2<u32>(4294967295u, 22308u), 24707u), true, max(vec2<u32>(36632u, 14739u), vec2<u32>(4294967295u, 1u))), -884f, Struct_1(-vec3<i32>(arg_0, arg_0, u_input.c.x), _wgslsmith_div_f32(204f, -683f), vec3<i32>(-30059i, u_input.b.x, u_input.b.x), _wgslsmith_add_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(1u, 28262u)), ~1453u), Struct_3(countOneBits(vec4<i32>(u_input.b.x, -2147483647i, arg_0, u_input.b.x))))), 1373f, !all(select(vec2<bool>(true, true), vec2<bool>(false, true), true)))), -(vec3<i32>(1i, 1144i, min(1i, -47218i)) & u_input.c.xzy), vec2<u32>(30902u, 54442u), abs(_wgslsmith_sub_u32(15350u, select(21347u, 96478u, false) | _wgslsmith_clamp_u32(4294967295u, 24523u, 10462u))));
    var_0 = Struct_3(u_input.c);
    var_1 = Struct_1(var_1.a << (~vec3<u32>(_wgslsmith_div_u32(var_1.d.x, 4294967295u), ~var_1.e, _wgslsmith_div_u32(var_1.e, 0u)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-1994f - _wgslsmith_f_op_f32(-var_1.b)), ~vec3<i32>(0i, u_input.c.x, u_input.c.x), firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.d.x, 1u), ~vec2<u32>(var_1.d.x, var_1.e), var_1.d)) ^ var_1.d, ~var_1.d.x);
    var_1 = Struct_1(var_0.a.zzy, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(484f - _wgslsmith_f_op_f32(f32(-1f) * -541f)))), u_input.c.wyx, ~(~vec2<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(54552u, 21358u), vec2<u32>(35564u, var_1.e)))), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_1.e, var_1.d.x), var_1.d), ~vec2<u32>(0u & var_1.e, var_1.e)));
    return _wgslsmith_f_op_f32(-var_1.b);
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: vec4<i32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1360f)) + -1668f), _wgslsmith_f_op_f32(func_2(u_input.a))));
    var var_1 = Struct_2(Struct_1(~_wgslsmith_div_vec3_i32(select(vec3<i32>(arg_1.a.x, 1i, u_input.b.x), u_input.b, vec3<bool>(true, false, false)), arg_2.wxx), _wgslsmith_f_op_f32(abs(arg_0)), select(arg_1.a.yyz, firstLeadingBit(vec3<i32>(0i, -1i, 16987i)), vec3<bool>(true, u_input.c.x > arg_1.a.x, false)), ~(~select(vec2<u32>(42113u, 5494u), vec2<u32>(11512u, 3040u), true)), firstLeadingBit(max(1u, _wgslsmith_div_u32(62912u, 10743u)))), true, vec2<u32>(0u, firstTrailingBit(4294967295u)));
    var var_2 = Struct_2(Struct_1(arg_2.ywy, var_1.a.b, select(abs(firstLeadingBit(u_input.c.wyy)), u_input.c.yxy, vec3<bool>(true, false, !var_1.b)), ~_wgslsmith_div_vec2_u32(var_1.a.d, vec2<u32>(var_1.c.x, 4294967295u)), max(1u, var_1.a.e)), false, var_1.c);
    var_1 = Struct_2(Struct_1(max(~u_input.b, arg_1.a.yyy), -313f, vec3<i32>(abs(var_1.a.a.x), arg_1.a.x, 0i), _wgslsmith_mod_vec2_u32(~vec2<u32>(var_2.a.d.x, var_1.a.e), vec2<u32>(16292u, _wgslsmith_div_u32(0u, 57433u))), abs(~var_2.c.x)), any(!(!select(vec3<bool>(var_2.b, var_2.b, var_2.b), vec3<bool>(true, true, var_1.b), false))), vec2<u32>(~(~(~4294967295u)), 1u));
    let var_3 = Struct_2(var_1.a, !all(select(vec4<bool>(true, var_2.b, false, var_2.b), vec4<bool>(true, var_2.b, var_1.b, true), select(vec4<bool>(true, false, var_2.b, var_2.b), vec4<bool>(var_1.b, false, true, var_2.b), vec4<bool>(var_2.b, var_1.b, false, true)))), select(vec2<u32>(var_1.c.x, ~_wgslsmith_div_u32(37712u, 4294967295u)), ~(~var_1.c ^ vec2<u32>(var_2.c.x, 0u)), !vec2<bool>(true, var_2.b)));
    return select(~_wgslsmith_dot_vec2_u32(~(~vec2<u32>(var_2.a.e, 3308u)), _wgslsmith_div_vec2_u32(vec2<u32>(1u, var_1.c.x), select(var_2.a.d, vec2<u32>(1u, var_2.a.e), vec2<bool>(false, false)))), ~var_2.c.x << ((_wgslsmith_add_u32(48231u, 1u) ^ ~var_2.a.e) % 32u), true);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_2) -> f32 {
    let var_0 = vec4<i32>(~_wgslsmith_mult_i32(1i, arg_2.a.c.x >> (18583u % 32u)) & abs(43707i), arg_2.a.a.x, _wgslsmith_dot_vec2_i32(arg_2.a.c.yy & abs(arg_0.c.zy), ~_wgslsmith_div_vec2_i32(-arg_2.a.c.yx, -vec2<i32>(arg_2.a.c.x, u_input.b.x))), 0i);
    let var_1 = Struct_3(var_0);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(282f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1300f + -1000f) * arg_2.a.b)) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-972f, arg_2.a.b)))))));
    let var_3 = -2147483647i;
    let var_4 = any(vec3<bool>(true, any(!vec2<bool>(arg_2.b, true)), any(select(select(vec2<bool>(false, true), vec2<bool>(arg_2.b, true), vec2<bool>(arg_2.b, arg_2.b)), vec2<bool>(true, false), select(vec2<bool>(arg_2.b, true), vec2<bool>(false, arg_2.b), vec2<bool>(false, true))))));
    return _wgslsmith_f_op_f32(func_3(arg_2, arg_2.a.b, arg_2.a, Struct_3(max(-vec4<i32>(1i, arg_2.a.a.x, 1i, -46588i), _wgslsmith_sub_vec4_i32(var_1.a, vec4<i32>(-1i, 51438i, var_1.a.x, -2147483647i))) << (select(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, arg_1.x, arg_2.a.e, 1u), vec4<u32>(arg_1.x, arg_0.d.x, 0u, 74973u), vec4<u32>(arg_1.x, arg_2.c.x, 54640u, 0u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.e, 4294967295u, arg_0.d.x, 0u), vec4<u32>(4294967295u, arg_0.e, 28978u, arg_0.e), vec4<u32>(arg_2.c.x, arg_1.x, arg_1.x, arg_1.x)), !arg_2.b) % vec4<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -countOneBits(-vec3<i32>(1i, u_input.c.x, i32(-1i) * -10807i));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-147f - _wgslsmith_f_op_f32(-563f - 1067f)) - _wgslsmith_f_op_f32(func_4(Struct_1(vec3<i32>(862i, 0i, var_0.x) ^ vec3<i32>(1230i, u_input.b.x, var_0.x), -1398f, var_0, vec2<u32>(17500u, 1u), func_1(844f, Struct_3(u_input.c), u_input.c)), _wgslsmith_mod_vec3_u32(vec3<u32>(52233u, 4294967295u, 9650u), vec3<u32>(1u, 1u, 1u)), Struct_2(Struct_1(u_input.b, -908f, var_0, vec2<u32>(0u, 0u), 0u), select(false, true, true), abs(vec2<u32>(1u, 1u)))))) + _wgslsmith_f_op_f32(step(325f, 672f)));
    var var_2 = Struct_1(u_input.c.www, -284f, ~_wgslsmith_div_vec3_i32(var_0, select(var_0 ^ vec3<i32>(u_input.b.x, var_0.x, 14849i), vec3<i32>(u_input.c.x, -32486i, -35897i), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)))), vec2<u32>(min(~0u, 1u) << (_wgslsmith_mult_u32(_wgslsmith_mult_u32(0u, 4294967295u), countOneBits(10271u)) % 32u), 49009u), _wgslsmith_add_u32(38854u, ~(~1u)));
    let var_3 = var_2.b;
    var_1 = _wgslsmith_f_op_f32(sign(-338f));
    var_1 = var_2.b;
    var var_4 = firstLeadingBit(var_2.d.x);
    let var_5 = select(select(!(!select(vec2<bool>(true, false), vec2<bool>(false, false), true)), !select(vec2<bool>(true, true), vec2<bool>(false, true), all(vec3<bool>(false, true, true))), !vec2<bool>(true, all(vec3<bool>(true, false, false)))), vec2<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)))), false & select(true, -2147483647i >= var_2.c.x, var_2.e <= var_2.e)), select(vec2<bool>(all(vec3<bool>(true, true, true)), false), vec2<bool>(true, true), select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), false), true), select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(true, true), -48761i >= u_input.c.x), true)));
    let var_6 = !select(select(!vec4<bool>(var_5.x, true, var_5.x, var_5.x), select(!vec4<bool>(false, var_5.x, false, false), vec4<bool>(true, var_5.x, var_5.x, var_5.x), var_5.x & true), var_5.x), vec4<bool>(any(!vec3<bool>(true, var_5.x, var_5.x)), var_5.x && var_5.x, any(vec2<bool>(false, false)), any(!vec4<bool>(false, var_5.x, false, var_5.x))), vec4<bool>(var_5.x, false | (false || var_5.x), true, false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_2.b), 15507u, _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(56630u, var_2.d.x, 114295u, var_2.e), vec4<u32>(var_2.e, var_2.d.x, var_2.d.x, var_2.e)), vec4<u32>(var_2.d.x, 0u, 4294967295u, var_2.d.x) ^ vec4<u32>(var_2.e, 5353u, 1u, 1u)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_2.d.x, 37446u, var_2.e), vec4<u32>(var_2.d.x, 44844u, 26989u, 15823u) << (vec4<u32>(var_2.e, 0u, var_2.e, 1u) % vec4<u32>(32u)))), vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(var_2.d.x, 22116u), 19454u), var_2.d.x, _wgslsmith_dot_vec2_u32(var_2.d, abs(vec2<u32>(var_2.e, var_2.e))), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 23077u, var_2.d.x), vec3<u32>(var_2.e, 35882u, var_2.d.x))), ~(~vec4<u32>(0u, 13476u, var_2.e, 0u)) << (_wgslsmith_div_vec4_u32(~vec4<u32>(var_2.e, 4294967295u, var_2.e, 4294967295u), ~vec4<u32>(var_2.d.x, 35118u, var_2.d.x, 0u)) % vec4<u32>(32u))), ~vec3<u32>(78150u, 4294967295u, max(~4294967295u, 0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b)));
}

