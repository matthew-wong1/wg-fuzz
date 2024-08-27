struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
    c: vec4<bool>,
    d: f32,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: i32,
}

struct Struct_4 {
    a: f32,
    b: bool,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> f32 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-101f - 709f), any(!vec2<bool>(true, select(true, false, false))));
    var_0 = Struct_4(-1000f, true);
    let var_1 = Struct_2(abs(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.d, vec4<u32>(u_input.c, u_input.e.x, 4294967295u, u_input.c)), vec4<u32>(u_input.c, u_input.d.x, 31762u, 0u)) << ((1u | _wgslsmith_mult_u32(u_input.d.x, u_input.d.x)) % 32u)), vec3<f32>(var_0.a, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a - -408f), _wgslsmith_f_op_f32(var_0.a + -642f)), var_0.a), 301f), !vec4<bool>(true, var_0.b, any(select(vec4<bool>(var_0.b, true, false, false), vec4<bool>(var_0.b, var_0.b, true, true), vec4<bool>(false, false, var_0.b, true))), select(all(vec3<bool>(var_0.b, false, false)), !var_0.b, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.a, var_0.a)) - -125f), var_0.a, !(false || var_0.b)))), countOneBits(vec3<i32>(u_input.a, select(u_input.a << (0u % 32u), ~u_input.a, var_0.b), ~_wgslsmith_mod_i32(u_input.a, 2147483647i))));
    var_0 = Struct_4(_wgslsmith_f_op_f32(trunc(703f)), true);
    var var_2 = vec2<bool>(var_0.b, any(var_1.c.xxx));
    return var_1.d;
}

fn func_2() -> bool {
    let var_0 = Struct_2(u_input.e.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(2125f, 118f, 583f)))) + _wgslsmith_div_vec3_f32(vec3<f32>(-742f, 1000f, -410f), _wgslsmith_div_vec3_f32(vec3<f32>(-449f, -1053f, 1000f), vec3<f32>(641f, -912f, 677f))))), vec4<bool>(!(_wgslsmith_f_op_f32(func_3()) > -843f), true, false, (4294967295u != u_input.e.x) & any(vec2<bool>(false, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -220f)))), min(-_wgslsmith_sub_vec3_i32(min(vec3<i32>(u_input.a, 10966i, u_input.a), vec3<i32>(u_input.a, u_input.a, 1i)), countOneBits(vec3<i32>(-10976i, -2147483647i, u_input.a))), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 40607i, -1i) >> (vec3<u32>(u_input.e.x, u_input.c, u_input.d.x) % vec3<u32>(32u)), min(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a))) | _wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(-2147483647i, u_input.a, 7556i)), -vec3<i32>(2147483647i, -41248i, -11749i))));
    let var_1 = var_0;
    var var_2 = 2147483647i <= var_1.e.x;
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(-var_1.d)), _wgslsmith_f_op_f32(trunc(-184f))) < -3167f;
    let var_4 = ~u_input.d.xxz;
    return var_1.c.x;
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec3<u32>, arg_3: vec2<u32>) -> Struct_5 {
    var var_0 = !(!select(vec4<bool>(any(vec4<bool>(false, false, false, true)), true, func_2(), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)), true));
    let var_1 = Struct_4(321f, var_0.x);
    return Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-528f, -2471f, false)))) - -2119f) * var_1.a), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), 158f)), u_input.a), !any(vec4<bool>(-1i > u_input.a, func_2(), false, func_2())), var_1.a, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(143f, var_1.a))), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -38681i), vec2<i32>(u_input.a, 1i))));
}

fn func_4(arg_0: Struct_5, arg_1: u32, arg_2: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.e.a, arg_0.e.a, arg_0.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.a, arg_0.b.a, -1182f) * vec3<f32>(arg_0.b.a, 1927f, -1223f)), select(vec3<bool>(false, arg_2, arg_2), vec3<bool>(arg_0.c, arg_0.c, arg_2), arg_0.c))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d, arg_0.a, -2276f)))));
    let var_1 = arg_0.e;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(986f, _wgslsmith_f_op_f32(f32(-1f) * -768f)))));
    let var_3 = ~reverseBits(_wgslsmith_clamp_vec4_i32((vec4<i32>(u_input.a, arg_0.e.b, var_1.b, 0i) ^ vec4<i32>(-2147483647i, u_input.a, arg_0.e.b, 1i)) << (vec4<u32>(1u, 1u, 6104u, 1u) % vec4<u32>(32u)), -vec4<i32>(u_input.a, arg_0.e.b, 1i, arg_0.e.b), _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.b, u_input.a, var_1.b, 0i), ~vec4<i32>(-23345i, 2147483647i, 10621i, var_1.b))));
    var var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -508f), _wgslsmith_f_op_f32(-1366f - 699f)))), -841f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a - -740f)) - _wgslsmith_f_op_f32(func_3()))));
    return _wgslsmith_f_op_f32(var_4.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_1(reverseBits(arg_1), ~26287u, vec3<u32>(90863u, 22694u, u_input.e.x), ~u_input.e).a), -1225f));
}

fn func_5(arg_0: f32, arg_1: vec4<f32>) -> Struct_2 {
    let var_0 = all(!select(vec2<bool>(select(true, true, false), true), vec2<bool>(true, true), vec2<bool>(true, true)));
    var var_1 = Struct_2(abs(_wgslsmith_mod_u32(abs(~u_input.d.x), _wgslsmith_sub_u32(~0u, _wgslsmith_mult_u32(u_input.c, 1u)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1085f - arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(886f - arg_0) * arg_1.x)), 651f, _wgslsmith_f_op_f32(-2463f + _wgslsmith_f_op_f32(func_1(17340u, 36240u, vec3<u32>(48222u, u_input.c, u_input.d.x), u_input.b).e.a * _wgslsmith_f_op_f32(f32(-1f) * -161f)))), select(select(select(!vec4<bool>(var_0, false, false, var_0), !vec4<bool>(var_0, var_0, var_0, false), true), vec4<bool>(true, var_0, true, var_0), select(!vec4<bool>(false, var_0, true, true), !vec4<bool>(var_0, var_0, var_0, true), true)), select(!vec4<bool>(var_0, false, true, true), vec4<bool>(!var_0, var_0, true, true), any(select(vec4<bool>(false, true, var_0, var_0), vec4<bool>(false, false, var_0, false), true))), !(_wgslsmith_f_op_f32(-arg_1.x) <= -170f)), arg_0, -_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(12513i, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(26946i, u_input.a, u_input.a)), vec3<i32>(u_input.a, u_input.a, u_input.a) & vec3<i32>(-2147483647i, u_input.a, -2147483647i), _wgslsmith_div_vec3_i32(vec3<i32>(0i, u_input.a, -5507i), vec3<i32>(u_input.a, 0i, u_input.a))), _wgslsmith_clamp_vec3_i32(-vec3<i32>(2387i, u_input.a, 0i), vec3<i32>(2147483647i, 1i, u_input.a) ^ vec3<i32>(u_input.a, u_input.a, -1i), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, -1i), vec3<i32>(-25511i, 18505i, 20937i)))));
    var_1 = Struct_2(1u, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(-var_1.b.x))), _wgslsmith_f_op_f32(floor(var_1.d))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(1292f + arg_1.x), _wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(arg_0, -103f))))), !(!select(vec4<bool>(var_0, var_1.c.x, false, false), vec4<bool>(false, false, false, var_1.c.x), !vec4<bool>(var_0, true, true, true))), _wgslsmith_div_f32(-1182f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-var_1.b.x)))), vec3<i32>(var_1.e.x, u_input.a, u_input.a));
    var_1 = Struct_2(~var_1.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-193f * -199f), 664f, _wgslsmith_div_f32(-415f, arg_0)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(-384f - var_1.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(568f, arg_1.x, -1979f), var_1.b))), vec3<bool>(var_1.c.x, false, var_1.c.x | true)))), !(!vec4<bool>(var_1.c.x, all(var_1.c), !var_0, !var_0)), arg_1.x, var_1.e);
    var var_2 = true;
    return Struct_2(var_1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(arg_1.zxw)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(arg_0 - var_1.d))))), var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1023f + _wgslsmith_f_op_f32(f32(-1f) * -1042f)))), (firstTrailingBit(var_1.e) << ((vec3<u32>(1u, 53213u, u_input.e.x) & (vec3<u32>(u_input.d.x, u_input.e.x, 6938u) ^ vec3<u32>(4294967295u, 1u, var_1.a))) % vec3<u32>(32u))) ^ vec3<i32>(u_input.a, firstLeadingBit(var_1.e.x ^ u_input.a), var_1.e.x));
}

fn func_6(arg_0: Struct_2) -> Struct_4 {
    var var_0 = arg_0;
    var_0 = func_5(var_0.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1126f, arg_0.b.x, -617f, 584f) * vec4<f32>(var_0.b.x, arg_0.d, 699f, -1000f))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(980f, var_0.d, arg_0.d, arg_0.b.x), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.b.x, var_0.b.x, arg_0.d, arg_0.d), vec4<f32>(740f, -2306f, arg_0.b.x, -1992f))))))));
    var var_1 = abs(min(~u_input.b.x, reverseBits(4294967295u)));
    var_0 = arg_0;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x))) + -1000f);
    return Struct_4(826f, u_input.e.x > ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, 1u) << (vec2<u32>(1u, var_0.a) % vec2<u32>(32u)), u_input.d.wz));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(-277f, true);
    let var_1 = 7189i;
    var_0 = func_6(func_5(_wgslsmith_f_op_f32(func_4(func_1(u_input.b.x, ~1u, vec3<u32>(u_input.c, u_input.e.x, 15363u) ^ u_input.d.wyw, ~u_input.b), 43468u, all(vec2<bool>(var_0.b, true)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(2142f, 153f, var_0.a, -256f), vec4<f32>(var_0.a, var_0.a, 763f, var_0.a))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(827f, -672f, 290f, -1153f), vec4<f32>(var_0.a, -412f, -1416f, 1886f))))))));
    var var_2 = _wgslsmith_f_op_f32(-819f + var_0.a);
    var var_3 = false;
    var_2 = 1223f;
    var_0 = Struct_4(_wgslsmith_f_op_f32(func_3()), var_0.b);
    var_0 = Struct_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(552f, var_0.a)), func_6(func_5(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_0.a, -437f, var_0.a) * vec4<f32>(var_0.a, -546f, 2369f, -607f)))).a, true)), true);
    let x = u_input.a;
    s_output = StorageBuffer(min(countOneBits(-83195i), max(_wgslsmith_add_i32(var_1, -u_input.a), -2147483647i << (u_input.c % 32u))), ~u_input.d.x, vec4<u32>(_wgslsmith_mod_u32(~58100u, ~_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 17788u))), 0u, _wgslsmith_dot_vec4_u32(u_input.d | u_input.d, firstTrailingBit(~u_input.d)), 0u), vec4<i32>(~_wgslsmith_clamp_i32(u_input.a, var_1, -4048i), -(~(-24061i)), select(var_1, countOneBits(-93547i), true), select(u_input.a, firstTrailingBit(i32(-1i) * -6172i), func_6(func_5(var_0.a, vec4<f32>(-1672f, var_0.a, var_0.a, -684f))).b)), func_5(func_6(Struct_2(0u, func_5(513f, vec4<f32>(var_0.a, -1131f, -1121f, var_0.a)).b, !vec4<bool>(var_0.b, true, var_0.b, var_0.b), -509f, -vec3<i32>(u_input.a, var_1, var_1))).a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a, var_0.a, var_0.a, var_0.a), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.a, var_0.a, 1000f, -1448f)))))).e);
}

