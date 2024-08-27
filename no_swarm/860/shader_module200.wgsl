struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<f32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec4<u32> {
    let var_0 = Struct_1(~abs(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.b, u_input.b), ~u_input.a)), ~vec4<u32>(27860u, ~u_input.b ^ u_input.b, 28037u, ~u_input.a.x), u_input.c.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(2015f, -487f, 734f), vec3<f32>(-216f, 1420f, -1078f)))), vec3<f32>(1f, 1f, 1f)))), select(!vec2<bool>(true, any(vec2<bool>(false, false))), !vec2<bool>(true, 5514u < u_input.b), all(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true)))));
    var var_1 = -34754i;
    var_1 = _wgslsmith_div_i32(-36636i, u_input.c.x);
    var var_2 = Struct_2(firstTrailingBit(1u) ^ u_input.a.x, vec4<u32>(_wgslsmith_dot_vec4_u32(var_0.b, _wgslsmith_sub_vec4_u32(~var_0.b, abs(vec4<u32>(u_input.b, u_input.a.x, 4294967295u, 62246u)))), 21214u, 1u, ~var_0.a.x), firstLeadingBit(vec4<i32>(u_input.c.x, ~(~u_input.c.x), _wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.c.x, var_0.c), 0i), -(12647i >> (u_input.a.x % 32u)))));
    let var_3 = any(select(vec4<bool>(!var_0.e.x, (u_input.b <= var_0.a.x) && var_0.e.x, true, !var_0.e.x), select(!vec4<bool>(true, true, var_0.e.x, var_0.e.x), vec4<bool>(any(vec4<bool>(false, false, var_0.e.x, var_0.e.x)), all(vec2<bool>(var_0.e.x, var_0.e.x)), all(vec2<bool>(var_0.e.x, false)), var_0.e.x == var_0.e.x), select(select(vec4<bool>(false, var_0.e.x, true, true), vec4<bool>(false, false, var_0.e.x, var_0.e.x), false), select(vec4<bool>(var_0.e.x, true, var_0.e.x, true), vec4<bool>(var_0.e.x, true, true, true), vec4<bool>(false, true, var_0.e.x, var_0.e.x)), !vec4<bool>(false, var_0.e.x, var_0.e.x, var_0.e.x))), select(select(vec4<bool>(true, var_0.e.x, var_0.e.x, var_0.e.x), vec4<bool>(false, true, false, var_0.e.x), true), !select(vec4<bool>(false, var_0.e.x, var_0.e.x, var_0.e.x), vec4<bool>(var_0.e.x, var_0.e.x, var_0.e.x, var_0.e.x), var_0.e.x), false)));
    return vec4<u32>(var_2.b.x << (7821u % 32u), ~(abs(var_0.b.x) ^ (4294967295u & var_2.a)), u_input.a.x, var_2.a) >> (vec4<u32>(~(~_wgslsmith_mult_u32(var_0.b.x, var_2.a)), u_input.b, ~u_input.a.x, var_2.b.x) % vec4<u32>(32u));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: i32) -> vec2<bool> {
    let var_0 = Struct_1(u_input.a, _wgslsmith_mult_vec4_u32(~(~vec4<u32>(8127u, u_input.b, u_input.a.x, u_input.a.x)) << (~(~vec4<u32>(arg_1.a.x, arg_1.b.x, u_input.b, 0u)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_div_u32(~57271u, u_input.a.x), 91488u, _wgslsmith_clamp_u32(~u_input.a.x, arg_1.a.x, 4294967295u), ~45358u)), u_input.c.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(428f * arg_1.d.x), _wgslsmith_f_op_f32(step(arg_1.d.x, arg_1.d.x)), _wgslsmith_f_op_f32(-arg_1.d.x)) - vec3<f32>(806f, _wgslsmith_f_op_f32(arg_1.d.x * arg_1.d.x), _wgslsmith_div_f32(arg_1.d.x, 428f)))), vec2<bool>(arg_1.e.x, any(select(vec4<bool>(arg_2.x, false, true, true), vec4<bool>(true, true, arg_2.x, true), select(vec4<bool>(false, true, arg_2.x, false), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true), true)))));
    var var_1 = Struct_2(~min(u_input.a.x, arg_1.b.x), _wgslsmith_add_vec4_u32(func_3(), arg_1.b), (min(vec4<i32>(var_0.c, var_0.c, 23623i, -11030i), _wgslsmith_div_vec4_i32(vec4<i32>(1i, arg_0, -1i, 2147483647i), u_input.c)) >> ((countOneBits(vec4<u32>(26394u, u_input.b, 0u, var_0.b.x)) >> (~vec4<u32>(var_0.b.x, u_input.b, 14591u, var_0.b.x) % vec4<u32>(32u))) % vec4<u32>(32u))) << (var_0.b % vec4<u32>(32u)));
    var var_2 = arg_1.d.x;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.d.x, _wgslsmith_f_op_f32(ceil(var_0.d.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1035f)));
    let var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.x, _wgslsmith_f_op_f32(-arg_1.d.x)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-128f, _wgslsmith_f_op_f32(-arg_1.d.x))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, arg_1.d.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.x, 230f)), arg_2.xx))));
    return arg_1.e;
}

fn func_1() -> vec3<bool> {
    return !vec3<bool>(select(false, true, true), all(func_2(_wgslsmith_mult_i32(-46165i, -10465i), Struct_1(vec3<u32>(1u, 44456u, 784u), vec4<u32>(u_input.b, 27458u, u_input.b, 4294967295u), u_input.c.x, vec3<f32>(-343f, 833f, -1131f), vec2<bool>(true, false)), vec3<bool>(true, true, true), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, 1i), u_input.c.xw))), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = 0u;
    let var_2 = _wgslsmith_clamp_vec3_i32(-(~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), _wgslsmith_clamp_vec3_i32(u_input.c.zww, u_input.c.zwy, vec3<i32>(u_input.c.x, 0i, u_input.c.x)))), _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(-u_input.c.xyx, _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, 0i), u_input.c.xwz, u_input.c.yww), u_input.c.xzw)), ~(select(vec3<i32>(u_input.c.x, 2147483647i, 1i), u_input.c.yww, var_0.x) & _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, u_input.c.x, u_input.c.x), u_input.c.wwz))), u_input.c.ywy);
    let var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-414f, -755f, 193f, -836f)), vec4<f32>(-378f, 728f, -256f, -2187f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1680f, -987f, -1318f, -1000f))))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1000f, -640f), _wgslsmith_f_op_f32(-780f * 1260f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(149f)), -753f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(705f - -571f), 1f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -377f), -580f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-502f, 363f)), -532f))))));
    var var_4 = Struct_2(_wgslsmith_mult_u32(var_1, ~select(reverseBits(var_1), 1u, false)), vec4<u32>(~(u_input.b | 4294967295u), 51134u, ~4294967295u, 0u) ^ (vec4<u32>(var_1, min(u_input.b, 0u), u_input.b, _wgslsmith_dot_vec2_u32(u_input.a.xy, u_input.a.yx)) >> (vec4<u32>(~u_input.b, 0u, 32375u, _wgslsmith_div_u32(9913u, u_input.b)) % vec4<u32>(32u))), -u_input.c);
    var var_5 = Struct_1(~u_input.a & var_4.b.zyy, _wgslsmith_mod_vec4_u32(vec4<u32>(countOneBits(1u), abs(~u_input.b), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, var_1, var_4.a), var_4.b), 14547u), var_4.b), -35136i, vec3<f32>(868f, -2160f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x))))), func_2(-(u_input.c.x >> (var_4.a % 32u)), Struct_1(select(var_4.b.zyw, vec3<u32>(u_input.a.x, 0u, 18411u), vec3<bool>(var_0.x, var_0.x, false)) << (vec3<u32>(1351u, var_4.a, u_input.a.x) % vec3<u32>(32u)), reverseBits(~vec4<u32>(126861u, 0u, var_4.b.x, 45315u)), u_input.c.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_3.ywz) * _wgslsmith_f_op_vec3_f32(-var_3.yzz)), vec2<bool>(!var_0.x, var_0.x)), select(vec3<bool>(var_0.x, true, !var_0.x), !var_0, func_1().x), var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x);
}

