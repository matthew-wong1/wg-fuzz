struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec4<f32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<i32>) -> vec4<f32> {
    var var_0 = !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), !select(vec3<bool>(true, true, false), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), false), select(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), vec3<bool>(true, false, false))));
    let var_1 = Struct_1(vec2<bool>(false, -13029i == _wgslsmith_dot_vec4_i32(max(vec4<i32>(arg_0.x, arg_0.x, -1i, u_input.a), vec4<i32>(u_input.a, -9235i, arg_0.x, -2147483647i)), _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.x, -21164i, -39001i, arg_0.x), vec4<i32>(-1i, 2147483647i, u_input.a, u_input.a)))), ~1u & _wgslsmith_sub_u32(countOneBits(1u), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 40891u, 24018u), vec3<u32>(17278u, 69391u, 12857u)), abs(4294967295u))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -3682f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -693f)))), -189f, -1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(255f * 758f))), 633f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1235f, 2617f, 1000f), vec3<f32>(-926f, 512f, -1000f))))))));
    var_0 = vec3<bool>(all(vec2<bool>(!var_0.x, any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, var_0.x), var_1.a.x)))), true, var_0.x);
    var_0 = select(!(!select(!vec3<bool>(var_0.x, true, true), select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_1.a.x, false, var_0.x), var_0.x), select(var_0.x, var_0.x, false))), !vec3<bool>(false, !(var_0.x && true), any(vec3<bool>(var_0.x, true, var_1.a.x))), vec3<bool>(!(!(!var_1.a.x)), true, !var_0.x));
    let var_2 = var_1.c;
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - -267f) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.d.x - 544f), _wgslsmith_f_op_f32(trunc(-2116f)))))), _wgslsmith_f_op_f32(f32(-1f) * -887f), -576f, 214f);
}

fn func_2(arg_0: bool, arg_1: vec3<i32>) -> vec3<u32> {
    let var_0 = Struct_1(!vec2<bool>(true, arg_0), ~(1u << (1u % 32u)), _wgslsmith_f_op_vec4_f32(func_3(arg_1)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1049f, -748f, -1216f)))) - vec3<f32>(-119f, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-340f, -1000f, false))))));
    let var_1 = Struct_1(!vec2<bool>(select(false || var_0.a.x, any(vec2<bool>(var_0.a.x, false)), arg_0), !var_0.a.x), ~countOneBits(var_0.b), var_0.c, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec4_f32(func_3(vec3<i32>(19518i, u_input.a, 1i))).yxx, _wgslsmith_div_vec3_f32(vec3<f32>(var_0.d.x, -1000f, var_0.c.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, var_0.d.x, var_0.c.x))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.d.x + -288f), -1587f, _wgslsmith_f_op_f32(var_0.c.x * var_0.d.x)) + var_0.c.yyy)));
    var var_2 = (4294967295u & _wgslsmith_add_u32(var_1.b, 0u)) & var_0.b;
    let var_3 = var_1;
    let var_4 = vec2<i32>(-2147483647i, reverseBits(-arg_1.x));
    return vec3<u32>(~countOneBits(0u), var_1.b, var_3.b);
}

fn func_4(arg_0: vec3<u32>, arg_1: i32) -> Struct_1 {
    let var_0 = vec4<bool>(true, !any(vec2<bool>(false, any(vec2<bool>(true, true)))), any(vec4<bool>(true, !select(true, true, false), all(vec4<bool>(true, true, true, true)), 2411u > ~arg_0.x)), false);
    let var_1 = select(!select(select(vec4<bool>(false, var_0.x, true, false), vec4<bool>(var_0.x, false, var_0.x, var_0.x), false), vec4<bool>(true, false, any(vec3<bool>(var_0.x, var_0.x, true)), arg_0.x > arg_0.x), select(vec4<bool>(true, false, var_0.x, var_0.x), !var_0, true)), select(select(select(select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(false, var_0.x, var_0.x, false), var_0), select(var_0, vec4<bool>(true, true, var_0.x, var_0.x), true), vec4<bool>(false, true, var_0.x, var_0.x)), vec4<bool>(any(var_0), false, false, false), var_0), vec4<bool>(true, any(select(var_0, var_0, var_0)), !any(vec2<bool>(var_0.x, var_0.x)), any(select(var_0.zww, vec3<bool>(var_0.x, var_0.x, true), var_0.xwz))), var_0), var_0.x);
    let var_2 = arg_0;
    var var_3 = (vec4<i32>(-1i) * -reverseBits(~vec4<i32>(33439i, -5157i, -2147483647i, u_input.a))) << (_wgslsmith_sub_vec4_u32(select(vec4<u32>(func_2(false, vec3<i32>(arg_1, arg_1, u_input.a)).x, ~var_2.x, var_2.x, _wgslsmith_sub_u32(arg_0.x, arg_0.x)), ~(vec4<u32>(var_2.x, var_2.x, 4294967295u, 7885u) >> (vec4<u32>(1u, var_2.x, arg_0.x, var_2.x) % vec4<u32>(32u))), !(arg_1 != u_input.a)), ~(vec4<u32>(40874u, arg_0.x, arg_0.x, 1u) >> (vec4<u32>(var_2.x, 16291u, var_2.x, arg_0.x) % vec4<u32>(32u)))) % vec4<u32>(32u));
    var var_4 = -(1i & ~max(_wgslsmith_dot_vec4_i32(vec4<i32>(var_3.x, 63230i, 9968i, -1i), vec4<i32>(var_3.x, arg_1, var_3.x, -1i)), 1743i));
    return Struct_1(select(var_1.yx, var_1.zw, !select(select(vec2<bool>(var_1.x, var_0.x), var_1.xy, true), vec2<bool>(false, true), false)), arg_0.x, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(938f, 545f, 2345f, 1540f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-600f, -133f, -828f, 538f)))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1279f)) - -1271f), -1684f, -926f));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = func_4(vec3<u32>(arg_0.b, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(arg_1.b, 1u, arg_0.b)), vec3<u32>(arg_0.b >> (1u % 32u), ~arg_0.b, 20619u)), _wgslsmith_dot_vec3_u32(abs(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 3853u, arg_1.b), vec3<u32>(1u, 4403u, arg_0.b))), vec3<u32>(5149u | arg_0.b, 7319u, _wgslsmith_add_u32(38471u, arg_1.b)))), u_input.a);
    var var_1 = Struct_1(func_4(~vec3<u32>(4294967295u >> (arg_1.b % 32u), var_0.b & arg_0.b, var_0.b), u_input.a).a, _wgslsmith_dot_vec4_u32(max(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.b, 85677u, 0u, 396u) | vec4<u32>(24310u, arg_0.b, 28149u, arg_1.b), vec4<u32>(arg_1.b, 1u, 40345u, 45345u)), vec4<u32>(11844u, ~arg_1.b, var_0.b >> (var_0.b % 32u), arg_1.b)), ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(34591u, var_0.b, arg_1.b, var_0.b), vec4<u32>(2293u, 40867u, 4294967295u, 51902u) & vec4<u32>(arg_1.b, arg_1.b, 0u, 9372u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-216f, -246f), -1873f, _wgslsmith_f_op_f32(floor(arg_0.c.x)), func_4(vec3<u32>(23559u, arg_0.b, var_0.b), -2147483647i).d.x) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(519f, arg_1.c.x, var_0.d.x, arg_1.c.x)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-106f, var_0.d.x, arg_1.c.x, -700f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(arg_1.c.zzw - var_0.d), _wgslsmith_div_vec3_f32(vec3<f32>(arg_1.d.x, -417f, var_0.d.x), arg_1.d), true)))));
    var_1 = var_0;
    let var_2 = _wgslsmith_mult_vec3_u32(~vec3<u32>(100865u, arg_1.b, 42699u), vec3<u32>(var_1.b, var_0.b, 0u)) >> (~(~vec3<u32>(4294967295u, ~var_0.b, abs(var_0.b))) % vec3<u32>(32u));
    var_1 = Struct_1(func_4(vec3<u32>(arg_1.b, select(_wgslsmith_mod_u32(arg_0.b, arg_0.b), reverseBits(arg_0.b), all(vec3<bool>(arg_2.x, false, var_1.a.x))), 1u), -13575i & u_input.a).a, var_0.b ^ ~reverseBits(arg_1.b), vec4<f32>(-186f, var_1.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-955f, var_0.d.x)), _wgslsmith_f_op_f32(var_0.d.x + -244f)), func_4(reverseBits(~vec3<u32>(30467u, var_0.b, var_1.b)), ~29710i & u_input.a).c.x), arg_0.d);
    return func_4(~var_2, ~_wgslsmith_div_i32(1i, max(~10175i, ~(-16722i))));
}

fn func_1() -> f32 {
    let var_0 = 1i;
    var var_1 = Struct_1(select(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), false), true), !select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), all(vec2<bool>(false, true))), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(select(false, true, true), true))), 4294967295u, vec4<f32>(-497f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(935f + -599f), _wgslsmith_f_op_f32(-1158f - 873f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1028f * 602f), _wgslsmith_f_op_f32(806f * -1489f))), _wgslsmith_f_op_f32(min(1f, 1234f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 627f, _wgslsmith_f_op_f32(f32(-1f) * -314f))) - vec3<f32>(_wgslsmith_f_op_f32(799f * _wgslsmith_f_op_f32(round(748f))), _wgslsmith_f_op_f32(-1046f - 1f), _wgslsmith_div_f32(_wgslsmith_div_f32(254f, 1000f), _wgslsmith_f_op_f32(trunc(-1098f))))));
    var_1 = Struct_1(!vec2<bool>(all(select(vec4<bool>(var_1.a.x, true, var_1.a.x, var_1.a.x), vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, false), vec4<bool>(true, var_1.a.x, var_1.a.x, var_1.a.x))), true), 34882u, vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2054f * var_1.c.x), -348f, true)), _wgslsmith_f_op_f32(1094f + _wgslsmith_div_f32(_wgslsmith_div_f32(var_1.d.x, 1224f), _wgslsmith_f_op_f32(f32(-1f) * -971f))), _wgslsmith_f_op_f32(max(-1915f, var_1.d.x)), 874f), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) * 235f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.d.x))), _wgslsmith_f_op_f32(trunc(var_1.c.x))), var_1.d));
    var var_2 = var_1.b;
    let var_3 = func_5(func_4(~_wgslsmith_div_vec3_u32(func_2(var_1.a.x, vec3<i32>(-2147483647i, -27723i, u_input.a)), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, var_1.b, 4294967295u), vec3<u32>(var_1.b, 4294967295u, 70784u))), i32(-1i) * -(~var_0)), Struct_1(var_1.a, 4294967295u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec3<i32>(21335i, 1i, 14980i) | vec3<i32>(var_0, 1i, u_input.a))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(var_1.c, vec4<f32>(var_1.c.x, var_1.d.x, var_1.c.x, -596f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.x, 375f, var_1.d.x, var_1.d.x)), select(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x), vec4<bool>(false, true, var_1.a.x, var_1.a.x), vec4<bool>(false, var_1.a.x, false, true))))), var_1.c.zxz), vec2<bool>(all(!select(vec4<bool>(true, var_1.a.x, false, true), vec4<bool>(false, true, var_1.a.x, false), var_1.a.x)), func_4(vec3<u32>(var_1.b, ~var_1.b, _wgslsmith_add_u32(var_1.b, var_1.b)), _wgslsmith_clamp_i32(u_input.a, var_0, 13929i << (var_1.b % 32u))).a.x));
    return var_3.c.x;
}

fn func_6(arg_0: Struct_1, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = vec4<u32>(~firstTrailingBit(func_4(abs(arg_1), abs(u_input.a)).b), 4294967295u, _wgslsmith_div_u32(0u, 17159u), abs(_wgslsmith_div_u32(arg_0.b, firstLeadingBit(~arg_1.x))));
    let var_1 = arg_0.a;
    let var_2 = func_4(~var_0.wzy, _wgslsmith_mod_i32(u_input.a, abs(-62497i)));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d.x)) * _wgslsmith_f_op_f32(-func_5(func_4(arg_1, -2147483647i), var_2, !vec2<bool>(false, var_2.a.x)).d.x)), _wgslsmith_f_op_f32(f32(-1f) * -230f));
    var_3 = arg_0.c.wx;
    return Struct_1(!var_2.a, ~arg_1.x, arg_0.c, _wgslsmith_f_op_vec3_f32(sign(arg_0.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_1(vec2<bool>(true, true), abs(~1u), vec4<f32>(_wgslsmith_f_op_f32(-1117f + -1200f), _wgslsmith_f_op_f32(func_1()), 130f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -143f))), func_5(Struct_1(func_4(vec3<u32>(18235u, 386u, 1553u), u_input.a).a, 4294967295u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-193f, 641f, 517f, 1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(120f, 1000f, 1205f) * vec3<f32>(1000f, -289f, 612f))), func_5(Struct_1(vec2<bool>(true, false), 0u, vec4<f32>(1418f, 2210f, 1178f, -1102f), vec3<f32>(856f, 862f, 1000f)), Struct_1(vec2<bool>(false, false), 1u, vec4<f32>(-228f, 517f, 804f, 701f), vec3<f32>(1306f, 388f, 1294f)), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true))), vec2<bool>(false, select(true, true, true))).d), abs(~vec3<u32>(80795u, 1u, 4294967295u)) >> (~select(~vec3<u32>(51132u, 4294967295u, 58643u), vec3<u32>(0u, 4294967295u, 1u), true) % vec3<u32>(32u)));
    let var_1 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(func_6(func_6(var_0, vec3<u32>(37285u, var_0.b, var_0.b)), vec3<u32>(4294967295u, var_0.b, 4294967295u)).b, var_0.b | _wgslsmith_add_u32(4294967295u, 0u), func_5(func_5(Struct_1(vec2<bool>(true, false), 1u, var_0.c, var_0.c.zyy), Struct_1(vec2<bool>(var_0.a.x, false), 1u, vec4<f32>(var_0.d.x, var_0.c.x, var_0.c.x, 670f), var_0.c.wzw), vec2<bool>(var_0.a.x, true)), Struct_1(vec2<bool>(true, true), var_0.b, vec4<f32>(1832f, var_0.d.x, -616f, var_0.d.x), vec3<f32>(var_0.c.x, -1289f, var_0.c.x)), var_0.a).b), max(countOneBits(vec3<u32>(var_0.b, var_0.b, 39664u)), reverseBits(vec3<u32>(var_0.b, 7484u, 21225u))));
    var var_2 = 26687u;
    var_2 = var_1;
    var_2 = _wgslsmith_mod_u32(countOneBits(8598u), 24902u);
    var var_3 = vec2<bool>(false, var_0.a.x);
    let var_4 = var_0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(-abs(min(~vec3<i32>(-2147483647i, u_input.a, 2147483647i), firstLeadingBit(vec3<i32>(86165i, u_input.a, u_input.a)))), 1i);
}

