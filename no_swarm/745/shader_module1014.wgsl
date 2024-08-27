struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> bool {
    let var_0 = Struct_2(~47513u, vec3<bool>(true, true, !((u_input.a == u_input.a) | true)), vec3<i32>(_wgslsmith_mult_i32(2147483647i, 1i), -(~(i32(-1i) * -1i)), u_input.a | u_input.a));
    let var_1 = var_0;
    var var_2 = Struct_1(select(var_0.b, var_0.b, var_0.b), vec4<i32>(-19736i, var_0.c.x, var_0.c.x, _wgslsmith_add_i32(u_input.a, _wgslsmith_div_i32(var_1.c.x, _wgslsmith_sub_i32(var_0.c.x, var_0.c.x)))));
    var_2 = Struct_1(vec3<bool>(select(var_0.b.x, var_1.b.x, all(vec3<bool>(false, var_1.b.x, true))), false, !(var_1.a != 68993u) | ((false && var_0.b.x) | true)), var_2.b);
    var_2 = Struct_1(vec3<bool>(false, !var_0.b.x, 2147483647i <= ~(35106i & var_0.c.x)), max(vec4<i32>(~(-19114i), 2147483647i ^ var_2.b.x, ~(-var_1.c.x), -var_1.c.x), vec4<i32>(_wgslsmith_mod_i32(var_2.b.x, -1i), var_2.b.x, 1i, _wgslsmith_mult_i32(-11413i, 32633i) >> (_wgslsmith_mult_u32(20588u, var_0.a) % 32u))));
    return !var_1.b.x;
}

fn func_2() -> bool {
    var var_0 = Struct_1(vec3<bool>(func_3(), all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), select(true, true, any(vec2<bool>(true, true)) && true)), vec4<i32>(_wgslsmith_mult_i32(-(~(-44772i)), u_input.a), u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.a, select(103833i, -1i, true), u_input.a), vec3<i32>(~u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(32297i, u_input.a), vec2<i32>(0i, -2147483647i)), -u_input.a)), i32(-1i) * -1i));
    var var_1 = vec3<bool>(false, true, var_0.a.x | (all(vec4<bool>(false, var_0.a.x, false, false)) || true));
    var var_2 = var_1.zy;
    var var_3 = Struct_1(select(!(!(!vec3<bool>(true, var_0.a.x, var_2.x))), !vec3<bool>(!var_2.x, true, true && var_0.a.x), !any(!var_0.a.xz)), _wgslsmith_mod_vec4_i32(var_0.b, vec4<i32>(var_0.b.x, 1i, -1i, var_0.b.x) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))) ^ var_0.b);
    var var_4 = !(!func_3());
    return var_2.x;
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: bool) -> Struct_1 {
    let var_0 = Struct_1(vec3<bool>(true, true, true), abs(vec4<i32>(i32(-1i) * -22685i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(2147483647i, u_input.a)), 1i, _wgslsmith_mod_i32(countOneBits(u_input.a), 54372i))));
    var var_1 = Struct_2(_wgslsmith_dot_vec3_u32(select(abs(vec3<u32>(4294967295u, 28898u, 25643u)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 19831u, 4294967295u), vec3<u32>(35285u, 1u, 2989u), vec3<u32>(1u, 1u, 4294967295u)), true | (arg_2 || true)), vec3<u32>(4294967295u, abs(min(1u, 52094u)), _wgslsmith_mod_u32(firstTrailingBit(4294967295u), ~35644u))), !var_0.a, -countOneBits(var_0.b.yyx));
    var var_2 = Struct_2(abs(~min(var_1.a, 45864u)), !var_1.b, vec3<i32>(var_1.c.x, u_input.a, reverseBits(var_0.b.x)));
    var_1 = Struct_2(~reverseBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.a, var_1.a, var_1.a, var_2.a), _wgslsmith_add_vec4_u32(vec4<u32>(0u, var_2.a, var_2.a, 45315u), vec4<u32>(var_1.a, 1u, 24210u, 38326u)))), var_2.b, abs(_wgslsmith_clamp_vec3_i32(abs(select(vec3<i32>(0i, var_1.c.x, -2147483647i), var_2.c, vec3<bool>(false, false, false))), select(~var_2.c, abs(var_1.c), vec3<bool>(var_2.b.x, arg_2, var_1.b.x)), reverseBits(vec3<i32>(0i, 1i, arg_0)))));
    let var_3 = firstTrailingBit(var_1.c);
    return Struct_1(var_1.b, _wgslsmith_mod_vec4_i32(firstTrailingBit(_wgslsmith_div_vec4_i32(var_0.b | var_0.b, ~var_0.b)), vec4<i32>(countOneBits(var_1.c.x) << ((var_2.a >> (var_1.a % 32u)) % 32u), -(i32(-1i) * -2147483647i), (var_1.c.x | var_0.b.x) | ~(-1i), 1i)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<f32>) -> u32 {
    let var_0 = arg_0.b.x;
    let var_1 = select(!func_4(arg_0.c.x, _wgslsmith_f_op_f32(-1017f - 206f), -107f < _wgslsmith_f_op_f32(select(arg_2.x, 868f, arg_1.a.x))).a, select(arg_1.a, !func_4(arg_0.c.x, -346f, true).a, arg_0.b), !arg_1.a);
    var var_2 = arg_0;
    var_2 = arg_0;
    var var_3 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, _wgslsmith_clamp_u32(4294967295u, 229u, var_2.a)), _wgslsmith_div_vec2_u32(vec2<u32>(var_2.a, 0u) | vec2<u32>(14266u, 1u), ~vec2<u32>(12633u, var_2.a))), _wgslsmith_div_vec2_u32(vec2<u32>(reverseBits(0u), _wgslsmith_clamp_u32(var_2.a, 35302u, 45947u)), ~(~vec2<u32>(4294967295u, 1u))));
    return _wgslsmith_mod_u32(_wgslsmith_mult_u32(24034u >> (~_wgslsmith_clamp_u32(90500u, 26706u, 7u) % 32u), 19243u), max(max(_wgslsmith_div_u32(arg_0.a, 0u), 13048u), 30766u));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_2(~func_5(Struct_2(_wgslsmith_dot_vec4_u32(arg_1, arg_1), vec3<bool>(true, true, true), vec3<i32>(2147483647i, -39765i, 15777i)), func_4(countOneBits(u_input.a), _wgslsmith_f_op_f32(floor(arg_2.x)), func_2()), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.yzy) * _wgslsmith_f_op_vec3_f32(round(arg_0.xyx)))), vec3<bool>(false, all(vec2<bool>(func_2(), any(vec2<bool>(false, true)))), 0u == ~min(arg_1.x, arg_1.x)), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.a, u_input.a, 0i), vec3<i32>(2147483647i, 0i, 2147483647i)), vec3<i32>(-17843i | u_input.a, min(-2147483647i, u_input.a), 3783i)), vec3<i32>(2147483647i, 25939i, _wgslsmith_mult_i32(u_input.a, 1i))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-990f, arg_2.x, -1411f)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(arg_0.wxx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(arg_0.yxw))))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.x - arg_2.x))), 124f)));
    var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1168f))) + 1f)));
    var_1 = vec3<f32>(1f, _wgslsmith_f_op_f32(min(118f, _wgslsmith_f_op_f32(ceil(-856f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -107f)) + _wgslsmith_f_op_f32(f32(-1f) * -742f)));
    var var_2 = arg_0.zz;
    return Struct_1(!vec3<bool>(abs(1u) >= _wgslsmith_mod_u32(4294967295u, arg_1.x), true, var_0.b.x), vec4<i32>(u_input.a, _wgslsmith_sub_i32(u_input.a, 1i), -342i, u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec4<f32>(-656f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -386f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -593f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1370f + _wgslsmith_f_op_f32(sign(764f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(1625f - -828f), _wgslsmith_f_op_f32(f32(-1f) * -1870f))), 1430f), vec4<u32>(4294967295u, _wgslsmith_sub_u32(~53038u, firstLeadingBit(4294967295u)) >> (_wgslsmith_div_u32(~4294967295u, ~1u) % 32u), ~_wgslsmith_mod_u32(4294967295u, _wgslsmith_mod_u32(11902u, 93254u)), 17452u), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-368f + _wgslsmith_f_op_f32(1026f * 335f))), _wgslsmith_f_op_f32(-2035f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(830f + 748f)))));
    let var_1 = var_0;
    var var_2 = abs(~(~abs(vec4<u32>(42731u, 54470u, 87592u, 1u))));
    var var_3 = reverseBits(abs(var_2.zy));
    var_3 = min(~(~_wgslsmith_add_vec2_u32(var_2.yy, var_2.ww | vec2<u32>(60838u, 15543u))), countOneBits(var_2.xx));
    var_3 = abs(vec2<u32>(_wgslsmith_mod_u32(select(4294967295u, var_3.x, func_1(vec4<f32>(-748f, 524f, 283f, -539f), vec4<u32>(33605u, 73005u, var_2.x, 13939u), vec2<f32>(-625f, 354f)).a.x), ~43268u), ~(~21951u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_div_f32(-1197f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(516f + -198f), _wgslsmith_f_op_f32(round(418f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(732f + 362f)))), -1155f), var_1.b.x);
}

