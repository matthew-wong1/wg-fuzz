struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: vec3<f32>,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
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

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: Struct_4) -> vec3<u32> {
    global0 = arg_2.e.d;
    var var_0 = Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(max(41334u, arg_2.e.c.e.x), 0u, _wgslsmith_mod_u32(0u, arg_0.b.b.x)), ~firstLeadingBit(arg_0.b.b)) << (vec3<u32>(_wgslsmith_sub_u32(arg_2.d, 1u) | ~0u, u_input.c.x, _wgslsmith_clamp_u32(~arg_2.e.c.c.x, firstTrailingBit(arg_2.e.d), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), u_input.c))) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(min(firstLeadingBit(vec3<u32>(u_input.c.x, arg_0.b.a.x, 4294967295u)), vec3<u32>(~1u, arg_0.b.a.x, 1u)), vec3<u32>(~arg_0.b.b.x, _wgslsmith_dot_vec4_u32(countOneBits(arg_2.e.b.e), arg_2.e.b.e), firstLeadingBit(arg_0.b.a.x))), vec3<u32>(arg_0.b.b.x, 4294967295u, 1u), _wgslsmith_mult_i32(u_input.e, -2147483647i) | ~u_input.e, arg_0.b.e);
    var var_1 = Struct_3(true, Struct_1(~(~arg_2.e.b.c), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(23279u, 8751u, u_input.c.x, 1u), vec4<u32>(arg_0.b.c.x, arg_0.b.e.x, arg_0.b.e.x, arg_2.a.b.e.x)), countOneBits(select(arg_2.e.b.a.x, 1u, true)), countOneBits(1u)), select(vec3<u32>(u_input.c.x, var_0.a.x, firstTrailingBit(23409u)), arg_0.b.b ^ firstLeadingBit(vec3<u32>(arg_2.d, 182u, arg_0.b.b.x)), any(!vec4<bool>(true, true, arg_0.a, arg_0.a))), 1i, arg_2.a.b.e));
    var var_2 = select(vec3<bool>(-25684i == _wgslsmith_mod_i32(1i, select(u_input.e, -1i, arg_0.a)), !arg_0.a, !var_1.a | true), !(!select(!vec3<bool>(arg_2.b, true, var_1.a), vec3<bool>(true, false, false), 56303u < var_1.b.b.x)), (!all(vec3<bool>(false, true, false)) & (true && !arg_0.a)) && false);
    var var_3 = select(_wgslsmith_dot_vec4_u32(arg_2.a.b.e, ~var_1.b.e ^ vec4<u32>(arg_0.b.a.x, ~1u, ~var_1.b.e.x, var_0.b.x)), var_1.b.a.x, !all(vec3<bool>(true, true, true)));
    return vec3<u32>(~var_1.b.c.x & 4294967295u, var_0.c.x, 35641u);
}

fn func_2(arg_0: Struct_3) -> Struct_4 {
    global0 = 0u;
    let var_0 = u_input.a.zzz;
    let var_1 = var_0;
    return Struct_4(Struct_3(!(!arg_0.a | arg_0.a), Struct_1(vec3<u32>(arg_0.b.a.x << (u_input.c.x % 32u), countOneBits(u_input.c.x), ~arg_0.b.e.x), _wgslsmith_add_vec3_u32(vec3<u32>(12667u, 0u, arg_0.b.e.x), u_input.c), min(func_3(arg_0, 83i, Struct_4(Struct_3(false, arg_0.b), arg_0.a, vec3<f32>(790f, 2328f, 1318f), u_input.c.x, Struct_2(arg_0.b, arg_0.b, arg_0.b, u_input.c.x))), arg_0.b.b), reverseBits(1i), vec4<u32>(max(6924u, 4294967295u), u_input.c.x, u_input.c.x, ~u_input.c.x))), !(!(!(!arg_0.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(294f, 901f, 713f))))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(select(_wgslsmith_sub_vec2_u32(u_input.c.xy, vec2<u32>(u_input.c.x, u_input.c.x)), vec2<u32>(0u, 526u), true), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, arg_0.b.e.x), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x, 15852u), arg_0.b.b.yx))), _wgslsmith_sub_u32(4294967295u, 0u), arg_0.b.e.x), Struct_2(Struct_1(select(vec3<u32>(u_input.c.x, 4294967295u, 1u), arg_0.b.a, true), max(u_input.c << (vec3<u32>(arg_0.b.b.x, 21881u, 4294967295u) % vec3<u32>(32u)), vec3<u32>(arg_0.b.e.x, 28054u, 0u)), u_input.c & ~arg_0.b.b, 1i, arg_0.b.e), Struct_1(abs(vec3<u32>(23911u, arg_0.b.a.x, arg_0.b.e.x)), ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, arg_0.b.a.x, 93228u), u_input.c), ~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.b.a.x, arg_0.b.e.x, 1u), vec3<u32>(0u, u_input.c.x, 46161u)), 12847i, vec4<u32>(arg_0.b.e.x >> (u_input.c.x % 32u), ~63885u, _wgslsmith_div_u32(u_input.c.x, 0u), arg_0.b.a.x << (arg_0.b.a.x % 32u))), Struct_1(~(arg_0.b.b << (vec3<u32>(1628u, arg_0.b.e.x, 31280u) % vec3<u32>(32u))), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 69307u, arg_0.b.a.x, 1u), vec4<u32>(u_input.c.x, 4294967295u, 21339u, arg_0.b.c.x)), 1u, ~1u), ~vec3<u32>(12118u, arg_0.b.c.x, arg_0.b.c.x) << ((vec3<u32>(arg_0.b.c.x, 55082u, u_input.c.x) << (u_input.c % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_sub_i32(_wgslsmith_mod_i32(20361i, var_1.x), u_input.b ^ arg_0.b.d), arg_0.b.e), 39038u));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: u32, arg_3: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0 - arg_0) + _wgslsmith_f_op_vec4_f32(exp2(arg_0)));
    global0 = 49841u;
    var var_1 = arg_0.x;
    var var_2 = func_2(arg_1.a).a;
    let var_3 = i32(-1i) * -(~(u_input.d & _wgslsmith_mod_i32(u_input.b, arg_1.a.b.d)));
    return 520f;
}

fn func_1() -> Struct_1 {
    global0 = 69402u;
    let var_0 = u_input.d;
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(513f + -982f)))), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-492f, 182f, -1768f, -1325f) * vec4<f32>(-436f, -246f, 1000f, -1252f)), func_2(Struct_3(false, Struct_1(u_input.c, vec3<u32>(82631u, 0u, u_input.c.x), vec3<u32>(0u, u_input.c.x, 74757u), -4894i, vec4<u32>(24036u, u_input.c.x, u_input.c.x, u_input.c.x)))), 0u, _wgslsmith_f_op_f32(min(142f, -284f)))) * 1f), _wgslsmith_f_op_f32(step(-103f, _wgslsmith_f_op_f32(-1438f - _wgslsmith_f_op_f32(floor(1739f)))))));
    let var_2 = ~(~_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.c.x, u_input.c.x, 1u), vec4<u32>(1u, 1746u, 33511u, u_input.c.x)), countOneBits(vec4<u32>(u_input.c.x, 1u, 4294967295u, u_input.c.x))), ~(~vec4<u32>(4294967295u, 0u, u_input.c.x, u_input.c.x))));
    let var_3 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.x, 133f, -844f, 422f))), Struct_4(func_2(Struct_3(true, Struct_1(vec3<u32>(1u, u_input.c.x, var_2.x), u_input.c, vec3<u32>(u_input.c.x, 20815u, var_2.x), 0i, vec4<u32>(0u, u_input.c.x, 1u, 1u)))).a, true, vec3<f32>(var_1.x, var_1.x, -1000f), 0u, func_2(Struct_3(true, Struct_1(vec3<u32>(u_input.c.x, 0u, 10603u), var_2.wzy, u_input.c, -35423i, vec4<u32>(47045u, var_2.x, var_2.x, u_input.c.x)))).e), _wgslsmith_div_u32(~u_input.c.x, _wgslsmith_dot_vec2_u32(var_2.yx, vec2<u32>(var_2.x, var_2.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(vec4<f32>(var_1.x, -2258f, var_1.x, var_1.x), Struct_4(Struct_3(true, Struct_1(vec3<u32>(40089u, 4294967295u, var_2.x), vec3<u32>(var_2.x, 10923u, 4294967295u), vec3<u32>(8056u, var_2.x, var_2.x), u_input.a.x, var_2)), true, var_1.yxz, 4294967295u, Struct_2(Struct_1(u_input.c, vec3<u32>(0u, u_input.c.x, 40414u), vec3<u32>(1u, var_2.x, u_input.c.x), 39388i, var_2), Struct_1(u_input.c, u_input.c, u_input.c, -1i, var_2), Struct_1(var_2.zyz, var_2.yzx, vec3<u32>(0u, var_2.x, var_2.x), u_input.e, vec4<u32>(47263u, 6228u, var_2.x, 32612u)), u_input.c.x)), 4294967295u, -156f)))))), _wgslsmith_f_op_f32(trunc(func_2(func_2(Struct_3(false, Struct_1(var_2.wwx, vec3<u32>(u_input.c.x, var_2.x, 58756u), vec3<u32>(9031u, 54015u, 0u), u_input.d, vec4<u32>(var_2.x, u_input.c.x, u_input.c.x, var_2.x)))).a).c.x)), -1000f, -1174f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(sign(1536f)), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(476f)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(-494f, -1699f, -1000f, var_1.x), vec4<f32>(-1998f, -1056f, var_1.x, -1334f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(307f, -1201f, var_1.x, -1940f) + vec4<f32>(var_1.x, var_1.x, -1400f, var_1.x))))))));
    return func_2(Struct_3(true, Struct_1(~vec3<u32>(var_2.x, var_2.x, var_2.x), max(abs(vec3<u32>(4294967295u, 26441u, u_input.c.x)), ~vec3<u32>(u_input.c.x, 1u, var_2.x)), func_2(func_2(Struct_3(false, Struct_1(u_input.c, vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(u_input.c.x, var_2.x, 4294967295u), -1i, vec4<u32>(58297u, 11778u, u_input.c.x, 4294967295u)))).a).a.b.e.wxy, reverseBits(var_0 >> (0u % 32u)), vec4<u32>(min(35515u, 9448u), min(4294967295u, 1u), u_input.c.x, abs(46691u))))).a.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(true, func_1());
    let var_1 = Struct_2(Struct_1(vec3<u32>(firstTrailingBit(1u), ~_wgslsmith_clamp_u32(36619u, var_0.b.e.x, 53608u), u_input.c.x), var_0.b.b, vec3<u32>(~28083u, ~(~var_0.b.a.x), _wgslsmith_sub_u32(~0u, _wgslsmith_mult_u32(20081u, 31648u))), var_0.b.d, var_0.b.e), Struct_1(u_input.c >> (vec3<u32>(_wgslsmith_sub_u32(73001u, 1u), _wgslsmith_sub_u32(18281u, u_input.c.x), 13163u ^ var_0.b.a.x) % vec3<u32>(32u)), reverseBits(var_0.b.c & (u_input.c ^ var_0.b.b)), vec3<u32>(u_input.c.x, reverseBits(_wgslsmith_dot_vec4_u32(var_0.b.e, var_0.b.e)), var_0.b.a.x << ((1u >> (0u % 32u)) % 32u)), 1i, var_0.b.e), var_0.b, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.b.x, var_0.b.c.x) ^ vec2<u32>(_wgslsmith_clamp_u32(var_0.b.b.x, var_0.b.e.x, u_input.c.x), _wgslsmith_mod_u32(u_input.c.x, 1u)), countOneBits(~var_0.b.c.zy) >> (func_3(Struct_3(var_0.a, var_0.b), 1i, func_2(var_0)).zx % vec2<u32>(32u))));
    var var_2 = func_2(var_0);
    var var_3 = func_2(var_0).e;
    var_2 = Struct_4(func_2(var_2.a).a, true, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-834f, _wgslsmith_f_op_f32(abs(var_2.c.x)), 1f), vec3<f32>(_wgslsmith_f_op_f32(-var_2.c.x), _wgslsmith_f_op_f32(sign(var_2.c.x)), _wgslsmith_f_op_f32(-var_2.c.x)))))), 1u, func_2(Struct_3(true, var_3.c)).e);
    var_3 = var_1;
    let var_4 = Struct_4(func_2(var_2.a).a, var_2.b, _wgslsmith_f_op_vec3_f32(-var_2.c), countOneBits(_wgslsmith_sub_u32(28662u, _wgslsmith_sub_u32(83156u, var_3.b.c.x)) >> (_wgslsmith_mod_u32(var_2.d, var_0.b.a.x) % 32u)), func_2(var_2.a).e);
    var var_5 = -_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(52581i, 0i, var_2.a.b.d), firstLeadingBit(u_input.a.zxy) & u_input.a.zxy), firstTrailingBit(~_wgslsmith_mod_i32(var_4.e.c.d, var_0.b.d)), _wgslsmith_clamp_i32(~abs(-43578i), select(-var_3.a.d, func_2(Struct_3(false, Struct_1(var_4.a.b.c, var_1.b.a, vec3<u32>(var_0.b.e.x, u_input.c.x, var_4.e.c.b.x), var_2.e.a.d, var_1.b.e))).a.b.d, true), var_1.c.d & -var_0.b.d));
    var var_6 = func_2(Struct_3(!var_0.a, var_3.c));
    let x = u_input.a;
    s_output = StorageBuffer(var_6.c.zz, var_6.a.b.c.x, ~(~(var_2.a.b.d >> (4294967295u % 32u))) ^ var_0.b.d);
}

