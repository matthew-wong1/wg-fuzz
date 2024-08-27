struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: vec2<u32>,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<f32>,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<bool>) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2065f, arg_0.e.x, arg_0.e.x)) - arg_0.e.zxz))) + _wgslsmith_f_op_vec3_f32(select(arg_0.e.xyy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.e.x, arg_0.e.x, arg_0.e.x)))))), true)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(220f, 1479f)) - var_0.x), 349f)));
    var var_2 = vec3<f32>(482f, _wgslsmith_f_op_f32(floor(var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))));
    return var_1.x == _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_1.x))));
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_4(Struct_1(!select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false))), select(vec2<bool>(true, 1u != u_input.a), !select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(true, true)), vec2<u32>(~4294967295u, u_input.c.x), func_3(Struct_1(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), ~u_input.c.yz, true, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-419f, -1669f, -1102f, -2586f), vec4<f32>(-2475f, 665f, -616f, -763f), vec4<bool>(false, false, false, true)))), vec2<u32>(0u, u_input.a) >> ((u_input.c.zy << (vec2<u32>(50336u, u_input.c.x) % vec2<u32>(32u))) % vec2<u32>(32u)), vec4<bool>(all(vec3<bool>(false, false, true)), false, true, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1000f + 1000f), _wgslsmith_f_op_f32(-589f + 976f), _wgslsmith_f_op_f32(-1000f + 1223f), 754f))), Struct_2(_wgslsmith_f_op_f32(-762f + -307f), ~(~vec4<u32>(u_input.a, u_input.a, 13295u, 0u))));
    var var_1 = ~(~_wgslsmith_mult_vec3_u32(select(vec3<u32>(u_input.a, var_0.a.c.x, 22195u), vec3<u32>(0u, 23817u, var_0.a.c.x), true), _wgslsmith_sub_vec3_u32(u_input.c, var_0.b.b.zxz)) << (_wgslsmith_clamp_vec3_u32(~var_0.b.b.xzw, countOneBits(vec3<u32>(63453u, 1u, var_0.b.b.x) ^ vec3<u32>(u_input.a, 9071u, u_input.a)), ~vec3<u32>(var_0.b.b.x, 1u, 1u)) % vec3<u32>(32u)));
    var_1 = vec3<u32>(_wgslsmith_add_u32(1u, _wgslsmith_mod_u32(42268u, select(u_input.a ^ var_1.x, ~15489u, u_input.a < var_1.x))), _wgslsmith_div_u32(var_1.x, var_0.a.c.x) >> (_wgslsmith_dot_vec4_u32(select(select(vec4<u32>(179u, 18971u, u_input.c.x, var_0.a.c.x), var_0.b.b, vec4<bool>(var_0.a.b.x, var_0.a.b.x, var_0.a.d, var_0.a.d)), vec4<u32>(var_0.a.c.x, 15031u, 68544u, 0u), select(vec4<bool>(var_0.a.d, false, var_0.a.d, var_0.a.b.x), vec4<bool>(var_0.a.a.x, true, var_0.a.b.x, true), vec4<bool>(true, var_0.a.d, true, var_0.a.a.x))), vec4<u32>(13976u, 1u, ~0u, u_input.c.x)) % 32u), min(firstLeadingBit(1u), ~firstTrailingBit(13725u)));
    let var_2 = vec4<i32>(~u_input.b.x, ~countOneBits(~_wgslsmith_clamp_i32(5272i, u_input.b.x, -4001i)), u_input.b.x, 0i);
    var var_3 = Struct_3(vec4<bool>(true, any(vec4<bool>(var_0.b.a >= var_0.a.e.x, var_0.a.c.x >= 1u, any(vec2<bool>(true, false)), !var_0.a.b.x)), var_0.b.a >= 571f, true), Struct_1(select(var_0.a.a, !vec2<bool>(true, var_0.a.a.x), !(!var_0.a.a)), vec2<bool>((false & var_0.a.b.x) || func_3(var_0.a, var_0.b.b.yz, vec4<bool>(var_0.a.b.x, var_0.a.a.x, var_0.a.d, true)), var_0.a.a.x), _wgslsmith_div_vec2_u32(var_1.yz, select(vec2<u32>(92369u, u_input.a), vec2<u32>(var_1.x, 4294967295u), var_0.a.a.x)), !var_0.a.a.x, var_0.a.e), var_0.a.e.xy, ~(~var_1.x), var_0.b);
    return var_0;
}

fn func_4(arg_0: Struct_4) -> Struct_2 {
    let var_0 = arg_0;
    var var_1 = func_2().b;
    var var_2 = Struct_1(!select(vec2<bool>(arg_0.a.a.x, var_0.a.a.x), !select(vec2<bool>(true, arg_0.a.d), vec2<bool>(true, true), vec2<bool>(arg_0.a.a.x, arg_0.a.d)), false), arg_0.a.b, _wgslsmith_add_vec2_u32(~vec2<u32>(var_0.a.c.x, arg_0.a.c.x), vec2<u32>(arg_0.b.b.x, ~var_0.a.c.x)) << (~abs(vec2<u32>(1u, u_input.a)) % vec2<u32>(32u)), any(select(vec4<bool>(!arg_0.a.b.x, all(vec4<bool>(arg_0.a.d, false, arg_0.a.b.x, false)), true, !var_0.a.b.x), !vec4<bool>(false, arg_0.a.b.x, var_0.a.d, false), var_0.a.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.b.a, arg_0.a.e.x, 1516f, -1000f), vec4<f32>(190f, arg_0.a.e.x, -1000f, -207f))) - vec4<f32>(-160f, var_0.b.a, arg_0.a.e.x, arg_0.a.e.x)))));
    var var_3 = func_2().a;
    var var_4 = var_0.a;
    return func_2().b;
}

fn func_5(arg_0: Struct_2) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1374f * 152f)), func_2().b.a, func_4(func_2()).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - func_2().b.a))) * func_2().a.e);
    var var_1 = countOneBits(abs(countOneBits(39153i)) << (u_input.a % 32u)) < u_input.b.x;
    let var_2 = select(vec3<bool>(false, false, _wgslsmith_f_op_f32(sign(744f)) >= _wgslsmith_f_op_f32(-1901f + _wgslsmith_f_op_f32(sign(arg_0.a)))), select(select(vec3<bool>(false, any(vec4<bool>(true, true, true, true)), true), select(vec3<bool>(false, true, false), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false), all(vec3<bool>(true, true, false))), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), !vec3<bool>(any(vec2<bool>(true, true)), true, false)), true);
    let var_3 = Struct_1(var_2.xz, !var_2.zx, abs(func_4(func_2()).b.zx), var_2.x, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, arg_0.a, var_0.x, var_0.x), vec4<f32>(130f, arg_0.a, var_0.x, 1840f))) - vec4<f32>(820f, var_0.x, arg_0.a, var_0.x))))));
    var_0 = _wgslsmith_f_op_vec4_f32(floor(var_3.e));
    return Struct_3(!(!select(select(vec4<bool>(var_2.x, false, var_2.x, var_3.a.x), vec4<bool>(true, true, true, var_3.a.x), var_2.x), !vec4<bool>(var_3.a.x, false, true, false), any(vec4<bool>(true, false, false, var_3.a.x)))), func_2().a, var_0.zz, arg_0.b.x, func_2().b);
}

fn func_6(arg_0: Struct_3, arg_1: Struct_3, arg_2: i32) -> Struct_2 {
    var var_0 = vec4<bool>(func_5(func_4(func_2())).b.d, (arg_1.b.c.x > _wgslsmith_dot_vec3_u32(arg_1.e.b.yxw, arg_0.e.b.yzx)) != (_wgslsmith_sub_i32(_wgslsmith_mult_i32(-46944i, -5318i), min(-2147483647i, u_input.b.x)) <= min(u_input.b.x, 16345i)), false, all(arg_1.a));
    var_0 = func_5(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.b.e.x, 300f))), arg_1.e.b)).a;
    var var_1 = arg_2;
    var_1 = 2147483647i;
    let var_2 = -((_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, -196i), u_input.b.zy), vec2<i32>(-25709i, 0i), vec2<i32>(22446i, arg_2)) << (vec2<u32>(min(0u, 116865u), ~u_input.c.x) % vec2<u32>(32u))) << (vec2<u32>(1u, func_2().a.c.x) % vec2<u32>(32u)));
    return Struct_2(_wgslsmith_f_op_f32(-arg_0.b.e.x), _wgslsmith_div_vec4_u32(func_2().b.b, arg_0.e.b));
}

fn func_7(arg_0: Struct_2) -> Struct_1 {
    let var_0 = reverseBits(_wgslsmith_sub_vec4_i32(min(max(vec4<i32>(u_input.b.x, -75084i, -17920i, u_input.b.x), vec4<i32>(1i, u_input.b.x, u_input.b.x, u_input.b.x)), -vec4<i32>(-102403i, u_input.b.x, u_input.b.x, u_input.b.x)) & _wgslsmith_mod_vec4_i32(~vec4<i32>(0i, u_input.b.x, u_input.b.x, -10544i), vec4<i32>(37508i, 3643i, u_input.b.x, -1i)), vec4<i32>(u_input.b.x, ~(u_input.b.x >> (4294967295u % 32u)), 1i, 2147483647i)));
    let var_1 = abs(func_6(func_5(Struct_2(-1767f, arg_0.b)), func_5(func_2().b), ~u_input.b.x).b.yy);
    let var_2 = u_input.a;
    let var_3 = vec3<bool>(select(true, true, true), true, any(vec4<bool>(true, false, !func_2().a.d, _wgslsmith_dot_vec4_u32(arg_0.b, arg_0.b) <= _wgslsmith_add_u32(1u, 53827u))));
    var var_4 = ~5472u;
    return func_5(Struct_2(_wgslsmith_f_op_f32(arg_0.a * _wgslsmith_div_f32(func_5(Struct_2(380f, vec4<u32>(29397u, var_2, 73256u, 22327u))).c.x, -384f)), arg_0.b)).b;
}

fn func_1(arg_0: vec4<u32>) -> vec3<f32> {
    let var_0 = func_7(func_6(func_5(func_4(func_2())), Struct_3(func_5(func_5(Struct_2(-829f, vec4<u32>(u_input.c.x, 0u, 73212u, u_input.a))).e).a, Struct_1(vec2<bool>(true, true), vec2<bool>(true, true), ~arg_0.yx, true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-602f, 354f, -306f, 1103f))), vec2<f32>(_wgslsmith_f_op_f32(1759f * 123f), -1024f), abs(~u_input.a), Struct_2(1705f, arg_0 | arg_0)), max(-u_input.b.x, u_input.b.x)));
    var var_1 = vec4<u32>(1u & u_input.a, select(~arg_0.x, 1u, var_0.d) >> (_wgslsmith_dot_vec4_u32(~(~arg_0), ~vec4<u32>(arg_0.x, var_0.c.x, 4294967295u, arg_0.x)) % 32u), 96960u, 23522u);
    let var_2 = func_5(func_2().b).b;
    let var_3 = ~abs(_wgslsmith_clamp_vec3_u32(reverseBits(~vec3<u32>(var_2.c.x, u_input.a, 1u)), select(select(arg_0.xyx, arg_0.xyz, vec3<bool>(var_2.d, var_2.b.x, false)), vec3<u32>(var_2.c.x, var_2.c.x, 0u), vec3<bool>(true, true, true)), arg_0.ywx));
    var var_4 = func_2();
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_4.b.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-349f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(Struct_3(vec4<bool>(var_4.a.b.x, var_0.d, var_4.a.b.x, var_4.a.d), Struct_1(var_2.b, vec2<bool>(var_4.a.d, var_0.d), vec2<u32>(var_0.c.x, var_3.x), true, vec4<f32>(-1692f, var_2.e.x, var_4.b.a, var_0.e.x)), vec2<f32>(1846f, 824f), 0u, Struct_2(var_2.e.x, arg_0)), Struct_3(vec4<bool>(var_0.b.x, var_4.a.a.x, var_2.b.x, var_4.a.a.x), var_4.a, vec2<f32>(var_4.a.e.x, var_0.e.x), var_3.x, var_4.b), u_input.b.x).a * -164f))) + vec3<f32>(var_4.a.e.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 807f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(func_1(vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, 4294967295u))))) + func_5(Struct_2(_wgslsmith_f_op_f32(max(1994f, 1531f)), firstTrailingBit(vec4<u32>(1u, 1u, u_input.c.x, 70803u)))).b.e.wxx), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1127f * 1665f), _wgslsmith_f_op_f32(f32(-1f) * -483f), _wgslsmith_f_op_f32(ceil(296f))), _wgslsmith_div_vec3_f32(vec3<f32>(905f, -359f, 1426f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, -575f, -722f), vec3<f32>(-1033f, -272f, 564f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-291f, 1623f, -1618f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-141f, -730f, 1000f)))), true));
    let var_1 = func_2();
    var var_2 = max(~func_7(func_5(var_1.b).e).c.x, u_input.c.x);
    let var_3 = Struct_2(-1197f, vec4<u32>(4294967295u, u_input.a, 1u, 7455u));
    var var_4 = 10213i;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.b, ~u_input.b.x, 19153u);
}

