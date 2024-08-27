struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2) -> vec4<bool> {
    let var_0 = Struct_4(select(abs(_wgslsmith_sub_u32(arg_1.b.c.x, _wgslsmith_sub_u32(u_input.a, arg_1.b.c.x))), _wgslsmith_sub_u32(~abs(arg_1.c.c.x), 1u), _wgslsmith_f_op_f32(round(1234f)) >= _wgslsmith_f_op_f32(-arg_1.c.b.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.b.b.x, arg_1.b.b.x, arg_1.b.b.x, 980f), _wgslsmith_div_vec4_f32(vec4<f32>(-654f, arg_0.x, arg_0.x, arg_0.x), vec4<f32>(arg_0.x, arg_0.x, arg_1.d.x, arg_1.d.x))) * vec4<f32>(-1166f, -724f, _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(exp2(arg_1.b.b.x)))), vec4<f32>(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(arg_1.b.b.x * arg_0.x)), 756f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.x))), -2004f), true | !arg_1.b.a.x)));
    var var_1 = arg_1.b.b.x;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(var_0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-850f)))) * -505f), select(false | all(arg_1.b.a.xww), !arg_1.b.a.x, false))));
    var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.d.x)));
    let var_2 = _wgslsmith_mult_vec3_i32(vec3<i32>(arg_1.a, arg_1.a, _wgslsmith_sub_i32(1i ^ _wgslsmith_mult_i32(arg_1.a, arg_1.e.x), _wgslsmith_sub_i32(~arg_1.a, 2147483647i))), abs(select(_wgslsmith_mult_vec3_i32(-vec3<i32>(arg_1.e.x, -67171i, arg_1.a), _wgslsmith_div_vec3_i32(vec3<i32>(arg_1.e.x, arg_1.e.x, 77749i), vec3<i32>(4335i, 0i, arg_1.a))), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, arg_1.a, arg_1.e.x), vec3<i32>(arg_1.e.x, 2147483647i, arg_1.e.x)) << ((vec3<u32>(15102u, 1u, 0u) >> (vec3<u32>(u_input.a, 32440u, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<bool>(all(arg_1.c.a.wy), all(arg_1.b.a.yz), true))));
    return arg_1.c.a;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_3) -> vec4<u32> {
    let var_0 = arg_1.a.c.a.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(arg_1.a.b.b.x, _wgslsmith_f_op_f32(-arg_1.a.d.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1415f * arg_1.b.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1484f)))), vec3<f32>(-1967f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_1.a.d.x)));
    let var_2 = arg_1.a;
    var var_3 = arg_1;
    var var_4 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(347f * -1061f) + 1000f) != var_2.d.x);
    return vec4<u32>(0u, countOneBits(min(var_2.c.c.x, var_2.b.c.x)), u_input.a, _wgslsmith_add_u32(~(~_wgslsmith_div_u32(arg_0.x, 4294967295u)), 1u));
}

fn func_2(arg_0: f32, arg_1: vec3<u32>) -> vec2<bool> {
    var var_0 = ~func_4(vec2<u32>(~(arg_1.x >> (8094u % 32u)), 84312u), Struct_3(Struct_2(0i, Struct_1(vec4<bool>(false, false, false, true), vec2<f32>(832f, arg_0), vec4<u32>(1u, u_input.a, 1u, u_input.a)), Struct_1(vec4<bool>(true, false, true, false), vec2<f32>(arg_0, 1000f), vec4<u32>(arg_1.x, 4294967295u, 4294967295u, 2291u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2017f, arg_0) * vec2<f32>(1657f, arg_0)), select(vec2<i32>(1i, 1i), vec2<i32>(1i, 38804i), vec2<bool>(true, true))), Struct_1(func_3(vec3<f32>(arg_0, arg_0, -303f), Struct_2(0i, Struct_1(vec4<bool>(true, true, false, true), vec2<f32>(1840f, 1586f), vec4<u32>(u_input.a, 4294967295u, 91777u, arg_1.x)), Struct_1(vec4<bool>(false, false, false, false), vec2<f32>(638f, arg_0), vec4<u32>(arg_1.x, 1u, 75346u, u_input.a)), vec2<f32>(156f, arg_0), vec2<i32>(2147483647i, 2147483647i))), vec2<f32>(1000f, arg_0), reverseBits(vec4<u32>(arg_1.x, 0u, arg_1.x, 46037u)))));
    let var_1 = vec4<bool>(any(vec2<bool>(true, true)) && true, true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), func_3(vec3<f32>(arg_0, -457f, -467f), Struct_2(25428i, Struct_1(vec4<bool>(true, true, false, false), vec2<f32>(158f, arg_0), vec4<u32>(arg_1.x, u_input.a, 4294967295u, 0u)), Struct_1(vec4<bool>(true, false, true, false), vec2<f32>(557f, -928f), vec4<u32>(65585u, u_input.a, 1u, 70619u)), vec2<f32>(arg_0, arg_0), vec2<i32>(-2147483647i, 1i))))) | all(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true))), false);
    var_0 = vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(~(u_input.a ^ 1u), func_4(vec2<u32>(arg_1.x, var_0.x), Struct_3(Struct_2(-2147483647i, Struct_1(var_1, vec2<f32>(1532f, -1924f), vec4<u32>(0u, 1u, var_0.x, var_0.x)), Struct_1(vec4<bool>(true, true, var_1.x, false), vec2<f32>(205f, arg_0), vec4<u32>(61988u, u_input.a, 12806u, var_0.x)), vec2<f32>(arg_0, 2186f), vec2<i32>(-35280i, -35932i)), Struct_1(vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec2<f32>(585f, 342f), vec4<u32>(1249u, 49459u, u_input.a, var_0.x)))).x, _wgslsmith_dot_vec2_u32(var_0.yw | arg_1.xx, vec2<u32>(arg_1.x, var_0.x)), ~_wgslsmith_dot_vec2_u32(var_0.yx, var_0.zx)), vec4<u32>(u_input.a, firstLeadingBit(~0u), arg_1.x, func_4(~vec2<u32>(36951u, var_0.x), Struct_3(Struct_2(0i, Struct_1(var_1, vec2<f32>(1258f, arg_0), vec4<u32>(arg_1.x, 4294967295u, u_input.a, u_input.a)), Struct_1(vec4<bool>(false, false, false, false), vec2<f32>(arg_0, -156f), vec4<u32>(28110u, var_0.x, var_0.x, u_input.a)), vec2<f32>(-218f, 973f), vec2<i32>(1i, -14526i)), Struct_1(vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec2<f32>(arg_0, arg_0), vec4<u32>(arg_1.x, u_input.a, arg_1.x, 1u)))).x)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(~1u, u_input.a, ~40718u), arg_1), ~u_input.a ^ (max(_wgslsmith_div_u32(0u, var_0.x), 1u) << (~(~var_0.x) % 32u)), 19166u);
    var_0 = _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(max(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 790u, var_0.x, arg_1.x), vec4<u32>(u_input.a, 29379u, 1u, arg_1.x)), ~vec4<u32>(21848u, arg_1.x, arg_1.x, u_input.a)), vec4<u32>(_wgslsmith_dot_vec2_u32(arg_1.xz, vec2<u32>(1u, 24016u)), max(0u, 4294967295u), var_0.x, 1u), vec4<u32>(_wgslsmith_mod_u32(u_input.a, 0u), 49033u, ~u_input.a, var_0.x)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(38550u, u_input.a, arg_1.x, u_input.a), ~vec4<u32>(0u, 42932u, 25004u, 57785u), vec4<u32>(86363u, u_input.a, var_0.x, u_input.a) >> (vec4<u32>(1u, 0u, 0u, u_input.a) % vec4<u32>(32u)))), vec4<u32>(4294967295u, 1u, reverseBits(abs(~4294967295u)), ~1u), vec4<u32>(arg_1.x, arg_1.x, abs(var_0.x) ^ ~arg_1.x, _wgslsmith_dot_vec2_u32(reverseBits(abs(vec2<u32>(arg_1.x, arg_1.x))), arg_1.xy)));
    var_0 = min(vec4<u32>(_wgslsmith_div_u32(u_input.a, 36931u & (u_input.a & 0u)), arg_1.x, _wgslsmith_div_u32(select(46626u, var_0.x, var_1.x) >> (~var_0.x % 32u), 1u), u_input.a), reverseBits(~vec4<u32>(134152u, 1u, arg_1.x, ~u_input.a)));
    return var_1.zw;
}

fn func_5(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: vec2<bool>) -> bool {
    let var_0 = Struct_3(Struct_2(arg_0.x, Struct_1(arg_1, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(649f, -1629f), vec2<f32>(1000f, 1000f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-420f, 718f))), ~(~vec4<u32>(u_input.a, 0u, 75255u, u_input.a))), Struct_1(!vec4<bool>(false, true, arg_2.x, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, 22823u, 54272u), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.a, 36048u, u_input.a), vec4<u32>(4294967295u, 15417u, u_input.a, u_input.a)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -690f) - _wgslsmith_f_op_f32(f32(-1f) * -1175f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-508f, 688f)))), _wgslsmith_clamp_vec2_i32(vec2<i32>(-43047i, -2147483647i), min(-arg_0, vec2<i32>(arg_0.x, 13008i)), arg_0)), Struct_1(vec4<bool>(arg_2.x && any(vec4<bool>(true, false, arg_1.x, arg_1.x)), !arg_1.x, all(arg_1.zww), true), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-495f, 1929f)) + _wgslsmith_f_op_f32(f32(-1f) * -516f)), -270f), ~(~vec4<u32>(94411u, 1u, u_input.a, u_input.a))));
    let var_1 = Struct_4(abs(func_4(~reverseBits(vec2<u32>(var_0.b.c.x, u_input.a)), var_0).x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.b.b.x, 168f, -1000f, -165f))))) - vec4<f32>(_wgslsmith_f_op_f32(trunc(var_0.a.d.x)), 292f, var_0.b.b.x, _wgslsmith_f_op_f32(floor(-300f))))));
    var var_2 = -9766i;
    var var_3 = select(select(vec4<bool>(all(var_0.b.a), arg_1.x, !arg_1.x, !(!arg_2.x)), !vec4<bool>(any(vec2<bool>(var_0.a.b.a.x, false)), func_2(var_1.b.x, vec3<u32>(0u, 90507u, 77811u)).x, var_0.a.b.a.x, !var_0.a.c.a.x), -countOneBits(var_0.a.a) != _wgslsmith_dot_vec3_i32(~vec3<i32>(var_0.a.e.x, var_0.a.a, var_0.a.e.x), vec3<i32>(-2147483647i, var_0.a.a, var_0.a.e.x))), var_0.b.a, select(arg_1, !arg_1, true & all(arg_1)));
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(var_1.b.wyy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.b.wyx * vec3<f32>(-1064f, -1425f, var_0.a.b.b.x))))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_1.b.xwz)) * vec3<f32>(var_0.a.c.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(1915f)))), _wgslsmith_f_op_f32(-var_1.b.x))));
    return select(true, false, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(385f - 1329f)), _wgslsmith_mult_vec3_u32(abs(vec3<u32>(47053u, u_input.a, 0u)), ~vec3<u32>(9311u, 52983u, 1u))).x) & arg_1.x;
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: u32, arg_3: i32) -> Struct_3 {
    let var_0 = arg_2 >= ~30662u;
    var var_1 = !select(vec4<bool>(var_0, false, !(var_0 || false), true), !vec4<bool>(!var_0, var_0, !var_0, false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(var_0, var_0, false, var_0), !vec4<bool>(var_0, var_0, true, true), true), var_0));
    var_1 = !vec4<bool>(any(vec2<bool>(select(false, var_1.x, var_0), all(vec2<bool>(false, true)))), any(select(select(vec4<bool>(false, false, true, var_0), vec4<bool>(false, var_1.x, true, true), vec4<bool>(var_0, false, var_0, false)), select(vec4<bool>(true, var_0, false, var_0), vec4<bool>(var_0, var_1.x, false, var_1.x), vec4<bool>(true, var_0, var_1.x, var_0)), true)), any(var_1.wzy), true);
    var_1 = !vec4<bool>(var_1.x == true, !select(arg_3 != -29915i, any(var_1.xy), any(vec4<bool>(true, var_1.x, false, true))), func_5(_wgslsmith_add_vec2_i32(vec2<i32>(arg_3, arg_3), vec2<i32>(arg_3, -1i)), !vec4<bool>(var_0, false, true, true), func_2(arg_0.x, vec3<u32>(u_input.a, 7284u, 0u))) && any(var_1.xyy), true);
    let var_2 = _wgslsmith_f_op_f32(sign(-554f));
    return Struct_3(Struct_2(_wgslsmith_mod_i32(firstTrailingBit(-1i), arg_3), Struct_1(!(!vec4<bool>(var_1.x, var_1.x, true, false)), arg_0.zz, vec4<u32>(u_input.a, arg_2, 0u, min(u_input.a, 4294967295u))), Struct_1(vec4<bool>(true, select(var_1.x, var_1.x, var_1.x), true, true), arg_0.zz, _wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(arg_2, 19187u, arg_2, 1u)), select(vec4<u32>(arg_2, 4294967295u, 4294967295u, 1u), vec4<u32>(arg_2, 17721u, arg_2, arg_2), true))), _wgslsmith_div_vec2_f32(arg_0.xy, arg_0.wx), vec2<i32>(-1i) * -vec2<i32>(arg_3, 52754i)), Struct_1(!select(!vec4<bool>(false, false, var_1.x, var_1.x), select(vec4<bool>(var_1.x, true, false, var_1.x), vec4<bool>(var_0, true, var_0, false), var_0), func_3(arg_0.xyx, Struct_2(22929i, Struct_1(vec4<bool>(var_1.x, var_0, false, false), vec2<f32>(var_2, -990f), vec4<u32>(arg_2, 61028u, arg_2, u_input.a)), Struct_1(vec4<bool>(var_1.x, true, var_1.x, false), arg_0.ww, vec4<u32>(u_input.a, 65087u, u_input.a, 4020u)), vec2<f32>(arg_0.x, -307f), vec2<i32>(-2147483647i, arg_3)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(-2723f, var_2)), _wgslsmith_f_op_f32(min(-546f, arg_0.x)))), ~(~vec4<u32>(arg_2, arg_2, 54308u, 18603u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1005f - -444f), -1125f, 1000f, _wgslsmith_div_f32(587f, -973f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1029f, -506f, 488f, -133f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1012f, 178f, -706f, 302f) - vec4<f32>(607f, -1954f, 1129f, 1220f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-422f, 1000f, -1000f, -1531f) + vec4<f32>(590f, -1073f, -1361f, -2056f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-603f, 488f, -972f, 707f) * vec4<f32>(982f, -390f, -569f, 1462f))))))), -38381i, ~4294967295u, ~(-21852i));
    var var_1 = Struct_4(_wgslsmith_dot_vec2_u32(~vec2<u32>(~u_input.a, 1u), select(_wgslsmith_div_vec2_u32(var_0.b.c.xz, var_0.a.b.c.wy), select(var_0.b.c.xy, var_0.b.c.wx, var_0.b.a.x), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.b.x, var_0.b.b.x, -537f, _wgslsmith_f_op_f32(-var_0.a.b.b.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1310f, var_0.a.c.b.x, var_0.a.d.x, -443f) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.b.b.x, var_0.a.d.x, var_0.a.c.b.x, 383f))))) * vec4<f32>(var_0.a.b.b.x, var_0.a.d.x, 373f, _wgslsmith_f_op_f32(ceil(func_1(vec4<f32>(-880f, 756f, -361f, 1751f), var_0.a.e.x, 1u, 1i).b.b.x)))));
    var_1 = Struct_4(_wgslsmith_add_u32(0u, _wgslsmith_mod_u32(36366u, ~u_input.a) >> (var_0.a.c.c.x % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(var_1.b, _wgslsmith_f_op_vec4_f32(min(var_1.b, var_1.b)))))));
    let var_2 = Struct_4(firstLeadingBit(~abs(~u_input.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.b.x), _wgslsmith_f_op_f32(func_1(var_1.b, var_0.a.a, u_input.a, -2845i).b.b.x * _wgslsmith_f_op_f32(abs(var_1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), var_1.b.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-483f, _wgslsmith_div_f32(var_1.b.x, var_1.b.x), _wgslsmith_f_op_f32(1000f * var_1.b.x), _wgslsmith_div_f32(var_1.b.x, -777f)))));
    var_0 = Struct_3(var_0.a, func_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.b.x, -288f, 720f, 1227f) + var_2.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.b.x, 1000f, -353f, -772f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, var_1.b.x, var_2.b.x, -1796f) + vec4<f32>(-2469f, var_2.b.x, 568f, var_0.b.b.x))))), -var_0.a.a, 1u, var_0.a.e.x).a.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(258f + -232f) * -148f), _wgslsmith_f_op_f32(var_0.a.c.b.x + 217f))), 2509f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.b.zz)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(207f, -529f)))), !var_0.a.b.a.wx)));
}

