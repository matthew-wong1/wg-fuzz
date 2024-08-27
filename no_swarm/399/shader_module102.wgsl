struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    let var_0 = vec2<f32>(277f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1530f)) * 2366f) + _wgslsmith_f_op_f32(trunc(-113f))))));
    let var_1 = vec2<i32>(-1i, -countOneBits(~u_input.b.x & reverseBits(u_input.b.x)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(var_0.x + 156f)), _wgslsmith_f_op_f32(step(-1221f, -1505f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) - vec3<f32>(-1000f, var_0.x, 563f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) + vec3<f32>(var_0.x, 350f, var_0.x))))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-383f, 2048f, -1000f, 583f) - vec4<f32>(-553f, var_2.x, 203f, var_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(312f, 533f, -897f, var_0.x))))))), max(vec3<u32>(abs(49529u), _wgslsmith_div_u32(18410u, u_input.a) ^ 72194u, 74062u), countOneBits(min(_wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)), select(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 34182u), false)))));
    var var_4 = ~52255u;
    return true;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    let var_0 = arg_2;
    var var_1 = arg_1;
    var_1 = arg_1;
    var var_2 = vec2<bool>(!((_wgslsmith_f_op_f32(trunc(-204f)) <= arg_2.b.a.x) | arg_1), arg_1);
    var_1 = false;
    return !var_2.x;
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    var var_0 = vec3<u32>(arg_1.b.x, select(arg_1.b.x, u_input.a, !func_4(min(u_input.b.x, 18344i), func_3(), Struct_2(1u, arg_1, arg_1, vec2<u32>(1u, 1u)), arg_1)), 33446u);
    var var_1 = true;
    var_1 = !(true | !(-140f >= arg_1.a.x));
    let var_2 = Struct_2(1u, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.x, 1075f, 1005f, 353f) * _wgslsmith_div_vec4_f32(vec4<f32>(-2318f, 716f, 130f, arg_1.a.x), vec4<f32>(arg_1.a.x, -152f, -1011f, arg_1.a.x)))), _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(33289u, u_input.a, 4294967295u)), abs(vec3<u32>(u_input.a, 86978u, u_input.a))), arg_1.b)), arg_1, var_0.xx);
    var_0 = firstLeadingBit(vec3<u32>(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.b.x, var_0.x) & var_2.b.b.zx, vec2<u32>(33617u, arg_1.b.x))), var_2.b.b.x, ~(1u | (1u >> (var_0.x % 32u)))));
    return Struct_2(abs(0u), Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(abs(var_2.b.a.x)), -169f, 304f, _wgslsmith_f_op_f32(-1829f + -917f)))), vec3<u32>(var_2.c.b.x, arg_1.b.x, ~4294967295u)), arg_1, vec2<u32>(~0u, _wgslsmith_clamp_u32(14128u, abs(var_0.x), ~_wgslsmith_mult_u32(arg_1.b.x, arg_1.b.x))));
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    return func_2(_wgslsmith_mult_i32(~1i, _wgslsmith_dot_vec4_i32(u_input.b, ~select(u_input.b, u_input.b, vec4<bool>(false, true, false, true)))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.c.a.x, 470f, arg_0.c.a.x, arg_0.c.a.x), arg_0.b.a))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.c.a - vec4<f32>(-933f, arg_0.c.a.x, arg_0.b.a.x, -534f)))), arg_0.c.b)).b;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(max(1u, arg_0.b.x), arg_0, arg_1, select(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, arg_1.b.x), _wgslsmith_mult_vec2_u32(arg_0.b.zx, arg_0.b.zz)), vec2<u32>(17179u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b.x, arg_1.b.x), vec2<u32>(20722u, u_input.a))), true) << (max(vec2<u32>(0u, ~u_input.a), arg_1.b.yy) % vec2<u32>(32u)));
    var_0 = Struct_2(_wgslsmith_mult_u32(~(u_input.a >> (_wgslsmith_add_u32(var_0.a, var_0.b.b.x) % 32u)), _wgslsmith_clamp_u32(countOneBits(1u), select(var_0.a, ~0u, true), arg_1.b.x & _wgslsmith_mult_u32(arg_0.b.x, arg_0.b.x))), func_2(u_input.b.x, arg_0).b, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.a))), max(vec3<u32>(3803u, arg_1.b.x, ~70853u), arg_1.b)), vec2<u32>(reverseBits(101309u), abs(func_5(Struct_2(arg_1.b.x, Struct_1(arg_0.a, arg_1.b), Struct_1(arg_0.a, vec3<u32>(var_0.c.b.x, 0u, var_0.c.b.x)), arg_0.b.zx)).b.x)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.a.x));
    var var_2 = vec2<u32>(_wgslsmith_mult_u32(9808u, 34688u), (var_0.d.x | 63408u) | u_input.a);
    var_0 = func_2(_wgslsmith_dot_vec2_i32(u_input.b.xx, vec2<i32>(select(u_input.b.x, -u_input.b.x, 0i != u_input.b.x), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.b.x, 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 2147483647i, 2147483647i), vec3<i32>(-8607i, u_input.b.x, 0i)), 71843i))), Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.a.x, arg_0.a.x, arg_1.a.x, _wgslsmith_f_op_f32(arg_0.a.x * -575f)))), vec3<u32>(_wgslsmith_div_u32(~17337u, 1u), u_input.a, _wgslsmith_dot_vec3_u32(var_0.c.b, _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.a, arg_1.b.x, 1u), vec3<u32>(37656u, arg_1.b.x, var_2.x), vec3<u32>(arg_1.b.x, var_2.x, 30316u))))));
    return Struct_2(_wgslsmith_dot_vec4_u32(min(firstLeadingBit(~vec4<u32>(4294967295u, 4294967295u, arg_1.b.x, var_0.b.b.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.b.x, u_input.a, arg_1.b.x, var_2.x), ~vec4<u32>(1u, arg_1.b.x, u_input.a, 1u))), ~(~vec4<u32>(var_0.b.b.x, arg_1.b.x, 0u, 4294967295u) | ~vec4<u32>(46755u, u_input.a, arg_1.b.x, 4294967295u))), arg_1, func_5(func_2(_wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x), -u_input.b.x), Struct_1(_wgslsmith_f_op_vec4_f32(select(var_0.b.a, arg_1.a, vec4<bool>(true, true, true, false))), vec3<u32>(var_2.x, var_2.x, 0u)))), _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.a, arg_0.b.x), min(var_0.d, vec2<u32>(~arg_0.b.x, 79577u))));
}

fn func_7(arg_0: Struct_2) -> Struct_1 {
    var var_0 = func_6(arg_0.c, func_5(func_2(8890i, arg_0.b))).c;
    var_0 = func_6(arg_0.c, arg_0.b).b;
    let var_1 = arg_0.b;
    let var_2 = false;
    var_0 = func_6(arg_0.c, var_1).b;
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-1910f, var_1.a.x, false)), arg_0.b.a.x, _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(1000f * 696f)))), min(vec3<u32>(_wgslsmith_mod_u32(arg_0.a, var_1.b.x), 0u << (0u % 32u), ~u_input.a), ~arg_0.c.b) & _wgslsmith_add_vec3_u32(var_0.b, select(vec3<u32>(u_input.a, 65121u, u_input.a), var_0.b, true) | abs(var_1.b)));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_2(1u, func_7(func_6(func_5(func_2(1002i, Struct_1(vec4<f32>(-585f, 231f, -1773f, 658f), vec3<u32>(76943u, 4294967295u, u_input.a)))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(877f, -1165f, -478f, -549f) + vec4<f32>(-2336f, 361f, 1478f, -1064f)), ~vec3<u32>(u_input.a, 1u, u_input.a)))), func_5(func_6(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-235f, 585f, 109f, 1710f)), func_7(Struct_2(71220u, Struct_1(vec4<f32>(1000f, 841f, -187f, 407f), vec3<u32>(77238u, u_input.a, u_input.a)), Struct_1(vec4<f32>(1225f, 350f, -343f, -511f), vec3<u32>(u_input.a, u_input.a, 65177u)), vec2<u32>(u_input.a, u_input.a))).b), func_6(func_2(u_input.b.x, Struct_1(vec4<f32>(1276f, -1433f, -429f, -1187f), vec3<u32>(u_input.a, 55959u, 1u))).c, Struct_1(vec4<f32>(-424f, -120f, -1000f, 663f), vec3<u32>(1u, u_input.a, u_input.a))).c)), abs(vec2<u32>(u_input.a, _wgslsmith_add_u32(u_input.a, u_input.a))) & _wgslsmith_mod_vec2_u32(~abs(vec2<u32>(0u, u_input.a)), _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(u_input.a, u_input.a)), vec2<u32>(u_input.a, 4294967295u))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.a.x, _wgslsmith_div_f32(-1181f, var_0.b.a.x), _wgslsmith_f_op_f32(var_0.c.a.x - var_0.b.a.x), _wgslsmith_f_op_f32(-var_0.c.a.x)), var_0.c.a)), vec3<u32>(u_input.a, ~(~12108u), ~select(min(4294967295u, var_0.b.b.x), 4294967295u, true)));
    let var_2 = _wgslsmith_f_op_vec3_f32(func_6(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(var_0.b.a.x * var_0.c.a.x), 647f, _wgslsmith_div_f32(var_0.c.a.x, var_0.b.a.x), _wgslsmith_f_op_f32(-var_1.a.x)), firstLeadingBit(vec3<u32>(6905u, var_1.b.x, var_1.b.x) << (var_1.b % vec3<u32>(32u)))), func_6(func_7(func_6(Struct_1(var_1.a, vec3<u32>(4294967295u, 4294967295u, var_0.a)), var_1)), Struct_1(var_1.a, vec3<u32>(24602u, 33797u, 4851u))).c).b.a.yww + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.a.x, var_0.c.a.x, -713f) * _wgslsmith_f_op_vec3_f32(-var_1.a.yzx)));
    let var_3 = var_0.c.b.yz;
    let var_4 = _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b.x, ~select(var_0.a, func_6(Struct_1(vec4<f32>(-128f, 657f, var_1.a.x, var_2.x), var_0.c.b), Struct_1(vec4<f32>(var_0.b.a.x, var_1.a.x, 1596f, var_1.a.x), vec3<u32>(1u, 0u, 0u))).b.b.x, true), 4294967295u), _wgslsmith_div_vec3_u32(var_1.b, _wgslsmith_mult_vec3_u32(var_1.b, ~_wgslsmith_div_vec3_u32(var_0.b.b, vec3<u32>(0u, 4294967295u, 1u)))));
    return func_7(var_0);
}

fn func_8(arg_0: f32, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = func_2(firstLeadingBit(u_input.b.x) >> (18720u % 32u), func_6(func_1(), func_2(1i, arg_3).c).b);
    var_0 = func_6(arg_3, var_0.c);
    var_0 = Struct_2(1u, func_5(Struct_2(abs(var_0.b.b.x), func_2(arg_1, var_0.b).c, arg_3, _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.a), func_5(Struct_2(0u, Struct_1(arg_3.a, arg_3.b), Struct_1(vec4<f32>(var_0.b.a.x, -1000f, -1208f, arg_0), arg_2.b), vec2<u32>(70096u, arg_2.b.x))).b.yx))), func_2(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(-26912i, u_input.b.x), arg_1 >> (7174u % 32u)), vec2<i32>(17659i, -8698i)), func_5(func_2(max(0i, 12978i), var_0.b))).c, arg_2.b.yx);
    var_0 = func_2(i32(-1i) * -(u_input.b.x & -arg_1), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(-204f, 297f)), _wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(step(arg_0, var_0.c.a.x)), _wgslsmith_div_f32(-943f, arg_2.a.x)) + _wgslsmith_f_op_vec4_f32(select(arg_2.a, _wgslsmith_f_op_vec4_f32(min(arg_3.a, arg_3.a)), true))), vec3<u32>(func_2(arg_1, Struct_1(var_0.c.a, vec3<u32>(arg_3.b.x, 29066u, 71026u))).b.b.x, 0u, 1u)));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1720f), _wgslsmith_f_op_f32(f32(-1f) * -739f));
    return Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(2115f * 511f), _wgslsmith_f_op_f32(1338f + _wgslsmith_f_op_f32(min(1000f, var_1.x))), _wgslsmith_f_op_f32(f32(-1f) * -404f), _wgslsmith_f_op_f32(-func_6(arg_3, Struct_1(var_0.c.a, vec3<u32>(0u, 17955u, 0u))).b.a.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.a.x, 1499f, arg_2.a.x, 385f)), arg_3.a) - vec4<f32>(func_5(Struct_2(u_input.a, Struct_1(var_0.c.a, var_0.b.b), var_0.b, vec2<u32>(var_0.b.b.x, 6449u))).a.x, -1000f, _wgslsmith_f_op_f32(floor(arg_3.a.x)), _wgslsmith_f_op_f32(-arg_3.a.x)))), ~var_0.c.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2257f), -648f, 287f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1164f)), -315f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1423f + 983f) - _wgslsmith_f_op_f32(f32(-1f) * -194f)))), vec3<bool>(false, any(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), false))), select(true, true, true) || all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), true)))));
    var var_1 = func_8(var_0.x, firstTrailingBit(max(u_input.b.x << (15861u % 32u), -1i)), func_1(), func_1());
    var var_2 = u_input.a;
    var_1 = func_7(func_6(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -1392f, 434f) + func_6(Struct_1(var_1.a, vec3<u32>(0u, var_1.b.x, 4294967295u)), Struct_1(vec4<f32>(623f, 949f, -1187f, var_1.a.x), vec3<u32>(52193u, 4294967295u, 1u))).b.a), max(_wgslsmith_clamp_vec3_u32(vec3<u32>(25942u, var_1.b.x, u_input.a), var_1.b, vec3<u32>(u_input.a, u_input.a, 36231u)), var_1.b & vec3<u32>(var_1.b.x, u_input.a, 12378u))), func_7(func_6(Struct_1(var_1.a, var_1.b), Struct_1(var_1.a, vec3<u32>(4294967295u, 39297u, u_input.a))))));
    var_2 = min(func_5(Struct_2(_wgslsmith_add_u32(var_1.b.x >> (4294967295u % 32u), 0u), func_8(_wgslsmith_f_op_f32(round(-1242f)), _wgslsmith_dot_vec4_i32(u_input.b, u_input.b), Struct_1(vec4<f32>(397f, var_0.x, var_1.a.x, -1034f), vec3<u32>(69095u, u_input.a, 0u)), Struct_1(var_1.a, vec3<u32>(41755u, 14784u, 23497u))), Struct_1(func_1().a, var_1.b), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 8632u), vec2<u32>(2565u, var_1.b.x)))).b.x, _wgslsmith_mod_u32(u_input.a, u_input.a));
    var var_3 = Struct_2(~(1u | func_8(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_clamp_i32(2147483647i, 6871i, u_input.b.x), func_7(Struct_2(u_input.a, Struct_1(var_1.a, var_1.b), Struct_1(vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, 504f), var_1.b), var_1.b.xy)), func_1()).b.x), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -214f), _wgslsmith_f_op_f32(f32(-1f) * -716f), _wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-var_1.a.x)), select(vec3<u32>(reverseBits(u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.x, 1u, var_1.b.x, var_1.b.x), vec4<u32>(13059u, u_input.a, 20322u, u_input.a)), _wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a)), ~_wgslsmith_add_vec3_u32(var_1.b, var_1.b), vec3<bool>(true, any(vec4<bool>(false, false, true, false)), true))), func_1(), ~_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_add_u32(u_input.a, var_1.b.x), ~u_input.a), countOneBits(~vec2<u32>(u_input.a, var_1.b.x))));
    let var_4 = _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(func_7(Struct_2(u_input.a, var_3.c, Struct_1(vec4<f32>(var_0.x, var_1.a.x, var_1.a.x, var_3.b.a.x), vec3<u32>(18093u, 8986u, var_3.b.b.x)), var_3.d)).b & var_3.c.b, var_3.c.b), func_5(Struct_2(u_input.a, func_6(var_3.b, Struct_1(var_3.c.a, var_3.b.b)).c, Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, -888f, 1856f, 520f))), vec3<u32>(var_3.d.x, 86437u, var_3.c.b.x)), ~var_1.b.xy)).b);
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_add_u32(41233u, 0u)), _wgslsmith_add_i32(_wgslsmith_div_i32(-u_input.b.x, -(~2147483647i)), ~(-(u_input.b.x >> (2863u % 32u)))), _wgslsmith_add_vec3_u32(select(var_1.b, var_1.b, select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true))), func_7(func_2(u_input.b.x, Struct_1(vec4<f32>(571f, 339f, var_0.x, -170f), var_3.b.b))).b), var_3.b.a.x, func_1().a.zxw);
}

