struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
    c: bool,
    d: Struct_2,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec4<bool>, arg_3: vec4<u32>) -> f32 {
    return _wgslsmith_f_op_f32(arg_1.e.x + _wgslsmith_f_op_f32(abs(-757f)));
}

fn func_2() -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1f)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(210f, -864f)))) <= _wgslsmith_f_op_f32(max(-1222f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -358f) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -235f), _wgslsmith_f_op_f32(func_3(Struct_4(vec2<i32>(2147483647i, 2147483647i), 1074f, false, Struct_2(-16070i, vec2<bool>(false, false), Struct_1(true, vec4<u32>(39830u, u_input.a, u_input.a, 1u)), Struct_1(false, vec4<u32>(11487u, 14994u, u_input.a, u_input.a))), vec3<f32>(902f, -884f, -1000f)), Struct_4(vec2<i32>(-1i, 2147483647i), 187f, true, Struct_2(-6903i, vec2<bool>(true, true), Struct_1(true, vec4<u32>(61419u, 1u, u_input.a, 2538u)), Struct_1(true, vec4<u32>(55993u, 20285u, u_input.a, 5427u))), vec3<f32>(-134f, -1817f, 1127f)), vec4<bool>(true, false, false, true), vec4<u32>(4294967295u, u_input.a, u_input.a, 29018u))))))));
    var var_1 = Struct_1(true, _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(57641u, 1u, 42847u, u_input.a), vec4<u32>(0u, 1374u, 54188u, 4294967295u) | vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a)) & ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), vec4<u32>(1u, u_input.a, u_input.a, 0u), vec4<u32>(30627u, u_input.a, 15029u, 1u)), min(vec4<u32>(u_input.a, _wgslsmith_mult_u32(u_input.a, 5589u), 13450u, _wgslsmith_add_u32(1u, 1u)), vec4<u32>(u_input.a, 0u, 1u, ~u_input.a))));
    var_1 = Struct_1(all(!(!select(vec3<bool>(var_1.a, false, false), vec3<bool>(true, false, var_1.a), vec3<bool>(false, var_1.a, var_1.a)))), var_1.b);
    var_1 = Struct_1(true, vec4<u32>(~(~(~var_1.b.x)), u_input.a & var_1.b.x, 0u, countOneBits(var_1.b.x)));
    let var_2 = var_0;
    return ~vec4<u32>(var_1.b.x, 4294967295u, ~(~abs(0u)), var_1.b.x);
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    let var_0 = ~1u;
    var var_1 = min(arg_0.c.b ^ arg_0.c.b, func_2());
    var var_2 = Struct_2(_wgslsmith_dot_vec4_i32(~(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.a, -1i, 1i, -1i), vec4<i32>(-3502i, 2147483647i, arg_0.a, arg_0.a)) << (arg_0.d.b % vec4<u32>(32u))), vec4<i32>(abs(_wgslsmith_clamp_i32(1i, -1i, 0i)), 1i, arg_0.a, _wgslsmith_sub_i32(arg_0.a, 5337i))), arg_0.b, Struct_1(min(~var_1.x, firstLeadingBit(1u)) > _wgslsmith_sub_u32(_wgslsmith_mult_u32(96718u, var_0), firstTrailingBit(18557u)), ~vec4<u32>(var_0, 46840u, 18210u, 1103u) ^ select(vec4<u32>(var_1.x, 0u, 0u, arg_0.c.b.x), vec4<u32>(0u, 16961u, var_0, 91546u), select(vec4<bool>(false, arg_0.b.x, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, arg_0.d.a, true, arg_0.b.x)))), Struct_1(~var_0 == arg_0.d.b.x, abs(vec4<u32>(var_1.x, arg_0.d.b.x, var_1.x, 13640u) | vec4<u32>(arg_0.d.b.x, u_input.a, var_1.x, 67675u))));
    var_1 = abs(~arg_0.c.b);
    var var_3 = !arg_0.d.a;
    return Struct_2(-firstLeadingBit(_wgslsmith_clamp_i32(firstLeadingBit(-18043i), -var_2.a, _wgslsmith_add_i32(1i, var_2.a))), select(vec2<bool>(all(arg_0.b), !(false || var_2.d.a)), select(select(select(var_2.b, vec2<bool>(false, false), vec2<bool>(false, arg_0.d.a)), var_2.b, !var_2.d.a), select(select(vec2<bool>(var_2.d.a, true), var_2.b, var_2.b.x), arg_0.b, var_2.b.x), select(-58733i > arg_0.a, all(vec2<bool>(true, true)), true)), var_2.b), var_2.d, var_2.d);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: Struct_3) -> vec2<bool> {
    var var_0 = func_1(func_1(Struct_2(arg_0.a, vec2<bool>(false, !arg_1.d.a), func_1(arg_1).d, arg_1.c))).c;
    let var_1 = Struct_4(-countOneBits(vec2<i32>(1i, arg_0.a) << (~vec2<u32>(0u, 0u) % vec2<u32>(32u))), 450f, var_0.a, Struct_2(func_1(Struct_2(29913i, vec2<bool>(false, arg_0.d.a), func_1(arg_0).d, arg_1.d)).a, !(!vec2<bool>(var_0.a, false)), arg_0.c, func_1(arg_1).d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, arg_3.a, arg_3.a)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_3.a, -128f, 369f), vec3<f32>(arg_2.x, arg_3.a, arg_3.a)))))))));
    var var_2 = var_1;
    let var_3 = arg_2;
    var_0 = func_1(arg_1).d;
    return !(!select(vec2<bool>(!var_1.d.d.a, false), select(var_1.d.b, !arg_1.b, vec2<bool>(false, false)), arg_1.b.x));
}

fn func_5(arg_0: vec2<bool>, arg_1: f32) -> Struct_4 {
    var var_0 = Struct_3(446f);
    var var_1 = 1i;
    var_1 = abs(_wgslsmith_clamp_i32(~max(-1i, ~2147483647i), ~2147483647i, -_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(1i, -2147483647i))));
    var_1 = 27916i;
    var_0 = Struct_3(arg_1);
    return Struct_4(vec2<i32>(1i, 1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-288f + 626f) * _wgslsmith_f_op_f32(round(arg_1))) * arg_1) * var_0.a), !func_1(func_1(Struct_2(-2147483647i, arg_0, Struct_1(arg_0.x, vec4<u32>(1u, 16347u, u_input.a, 4294967295u)), Struct_1(arg_0.x, vec4<u32>(u_input.a, u_input.a, u_input.a, 25925u))))).d.a & true, Struct_2(~(-func_1(Struct_2(-15684i, vec2<bool>(arg_0.x, arg_0.x), Struct_1(arg_0.x, vec4<u32>(54114u, u_input.a, u_input.a, 20283u)), Struct_1(true, vec4<u32>(u_input.a, u_input.a, 18758u, u_input.a)))).a), vec2<bool>(true, _wgslsmith_f_op_f32(floor(var_0.a)) > _wgslsmith_f_op_f32(-var_0.a)), Struct_1(false, ~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, 48474u, u_input.a), vec4<u32>(0u, u_input.a, 50133u, u_input.a))), func_1(Struct_2(_wgslsmith_clamp_i32(13075i, 4328i, 970i), vec2<bool>(true, arg_0.x), func_1(Struct_2(3786i, arg_0, Struct_1(true, vec4<u32>(0u, 25535u, u_input.a, u_input.a)), Struct_1(false, vec4<u32>(u_input.a, u_input.a, u_input.a, 0u)))).c, func_1(Struct_2(-1i, vec2<bool>(true, arg_0.x), Struct_1(true, vec4<u32>(u_input.a, u_input.a, u_input.a, 0u)), Struct_1(arg_0.x, vec4<u32>(0u, u_input.a, 0u, 0u)))).c)).d), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(arg_1, arg_1, true)), _wgslsmith_f_op_f32(var_0.a * -1926f), var_0.a)) + _wgslsmith_div_vec3_f32(vec3<f32>(var_0.a, -1212f, -463f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1239f, -1000f, arg_1))))));
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_4) -> vec3<f32> {
    var var_0 = func_1(Struct_2(~func_1(Struct_2(2147483647i, vec2<bool>(false, arg_3.d.d.a), arg_3.d.c, arg_3.d.c)).a, arg_3.d.b, Struct_1(func_4(arg_3.d, arg_3.d, vec2<f32>(1368f, arg_3.e.x), Struct_3(arg_3.e.x)).x, ~(arg_1.b | arg_1.b)), func_5(select(func_5(vec2<bool>(arg_1.a, false), -1616f).d.b, !arg_3.d.b, arg_1.b.x <= u_input.a), 1035f).d.d)).c;
    var_0 = arg_1;
    var var_1 = Struct_4(-vec2<i32>(abs(1i), _wgslsmith_mod_i32(abs(0i), arg_3.a.x & -23974i)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(557f * _wgslsmith_f_op_f32(func_3(arg_3, Struct_4(vec2<i32>(arg_3.a.x, -49810i), arg_3.e.x, false, Struct_2(-2147483647i, vec2<bool>(var_0.a, false), Struct_1(var_0.a, var_0.b), arg_3.d.d), vec3<f32>(arg_3.e.x, arg_3.e.x, -776f)), vec4<bool>(arg_1.a, true, true, true), arg_1.b))), _wgslsmith_f_op_f32(-arg_3.b)))), func_5(vec2<bool>(!var_0.a, (43545i | arg_3.a.x) != _wgslsmith_mod_i32(36919i, arg_3.a.x)), -751f).c, arg_3.d, _wgslsmith_f_op_vec3_f32(arg_3.e - arg_3.e));
    var_1 = Struct_4(vec2<i32>(var_1.d.a, _wgslsmith_div_i32(var_1.a.x, 36232i)), 163f, any(!vec3<bool>(!arg_3.d.c.a, !var_1.c, any(vec3<bool>(var_0.a, arg_3.c, true)))), arg_3.d, var_1.e);
    var_1 = Struct_4(countOneBits(arg_3.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1101f * _wgslsmith_f_op_f32(ceil(var_1.b)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1449f)), -1837f) >= _wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.e.x), -816f)), Struct_2(max(i32(-1i) * -2147483647i, ~(0i ^ arg_3.a.x)), vec2<bool>(var_0.a, func_4(Struct_2(var_1.d.a, arg_3.d.b, Struct_1(true, var_0.b), Struct_1(var_1.c, arg_3.d.d.b)), Struct_2(0i, vec2<bool>(arg_1.a, arg_3.c), Struct_1(arg_1.a, vec4<u32>(var_1.d.d.b.x, 4294967295u, 4294967295u, arg_3.d.c.b.x)), Struct_1(true, vec4<u32>(4294967295u, 7934u, var_1.d.d.b.x, 1u))), var_1.e.zx, Struct_3(942f)).x | any(vec4<bool>(var_1.c, true, var_1.c, false))), Struct_1(true, _wgslsmith_div_vec4_u32(abs(var_0.b), abs(arg_3.d.c.b))), arg_3.d.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.e + _wgslsmith_f_op_vec3_f32(-arg_3.e))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(abs(arg_3.e.x)), _wgslsmith_f_op_f32(var_1.b * var_1.e.x), _wgslsmith_f_op_f32(ceil(-1875f))), var_1.e, var_1.d.c.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(true, ~(~vec4<u32>(~u_input.a, 1u, u_input.a << (1u % 32u), _wgslsmith_sub_u32(10088u, u_input.a))));
    let var_1 = var_0.a;
    let var_2 = _wgslsmith_f_op_vec3_f32(func_6(var_0.b.x, var_0, vec2<u32>(1u, 81048u), func_5(select(vec2<bool>(true, var_1), vec2<bool>(var_1, true), func_4(func_1(Struct_2(2147483647i, vec2<bool>(true, true), Struct_1(false, var_0.b), var_0)), Struct_2(-1i, vec2<bool>(var_0.a, true), Struct_1(true, var_0.b), var_0), _wgslsmith_div_vec2_f32(vec2<f32>(-789f, -973f), vec2<f32>(998f, -498f)), Struct_3(-211f))), -2189f)));
    let var_3 = _wgslsmith_div_i32(-2147483647i, 1i);
    var var_4 = Struct_4(-vec2<i32>(select(-41639i, -28150i, var_1), _wgslsmith_clamp_i32(_wgslsmith_div_i32(45547i, 1i), 14750i, 1i ^ var_3)), 871f, select(var_1, select(all(!vec4<bool>(false, var_0.a, var_1, var_1)), true & !var_1, func_4(func_5(vec2<bool>(true, false), var_2.x).d, func_1(Struct_2(18739i, vec2<bool>(false, var_1), var_0, Struct_1(false, vec4<u32>(var_0.b.x, 4294967295u, var_0.b.x, 111676u)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, -638f) * vec2<f32>(1672f, -1053f)), Struct_3(-398f)).x), true), func_5(vec2<bool>(var_1 & false, var_1), func_5(vec2<bool>(true, true), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(var_2.x))))).e.x).d, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(912f, -1000f, -243f)), _wgslsmith_f_op_vec3_f32(-var_2))));
    var_4 = Struct_4(var_4.a, 197f, var_0.a, func_1(func_5(vec2<bool>(var_4.a.x <= -42506i, select(true, var_0.a, var_1)), var_2.x).d), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(func_3(func_5(var_4.d.b, 1000f), Struct_4(vec2<i32>(-2147483647i, var_3), 1000f, false, var_4.d, vec3<f32>(-676f, 1538f, var_4.b)), vec4<bool>(true, var_0.a, true, var_4.d.c.a), max(vec4<u32>(4294967295u, var_0.b.x, 0u, u_input.a), vec4<u32>(var_0.b.x, u_input.a, 9484u, u_input.a)))), 471f, var_2.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(403f, var_4.b, var_2.x) * vec3<f32>(-512f, -1000f, -1655f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, var_4.b, var_2.x), var_4.e))))));
    let var_5 = true;
    var var_6 = true;
    var_4 = Struct_4(var_4.a >> (var_0.b.xw % vec2<u32>(32u)), 1358f, all(select(select(vec4<bool>(false, var_0.a, false, false), vec4<bool>(var_5, var_5, false, true), true), vec4<bool>(var_5, var_1, var_0.a, true), vec4<bool>(var_5, var_0.a, var_5, true))) | (var_3 >= _wgslsmith_mod_i32(var_3, -9978i)), Struct_2(var_3, !func_1(func_5(vec2<bool>(var_5, true), 1000f).d).b, var_4.d.d, func_5(var_4.d.b, var_2.x).d.d), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(799f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_2.x)), _wgslsmith_f_op_f32(-1447f * var_4.b)), -341f))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(var_0.b), var_4.d.c.b, var_2.x, var_3);
}

