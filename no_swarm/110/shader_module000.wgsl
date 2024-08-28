struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2) -> vec2<bool> {
    let var_0 = Struct_4(Struct_2(arg_0.a, vec3<u32>(1u, ~16352u ^ arg_0.c, 1u << (firstLeadingBit(u_input.a) % 32u)), abs(~(~21328u))), select(select(select(!vec2<bool>(arg_0.a.a.x, false), select(vec2<bool>(false, true), vec2<bool>(arg_0.a.a.x, true), arg_0.a.a), all(vec3<bool>(true, arg_0.a.a.x, arg_0.a.a.x))), select(vec2<bool>(true, false), vec2<bool>(false, false), !vec2<bool>(arg_0.a.a.x, true)), select(vec2<bool>(true, true), arg_0.a.a, true)), vec2<bool>(_wgslsmith_sub_u32(71724u, u_input.c) < arg_0.c, true), arg_0.a.a));
    var var_1 = countOneBits(vec4<i32>(19413i, -_wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.d.x, 43509i), -u_input.b), -1i, -(~_wgslsmith_mult_i32(u_input.b, 0i))));
    var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(var_1.x, -var_1.x, 2147483647i, -16013i), ~vec4<i32>(_wgslsmith_dot_vec2_i32(abs(u_input.d.zx), vec2<i32>(u_input.b, 0i)), ~_wgslsmith_mod_i32(var_1.x, u_input.d.x), -(var_1.x << (1u % 32u)), -65249i));
    var var_2 = abs(var_1.x);
    var var_3 = -1i << (var_0.a.c % 32u);
    return vec2<bool>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(u_input.c, 0u, 11588u, u_input.a)), vec4<u32>(2621u, var_0.a.b.x, 71660u, 1u) << (vec4<u32>(u_input.a, arg_0.b.x, arg_0.b.x, 559u) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_mult_u32(61174u, arg_0.c), var_0.a.b.x, arg_0.b.x, ~arg_0.b.x)) != u_input.a, any(vec2<bool>(!arg_0.a.a.x, arg_0.a.a.x)));
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = 52777u >> (select(u_input.a, u_input.a, any(vec4<bool>(true, true, true, true))) % 32u);
    var var_1 = Struct_1(!func_3(Struct_2(Struct_1(vec2<bool>(false, false)), vec3<u32>(var_0, var_0, u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0, 63066u, 4294967295u), vec3<u32>(u_input.c, 24633u, u_input.a)))));
    var var_2 = Struct_3(Struct_1(select(var_1.a, !(!var_1.a), select(var_1.a, var_1.a, var_1.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-894f, _wgslsmith_f_op_f32(arg_0 * 428f), _wgslsmith_f_op_f32(select(-894f, -448f, false))))), Struct_2(Struct_1(select(select(vec2<bool>(false, var_1.a.x), var_1.a, vec2<bool>(var_1.a.x, var_1.a.x)), select(vec2<bool>(false, var_1.a.x), var_1.a, var_1.a), all(vec4<bool>(var_1.a.x, true, var_1.a.x, true)))), ~(firstLeadingBit(vec3<u32>(89263u, 3519u, u_input.a)) ^ ~vec3<u32>(var_0, 0u, 1u)), abs(_wgslsmith_mult_u32(_wgslsmith_mod_u32(32905u, var_0), ~u_input.a))));
    return var_2.c;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_2 {
    let var_0 = Struct_4(arg_0, vec2<bool>(all(vec2<bool>(arg_1.a.x, select(arg_1.a.x, false, arg_0.a.a.x))), !arg_0.a.a.x));
    let var_1 = vec2<f32>(-697f, _wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(sign(1937f))));
    var var_2 = Struct_2(arg_0.a, ~max(vec3<u32>(var_0.a.c, arg_0.b.x, 4294967295u), ~var_0.a.b), ~_wgslsmith_dot_vec2_u32(var_0.a.b.xy, ~arg_0.b.xx));
    var var_3 = select(arg_0.b, ~vec3<u32>(var_2.b.x, _wgslsmith_clamp_u32(49089u, var_0.a.b.x, var_0.a.c), reverseBits(u_input.c)), false);
    var var_4 = Struct_3(var_2.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(f32(-1f) * -1600f), -1596f)) * vec3<f32>(var_1.x, arg_2.x, -797f)), arg_0);
    return var_4.c;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(255f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-193f, 567f))))));
    let var_1 = var_0.x;
    return func_4(func_2(-400f), func_2(var_0.x).a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2276f, var_0.x) + vec2<f32>(var_0.x, 1436f)) + _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_0.x), vec2<f32>(var_0.x, var_0.x))) * vec2<f32>(_wgslsmith_f_op_f32(max(356f, 2626f)), var_0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 401f))))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec2<i32>) -> Struct_3 {
    var var_0 = ~arg_1.a.b.x;
    let var_1 = _wgslsmith_mult_u32(u_input.c, countOneBits(arg_0.a.c));
    var_0 = ~35641u;
    var_0 = ~(((var_1 ^ ~var_1) & abs(49109u)) & ~(~countOneBits(arg_0.a.c)));
    var var_2 = func_4(Struct_2(Struct_1(func_3(arg_0.a)), arg_1.a.b, 4294967295u), arg_1.a.a, vec2<f32>(-2291f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(215f, 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1212f)) * _wgslsmith_f_op_f32(trunc(383f))), func_4(arg_0.a, Struct_1(arg_1.a.a.a), vec2<f32>(-249f, -1820f)).a.a.x & func_1(vec4<bool>(true, arg_1.b.x, true, false), Struct_1(vec2<bool>(true, true)), arg_0.a.b.yy).a.a.x))));
    return Struct_3(func_4(Struct_2(arg_1.a.a, _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 0u, 7805u), vec3<u32>(arg_0.a.c, u_input.c, arg_1.a.b.x)), arg_1.a.c), var_2.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, -667f)))))).a, vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(360f, 110f, true))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -553f), 1190f, true)), _wgslsmith_f_op_f32(f32(-1f) * -156f)), arg_0.a);
}

fn func_6(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_2 {
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(func_6(func_5(Struct_4(func_1(vec4<bool>(true, false, false, false), Struct_1(vec2<bool>(true, true)), vec2<u32>(u_input.c, u_input.c)), select(vec2<bool>(false, false), vec2<bool>(true, true), false)), Struct_4(Struct_2(Struct_1(vec2<bool>(true, true)), vec3<u32>(u_input.c, 0u, 1u), 69842u), func_4(Struct_2(Struct_1(vec2<bool>(true, false)), vec3<u32>(4294967295u, u_input.a, u_input.c), u_input.a), Struct_1(vec2<bool>(false, false)), vec2<f32>(-1000f, -302f)).a.a), _wgslsmith_div_vec2_i32(vec2<i32>(38791i, u_input.b) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), u_input.d.xx)), Struct_3(func_1(vec4<bool>(true, true, false, true), Struct_1(vec2<bool>(false, true)), ~vec2<u32>(3452u, u_input.c)).a, vec3<f32>(_wgslsmith_f_op_f32(floor(-1186f)), -360f, -1000f), func_4(func_1(vec4<bool>(false, false, true, false), Struct_1(vec2<bool>(false, true)), vec2<u32>(u_input.c, 18627u)), func_1(vec4<bool>(true, false, true, true), Struct_1(vec2<bool>(false, false)), vec2<u32>(u_input.c, 0u)).a, _wgslsmith_f_op_vec2_f32(vec2<f32>(349f, -601f) * vec2<f32>(319f, 265f)))), Struct_1(vec2<bool>(false, true)), countOneBits(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, u_input.a, 17280u, u_input.c), vec4<u32>(56138u, u_input.a, 0u, 0u)))), func_6(Struct_3(func_4(func_2(1473f), func_1(vec4<bool>(false, true, false, false), Struct_1(vec2<bool>(true, true)), vec2<u32>(4294967295u, 29623u)).a, vec2<f32>(181f, -1637f)).a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1592f, -101f, 1007f))) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(2072f, 1929f, 822f), vec3<f32>(-473f, 1240f, 1000f)))), func_4(func_4(Struct_2(Struct_1(vec2<bool>(false, true)), vec3<u32>(95392u, u_input.c, u_input.a), u_input.a), Struct_1(vec2<bool>(false, false)), vec2<f32>(977f, 312f)), Struct_1(vec2<bool>(true, false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1670f, -385f)))), Struct_3(Struct_1(func_5(Struct_4(Struct_2(Struct_1(vec2<bool>(false, true)), vec3<u32>(0u, 22095u, u_input.a), u_input.a), vec2<bool>(true, false)), Struct_4(Struct_2(Struct_1(vec2<bool>(true, true)), vec3<u32>(u_input.c, u_input.a, 49133u), 24831u), vec2<bool>(false, true)), u_input.d.yy).a.a), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-700f, 1673f, 692f) + vec3<f32>(-1000f, -1804f, 166f)))), Struct_2(Struct_1(vec2<bool>(true, false)), firstTrailingBit(vec3<u32>(u_input.c, u_input.a, 23700u)), ~33231u)), func_4(func_1(vec4<bool>(true, true, true, true), Struct_1(vec2<bool>(true, false)), vec2<u32>(u_input.c, u_input.c)), func_1(vec4<bool>(true, true, true, false), Struct_1(vec2<bool>(false, false)), vec2<u32>(42583u, 1u)).a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-358f, 797f) - vec2<f32>(-1420f, -1145f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1008f, 1094f)), true))).a, select((vec4<u32>(80570u, u_input.c, u_input.a, u_input.a) | vec4<u32>(u_input.c, u_input.a, u_input.c, 4294967295u)) << (select(vec4<u32>(14480u, 0u, 4294967295u, 1u), vec4<u32>(1u, 21874u, 19598u, u_input.a), vec4<bool>(true, true, false, false)) % vec4<u32>(32u)), abs(_wgslsmith_sub_vec4_u32(vec4<u32>(10050u, 0u, 0u, 34593u), vec4<u32>(u_input.c, u_input.a, 23994u, u_input.c))), true)).a.a);
    var var_1 = func_1(select(select(select(vec4<bool>(false, var_0.a.a.a.x, var_0.b.x, true), vec4<bool>(var_0.b.x, false, var_0.a.a.a.x, var_0.b.x), var_0.a.a.a.x), vec4<bool>(!var_0.b.x, true, false, false), select(!vec4<bool>(true, var_0.b.x, true, var_0.b.x), !vec4<bool>(var_0.b.x, false, var_0.a.a.a.x, var_0.b.x), vec4<bool>(var_0.b.x, var_0.b.x, true, false))), select(select(vec4<bool>(false, var_0.b.x, true, var_0.a.a.a.x), !vec4<bool>(false, true, false, var_0.a.a.a.x), var_0.b.x), !select(vec4<bool>(true, true, true, var_0.a.a.a.x), vec4<bool>(true, false, var_0.b.x, true), vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.a.a.a.x)), select(!vec4<bool>(var_0.a.a.a.x, true, var_0.b.x, true), !vec4<bool>(var_0.b.x, true, true, var_0.b.x), select(true, var_0.b.x, false))), false), var_0.a.a, _wgslsmith_clamp_vec2_u32(func_6(func_5(Struct_4(Struct_2(var_0.a.a, vec3<u32>(var_0.a.b.x, 31891u, 0u), u_input.c), vec2<bool>(var_0.a.a.a.x, var_0.a.a.a.x)), Struct_4(var_0.a, vec2<bool>(true, var_0.b.x)), u_input.d.yy), func_5(Struct_4(var_0.a, vec2<bool>(true, true)), Struct_4(var_0.a, var_0.b), ~u_input.d.yx), Struct_1(!var_0.a.a.a), vec4<u32>(4334u, 1u, ~0u, ~1u)).b.xy, var_0.a.b.xy, firstTrailingBit(select(vec2<u32>(var_0.a.c, var_0.a.c), var_0.a.b.yx, all(vec4<bool>(var_0.b.x, true, false, var_0.a.a.a.x)))))).a;
    let var_2 = func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(523f)) * _wgslsmith_f_op_f32(f32(-1f) * -2416f)), _wgslsmith_f_op_f32(f32(-1f) * -1355f)))))).a;
    let var_3 = func_4(func_6(func_5(Struct_4(func_4(Struct_2(var_2, vec3<u32>(46155u, 79547u, var_0.a.b.x), var_0.a.b.x), var_0.a.a, vec2<f32>(616f, -1693f)), var_0.b), Struct_4(func_2(542f), var_2.a), (u_input.d.yz ^ u_input.d.zy) & ~u_input.d.xz), Struct_3(func_4(var_0.a, func_4(var_0.a, Struct_1(vec2<bool>(var_2.a.x, true)), vec2<f32>(-483f, -401f)).a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2098f, 2096f))).a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1110f, 455f, -1154f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1834f, -879f, -1888f), vec3<f32>(1266f, 1341f, 1000f), true))), var_0.a), var_0.a.a, abs((vec4<u32>(0u, 9113u, u_input.a, var_0.a.c) & vec4<u32>(u_input.a, 14449u, 51772u, var_0.a.b.x)) ^ ~vec4<u32>(18211u, 0u, var_0.a.b.x, u_input.c))), var_0.a.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(347f, _wgslsmith_f_op_f32(floor(-1000f)))))).c;
    let var_4 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(162f, -514f, -1064f, 544f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(345f, 448f, -559f, 829f))), vec4<f32>(_wgslsmith_f_op_f32(floor(560f)), -1232f, -155f, _wgslsmith_f_op_f32(abs(970f))))))));
    let var_5 = ~firstTrailingBit(var_3 ^ ~1u);
    let var_6 = var_0.a.a;
    let var_7 = Struct_3(Struct_1(func_4(func_6(func_5(Struct_4(Struct_2(Struct_1(vec2<bool>(var_2.a.x, var_6.a.x)), var_0.a.b, u_input.c), var_0.b), Struct_4(var_0.a, var_2.a), vec2<i32>(u_input.d.x, -20100i)), Struct_3(var_2, vec3<f32>(var_4.x, -2154f, var_4.x), Struct_2(var_0.a.a, vec3<u32>(var_5, var_3, u_input.a), 56876u)), Struct_1(var_6.a), vec4<u32>(var_3, var_3, 0u, var_5) ^ vec4<u32>(u_input.a, u_input.a, var_5, var_3)), var_0.a.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.x, -1975f))).a.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.x, var_4.x, -1404f)), Struct_2(var_0.a.a, vec3<u32>(var_0.a.b.x, 39207u, 47116u), _wgslsmith_sub_u32(var_3, 1821u)));
    let var_8 = (4162u ^ u_input.c) << ((var_5 << (~func_6(var_7, Struct_3(Struct_1(vec2<bool>(var_2.a.x, true)), vec3<f32>(1000f, var_4.x, -741f), var_7.c), func_2(var_4.x).a, _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 22153u, var_3, 8794u), vec4<u32>(u_input.a, var_3, 1u, 9359u))).c % 32u)) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(max(~max(u_input.d.zx, u_input.d.yx) & vec2<i32>(-7639i, -52626i), u_input.d.zx), 4294967295u, _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_5, var_8, 9792u >> (var_5 % 32u), 0u), vec4<u32>(45288u, 0u, 4294967295u, _wgslsmith_div_u32(34537u, var_0.a.c))), ~(~max(vec4<u32>(24190u, var_3, var_7.c.c, 1u), vec4<u32>(1u, u_input.c, 1u, u_input.c)))), abs(vec4<u32>(~_wgslsmith_mod_u32(var_5, 0u), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(var_7.c.b, vec3<u32>(var_0.a.b.x, u_input.c, var_8)), ~var_7.c.b), _wgslsmith_sub_u32(39398u, var_8) << (select(var_5, var_0.a.b.x, var_2.a.x) % 32u), func_1(vec4<bool>(var_0.b.x, true, var_7.a.a.x, false), var_7.c.a, vec2<u32>(var_3, var_7.c.c)).c)));
}

