struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: u32,
    d: u32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: f32,
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(_wgslsmith_mult_vec2_u32(abs(~vec2<u32>(1u, 24531u)), firstTrailingBit(~firstLeadingBit(vec2<u32>(5397u, 25881u)))), vec3<f32>(-1801f, 1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-2202f)), _wgslsmith_f_op_f32(trunc(1156f)))), _wgslsmith_f_op_f32(step(-120f, _wgslsmith_div_f32(813f, -558f))))), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(5778u, 1u), vec2<u32>(0u, 36299u)), 13073u, 36675u), vec3<u32>(1u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 2093u), vec4<u32>(51486u, 15289u, 1u, 62202u)), ~(~4294967295u), ~1u)), ~(~(~min(47502u, 1u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(773f, 355f, 1000f, -2032f))), vec4<f32>(261f, -626f, 1056f, -326f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-309f, 110f, -502f, 838f) * vec4<f32>(2053f, 1118f, 491f, 524f)), vec4<f32>(-341f, -1000f, -322f, -1476f), vec4<bool>(false, true, false, false))))));
    var var_1 = Struct_1(firstTrailingBit(vec2<u32>(65352u, _wgslsmith_mod_u32(reverseBits(48547u), ~0u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-291f, var_0.b.x, var_0.e.x)), ~(46605u ^ _wgslsmith_clamp_u32(max(91042u, 24370u), ~1u, 4294967295u)), var_0.d, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -707f), _wgslsmith_f_op_f32(min(var_0.b.x, _wgslsmith_f_op_f32(-var_0.e.x))), var_0.b.x, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(trunc(var_0.e.x)))), vec4<f32>(1000f, _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.e.x, var_0.b.x), _wgslsmith_f_op_f32(-1104f * var_0.b.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_div_f32(830f, _wgslsmith_f_op_f32(min(-246f, -125f)))))));
    var_0 = Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(80472u, _wgslsmith_clamp_u32(var_1.c, abs(4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d, var_1.a.x, var_0.c), vec3<u32>(var_1.a.x, var_1.c, var_1.a.x)))), ~vec2<u32>(var_1.a.x >> (81815u % 32u), var_0.d), vec2<u32>(~min(1u, 1345u), var_1.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.b.x, -636f, 1108f))) - var_0.b))), select(4995u, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c, 1u, 28944u), vec3<u32>(12865u, 1u, var_0.d)) ^ 25557u, 649u), false), ~var_0.c, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.e + var_0.e), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-637f, -132f, var_1.e.x, 648f))))))));
    var_0 = Struct_1(var_1.a, _wgslsmith_f_op_vec3_f32(var_1.b - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-727f, _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(exp2(var_1.b.x)))))), var_1.a.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~var_1.a.x, 1u, var_1.c), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 26957u, 0u), vec3<u32>(1u, var_0.a.x, var_1.a.x)), _wgslsmith_clamp_u32(0u, var_1.c, 0u), ~24103u)), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.c, var_1.c, var_1.d, 1u), ~vec4<u32>(0u, var_1.a.x, var_1.d, var_1.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(var_1.e, vec4<f32>(var_1.e.x, -963f, var_0.b.x, var_1.b.x))))))));
    var_0 = Struct_1(firstTrailingBit(~vec2<u32>(~var_1.d, ~var_1.d)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-641f + _wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_div_f32(739f, -606f), _wgslsmith_f_op_f32(round(var_0.e.x))), vec3<f32>(1078f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-607f + var_1.e.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(var_0.e.x))))))), _wgslsmith_dot_vec2_u32(var_0.a, _wgslsmith_clamp_vec2_u32(~vec2<u32>(var_0.a.x, var_1.c), vec2<u32>(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c, var_1.d, 1878u, var_0.c), vec4<u32>(20131u, 0u, 0u, 4294967295u))), ~var_1.a)), _wgslsmith_dot_vec3_u32(min(_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(var_0.c, var_0.a.x, var_0.d)), ~vec3<u32>(var_1.a.x, var_1.a.x, var_0.d)), vec3<u32>(abs(1u), var_1.a.x, max(0u, 8282u))), select(abs(vec3<u32>(0u, var_1.d, 4294967295u) & vec3<u32>(var_1.a.x, var_0.a.x, 0u)), _wgslsmith_clamp_vec3_u32(select(vec3<u32>(0u, var_1.d, 0u), vec3<u32>(31902u, 84589u, var_1.c), false), vec3<u32>(1u, 1u, var_0.c), min(vec3<u32>(var_0.c, var_1.a.x, var_0.d), vec3<u32>(var_0.a.x, 991u, 4294967295u))), !select(false, false, false))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(var_1.e + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1127f, 1000f, var_1.b.x, var_0.b.x) + var_1.e)))), _wgslsmith_f_op_vec4_f32(-var_1.e))));
    return -1380f;
}

fn func_2(arg_0: f32, arg_1: u32) -> Struct_1 {
    let var_0 = Struct_1(~(~(vec2<u32>(arg_1, arg_1) << (vec2<u32>(arg_1, 4294967295u) % vec2<u32>(32u)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(781f, arg_0, arg_0)))), vec3<f32>(arg_0, 793f, -668f), -u_input.a == -u_input.a)), vec3<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -644f), _wgslsmith_f_op_f32(func_3())))), _wgslsmith_mult_u32(~arg_1, 1u), reverseBits(_wgslsmith_add_u32(firstTrailingBit(arg_1 | 4109u), _wgslsmith_dot_vec2_u32(vec2<u32>(30396u, arg_1), abs(vec2<u32>(arg_1, arg_1))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1806f, arg_0, arg_0)), vec4<bool>(true, true, true, true))))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-1000f * 800f), _wgslsmith_f_op_f32(f32(-1f) * -1507f), _wgslsmith_div_f32(arg_0, -688f), _wgslsmith_f_op_f32(-arg_0)))), select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false)), true), vec4<bool>(true, true, true, true), any(vec2<bool>(true, true))))));
    var var_1 = reverseBits(vec4<i32>(_wgslsmith_mod_i32(-(i32(-1i) * -42431i), max(-16958i, _wgslsmith_mod_i32(51445i, u_input.a))), ~(_wgslsmith_div_i32(u_input.a, -2147483647i) << (select(9863u, arg_1, false) % 32u)), _wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, -2147483647i, u_input.a, u_input.a), min(~vec4<i32>(-2147483647i, 0i, u_input.a, -14320i), max(vec4<i32>(-10780i, u_input.a, 43857i, u_input.a), vec4<i32>(u_input.a, u_input.a, -2147483647i, 18169i)))), _wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.a, u_input.a) & ~u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(76438i, -10032i, -1i), vec3<i32>(u_input.a, -1i, u_input.a)), _wgslsmith_mult_i32(_wgslsmith_div_i32(-2147483647i, -15896i), _wgslsmith_dot_vec4_i32(vec4<i32>(-60089i, -2147483647i, u_input.a, u_input.a), vec4<i32>(2147483647i, 34525i, u_input.a, -1i))))));
    let var_2 = ~_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, _wgslsmith_sub_u32(arg_1, arg_1), _wgslsmith_clamp_u32(arg_1, var_0.a.x, 1u), _wgslsmith_add_u32(17216u, 20473u)), ~(~countOneBits(vec4<u32>(var_0.a.x, arg_1, arg_1, arg_1))));
    var_1 = vec4<i32>(_wgslsmith_add_i32(-_wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.a, 2147483647i), 1i), ~(-_wgslsmith_mod_i32(u_input.a, -2147483647i))), _wgslsmith_sub_i32(-var_1.x, u_input.a), min(var_1.x ^ _wgslsmith_mod_i32(i32(-1i) * -12459i, ~var_1.x), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, var_1.x), vec3<i32>(1i, u_input.a, u_input.a) << (var_2.zzx % vec3<u32>(32u))), u_input.a ^ -1i)), u_input.a);
    var_1 = max(-vec4<i32>(-1i | _wgslsmith_add_i32(0i, u_input.a), u_input.a, var_1.x, max(8276i << (arg_1 % 32u), select(u_input.a, var_1.x, false))), -_wgslsmith_mult_vec4_i32(vec4<i32>(~u_input.a, 1i, _wgslsmith_mult_i32(17697i, -1i), -6910i), abs(~vec4<i32>(u_input.a, u_input.a, -45157i, -1i))));
    return Struct_1(~select(select(vec2<u32>(0u, arg_1), var_0.a, vec2<bool>(false, true)), var_0.a ^ var_2.xz, vec2<bool>(false, any(vec4<bool>(true, true, true, true)))), vec3<f32>(arg_0, 677f, _wgslsmith_f_op_f32(round(arg_0))), ~(~_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 1u), ~var_0.a)), 0u, vec4<f32>(_wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(f32(-1f) * -671f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1907f - _wgslsmith_f_op_f32(-arg_0)), var_0.e.x)), -222f, _wgslsmith_f_op_f32(var_0.b.x + var_0.b.x)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = func_2(-1099f, arg_2.x);
    var var_1 = var_0;
    return func_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x - 660f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(342f, -325f)) + 762f)))), arg_2.x);
}

fn func_1(arg_0: u32, arg_1: f32) -> u32 {
    let var_0 = 69254i;
    var var_1 = func_4(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-604f, arg_1) * _wgslsmith_f_op_f32(arg_1 - arg_1))), abs(~arg_0) << (countOneBits(54159u) % 32u)), vec4<bool>(!(_wgslsmith_f_op_f32(round(-313f)) > -232f), !(_wgslsmith_f_op_f32(select(arg_1, arg_1, false)) > _wgslsmith_f_op_f32(-arg_1)), u_input.a != _wgslsmith_dot_vec2_i32(min(vec2<i32>(var_0, u_input.a), vec2<i32>(var_0, var_0)), min(vec2<i32>(-14490i, -2147483647i), vec2<i32>(-8987i, u_input.a))), true & any(vec3<bool>(true, true, true))), vec2<u32>(0u, 0u));
    var_1 = func_4(func_2(-152f, 1u), !vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1752f) >= var_1.b.x, countOneBits(-2147483647i) == (0i >> (var_1.c % 32u)), true, all(vec3<bool>(true, true, true))), _wgslsmith_mod_vec2_u32(~max(vec2<u32>(4730u, 43605u), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, var_1.d), vec2<u32>(4294967295u, 4466u), vec2<u32>(arg_0, var_1.d))), _wgslsmith_sub_vec2_u32(var_1.a, _wgslsmith_add_vec2_u32(vec2<u32>(arg_0, var_1.d), abs(vec2<u32>(arg_0, var_1.a.x))))));
    let var_2 = !all(vec4<bool>(true, true, true, true)) && (_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1)) - _wgslsmith_f_op_f32(ceil(-793f)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.e.x))));
    let var_3 = _wgslsmith_mult_vec4_u32(vec4<u32>(var_1.c, _wgslsmith_dot_vec2_u32(var_1.a, ~var_1.a >> (~var_1.a % vec2<u32>(32u))), ~_wgslsmith_div_u32(~arg_0, 4294967295u), _wgslsmith_add_u32(4294967295u, firstLeadingBit(4294967295u))), max(~(~select(vec4<u32>(var_1.c, 4294967295u, var_1.c, 4294967295u), vec4<u32>(4294967295u, 128573u, 1u, 53085u), false)), reverseBits(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.a.x, 60537u, arg_0, 4294967295u), vec4<u32>(4294967295u, 1u, arg_0, arg_0), vec4<u32>(0u, 4294967295u, 4294967295u, arg_0))))));
    return _wgslsmith_div_u32(arg_0, ~1u ^ var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    let var_1 = _wgslsmith_clamp_u32(_wgslsmith_div_u32(~min(max(4294967295u, 0u), ~10641u), 14472u), ~4294967295u >> ((_wgslsmith_dot_vec2_u32(vec2<u32>(92560u, 49422u) << (vec2<u32>(0u, 1u) % vec2<u32>(32u)), select(vec2<u32>(65805u, 41369u), vec2<u32>(62220u, 60976u), vec2<bool>(true, true))) & ~0u) % 32u), abs(50160u));
    let var_2 = !(_wgslsmith_div_f32(912f, _wgslsmith_f_op_f32(-904f + _wgslsmith_f_op_f32(-736f + -1068f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-750f - -2287f)))));
    let var_3 = Struct_1(max(vec2<u32>(func_1(var_1, 1059f), ~var_1) << (~vec2<u32>(var_1, var_1) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(1u, var_1)), vec2<u32>(abs(4294967295u), _wgslsmith_add_u32(0u, var_1)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -253f, -2406f) * vec3<f32>(-682f, 1213f, -1563f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-309f, -458f, -925f)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1171f, -793f, -667f)))))), abs(_wgslsmith_sub_u32(~func_2(-504f, 0u).c, abs(_wgslsmith_add_u32(1u, var_1)))), 1u, _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - vec4<f32>(_wgslsmith_f_op_f32(func_4(Struct_1(vec2<u32>(41565u, 0u), vec3<f32>(-987f, 1827f, 164f), var_1, 13959u, vec4<f32>(1532f, 965f, -1898f, 1286f)), vec4<bool>(var_2, false, var_2, false), vec2<u32>(0u, var_1)).e.x + _wgslsmith_div_f32(-2057f, 335f)), _wgslsmith_f_op_f32(max(-1226f, -2772f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(948f, 1139f, true))), func_2(_wgslsmith_f_op_f32(floor(178f)), firstLeadingBit(47344u)).e.x)));
    var var_4 = ~4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(func_4(func_4(func_4(func_4(Struct_1(var_3.a, vec3<f32>(-258f, -481f, var_3.b.x), var_1, var_3.a.x, vec4<f32>(-1757f, var_3.e.x, -1000f, -1070f)), vec4<bool>(var_2, var_2, false, var_2), vec2<u32>(var_1, var_3.d)), vec4<bool>(var_2, var_2, false, var_2), func_2(var_3.e.x, 39194u).a), !select(vec4<bool>(var_2, true, false, var_2), vec4<bool>(false, var_2, true, true), false), var_3.a), select(!vec4<bool>(true, var_2, var_2, false), vec4<bool>(false, false, var_2, var_2), -202f <= _wgslsmith_f_op_f32(round(var_3.b.x))), vec2<u32>(14313u, var_1)).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(875f * var_3.b.x), var_3.e.x))), _wgslsmith_f_op_f32(round(var_3.b.x)));
}

