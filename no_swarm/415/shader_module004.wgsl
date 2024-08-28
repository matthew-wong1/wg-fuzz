struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: u32,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_2,
    c: vec4<u32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: u32) -> u32 {
    var var_0 = Struct_3(4294967295u, -23671i, arg_0, Struct_2(u_input.a, vec4<bool>(any(vec3<bool>(true, false, true)), true, true, true)), true);
    var var_1 = Struct_2(vec4<i32>(-1i) * -max(_wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(0i, u_input.a.x, 37806i, var_0.d.a.x)), max(u_input.a, vec4<i32>(0i, u_input.a.x, var_0.d.a.x, -1i))), !(!vec4<bool>(any(var_0.d.b.xx), !var_0.d.b.x, var_0.d.b.x, false || var_0.d.b.x)));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-637f, 955f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-993f, -719f)))), vec2<f32>(_wgslsmith_f_op_f32(-390f - _wgslsmith_f_op_f32(678f - -138f)), _wgslsmith_f_op_f32(f32(-1f) * -329f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1355f), _wgslsmith_f_op_f32(round(-1975f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2796f, 1123f) - vec2<f32>(-264f, 910f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(650f, 393f)))) + vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -467f))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-186f, -1315f))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), var_2.x, _wgslsmith_f_op_f32(trunc(var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(var_2.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))))));
    let var_4 = countOneBits(var_1.a.yy);
    return _wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_0), vec2<u32>(0u, 1u)), abs(0u)), countOneBits(72710u)) ^ _wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(9083u, arg_0, var_0.c), vec3<u32>(1u, 4294967295u, var_0.c)), 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c, _wgslsmith_sub_u32(var_0.c, arg_0 ^ arg_0)), ~abs(~vec2<u32>(var_0.a, arg_0))));
}

fn func_3(arg_0: vec4<u32>, arg_1: bool, arg_2: bool, arg_3: Struct_1) -> Struct_2 {
    let var_0 = all(vec2<bool>(!any(arg_3.c.wx), all(arg_3.c.yzz))) && (!arg_1 && any(vec4<bool>(any(vec2<bool>(arg_1, true)), select(arg_2, arg_3.c.x, arg_2), true, any(vec3<bool>(arg_1, arg_3.c.x, arg_1)))));
    let var_1 = vec2<bool>(select(!(true & (arg_0.x >= arg_0.x)), !(~1u >= arg_0.x), var_0), !(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-2487f, arg_3.a.x))) >= _wgslsmith_f_op_f32(ceil(-1072f))));
    let var_2 = false;
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a.x * -745f))))), -1096f, arg_3.a.x);
    var var_4 = ~u_input.a.xy;
    return Struct_2(select(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(2876i, u_input.a.x, var_4.x, -18052i), max(u_input.a, vec4<i32>(arg_3.b.x, u_input.a.x, -2147483647i, arg_3.b.x)), u_input.a), _wgslsmith_div_vec4_i32(u_input.a, firstLeadingBit(vec4<i32>(1i, u_input.a.x, 27435i, 36922i))), var_0), reverseBits(select(u_input.a, abs(vec4<i32>(-85223i, 1i, arg_3.b.x, 1i)), arg_3.c.x)), vec4<bool>(var_1.x, !any(vec4<bool>(false, arg_1, arg_3.c.x, var_2)), var_0, any(select(vec4<bool>(true, var_1.x, var_1.x, true), arg_3.c, false)))), select(vec4<bool>(var_1.x, all(select(arg_3.c.ww, vec2<bool>(arg_2, false), arg_1)), countOneBits(arg_3.b.x) != countOneBits(u_input.a.x), true), arg_3.c, arg_2 == all(select(vec3<bool>(arg_3.c.x, var_0, arg_1), vec3<bool>(false, var_2, true), false))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3) -> Struct_3 {
    let var_0 = 19515u;
    let var_1 = func_3(~(~vec4<u32>(32565u, func_2(arg_1.c), var_0, 1u)), true, false, arg_0);
    let var_2 = arg_2.d.b.yw;
    var var_3 = Struct_1(arg_0.a, vec3<i32>(_wgslsmith_add_i32(-20396i, _wgslsmith_mult_i32(~arg_2.b, 2147483647i)), arg_0.b.x, -20934i), !(!select(select(arg_0.c, arg_1.d.b, arg_2.d.b.x), vec4<bool>(false, false, true, arg_2.d.b.x), !vec4<bool>(arg_0.c.x, var_2.x, arg_2.e, arg_0.c.x))));
    let var_4 = vec3<i32>((arg_0.b.x | -1i) >> (17044u % 32u), ~_wgslsmith_sub_i32(func_3(_wgslsmith_div_vec4_u32(vec4<u32>(2387u, 59179u, arg_2.c, var_0), vec4<u32>(16410u, 57274u, 22259u, 23644u)), !var_3.c.x, arg_0.c.x, arg_0).a.x, firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.d.a.x, 0i, -1i), vec3<i32>(2147483647i, u_input.a.x, -19827i)))), ~select(u_input.a.x | 0i, 31507i, all(arg_1.d.b.xxy)));
    return arg_1;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: Struct_3) -> Struct_1 {
    let var_0 = 0i;
    let var_1 = u_input.a;
    let var_2 = arg_2.e;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f))));
    let var_4 = Struct_4(func_3(vec4<u32>(arg_2.a, reverseBits(_wgslsmith_mod_u32(arg_2.a, arg_2.c)), ~(~0u), 53934u), !var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + -688f)) <= _wgslsmith_div_f32(-1722f, _wgslsmith_f_op_f32(f32(-1f) * -934f)), Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3, arg_1.x, arg_1.x, arg_1.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3, -204f, arg_1.x, arg_1.x), vec4<f32>(-1084f, 528f, var_3, arg_1.x), false)))), -u_input.a.wzz, arg_2.d.b)).b.wxw, Struct_2(func_3(~vec4<u32>(43114u, arg_2.a, 0u, 30220u), var_2, arg_2.d.b.x, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, 637f, arg_1.x, var_3) + vec4<f32>(arg_1.x, var_3, 1113f, var_3)), var_1.yxz & vec3<i32>(-11233i, arg_2.d.a.x, u_input.a.x), vec4<bool>(arg_2.e, arg_2.d.b.x, arg_2.d.b.x, var_2))).a, vec4<bool>(select(arg_1.x < -738f, true, -2147483647i > arg_0.x), all(arg_2.d.b.www), _wgslsmith_mult_u32(arg_2.c, arg_2.c) <= 0u, func_1(Struct_1(vec4<f32>(arg_1.x, 2192f, -649f, 108f), arg_2.d.a.wwx, arg_2.d.b), Struct_3(arg_2.a, var_0, 44916u, arg_2.d, true), func_1(Struct_1(vec4<f32>(arg_1.x, var_3, -1000f, arg_1.x), u_input.a.xwy, arg_2.d.b), Struct_3(56803u, u_input.a.x, 4294967295u, arg_2.d, true), Struct_3(4294967295u, 16370i, 16486u, Struct_2(vec4<i32>(1i, -15373i, var_1.x, u_input.a.x), vec4<bool>(arg_2.e, var_2, true, false)), arg_2.e))).d.b.x)), reverseBits(_wgslsmith_sub_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2.a, 43193u, arg_2.c, arg_2.a), vec4<u32>(76925u, arg_2.c, arg_2.a, arg_2.a), vec4<u32>(arg_2.c, 4294967295u, arg_2.a, 4294967295u)), min(vec4<u32>(arg_2.c, 79560u, 14010u, 4294967295u), vec4<u32>(1u, arg_2.a, 4294967295u, 1u) << (vec4<u32>(arg_2.c, arg_2.a, 1u, 12965u) % vec4<u32>(32u))))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.x, arg_1.x, var_3, 521f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-258f, -1124f, 133f, -629f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, -175f, -945f) + vec4<f32>(960f, var_3, -1988f, 1000f))), any(func_1(Struct_1(vec4<f32>(-610f, 433f, -1279f, 1296f), u_input.a.wyz, var_4.b.b), arg_2, Struct_3(1u, var_0, 82763u, arg_2.d, false)).d.b.ww))) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_1.x - var_3), 223f, _wgslsmith_f_op_f32(613f - var_3), var_3), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-769f, -972f, 1415f, 1176f)))))), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(0i, arg_2.d.a.x, u_input.a.x, u_input.a.x), _wgslsmith_clamp_vec4_i32(u_input.a, vec4<i32>(var_4.b.a.x, arg_0.x, var_0, u_input.a.x), vec4<i32>(arg_2.b, 22724i, arg_2.b, arg_2.b))), _wgslsmith_mult_i32(-var_1.x, _wgslsmith_clamp_i32(-16487i, var_1.x, arg_2.d.a.x))), max(29481i, 0i), reverseBits(var_0)), !func_1(Struct_1(vec4<f32>(671f, arg_1.x, var_3, arg_1.x), arg_2.d.a.zwy, arg_2.d.b), Struct_3(~1u, firstTrailingBit(1i), ~var_4.c.x, func_1(Struct_1(vec4<f32>(arg_1.x, var_3, arg_1.x, var_3), var_1.wxz, vec4<bool>(false, var_4.a.x, false, false)), arg_2, Struct_3(0u, var_4.b.a.x, 0u, Struct_2(u_input.a, arg_2.d.b), false)).d, arg_2.e | arg_2.e), arg_2).d.b);
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2, arg_3: i32) -> u32 {
    var var_0 = any(vec3<bool>(func_4(u_input.a.ww, vec3<f32>(579f, arg_0.a.x, arg_0.a.x), func_1(Struct_1(vec4<f32>(arg_0.a.x, 267f, 873f, 131f), vec3<i32>(arg_0.b.x, u_input.a.x, -14186i), arg_2.b), Struct_3(1u, arg_2.a.x, 4294967295u, Struct_2(u_input.a, arg_0.c), true), Struct_3(6760u, arg_2.a.x, 48226u, Struct_2(vec4<i32>(arg_1, 729i, arg_1, -25129i), vec4<bool>(arg_0.c.x, arg_0.c.x, true, arg_0.c.x)), arg_0.c.x))).c.x, all(select(vec4<bool>(arg_0.c.x, arg_2.b.x, true, false), vec4<bool>(false, arg_0.c.x, arg_2.b.x, arg_0.c.x), vec4<bool>(arg_2.b.x, arg_2.b.x, true, true))), true)) || false;
    let var_1 = arg_2.b.www;
    let var_2 = arg_2.a.xyz;
    let var_3 = Struct_4(func_4(vec2<i32>(abs(-arg_1), var_2.x), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -461f))), _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(1296f))))), Struct_3(_wgslsmith_mod_u32(~4294967295u, func_1(arg_0, Struct_3(4294967295u, u_input.a.x, 56216u, Struct_2(vec4<i32>(-9299i, 19270i, arg_1, 1i), arg_0.c), true), Struct_3(71535u, arg_1, 4294967295u, arg_2, true)).c), _wgslsmith_dot_vec2_i32(vec2<i32>(-43891i, u_input.a.x) ^ arg_2.a.yw, _wgslsmith_div_vec2_i32(arg_2.a.wz, arg_0.b.zy)), ~(~9106u), arg_2, false)).c.yxz, arg_2, (_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), firstTrailingBit(vec4<u32>(1u, 1u, 1u, 68784u))) & ~countOneBits(vec4<u32>(4294967295u, 0u, 1u, 64927u))) & countOneBits(abs(select(vec4<u32>(1u, 1u, 1u, 91216u), vec4<u32>(4294967295u, 38419u, 28222u, 4294967295u), false))));
    let var_4 = !select(!vec3<bool>(var_3.a.x, arg_0.c.x, true), !(!arg_2.b.zzw), all(!(!var_3.b.b.yw)));
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(~4294967295u, _wgslsmith_mult_u32(37951u, func_5(func_4(~vec2<i32>(2147483647i, u_input.a.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(1826f, -528f, -423f) - vec3<f32>(-2214f, 914f, 238f)), func_1(Struct_1(vec4<f32>(-1000f, 1286f, -283f, -144f), vec3<i32>(-1i, u_input.a.x, u_input.a.x), vec4<bool>(false, true, false, false)), Struct_3(71525u, 27200i, 4294967295u, Struct_2(vec4<i32>(0i, 1i, u_input.a.x, 18954i), vec4<bool>(false, false, true, false)), false), Struct_3(79023u, u_input.a.x, 11915u, Struct_2(vec4<i32>(0i, u_input.a.x, -18905i, u_input.a.x), vec4<bool>(true, false, true, false)), false))), _wgslsmith_mult_i32(~u_input.a.x, func_3(vec4<u32>(1u, 53144u, 1u, 1u), true, true, Struct_1(vec4<f32>(168f, -1454f, 1625f, -994f), u_input.a.zxy, vec4<bool>(true, false, true, false))).a.x), Struct_2(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -2147483647i), vec4<bool>(false, true, true, false)), 2147483647i)), ~(-abs(u_input.a.x)) >= (countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.yzx)) | reverseBits(u_input.a.x)));
    let var_1 = max(vec2<u32>(_wgslsmith_mod_u32(firstTrailingBit(1u), _wgslsmith_mod_u32(_wgslsmith_mod_u32(31439u, 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 4294967295u)))), _wgslsmith_add_u32(countOneBits(1u), ~func_1(Struct_1(vec4<f32>(-850f, 1049f, 961f, 2905f), u_input.a.wzz, vec4<bool>(false, true, false, false)), Struct_3(1u, 4525i, 37679u, Struct_2(u_input.a, vec4<bool>(false, false, true, false)), true), Struct_3(86245u, u_input.a.x, 88656u, Struct_2(vec4<i32>(u_input.a.x, -44993i, u_input.a.x, u_input.a.x), vec4<bool>(false, false, true, true)), true)).c)), vec2<u32>(func_2(abs(0u)) | ~4294967295u, ~1u));
    let var_2 = var_1;
    var_0 = ~19140u;
    var_0 = var_2.x;
    var var_3 = !vec4<bool>(all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true))), !(_wgslsmith_div_u32(var_1.x, 50688u) != _wgslsmith_dot_vec2_u32(var_1, var_2)), false, false);
    let var_4 = vec4<i32>(~countOneBits(_wgslsmith_div_i32(-9115i ^ u_input.a.x, -u_input.a.x)), max(u_input.a.x, u_input.a.x), 1i, u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1711f - -250f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1863f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(957f, 1239f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -795f), -276f, var_3.x && true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-522f - 935f)))))));
}

