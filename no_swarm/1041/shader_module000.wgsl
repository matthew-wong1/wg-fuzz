struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: u32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: vec3<i32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: vec2<f32>,
    d: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
    c: i32,
    d: vec2<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
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

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> vec4<u32> {
    let var_0 = min(vec2<u32>(u_input.b, ~_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a.x, u_input.b), _wgslsmith_sub_u32(1u, u_input.a.x))), ~u_input.a);
    let var_1 = Struct_4(false, Struct_3(firstTrailingBit(abs(~vec2<i32>(-1i, 43274i))), Struct_2(Struct_1(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true)), true, 67374u, any(vec3<bool>(false, true, false)), firstLeadingBit(4294967295u))), select(-vec3<i32>(1i, 1i, 1i), vec3<i32>(-1i, select(62152i, -34511i, false), ~0i), vec3<bool>(1u != var_0.x, false, u_input.a.x > 0u))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-704f, -1138f)) - vec2<f32>(1f, 1f)) * vec2<f32>(321f, 1f)))), -275f);
    var var_2 = select(var_1.b.b.a.a.xw, !select(vec2<bool>(var_1.a, any(var_1.b.b.a.a.zyz)), vec2<bool>(!var_1.a, true), !(!var_1.b.b.a.a.xx)), vec2<bool>(8344u == (~var_1.b.b.a.e >> (_wgslsmith_mult_u32(var_1.b.b.a.e, u_input.b) % 32u)), var_1.a | false));
    var var_3 = var_1.b;
    var var_4 = abs(~var_3.b.a.e);
    return ~vec4<u32>(2745u, 0u, 13272u, ~(0u >> (var_3.b.a.e % 32u)));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: Struct_3, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = ~vec4<u32>(~115416u, _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a.x, 54807u), 4294967295u << (arg_2.b.a.c % 32u)), u_input.a.x, ~28223u) << ((~_wgslsmith_div_vec4_u32(func_3(), vec4<u32>(arg_1, arg_1, 52629u, arg_1) & vec4<u32>(1u, arg_2.b.a.c, arg_0, 1u)) >> (vec4<u32>(1u, ~firstLeadingBit(u_input.a.x), u_input.a.x >> (~0u % 32u), ~(arg_2.b.a.c ^ 0u)) % vec4<u32>(32u))) % vec4<u32>(32u));
    var var_1 = arg_2.b.a.a.xzx;
    let var_2 = Struct_5(Struct_3(max(vec2<i32>(i32(-1i) * -2147483647i, 1i), -vec2<i32>(arg_2.c.x, arg_2.a.x)), arg_2.b, ~arg_2.c), Struct_3(_wgslsmith_div_vec2_i32(~countOneBits(arg_2.a), _wgslsmith_mod_vec2_i32(arg_2.c.yz, select(arg_2.c.xz, arg_2.c.zy, vec2<bool>(true, false)))), arg_2.b, abs(-select(vec3<i32>(8789i, arg_2.a.x, arg_2.c.x), arg_2.c, arg_2.b.a.a.wyw))), arg_2.a.x, vec2<bool>(any(arg_2.b.a.a), !all(arg_2.b.a.a) | !arg_2.b.a.b), arg_2.b);
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2608f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1717f)) + _wgslsmith_f_op_f32(floor(arg_3.x))))), arg_3.x);
    let var_4 = arg_1;
    return var_2.b.b.a;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2) -> i32 {
    let var_0 = func_2(_wgslsmith_dot_vec2_u32(~(_wgslsmith_clamp_vec2_u32(u_input.a, u_input.a, u_input.a) ^ u_input.a), u_input.a), ~reverseBits(4849u), Struct_3(~(~vec2<i32>(4592i, -1i)) >> (u_input.a % vec2<u32>(32u)), arg_2, vec3<i32>(0i, reverseBits(countOneBits(1i)), max(~15443i, i32(-1i) * -36864i))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-2085f)) + _wgslsmith_f_op_f32(ceil(-181f))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1000f, -2159f)))))).a.yxy;
    var var_1 = Struct_5(Struct_3(-vec2<i32>(47275i, 1i), arg_2, ~(~vec3<i32>(1i, 71050i, 1i))), Struct_3(vec2<i32>(1i, 1i) << (u_input.a % vec2<u32>(32u)), arg_2, firstLeadingBit(vec3<i32>(_wgslsmith_mult_i32(-72692i, -11608i), -2147483647i, _wgslsmith_clamp_i32(-1i, 2147483647i, 6659i)))), ~1i, var_0.yx, arg_2);
    var var_2 = -1117f;
    var var_3 = Struct_5(var_1.b, var_1.a, var_1.a.c.x, func_2(_wgslsmith_dot_vec3_u32(func_3().xwy ^ func_3().xyz, vec3<u32>(arg_1 | 42300u, firstLeadingBit(12119u), abs(1u))), min(_wgslsmith_dot_vec3_u32(~vec3<u32>(45565u, arg_0.e, arg_0.c), select(vec3<u32>(arg_0.c, arg_1, arg_2.a.e), vec3<u32>(1u, arg_0.e, arg_2.a.e), var_1.e.a.a.yxw)), ~(~arg_1)), Struct_3(vec2<i32>(_wgslsmith_add_i32(var_1.b.c.x, 1i), 29116i), Struct_2(func_2(arg_0.c, arg_2.a.c, Struct_3(var_1.a.a, Struct_2(arg_0), vec3<i32>(var_1.b.a.x, var_1.a.a.x, -72418i)), vec2<f32>(419f, 1325f))), firstLeadingBit(~var_1.b.c)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, -1611f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-380f, -418f) + vec2<f32>(892f, -1191f)), arg_0.d))))).a.xx, var_1.b.b);
    let var_4 = abs(-(vec3<i32>(max(var_1.a.c.x, 2874i), firstTrailingBit(var_3.b.a.x), 1527i) & ~var_3.a.c));
    return var_1.b.a.x;
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: i32, arg_3: f32) -> Struct_3 {
    var var_0 = _wgslsmith_dot_vec3_i32(~abs(vec3<i32>(countOneBits(4826i), _wgslsmith_mult_i32(2147483647i, arg_2), firstTrailingBit(-1i))), ~vec3<i32>(firstTrailingBit(select(1i, 1i, false)), -21596i, arg_2));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-457f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_div_f32(arg_3, 1000f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1495f * arg_3), _wgslsmith_f_op_f32(f32(-1f) * -1193f), true))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_3))), u_input.a.x < ~1u));
    var var_2 = ~vec4<i32>(3502i, arg_2, func_4(func_2(104670u, u_input.a.x, Struct_3(vec2<i32>(26518i, -17510i), Struct_2(Struct_1(vec4<bool>(false, true, true, false), true, u_input.b, true, u_input.b)), vec3<i32>(arg_2, 0i, 2147483647i)), vec2<f32>(-510f, 1405f)), 12071u >> (u_input.b % 32u), Struct_2(Struct_1(vec4<bool>(true, true, true, false), true, 83242u, true, 1u))) ^ _wgslsmith_mod_i32(~1i, countOneBits(arg_2)), _wgslsmith_mult_i32(2147483647i, _wgslsmith_sub_i32(arg_2, arg_2)));
    var var_3 = ~(~u_input.a.x);
    let var_4 = -vec2<i32>(i32(-1i) * -_wgslsmith_sub_i32(17833i, 19125i), arg_2);
    return Struct_3(var_2.yx, Struct_2(func_2(u_input.a.x, 0u, Struct_3(_wgslsmith_add_vec2_i32(var_4, vec2<i32>(-2736i, arg_2)), Struct_2(Struct_1(vec4<bool>(true, false, true, true), true, u_input.a.x, true, u_input.b)), vec3<i32>(arg_2, var_2.x, var_4.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_3, 165f), vec2<f32>(arg_1.x, -1369f)))))), ~(vec3<i32>(-1i) * -(var_2.zwy ^ vec3<i32>(54503i, -3851i, 1i))));
}

fn func_5(arg_0: f32, arg_1: u32, arg_2: Struct_3, arg_3: vec3<bool>) -> vec3<bool> {
    var var_0 = Struct_5(arg_2, Struct_3(_wgslsmith_mult_vec2_i32(min(_wgslsmith_div_vec2_i32(arg_2.c.yy, arg_2.c.xz), vec2<i32>(arg_2.a.x, 4886i) & arg_2.c.zx), countOneBits(arg_2.c.yz) | _wgslsmith_mult_vec2_i32(vec2<i32>(0i, 31885i), vec2<i32>(-29322i, arg_2.a.x))), arg_2.b, arg_2.c), ~2147483647i, !(!arg_3.zy), func_1(788f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, 382f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -1000f, -172f))), 2147483647i, arg_0).b);
    let var_1 = abs(~(~abs(vec2<u32>(5046u, 82645u))));
    let var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, arg_0), vec4<f32>(arg_0, 939f, arg_0, -447f)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-506f, arg_0, arg_0, arg_0))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 1000f, arg_0, arg_0)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 209f, 251f, arg_0) + vec4<f32>(-473f, -1000f, -1407f, arg_0)))), var_0.d.x)))));
    return !func_2(~u_input.a.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 1u, arg_1, var_0.e.a.e), ~vec4<u32>(60348u, var_0.e.a.c, var_0.a.b.a.c, 121956u)) & 4294967295u, arg_2, vec2<f32>(_wgslsmith_f_op_f32(ceil(-302f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -658f))))).a.yxz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = any(vec2<bool>(true, true));
    let var_1 = vec4<bool>(true, false, any(select(func_5(-446f, u_input.b | u_input.b, func_1(-701f, vec3<f32>(963f, 125f, 1502f), 1i, -966f), vec3<bool>(true, true, true)), func_5(-1038f, 1u, Struct_3(vec2<i32>(2147483647i, -23012i), Struct_2(Struct_1(vec4<bool>(true, true, true, false), false, 35175u, true, 56941u)), vec3<i32>(-1i, 1i, 2147483647i)), vec3<bool>(true, true, true)), func_1(_wgslsmith_f_op_f32(ceil(-551f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1000f, -1382f)), firstLeadingBit(48324i), _wgslsmith_div_f32(198f, -1000f)).b.a.a.xyy)), func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(1000f, -601f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1169f, 485f, false)))), 25632u, Struct_3(vec2<i32>(abs(-2147483647i), i32(-1i) * -44302i), func_1(_wgslsmith_f_op_f32(trunc(-756f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-423f, 106f, -1625f)), -22339i, -165f).b, _wgslsmith_clamp_vec3_i32(~vec3<i32>(-34396i, -10360i, -2147483647i), max(vec3<i32>(-2744i, 25435i, 0i), vec3<i32>(-1i, 2147483647i, 31840i)), _wgslsmith_div_vec3_i32(vec3<i32>(25763i, -6554i, 0i), vec3<i32>(30901i, -1029i, -42079i)))), select(func_5(_wgslsmith_f_op_f32(190f - -1425f), 58308u, func_1(-508f, vec3<f32>(-378f, -1883f, -198f), -26608i, 703f), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), vec3<bool>(true, true, any(vec4<bool>(false, true, false, true))), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false))).x);
    var var_2 = func_1(-187f, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f - -907f), _wgslsmith_f_op_f32(step(-388f, 707f)))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f - 1244f), _wgslsmith_f_op_f32(1000f * 163f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1245f)))), 1f), -_wgslsmith_dot_vec2_i32(func_1(-2019f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(179f, -274f, 425f)), ~(-2147483647i), -690f).c.xz, _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, -4260i), vec2<i32>(-19800i, -2147483647i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, -10649i), vec2<i32>(-19680i, -2147483647i), vec2<i32>(1697i, 14633i)))), -1262f).b.a.b;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -855f);
    var_2 = false;
    var_2 = any(!select(vec4<bool>(true, false, true, true), var_1, any(select(vec2<bool>(true, false), vec2<bool>(true, var_1.x), false))));
    let var_4 = _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -232f)));
    var_2 = true & var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(0u, ~vec2<u32>(~u_input.a.x ^ _wgslsmith_mult_u32(u_input.a.x, u_input.b), abs(4294967295u)));
}

