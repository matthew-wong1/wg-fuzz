struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: Struct_1,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: f32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec4<u32> {
    var var_0 = Struct_4(vec2<u32>(abs(abs(12923u)), _wgslsmith_dot_vec4_u32(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 0u, 1u, 52345u), vec4<u32>(52586u, u_input.e, u_input.e, 1u), vec4<u32>(0u, u_input.a.x, 1u, 1u)), ~vec4<u32>(27415u, 12639u, 4294967295u, u_input.a.x), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false))), ~vec4<u32>(u_input.e, u_input.e, 0u, 0u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1464f * _wgslsmith_div_f32(103f, 586f)), -805f, u_input.b > u_input.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(1000f, -588f)), _wgslsmith_f_op_f32(f32(-1f) * -981f))) - 1f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-1034f + -614f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1685f, 293f, false))), -962f, 229f))));
    var_0 = Struct_4(vec2<u32>(var_0.a.x, var_0.a.x), _wgslsmith_div_f32(var_0.c.x, _wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.c)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(var_0.c)))), var_0.c)));
    var var_1 = select(_wgslsmith_add_vec2_i32(u_input.d, -vec2<i32>(-2147483647i, 1i)) << (~(~(~u_input.a)) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(u_input.d, ~vec2<i32>(28569i, u_input.c)) & vec2<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(-1497i, 8234i, u_input.b), vec3<i32>(u_input.d.x, u_input.d.x, u_input.c)), 2147483647i), all(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), all(vec4<bool>(true, true, true, false)))));
    let var_2 = vec3<i32>(var_1.x, abs(_wgslsmith_mod_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(19537i, 0i, 0i), vec3<i32>(var_1.x, -1i, 1i)), select(1i, 1i, false) << (4294967295u % 32u))), ~abs(var_1.x));
    var var_3 = Struct_1(countOneBits(~(~var_0.a)), vec4<u32>(~50655u, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(1u, var_0.a.x), _wgslsmith_mod_u32(var_0.a.x, 4294967295u)), firstTrailingBit(reverseBits(vec2<u32>(var_0.a.x, 71208u)))), 1u, ~var_0.a.x));
    return vec4<u32>(~(~22000u), abs(u_input.e), 0u, ~var_0.a.x | _wgslsmith_dot_vec3_u32(~(~vec3<u32>(0u, var_3.a.x, 4294967295u)), _wgslsmith_add_vec3_u32(~var_3.b.ywy, min(var_3.b.yzw, var_3.b.wwy))));
}

fn func_2() -> vec3<u32> {
    var var_0 = countOneBits(~func_3());
    let var_1 = -56165i;
    var var_2 = Struct_4(_wgslsmith_mult_vec2_u32(max(select(vec2<u32>(1u, 19184u), vec2<u32>(43866u, u_input.e) >> (vec2<u32>(var_0.x, var_0.x) % vec2<u32>(32u)), vec2<bool>(false, true)), vec2<u32>(1u, 1u)), min(_wgslsmith_sub_vec2_u32(~vec2<u32>(var_0.x, 1u), vec2<u32>(29833u, 19180u)), vec2<u32>(_wgslsmith_div_u32(4294967295u, 1u), ~4294967295u))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(373f + 1070f), _wgslsmith_f_op_f32(-382f * _wgslsmith_f_op_f32(-1707f - -1730f))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(258f)))), _wgslsmith_f_op_f32(sign(1045f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(337f, -1426f)) * _wgslsmith_f_op_f32(-158f - _wgslsmith_f_op_f32(step(-135f, -1000f)))), -1000f, 1070f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -108f), 1f))));
    var var_3 = Struct_4(~_wgslsmith_mult_vec2_u32(~(~vec2<u32>(26979u, 5258u)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.e, 56962u), u_input.a) & select(var_0.zz, var_0.zw, vec2<bool>(true, true))), _wgslsmith_f_op_f32(abs(var_2.c.x)), vec4<f32>(_wgslsmith_f_op_f32(sign(var_2.c.x)), var_2.c.x, 1f, var_2.b));
    var_3 = Struct_4(var_0.zx, 1f, var_3.c);
    return reverseBits(var_0.xwx);
}

fn func_4(arg_0: vec3<u32>) -> Struct_3 {
    let var_0 = Struct_2(!vec4<bool>(all(vec4<bool>(false, true, false, true)), true, any(vec4<bool>(true, true, true, true)), true), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(vec2<bool>(true, false), vec2<bool>(true, false), true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))), Struct_1(~_wgslsmith_div_vec2_u32(firstTrailingBit(arg_0.yy), abs(arg_0.yz)), vec4<u32>(25543u, ~arg_0.x, ~u_input.e, abs(firstTrailingBit(u_input.e)))), _wgslsmith_mod_vec4_u32(vec4<u32>(~abs(32310u), ~arg_0.x, u_input.e, select(arg_0.x ^ 38586u, ~1u, true)), ~((vec4<u32>(u_input.a.x, 95542u, u_input.a.x, 16741u) & vec4<u32>(arg_0.x, arg_0.x, 1u, u_input.e)) << (vec4<u32>(u_input.e, arg_0.x, 4294967295u, 1u) % vec4<u32>(32u)))), Struct_1(arg_0.zz, _wgslsmith_div_vec4_u32(vec4<u32>(1u, 68340u, 1u, u_input.e) << (select(vec4<u32>(14469u, u_input.a.x, u_input.a.x, 1u), vec4<u32>(0u, u_input.a.x, 4294967295u, 21973u), vec4<bool>(true, true, true, true)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, arg_0.x, u_input.e, arg_0.x), vec4<u32>(19510u, 1u, arg_0.x, arg_0.x), vec4<u32>(18809u, arg_0.x, 2295u, arg_0.x)) << (~vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 4294967295u) % vec4<u32>(32u)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(332f, -1399f), _wgslsmith_f_op_f32(select(-884f, 1902f, true))), _wgslsmith_f_op_f32(-753f - -349f)), _wgslsmith_f_op_f32(f32(-1f) * -318f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1000f - -1236f), _wgslsmith_f_op_f32(sign(989f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(429f, 1493f), vec2<f32>(-1633f, -1774f), select(false, var_0.a.x, true)))))));
    var var_2 = Struct_1(vec2<u32>(func_2().x, 31496u), _wgslsmith_mult_vec4_u32(~(~_wgslsmith_div_vec4_u32(var_0.e.b, var_0.e.b)), vec4<u32>(var_0.d.x, ~u_input.a.x, ~30867u, ~(0u & arg_0.x))));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))), _wgslsmith_f_op_f32(min(var_1.x, 919f)));
    var_2 = Struct_1(u_input.a, abs(select(var_0.e.b, ~var_2.b, select(select(var_0.a, var_0.a, var_0.a.x), !vec4<bool>(true, var_0.b.x, true, true), false))));
    return Struct_3(Struct_2(select(vec4<bool>(664f > var_1.x, !var_0.a.x, true, var_1.x <= -1062f), var_0.a, all(vec3<bool>(true, false, var_0.a.x))), select(!vec2<bool>(true, var_0.a.x), vec2<bool>(var_0.a.x != true, !var_0.b.x), vec2<bool>(-5653i <= u_input.c, true)), var_0.e, ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 0u, arg_0.x, 1u), var_2.b, var_2.b), Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.x, var_0.c.b.x), firstTrailingBit(vec2<u32>(u_input.e, 0u))), vec4<u32>(25126u, _wgslsmith_mod_u32(11468u, var_2.a.x), min(14121u, var_0.e.a.x), arg_0.x))), 48250u, ~_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -22187i), vec2<i32>(u_input.c, 1i) | vec2<i32>(70364i, -7103i)) & -(~max(u_input.b, u_input.c)), min(vec4<i32>(-1i, _wgslsmith_mod_i32(19293i, u_input.d.x) >> (17114u % 32u), ~_wgslsmith_clamp_i32(u_input.d.x, u_input.d.x, -48343i), ~abs(18495i)), vec4<i32>(u_input.c, u_input.d.x, _wgslsmith_dot_vec2_i32(min(u_input.d, u_input.d), vec2<i32>(2147483647i, u_input.d.x)), 18065i)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1231f + var_3.x) + 480f), var_3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_3.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_3.x, var_3.x, false))))));
}

fn func_5(arg_0: Struct_3) -> vec4<i32> {
    var var_0 = 65655u;
    var_0 = 66242u;
    var_0 = ~_wgslsmith_clamp_u32(~(~(~4294967295u)), ~func_2().x, u_input.a.x);
    var_0 = ~_wgslsmith_clamp_u32(abs(~(~u_input.e)), ~1u, 4294967295u);
    var_0 = 33403u;
    return arg_0.d;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<i32>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(452f + -1569f))))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1002f, 172f)), 566f)));
    let var_1 = all(!(!select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), vec3<bool>(false, false, true), true)));
    var var_2 = vec4<i32>(~_wgslsmith_clamp_i32(~u_input.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, -10401i, -1i) & vec3<i32>(0i, arg_1.x, 16355i), -vec3<i32>(arg_0.x, 11341i, arg_0.x)), 48397i), -34933i, _wgslsmith_div_i32(min(0i, _wgslsmith_dot_vec3_i32(arg_1.xyy << (vec3<u32>(u_input.a.x, u_input.e, u_input.a.x) % vec3<u32>(32u)), arg_0.xxz)), firstTrailingBit(~_wgslsmith_clamp_i32(-1i, 15826i, 33775i))), u_input.d.x);
    let var_3 = ~_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(abs(~vec4<u32>(20137u, u_input.e, 1u, u_input.a.x)), max(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.e, u_input.a.x, 67846u, 1u))), ~max(vec4<u32>(u_input.a.x, 42709u, 1u, u_input.e) >> (vec4<u32>(22693u, u_input.a.x, u_input.e, 1u) % vec4<u32>(32u)), vec4<u32>(u_input.e, u_input.a.x, u_input.e, 29627u)));
    var_2 = func_5(func_4(func_2()));
    return Struct_4(~(_wgslsmith_add_vec2_u32(u_input.a, var_3.zy) & vec2<u32>(1u & u_input.a.x, ~var_3.x)), var_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0, -691f, -562f, -391f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0, 1000f, -1170f, var_0))))))));
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: bool, arg_3: vec4<i32>) -> f32 {
    var var_0 = arg_3.x ^ _wgslsmith_mult_i32(~(_wgslsmith_div_i32(-1i, 75570i) << (_wgslsmith_dot_vec3_u32(vec3<u32>(31901u, 1u, arg_1.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 1u)) % 32u)), ~_wgslsmith_add_i32(-1i | u_input.c, _wgslsmith_sub_i32(0i, 0i)));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.c.x + 1033f), arg_1.b)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1030f - _wgslsmith_f_op_f32(-arg_1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-705f, arg_1.b, arg_2))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.x - 258f)), -1297f))));
    var var_2 = Struct_1(max(arg_1.a, ~_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.x, arg_0.x), select(vec2<u32>(0u, u_input.a.x), vec2<u32>(arg_1.a.x, 1u), vec2<bool>(arg_2, false)))), _wgslsmith_add_vec4_u32(~(~max(vec4<u32>(arg_0.x, 8370u, u_input.e, arg_0.x), arg_0)), arg_0));
    var_2 = func_4(arg_0.zzw).a.e;
    var_0 = arg_3.x;
    return -233f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_u32(~_wgslsmith_sub_u32(min(abs(u_input.a.x), reverseBits(u_input.e)), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, 44532u, u_input.a.x), ~vec3<u32>(u_input.a.x, u_input.a.x, 42576u))), ~abs(abs(1u)));
    let var_1 = _wgslsmith_f_op_f32(func_6(vec4<u32>(u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a, ~u_input.a), _wgslsmith_add_u32(~(~0u), 15223u), ~reverseBits(30920u)), func_1(~abs(vec4<i32>(2147483647i, -46832i, u_input.b, u_input.b)), reverseBits(vec4<i32>(u_input.c, 13675i, u_input.d.x, u_input.d.x) | _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, 45485i, u_input.d.x, u_input.c), vec4<i32>(u_input.b, 16044i, 1i, 2147483647i), vec4<i32>(u_input.c, 2147483647i, u_input.d.x, u_input.d.x)))), true, vec4<i32>(_wgslsmith_mod_i32(-u_input.b << (_wgslsmith_mod_u32(var_0, var_0) % 32u), max(u_input.d.x, min(u_input.b, -1i))), countOneBits(_wgslsmith_add_i32(-u_input.d.x, 15376i)), 2147483647i, ~(-2147483647i))));
    var var_2 = func_4(~vec3<u32>(func_1(~vec4<i32>(1i, -2147483647i, -47488i, 1i), ~vec4<i32>(u_input.b, -41963i, u_input.d.x, 19302i)).a.x, 10440u, ~(~0u)));
    let var_3 = func_4(~(~(~(~var_2.a.e.b.yyy)))).a.a.yx;
    var var_4 = Struct_4(u_input.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(func_4(max(vec3<u32>(var_0, u_input.e, 17493u), vec3<u32>(var_2.a.d.x, 98917u, 8435u))).e.x, _wgslsmith_f_op_f32(var_1 + _wgslsmith_div_f32(var_2.e.x, var_1)))), var_1, all(vec4<bool>(-7371i < u_input.d.x, true, true, -975f <= var_2.e.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2.e.x, var_2.e.x, var_1, 1202f), vec4<f32>(806f, -635f, var_1, -1130f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(811f, -1196f, _wgslsmith_f_op_f32(-var_2.e.x), _wgslsmith_f_op_f32(-var_2.e.x)))));
    var_4 = func_1(func_4(countOneBits(reverseBits(~var_2.a.c.b.wwz))).d, countOneBits(func_4(var_2.a.d.ywx ^ _wgslsmith_mod_vec3_u32(var_2.a.e.b.yww, var_2.a.d.xwx)).d));
    var_4 = Struct_4(vec2<u32>(_wgslsmith_clamp_u32(63057u, 30008u, reverseBits(_wgslsmith_mod_u32(1u, 4294967295u))), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, var_4.a.x, u_input.a.x), vec3<u32>(77300u, 4294967295u, var_0)), vec3<u32>(u_input.e, 4294967295u, u_input.e) | vec3<u32>(var_0, var_4.a.x, var_0)), abs(~var_2.a.d.zyz))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.c.x)), vec4<f32>(_wgslsmith_f_op_f32(1701f + _wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_f32(var_4.c.x + _wgslsmith_f_op_f32(func_1(var_2.d, vec4<i32>(var_2.d.x, 0i, -12778i, u_input.c)).c.x + _wgslsmith_f_op_f32(trunc(-359f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -705f), var_4.c.x, true)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1108f * var_2.e.x) * _wgslsmith_f_op_f32(round(-731f)))))));
    var_4 = func_1(~(~_wgslsmith_mult_vec4_i32(select(var_2.d, vec4<i32>(var_2.d.x, -2147483647i, u_input.d.x, 14084i), var_2.a.b.x), -vec4<i32>(u_input.c, u_input.c, 0i, u_input.b))), vec4<i32>(select(~u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 1i, 39783i, 1i), var_2.d), false) & -21028i, var_2.d.x, select(1i, var_2.c, var_3.x) & (i32(-1i) * -1i), -(u_input.c ^ ~(-1i))));
    let var_5 = vec4<bool>(true, true, true, all(func_4(vec3<u32>(0u, 29199u, u_input.e) << (_wgslsmith_add_vec3_u32(var_2.a.d.xwx, var_2.a.c.b.zzw) % vec3<u32>(32u))).a.b));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.a.x, reverseBits(_wgslsmith_mod_u32(~var_4.a.x, ~0u)), var_4.a.x, var_2.a.d.x), u_input.b);
}

