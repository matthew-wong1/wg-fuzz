struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_3,
    c: bool,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec2<bool> {
    var var_0 = ~(~(~vec2<u32>(1u, 1u))) | countOneBits(firstTrailingBit(vec2<u32>(42491u, 5366u) | select(vec2<u32>(0u, 1u), vec2<u32>(1u, 4294967295u), false)));
    var var_1 = !(!(all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false))) || select(var_0.x != var_0.x, false, any(vec4<bool>(false, false, false, false)))));
    var_0 = vec2<u32>(var_0.x, ~4294967295u | ~_wgslsmith_div_u32(max(4294967295u, var_0.x), 0u << (var_0.x % 32u)));
    var var_2 = true | any(!vec2<bool>(all(vec4<bool>(true, true, true, false)), any(vec3<bool>(false, true, false))));
    var var_3 = 547f;
    return !(!(!vec2<bool>(all(vec2<bool>(false, false)), all(vec4<bool>(false, false, true, true)))));
}

fn func_2(arg_0: f32, arg_1: vec3<u32>, arg_2: u32) -> bool {
    var var_0 = -1028f;
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(785f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0))))));
    let var_1 = 44408i;
    let var_2 = select(vec2<bool>(all(vec3<bool>(true, true, true)), false & any(select(vec2<bool>(true, true), vec2<bool>(true, false), false))), select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))), !func_3(), vec2<bool>(true, true)), vec2<bool>(true, false), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), false))), true);
    return !(0i < -(~abs(u_input.b)));
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_4, arg_3: vec3<bool>) -> Struct_2 {
    var var_0 = arg_2.d;
    let var_1 = Struct_4(vec3<u32>(~reverseBits(139423u), firstLeadingBit(12160u), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_2.a | vec3<u32>(var_0.a.e.b, var_0.a.e.b, 1u), ~vec3<u32>(1u, 1u, var_0.a.e.b), vec3<u32>(1u, 4294967295u, 4294967295u)), ~arg_2.a)), Struct_3(arg_2.d.a), arg_0.x, arg_2.d);
    var_0 = var_1.b;
    let var_2 = 1591f;
    var var_3 = func_3().x;
    return var_0.a;
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: Struct_3) -> Struct_3 {
    let var_0 = !select(select(select(func_4(arg_1.b, arg_1.c, Struct_4(vec3<u32>(1u, arg_1.a.b, 0u), arg_2, true, Struct_3(Struct_2(arg_1.d, arg_2.a.b, false, arg_1.e, arg_2.a.d))), vec3<bool>(true, true, arg_1.b.x)).b.wwx, arg_2.a.b.xwx, select(vec3<bool>(arg_1.b.x, false, true), vec3<bool>(true, arg_1.b.x, false), true)), arg_1.b.zwy, true), select(select(func_4(vec4<bool>(true, true, arg_1.b.x, true), false, Struct_4(vec3<u32>(arg_2.a.e.b, arg_1.e.b, arg_1.e.b), arg_2, true, arg_2), vec3<bool>(arg_1.b.x, arg_2.a.b.x, true)).b.zwx, arg_1.b.xxz, any(vec3<bool>(true, arg_1.c, false))), vec3<bool>(arg_2.a.c || arg_1.b.x, true, all(vec3<bool>(arg_1.c, false, false))), !(!arg_2.a.b.x)), true);
    let var_1 = vec2<bool>(arg_1.a.b == _wgslsmith_sub_u32((12402u & arg_1.d.b) ^ 28636u, _wgslsmith_clamp_u32(~4294967295u, arg_2.a.d.b, 32645u)), !(!arg_2.a.b.x));
    var var_2 = _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(4294967295u, ~56741u), arg_1.d.b, _wgslsmith_mod_u32(~arg_1.a.b, _wgslsmith_mult_u32(0u, 0u)), 4294967295u), ~abs(vec4<u32>(30496u, arg_2.a.a.b, 49955u, arg_2.a.a.b) & vec4<u32>(arg_1.a.b, arg_1.e.b, arg_1.e.b, arg_1.a.b))), arg_1.a.b);
    var_2 = ~(~_wgslsmith_clamp_u32(_wgslsmith_add_u32(~arg_1.e.b, min(17000u, 8723u)), arg_1.d.b, select(arg_2.a.d.b, ~70416u, !var_1.x)));
    return Struct_3(func_4(!arg_2.a.b, func_4(!arg_2.a.b, false, Struct_4(~vec3<u32>(48932u, arg_1.e.b, arg_2.a.a.b), arg_2, true, arg_2), !vec3<bool>(false, arg_1.c, var_1.x)).b.x, Struct_4(vec3<u32>(~4294967295u, reverseBits(arg_2.a.a.b), ~1376u), Struct_3(func_4(vec4<bool>(true, true, arg_1.c, false), arg_1.c, Struct_4(vec3<u32>(28073u, arg_2.a.d.b, arg_2.a.a.b), arg_2, arg_1.c, arg_2), vec3<bool>(arg_2.a.b.x, false, false))), var_0.x, Struct_3(func_4(arg_1.b, arg_1.b.x, Struct_4(vec3<u32>(arg_2.a.d.b, 1u, 0u), arg_2, var_0.x, Struct_3(Struct_2(Struct_1(arg_1.e.a, 14801u), vec4<bool>(arg_2.a.b.x, var_0.x, var_0.x, false), var_1.x, arg_2.a.a, arg_1.e))), vec3<bool>(arg_2.a.b.x, arg_1.b.x, true)))), !func_4(select(arg_2.a.b, vec4<bool>(false, true, arg_1.b.x, arg_1.b.x), vec4<bool>(arg_2.a.b.x, false, true, false)), true, Struct_4(vec3<u32>(arg_1.a.b, arg_2.a.e.b, arg_1.a.b), arg_2, true, arg_2), func_4(arg_2.a.b, true, Struct_4(vec3<u32>(39142u, arg_2.a.d.b, 28487u), Struct_3(arg_2.a), arg_1.c, Struct_3(arg_2.a)), arg_1.b.zwz).b.yyz).b.wwy));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = func_5(_wgslsmith_div_f32(483f, _wgslsmith_f_op_f32(trunc(arg_0.a))), func_4(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true)), vec4<bool>(false, true, true, false)), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.a))), ~abs(vec3<u32>(arg_0.b, 10674u, arg_0.b)), 14717u), Struct_4(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(65576u, 0u, arg_0.b), vec3<u32>(arg_0.b, arg_0.b, 4294967295u)), _wgslsmith_add_vec3_u32(vec3<u32>(0u, arg_0.b, 72196u), vec3<u32>(4294967295u, arg_0.b, arg_0.b))), Struct_3(Struct_2(Struct_1(-595f, arg_0.b), vec4<bool>(true, true, false, true), false, Struct_1(1289f, 0u), Struct_1(-1000f, 47074u))), true, Struct_3(Struct_2(Struct_1(arg_0.a, 2153u), vec4<bool>(true, false, false, false), true, Struct_1(arg_0.a, 6915u), arg_0))), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, false, false))), Struct_3(func_4(vec4<bool>(649f <= arg_0.a, select(true, true, false), false, all(vec3<bool>(false, true, false))), any(func_4(vec4<bool>(true, false, true, false), false, Struct_4(vec3<u32>(arg_0.b, arg_0.b, 0u), Struct_3(Struct_2(arg_0, vec4<bool>(true, true, false, false), true, arg_0, Struct_1(-183f, arg_0.b))), true, Struct_3(Struct_2(Struct_1(-1366f, 4294967295u), vec4<bool>(false, false, true, true), false, Struct_1(arg_0.a, 1u), Struct_1(2230f, arg_0.b)))), vec3<bool>(true, true, false)).b.yzz), Struct_4(vec3<u32>(arg_0.b, arg_0.b, arg_0.b), Struct_3(Struct_2(arg_0, vec4<bool>(true, true, true, false), true, Struct_1(arg_0.a, arg_0.b), arg_0)), arg_0.b > arg_0.b, Struct_3(Struct_2(Struct_1(131f, 55012u), vec4<bool>(false, true, false, false), true, arg_0, Struct_1(arg_0.a, arg_0.b)))), !func_4(vec4<bool>(false, false, false, false), false, Struct_4(vec3<u32>(4294967295u, 4294967295u, 67028u), Struct_3(Struct_2(arg_0, vec4<bool>(true, true, true, false), false, arg_0, Struct_1(arg_0.a, 4294967295u))), false, Struct_3(Struct_2(arg_0, vec4<bool>(false, false, true, false), true, Struct_1(552f, arg_0.b), Struct_1(1383f, 40176u)))), vec3<bool>(false, false, false)).b.zyz)));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -777f);
    var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(ceil(171f)), 28250u), func_5(_wgslsmith_f_op_f32(var_0.a.e.a + 1f), var_0.a, func_5(-774f, Struct_2(Struct_1(-965f, 1u), var_0.a.b, var_0.a.b.x, Struct_1(var_0.a.d.a, arg_0.b), Struct_1(var_0.a.a.a, 4294967295u)), func_5(var_0.a.a.a, var_0.a, Struct_3(var_0.a)))).a.b, var_0.a.b.x && all(var_0.a.b.zz), Struct_1(var_0.a.a.a, var_0.a.a.b), func_5(arg_0.a, var_0.a, Struct_3(func_5(var_0.a.d.a, var_0.a, Struct_3(Struct_2(arg_0, var_0.a.b, true, var_0.a.e, arg_0))).a)).a.d));
    let var_2 = ~u_input.a;
    var_0 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) + _wgslsmith_f_op_f32(-arg_0.a)))), var_0.a, Struct_3(var_0.a));
    return var_0.a.e;
}

fn func_6(arg_0: Struct_1, arg_1: vec3<f32>) -> f32 {
    var var_0 = Struct_3(Struct_2(func_4(!func_4(vec4<bool>(false, true, true, false), false, Struct_4(vec3<u32>(arg_0.b, arg_0.b, arg_0.b), Struct_3(Struct_2(Struct_1(arg_0.a, 72836u), vec4<bool>(true, false, true, false), true, arg_0, Struct_1(407f, 1990u))), false, Struct_3(Struct_2(arg_0, vec4<bool>(false, true, true, false), true, Struct_1(arg_0.a, arg_0.b), Struct_1(-816f, 42089u)))), vec3<bool>(false, true, false)).b, false, Struct_4(~vec3<u32>(21501u, 19229u, 0u), func_5(-1253f, Struct_2(Struct_1(1788f, arg_0.b), vec4<bool>(false, false, false, true), false, Struct_1(-1230f, 1u), arg_0), Struct_3(Struct_2(Struct_1(arg_0.a, arg_0.b), vec4<bool>(false, true, false, true), true, Struct_1(arg_0.a, 4294967295u), Struct_1(arg_1.x, 19833u)))), true, Struct_3(Struct_2(arg_0, vec4<bool>(true, false, false, true), false, arg_0, arg_0))), func_4(vec4<bool>(true, true, true, true), false, Struct_4(vec3<u32>(arg_0.b, 4294967295u, arg_0.b), Struct_3(Struct_2(Struct_1(arg_0.a, arg_0.b), vec4<bool>(false, true, true, false), false, Struct_1(arg_1.x, 138698u), arg_0)), false, Struct_3(Struct_2(Struct_1(arg_0.a, arg_0.b), vec4<bool>(true, true, false, false), false, Struct_1(-287f, arg_0.b), Struct_1(arg_0.a, 12856u)))), vec3<bool>(true, true, true)).b.zzy).e, vec4<bool>(true, !(arg_1.x < arg_0.a), _wgslsmith_add_u32(arg_0.b, arg_0.b) != 14096u, arg_0.a > _wgslsmith_f_op_f32(min(arg_1.x, arg_0.a))), false, arg_0, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), 17498u)));
    var var_1 = arg_1;
    var var_2 = vec4<i32>(select(-7510i, u_input.e.x, _wgslsmith_f_op_f32(max(arg_0.a, arg_0.a)) == var_1.x), -1i, i32(-1i) * -9839i, -2147483647i);
    var_2 = u_input.d;
    let var_3 = ((-_wgslsmith_dot_vec2_i32(u_input.a.wy, vec2<i32>(-1i, u_input.d.x)) << (~firstTrailingBit(var_0.a.d.b) % 32u)) ^ var_2.x) & -_wgslsmith_div_i32(u_input.c, ~max(-1i, var_2.x));
    return 1188f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -44604i;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) + _wgslsmith_f_op_f32(func_6(func_1(Struct_1(-119f, 47432u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-256f, 704f, 1078f) + vec3<f32>(-1016f, 178f, -1000f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-428f, -1428f, -1000f))), vec3<f32>(2549f, 369f, -1496f))))));
    let var_2 = select(func_4(vec4<bool>(true, true, true, func_3().x), ~(-17141i << (0u % 32u)) >= (u_input.b & firstLeadingBit(-2147483647i)), Struct_4(vec3<u32>(1u, 1u, 1u), func_5(_wgslsmith_f_op_f32(ceil(var_1)), func_5(var_1, Struct_2(Struct_1(-829f, 4294967295u), vec4<bool>(false, false, true, true), false, Struct_1(var_1, 1u), Struct_1(-534f, 1u)), Struct_3(Struct_2(Struct_1(-1192f, 53537u), vec4<bool>(true, true, true, true), true, Struct_1(var_1, 93048u), Struct_1(-362f, 4294967295u)))).a, Struct_3(Struct_2(Struct_1(var_1, 75783u), vec4<bool>(false, false, false, false), false, Struct_1(var_1, 4294967295u), Struct_1(1813f, 1u)))), true, Struct_3(func_4(vec4<bool>(false, true, true, true), true, Struct_4(vec3<u32>(25257u, 3842u, 42637u), Struct_3(Struct_2(Struct_1(-459f, 1u), vec4<bool>(true, false, false, false), false, Struct_1(779f, 1960u), Struct_1(var_1, 25289u))), false, Struct_3(Struct_2(Struct_1(var_1, 0u), vec4<bool>(false, true, false, false), false, Struct_1(var_1, 42764u), Struct_1(var_1, 4294967295u)))), vec3<bool>(false, true, false)))), select(func_4(func_5(-756f, Struct_2(Struct_1(var_1, 42117u), vec4<bool>(true, true, false, true), false, Struct_1(var_1, 67593u), Struct_1(var_1, 36812u)), Struct_3(Struct_2(Struct_1(-573f, 0u), vec4<bool>(true, false, true, false), false, Struct_1(-587f, 1u), Struct_1(918f, 0u)))).a.b, -1689f != var_1, Struct_4(vec3<u32>(1u, 36020u, 29628u), Struct_3(Struct_2(Struct_1(-213f, 27791u), vec4<bool>(false, false, true, true), false, Struct_1(var_1, 4294967295u), Struct_1(var_1, 177u))), true, Struct_3(Struct_2(Struct_1(var_1, 4294967295u), vec4<bool>(false, false, false, true), false, Struct_1(var_1, 4294967295u), Struct_1(-813f, 8216u)))), func_4(vec4<bool>(false, false, false, false), true, Struct_4(vec3<u32>(21822u, 4294967295u, 0u), Struct_3(Struct_2(Struct_1(var_1, 16844u), vec4<bool>(true, false, true, false), false, Struct_1(var_1, 4294967295u), Struct_1(-1000f, 1u))), true, Struct_3(Struct_2(Struct_1(var_1, 9814u), vec4<bool>(true, true, false, false), true, Struct_1(var_1, 0u), Struct_1(834f, 1u)))), vec3<bool>(false, false, true)).b.xxz).b.yxw, vec3<bool>(true, true, true), false)).b.ywz, vec3<bool>(true, func_4(vec4<bool>(any(vec3<bool>(true, true, true)), var_1 != -1082f, true, true), func_5(-1424f, func_4(vec4<bool>(true, true, false, true), true, Struct_4(vec3<u32>(85880u, 34407u, 0u), Struct_3(Struct_2(Struct_1(876f, 0u), vec4<bool>(false, true, true, false), true, Struct_1(255f, 0u), Struct_1(331f, 20646u))), false, Struct_3(Struct_2(Struct_1(-559f, 39595u), vec4<bool>(false, false, false, true), true, Struct_1(var_1, 37727u), Struct_1(-1000f, 84242u)))), vec3<bool>(false, true, true)), func_5(785f, Struct_2(Struct_1(var_1, 1u), vec4<bool>(false, true, true, true), false, Struct_1(var_1, 69123u), Struct_1(var_1, 31262u)), Struct_3(Struct_2(Struct_1(116f, 0u), vec4<bool>(true, true, true, true), false, Struct_1(var_1, 14520u), Struct_1(var_1, 0u))))).a.c, Struct_4(_wgslsmith_clamp_vec3_u32(vec3<u32>(42169u, 16159u, 75417u), vec3<u32>(166u, 32970u, 28194u), vec3<u32>(72355u, 1u, 1u)), Struct_3(Struct_2(Struct_1(477f, 4294967295u), vec4<bool>(false, true, true, true), false, Struct_1(var_1, 103137u), Struct_1(var_1, 57346u))), true, func_5(2905f, Struct_2(Struct_1(var_1, 0u), vec4<bool>(false, true, true, false), true, Struct_1(var_1, 51120u), Struct_1(592f, 0u)), Struct_3(Struct_2(Struct_1(var_1, 4294967295u), vec4<bool>(true, false, true, true), true, Struct_1(-184f, 17498u), Struct_1(var_1, 43891u))))), vec3<bool>(all(vec3<bool>(true, false, false)), true, true)).b.x, false), vec3<bool>(all(vec4<bool>(true, true, true, true)), !(false | all(vec3<bool>(false, true, true))), all(!func_4(vec4<bool>(false, true, true, false), false, Struct_4(vec3<u32>(54401u, 4294967295u, 36384u), Struct_3(Struct_2(Struct_1(-816f, 0u), vec4<bool>(true, true, false, false), false, Struct_1(var_1, 10098u), Struct_1(var_1, 1u))), true, Struct_3(Struct_2(Struct_1(var_1, 4294967295u), vec4<bool>(false, false, true, true), false, Struct_1(-1197f, 4294967295u), Struct_1(var_1, 301u)))), vec3<bool>(true, false, true)).b)));
    let var_3 = Struct_4(~vec3<u32>(_wgslsmith_mod_u32(4294967295u, _wgslsmith_clamp_u32(1u, 0u, 33004u)), 1u, ~_wgslsmith_mult_u32(1u, 1u)), func_5(var_1, Struct_2(func_5(var_1, func_5(var_1, Struct_2(Struct_1(-1000f, 35557u), vec4<bool>(true, var_2.x, false, var_2.x), var_2.x, Struct_1(var_1, 10417u), Struct_1(var_1, 71036u)), Struct_3(Struct_2(Struct_1(-953f, 1u), vec4<bool>(false, false, var_2.x, var_2.x), false, Struct_1(159f, 1u), Struct_1(-738f, 1u)))).a, Struct_3(Struct_2(Struct_1(var_1, 1u), vec4<bool>(var_2.x, var_2.x, var_2.x, false), false, Struct_1(-575f, 4294967295u), Struct_1(var_1, 4294967295u)))).a.d, !select(vec4<bool>(false, var_2.x, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, var_2.x, true)), true, func_1(Struct_1(var_1, 4294967295u)), Struct_1(1769f, select(1u, 13687u, var_2.x))), Struct_3(func_5(_wgslsmith_f_op_f32(ceil(var_1)), Struct_2(Struct_1(var_1, 1u), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), true, Struct_1(398f, 0u), Struct_1(-128f, 68230u)), Struct_3(Struct_2(Struct_1(1238f, 2103u), vec4<bool>(false, false, true, false), var_2.x, Struct_1(-1440f, 0u), Struct_1(var_1, 5765u)))).a)), (!any(var_2.yz) | any(vec3<bool>(false, var_2.x, true))) & any(!select(vec4<bool>(var_2.x, false, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, var_2.x, false), var_2.x)), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -417f) - _wgslsmith_f_op_f32(var_1 - -372f))), Struct_2(Struct_1(var_1, 1u), select(vec4<bool>(false, true, var_2.x, var_2.x), !vec4<bool>(var_2.x, var_2.x, true, false), select(vec4<bool>(false, var_2.x, var_2.x, false), vec4<bool>(false, false, var_2.x, var_2.x), vec4<bool>(false, false, var_2.x, var_2.x))), true, Struct_1(-1311f, 2335u), Struct_1(_wgslsmith_f_op_f32(710f * 259f), _wgslsmith_mod_u32(0u, 1u))), func_5(func_1(Struct_1(var_1, 16112u)).a, func_4(vec4<bool>(true, true, true, true), true, Struct_4(vec3<u32>(22253u, 69131u, 0u), Struct_3(Struct_2(Struct_1(var_1, 9900u), vec4<bool>(var_2.x, false, false, var_2.x), false, Struct_1(var_1, 0u), Struct_1(var_1, 6423u))), var_2.x, Struct_3(Struct_2(Struct_1(var_1, 96417u), vec4<bool>(false, false, false, var_2.x), var_2.x, Struct_1(var_1, 4294967295u), Struct_1(1210f, 0u)))), vec3<bool>(var_2.x, var_2.x, true)), func_5(_wgslsmith_div_f32(var_1, -1000f), func_5(-482f, Struct_2(Struct_1(209f, 9365u), vec4<bool>(true, false, true, false), var_2.x, Struct_1(444f, 4294967295u), Struct_1(-357f, 4294967295u)), Struct_3(Struct_2(Struct_1(var_1, 5181u), vec4<bool>(false, var_2.x, true, true), var_2.x, Struct_1(var_1, 30267u), Struct_1(var_1, 0u)))).a, func_5(239f, Struct_2(Struct_1(var_1, 1u), vec4<bool>(false, var_2.x, true, false), false, Struct_1(var_1, 4294967295u), Struct_1(-1000f, 1u)), Struct_3(Struct_2(Struct_1(-567f, 28988u), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), false, Struct_1(1618f, 1u), Struct_1(var_1, 31933u))))))));
    let var_4 = Struct_1(-556f, 39241u);
    let x = u_input.a;
    s_output = StorageBuffer(select(~select(~vec3<i32>(0i, 8356i, 1i), vec3<i32>(var_0, u_input.a.x, 0i), !var_2), (-vec3<i32>(u_input.a.x, u_input.a.x, -29198i) >> (var_3.a % vec3<u32>(32u))) | ~u_input.e, var_3.b.a.b.zwy), vec3<f32>(var_3.b.a.d.a, _wgslsmith_f_op_f32(var_3.b.a.e.a * -142f), _wgslsmith_f_op_f32(trunc(-1045f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, func_5(-126f, Struct_2(var_3.d.a.d, vec4<bool>(var_3.d.a.c, var_2.x, false, false), false, var_4, Struct_1(-1023f, 85711u)), func_5(var_4.a, var_3.d.a, Struct_3(Struct_2(var_4, vec4<bool>(var_2.x, var_3.d.a.b.x, var_3.c, true), var_2.x, Struct_1(var_4.a, 1u), Struct_1(var_1, var_4.b))))).a.e.a)), ~_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_add_i32(var_0, 0i), _wgslsmith_dot_vec2_i32(vec2<i32>(61536i, -12059i), u_input.a.zx)), u_input.a.yz));
}

