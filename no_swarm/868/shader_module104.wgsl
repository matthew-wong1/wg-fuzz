struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
    c: bool,
    d: vec4<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_1,
    d: u32,
    e: u32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: Struct_2,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: f32) -> u32 {
    global0 = array<vec3<i32>, 32>();
    var var_0 = Struct_3(43179u ^ _wgslsmith_add_u32(1u, ~abs(u_input.c)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-142f, arg_2, arg_2, arg_2) + vec4<f32>(arg_2, 205f, arg_2, 215f))) - vec4<f32>(_wgslsmith_f_op_f32(arg_2 - 268f), arg_2, arg_2, _wgslsmith_f_op_f32(-arg_2))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - arg_2))) > arg_2, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_2, arg_2, 496f, -140f), vec4<f32>(1000f, -715f, 1556f, arg_2))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(-1444f, arg_2, 1000f, 548f), vec4<f32>(arg_2, -842f, arg_2, arg_2)))))));
    var var_1 = vec4<u32>(29213u, ~arg_1, ~u_input.c, abs(29592u) >> (var_0.a % 32u));
    var var_2 = var_0.b;
    let var_3 = Struct_5(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -688f), var_0.b.x, -783f, _wgslsmith_f_op_f32(-var_0.d.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_0.d), vec4<f32>(710f, -856f, 1024f, -1000f), false))))), vec4<f32>(var_0.d.x, var_0.b.x, -1692f, arg_2), Struct_2(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.x, 35984u, 30549u, u_input.c), vec4<u32>(8576u, u_input.c, 22391u, var_0.a), vec4<u32>(0u, 4294967295u, 31818u, arg_1)), abs(vec4<u32>(47172u, 1u, 1u, 15807u)), vec4<u32>(var_1.x, var_1.x, u_input.c, arg_1) & vec4<u32>(9219u, 1u, 1u, 53446u)) >> (countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 115412u, 0u, 0u), vec4<u32>(var_0.a, u_input.c, 0u, var_1.x))) % vec4<u32>(32u)), Struct_1(1u, u_input.c, -arg_0, _wgslsmith_f_op_f32(exp2(var_0.b.x)), _wgslsmith_div_u32(var_0.a, 85027u) ^ ~var_1.x), arg_0, u_input.a.xx), _wgslsmith_add_i32(51663i, i32(-1i) * -(~9i)), -2113f);
    return ~reverseBits(u_input.c);
}

fn func_2(arg_0: bool) -> Struct_3 {
    var var_0 = ~u_input.a.x;
    var_0 = ~(~u_input.a.x);
    var var_1 = u_input.b;
    let var_2 = ~func_3(vec2<i32>(~u_input.a.x, 42310i), ~u_input.c, -581f);
    return Struct_3(60858u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(748f, -311f, -543f, -1039f))))))), arg_0, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(195f, 256f, 1000f, -726f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(462f, -1010f, 1000f, -726f) * vec4<f32>(-1000f, 664f, -280f, 265f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(390f, -659f, 743f, -1366f) * vec4<f32>(1148f, -813f, 630f, -1926f)) - vec4<f32>(-191f, -390f, 306f, -1129f))), vec4<f32>(1f, 1f, 1f, 1f), false)));
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    let var_0 = !vec2<bool>(arg_0.c, arg_0.c);
    global0 = array<vec3<i32>, 32>();
    global0 = array<vec3<i32>, 32>();
    let var_1 = Struct_2(abs(~vec4<u32>(u_input.c, 36240u, 18636u, ~arg_0.a)), Struct_1(_wgslsmith_mod_u32(arg_0.a, ~_wgslsmith_div_u32(1u, arg_0.a)), u_input.c, ~u_input.a.yy, -466f, 0u ^ _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.c, 5520u), countOneBits(u_input.c))), vec2<i32>(_wgslsmith_dot_vec4_i32(firstLeadingBit(~vec4<i32>(1i, u_input.b, 2147483647i, 0i)), -vec4<i32>(1i, u_input.b, u_input.b, 9128i) & vec4<i32>(u_input.a.x, 18511i, u_input.a.x, u_input.b)), u_input.a.x), u_input.a.yz);
    var var_2 = _wgslsmith_add_i32(var_1.d.x, ~(-_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(var_1.b.c, u_input.a.zz), select(vec2<i32>(0i, -1526i), var_1.d, vec2<bool>(true, var_0.x)))));
    return Struct_2(vec4<u32>(reverseBits(~3804u), var_1.a.x, 20581u, var_1.b.a), Struct_1(arg_0.a, 62183u, vec2<i32>(42356i, var_1.b.c.x), var_1.b.d, ~_wgslsmith_dot_vec2_u32(var_1.a.yw, ~var_1.a.zz)), vec2<i32>(u_input.b, var_1.b.c.x), var_1.c);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32, arg_3: bool) -> Struct_4 {
    var var_0 = all(vec2<bool>(arg_3, !(1f == arg_0.d)));
    var var_1 = ~_wgslsmith_clamp_u32(~select(arg_1.a.x, arg_0.b & arg_0.e, !arg_3), ~abs(~66078u), 46538u);
    var_0 = 1000f < _wgslsmith_div_f32(-239f, arg_0.d);
    var var_2 = Struct_5(vec4<f32>(-482f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.b.d * arg_1.b.d), 1130f), -883f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.d * arg_0.d)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.d, 2013f, 1261f, arg_1.b.d)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1415f, -228f, -1000f, arg_1.b.d))) * func_2(any(vec4<bool>(arg_3, false, arg_3, arg_3))).d), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_div_f32(-510f, arg_0.d), _wgslsmith_f_op_f32(-arg_1.b.d), _wgslsmith_f_op_f32(arg_1.b.d * arg_1.b.d), -763f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.d, arg_0.d, arg_1.b.d, -509f) * vec4<f32>(arg_1.b.d, arg_0.d, arg_1.b.d, 119f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-333f, arg_1.b.d, 169f, arg_0.d))))), vec4<bool>(all(select(vec2<bool>(arg_3, arg_3), vec2<bool>(true, arg_3), arg_3)), !all(vec2<bool>(true, true)), ~3560i < ~u_input.a.x, false))), Struct_2(vec4<u32>(31017u, func_2(false).a, ~u_input.c, firstLeadingBit(abs(arg_0.b))), Struct_1(~(arg_0.b >> (33235u % 32u)), func_2(u_input.c < 19282u).a, vec2<i32>(1i, -1i), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(arg_0.d)), 107f)), u_input.c), arg_1.d ^ -vec2<i32>(-6148i, arg_1.c.x), vec2<i32>(_wgslsmith_sub_i32(arg_2, arg_1.b.c.x), ~arg_1.b.c.x)), u_input.a.x, -273f);
    var_0 = arg_3;
    return Struct_4(_wgslsmith_div_vec4_f32(var_2.a, var_2.b), var_2.c, arg_0, ~40720u, _wgslsmith_mult_u32(countOneBits(40103u) ^ var_2.c.a.x, ~arg_1.a.x));
}

fn func_1() -> Struct_2 {
    global0 = array<vec3<i32>, 32>();
    global0 = array<vec3<i32>, 32>();
    var var_0 = func_5(Struct_1(0u ^ _wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.c, 4294967295u, 1u), u_input.c), 1u, -u_input.a.xy, -1000f, ~u_input.c), func_4(func_2(true)), (abs(-u_input.a.x) ^ 2147483647i) >> (9739u % 32u), false);
    global0 = array<vec3<i32>, 32>();
    var var_1 = select(vec3<bool>(true, all(vec4<bool>(true, var_0.b.b.d != var_0.a.x, true, true)), true), vec3<bool>(true, true, true), ~(~26256u) != (u_input.c << (4294967295u % 32u)));
    return var_0.b;
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_5, arg_2: u32) -> f32 {
    global0 = array<vec3<i32>, 32>();
    let var_0 = select(select(vec2<bool>(true, true), select(vec2<bool>(any(vec3<bool>(true, true, false)), true), !select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, true)), vec2<bool>(true, true)), vec2<bool>(true, true), true);
    var var_1 = 30309i >> (_wgslsmith_add_u32(4006u, ~(arg_2 >> (12504u % 32u)) >> ((~arg_1.c.b.a << (1u % 32u)) % 32u)) % 32u);
    let var_2 = func_4(Struct_3(arg_1.c.b.b, arg_1.a, all(vec2<bool>(var_0.x, true)) == (1u <= ~arg_2), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-772f * arg_1.e)), arg_0.x, 1f, arg_0.x))).b;
    let var_3 = ~(-2147483647i);
    return _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-831f, _wgslsmith_f_op_f32(trunc(var_2.d)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    var var_1 = _wgslsmith_f_op_f32(func_6(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1644f, -1000f, -165f)))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1141f, 471f, 1738f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1879f, 885f, 408f) * vec3<f32>(792f, 634f, -1638f))))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -397f), _wgslsmith_f_op_f32(f32(-1f) * -161f), _wgslsmith_f_op_f32(1611f - -806f))), Struct_5(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -431f, -2099f, 922f) - vec4<f32>(-703f, 1000f, 1656f, -501f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(235f, -2636f, 242f, -2436f), vec4<f32>(738f, 1000f, -429f, -2149f), true))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), func_1(), firstTrailingBit(~(~(-2147483647i))), 654f), ~(~1u)));
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(740f, -1777f) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(261f, -817f))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1519f, -1564f))))))), vec2<f32>(_wgslsmith_f_op_f32(400f + 1268f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_3(12130u, vec4<f32>(1000f, 1910f, -518f, -2032f), false, vec4<f32>(115f, 1452f, 674f, 356f))).b.d + 1f) - _wgslsmith_f_op_f32(f32(-1f) * -469f))));
    var var_3 = Struct_1(~var_0, 40730u, vec2<i32>(select(_wgslsmith_div_i32(u_input.a.x, -u_input.a.x), ~u_input.b | 10964i, true && select(true, false, false)), select(_wgslsmith_mult_i32(-u_input.a.x, ~(-2147483647i)), 2147483647i, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), func_2(true).a);
    var_3 = Struct_1(_wgslsmith_mult_u32(~(var_0 ^ 2144u), u_input.c) & _wgslsmith_div_u32(4294967295u, 1u ^ u_input.c), abs(var_0), ~max(var_3.c, var_3.c), _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.d)))), var_0);
    let var_4 = vec2<i32>(countOneBits(-2147483647i & _wgslsmith_sub_i32(-u_input.a.x, 32883i)), min(min(var_3.c.x, 4764i), reverseBits(var_3.c.x)) & countOneBits(1i));
    var var_5 = vec3<f32>(var_2.x, _wgslsmith_f_op_f32(abs(1660f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - -125f) + _wgslsmith_f_op_f32(f32(-1f) * -856f))) * func_1().b.d));
    var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.d, var_3.d, 1000f)) * func_2(true).b.ywz), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_5.x, 785f, _wgslsmith_f_op_f32(1049f - var_3.d)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1457f, 304f, var_5.x))), vec3<bool>(true, true, false))), !vec3<bool>(true, func_2(true).c, true))));
    var var_6 = func_5(Struct_1(var_3.a, var_0, min(var_3.c, func_5(func_1().b, Struct_2(vec4<u32>(var_3.a, var_3.a, var_3.e, var_0), Struct_1(15976u, var_0, vec2<i32>(-4357i, 16936i), var_3.d, var_3.b), vec2<i32>(var_3.c.x, u_input.b), vec2<i32>(-8688i, -2147483647i)), i32(-1i) * -2147483647i, any(vec2<bool>(true, true))).b.b.c), _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(var_5.x + _wgslsmith_f_op_f32(select(var_3.d, -2973f, true)))), var_3.a), func_4(Struct_3(~select(u_input.c, 0u, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 130f, var_2.x, var_2.x))), !any(vec2<bool>(true, false)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1274f, var_5.x, -612f, var_5.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_3.d, -854f, var_3.d, var_3.d), vec4<f32>(var_3.d, 1000f, var_3.d, 459f))), true)))), 93105i, true).b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(~_wgslsmith_clamp_i32(var_3.c.x, -1i, _wgslsmith_mult_i32(u_input.b, var_6.d.x)), -(reverseBits(var_6.d.x) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.e, 5474u, var_0), var_6.a.zzz) % 32u))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_6.b.d) * 1127f))), var_6.b.d, vec2<f32>(1000f, var_5.x));
}

