struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<f32>,
    d: u32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2() -> vec3<bool> {
    return vec3<bool>(true, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(304f)) - -967f) * -506f) >= -2967f);
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_3) -> Struct_1 {
    var var_0 = Struct_4(Struct_1(reverseBits(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(u_input.c, arg_1, 21339i, 19346i)), u_input.a)), -vec2<i32>(-1i, firstLeadingBit(u_input.d.x)), vec3<i32>(~2147483647i | firstLeadingBit(u_input.a), -1i, u_input.a)), false, vec4<u32>(min(24109u, abs(1u)), u_input.e.x, 172640u, max(0u, 4294967295u)) | ((~vec4<u32>(1u, u_input.e.x, 4294967295u, u_input.e.x) >> (abs(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 68271u)) % vec4<u32>(32u))) ^ reverseBits(vec4<u32>(u_input.e.x, u_input.b.x, u_input.b.x, u_input.b.x))), ~_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(max(vec4<u32>(u_input.e.x, 1018u, 4294967295u, u_input.e.x), vec4<u32>(u_input.e.x, 54931u, 12286u, 0u)), _wgslsmith_mult_vec4_u32(vec4<u32>(75229u, u_input.b.x, u_input.e.x, u_input.b.x), vec4<u32>(u_input.e.x, 18391u, u_input.e.x, 45965u))), vec4<u32>(0u, u_input.b.x | 34815u, ~u_input.b.x, 1u), vec4<u32>(u_input.e.x | u_input.b.x, u_input.e.x, ~10993u, u_input.e.x)));
    var_0 = Struct_4(Struct_1(min(arg_1, 21468i), max(u_input.d.yy << (_wgslsmith_mult_vec2_u32(vec2<u32>(61709u, var_0.d.x), vec2<u32>(u_input.e.x, var_0.c.x)) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_clamp_i32(1i, u_input.c, var_0.a.c.x), -1i)), vec3<i32>(u_input.d.x, ~(-arg_1), u_input.a)), all(arg_2.c), _wgslsmith_mult_vec4_u32(select(reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 57961u, var_0.d.x, 17739u), vec4<u32>(4294967295u, 11657u, 52027u, u_input.e.x))), ~firstLeadingBit(var_0.c), vec4<bool>(true, true, true, true)), countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, u_input.b.x, 1987u) << (vec4<u32>(0u, u_input.b.x, u_input.e.x, 0u) % vec4<u32>(32u)), vec4<u32>(u_input.e.x, 0u, u_input.e.x, u_input.e.x) << (var_0.c % vec4<u32>(32u))))), var_0.c);
    var var_1 = 1f;
    var_0 = Struct_4(var_0.a, true | arg_2.c.x, var_0.d, var_0.c);
    var_1 = _wgslsmith_div_f32(arg_2.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1926f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * arg_0.x) + _wgslsmith_f_op_f32(f32(-1f) * -213f))));
    return Struct_1(1i, countOneBits(min(vec2<i32>(-33222i, arg_1), vec2<i32>(1i, u_input.c)) | firstTrailingBit(max(vec2<i32>(2147483647i, 33166i), var_0.a.c.zy))), (-u_input.d.ywz & u_input.d.wzx) | abs(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, -46794i, 1i), var_0.a.c), vec3<i32>(-8564i, 1i, 2147483647i))));
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    var var_0 = Struct_2(!any(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true))), func_3(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(244f - -897f), -1000f))), 59970i, Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(159f, -300f))), true, func_2())), vec2<f32>(1f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-2183f, 255f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2870f * 1157f), _wgslsmith_f_op_f32(f32(-1f) * -346f), true)), !select(true, true, true)))), 11168u);
    var_0 = Struct_2(select(~var_0.d >= 1u, var_0.a, var_0.d == 50129u), func_3(vec2<f32>(1553f, _wgslsmith_f_op_f32(sign(var_0.c.x))), countOneBits(-24038i), Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-673f)), 487f, true)), false, vec3<bool>(!var_0.a, var_0.a, 0u < u_input.b.x))), _wgslsmith_div_vec2_f32(var_0.c, var_0.c), ~(~13504u));
    var var_1 = Struct_2(true, Struct_1(u_input.a ^ ~(u_input.c & -1i), ~(var_0.b.b << (~u_input.b % vec2<u32>(32u))), vec3<i32>(u_input.a, var_0.b.a, u_input.a) | vec3<i32>(var_0.b.b.x, arg_0.a, 1i & arg_0.c.x)), var_0.c, 8980u);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(641f, var_1.c.x)) - var_0.c) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.x, -335f) * var_1.c), vec2<f32>(-487f, var_1.c.x), select(vec2<bool>(true, true), vec2<bool>(var_0.a, false), vec2<bool>(true, var_0.a)))))));
    var var_3 = u_input.b;
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), all(func_2()), select(func_2(), vec3<bool>(true & !var_0.a, var_0.a, var_1.a), func_2()));
}

fn func_1(arg_0: i32, arg_1: vec3<i32>, arg_2: vec4<f32>, arg_3: vec3<bool>) -> vec3<f32> {
    var var_0 = func_4(func_3(_wgslsmith_div_vec2_f32(arg_2.yy, vec2<f32>(_wgslsmith_div_f32(-530f, 276f), -120f)), -51364i, Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, -739f)), !arg_3.x & (71929i < u_input.d.x), func_2())));
    var var_1 = arg_1;
    var var_2 = Struct_1(arg_0 & u_input.c, countOneBits(min(var_1.yx << (firstTrailingBit(u_input.b) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_0, arg_0), arg_1.yx))), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-7240i, arg_1.x, -2147483647i), abs(u_input.d.zyy)), select(arg_1 & vec3<i32>(-3537i, var_1.x, -71i), vec3<i32>(arg_0, u_input.c, 0i), vec3<bool>(true, arg_3.x, var_0.b))), _wgslsmith_clamp_vec3_i32(-(~vec3<i32>(arg_0, -1i, 1i)), ~arg_1, u_input.d.yyx)));
    let var_3 = func_4(Struct_1(-abs(min(28388i, 18258i)), select(abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_2.b.x, -5977i), vec2<i32>(u_input.c, -1i), var_2.b)), u_input.d.zx, true), abs(vec3<i32>(_wgslsmith_div_i32(var_2.c.x, 0i), reverseBits(arg_1.x), _wgslsmith_dot_vec3_i32(var_2.c, var_2.c))))).a;
    var_1 = vec3<i32>(arg_0, arg_1.x, ~(-70589i));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-282f - _wgslsmith_f_op_f32(f32(-1f) * -127f))), var_0.a, var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1426f), -639f, -314f) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -362f), -353f, _wgslsmith_f_op_f32(1859f + -937f))), _wgslsmith_f_op_vec3_f32(func_1(u_input.c, countOneBits(~vec3<i32>(u_input.c, -21878i, u_input.a)), vec4<f32>(_wgslsmith_f_op_f32(floor(1200f)), -660f, 887f, 960f), !select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)))), func_4(Struct_1(-7526i, vec2<i32>(1i, -34210i), vec3<i32>(-18098i, 1i, u_input.d.x))).c)), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec3_f32(func_1(u_input.a, vec3<i32>(24037i, u_input.c, u_input.d.x), _wgslsmith_div_vec4_f32(vec4<f32>(652f, -296f, 280f, -646f), vec4<f32>(-1432f, -765f, 674f, 1000f)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false))).x, 1485f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -398f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(1722f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1333f - -1429f) * _wgslsmith_f_op_f32(501f - -1000f))))));
    let var_1 = Struct_4(Struct_1(~countOneBits(-2147483647i), u_input.d.xx, ~(~vec3<i32>(u_input.c, 1i, u_input.d.x))), (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - var_0.x) < -225f) && (~_wgslsmith_div_i32(u_input.c, -29890i) > _wgslsmith_sub_i32(~1i, _wgslsmith_div_i32(u_input.a, u_input.c))), countOneBits(vec4<u32>(~u_input.b.x, _wgslsmith_div_u32(u_input.e.x, firstLeadingBit(u_input.b.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 0u, u_input.e.x, u_input.b.x), vec4<u32>(u_input.e.x, u_input.e.x, 10892u, 4294967295u) >> (vec4<u32>(u_input.b.x, u_input.e.x, u_input.e.x, 40440u) % vec4<u32>(32u))), ~1u)), vec4<u32>(20824u, _wgslsmith_clamp_u32(1u, u_input.e.x, _wgslsmith_mult_u32(u_input.e.x, u_input.e.x) & u_input.e.x), 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.b.x, u_input.e.x, 24335u), ~vec3<u32>(u_input.e.x, 70261u, u_input.e.x) ^ abs(vec3<u32>(u_input.b.x, u_input.b.x, 1u)))));
    let var_2 = true;
    var var_3 = ~(~_wgslsmith_sub_vec3_u32(var_1.c.wxx, vec3<u32>(var_1.d.x ^ u_input.e.x, 8647u & var_1.d.x, 64290u)));
    var_3 = ~abs(select((vec3<u32>(var_1.c.x, var_1.d.x, 4294967295u) >> (vec3<u32>(var_1.c.x, var_3.x, var_1.c.x) % vec3<u32>(32u))) >> (firstLeadingBit(vec3<u32>(var_3.x, 4294967295u, u_input.e.x)) % vec3<u32>(32u)), countOneBits(var_1.c.zzz | vec3<u32>(1u, 4294967295u, var_3.x)), !(!var_1.b)));
    var_3 = ~(var_1.c.wwx ^ countOneBits(~vec3<u32>(var_1.d.x, u_input.e.x, u_input.b.x)));
    let var_4 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1256f - _wgslsmith_f_op_vec3_f32(func_1(u_input.a, vec3<i32>(12938i, -2147483647i, 23379i), vec4<f32>(var_0.x, var_0.x, var_0.x, 1000f), vec3<bool>(true, true, var_2))).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(962f * 332f)), !(var_1.b || var_2))), _wgslsmith_f_op_f32(-349f - var_0.x)), var_1.b, func_4(Struct_1(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(var_1.a.b.x, -36973i, u_input.d.x), _wgslsmith_sub_i32(2147483647i, u_input.c)), func_3(_wgslsmith_f_op_vec2_f32(-var_0.zz), -18037i | u_input.c, func_4(var_1.a)).b, select(_wgslsmith_add_vec3_i32(vec3<i32>(-44752i, var_1.a.a, u_input.a), var_1.a.c), vec3<i32>(-2147483647i, u_input.d.x, 2147483647i), select(var_2, var_1.b, false)))).c);
    let var_5 = (firstTrailingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(var_1.a.c.zx, vec2<i32>(1i, 1i)), u_input.d.xw)) >> (18433u % 32u)) <= reverseBits(1i);
    var_3 = ~vec3<u32>(countOneBits(_wgslsmith_div_u32(28971u, 19878u) & (31130u << (var_1.c.x % 32u))), ~(~var_3.x ^ var_1.c.x), 0u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-788f, var_0.x))), var_0.yy, func_4(Struct_1(var_1.a.a, vec2<i32>(2147483647i, u_input.d.x), var_1.a.c)).c.zy))), vec2<f32>(556f, _wgslsmith_f_op_f32(var_4.a * -1226f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, 1924f, -995f), vec3<f32>(2050f, 609f, var_0.x)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-621f, var_0.x, 1097f) + vec3<f32>(var_4.a, 524f, -509f)), _wgslsmith_f_op_vec3_f32(var_0 + var_0))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, 2484f, -585f)))))), countOneBits(-18581i) & u_input.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-979f * var_4.a), _wgslsmith_f_op_f32(var_4.a + var_4.a), _wgslsmith_f_op_f32(-360f - var_0.x), _wgslsmith_f_op_f32(var_0.x * -1315f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(487f, var_0.x, -1161f, var_4.a))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(368f, var_0.x, 145f, var_4.a))))));
}

