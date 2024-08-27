struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
    c: vec2<bool>,
    d: vec4<f32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
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

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = ~vec3<i32>(1i, -37963i, _wgslsmith_mod_i32(firstTrailingBit(-24567i), _wgslsmith_mult_i32(arg_2.c.x, arg_0.b.a.d.c.x >> (arg_0.b.a.e.x % 32u))));
    var var_1 = Struct_3(arg_0.b.a);
    var var_2 = -946f;
    let var_3 = select(vec4<bool>(global0.x < 7802u, arg_0.b.a.c.c.x >= _wgslsmith_mult_i32(_wgslsmith_mult_i32(0i, arg_0.b.a.c.c.x), arg_2.c.x), true, true), select(!(!(!vec4<bool>(true, true, arg_0.c.x, arg_0.c.x))), !select(vec4<bool>(arg_0.c.x, false, arg_0.c.x, true), vec4<bool>(arg_0.c.x, arg_0.c.x, true, arg_0.c.x), true), all(vec4<bool>(true, true, arg_0.c.x, arg_0.c.x == false))), true);
    var var_4 = arg_0.b.a.a;
    return firstTrailingBit(_wgslsmith_div_vec3_u32(min(_wgslsmith_div_vec3_u32(~arg_0.b.a.e, ~vec3<u32>(var_1.a.e.x, global0.x, 69360u)), firstTrailingBit(~arg_0.b.a.e)), abs(vec3<u32>(70281u, u_input.a.x, max(2733u, global0.x)))));
}

fn func_2(arg_0: f32) -> f32 {
    global0 = func_3(Struct_4(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(-102f * 199f), _wgslsmith_f_op_f32(f32(-1f) * -676f)), vec4<f32>(arg_0, _wgslsmith_f_op_f32(step(arg_0, arg_0)), 328f, arg_0), true)), Struct_3(Struct_2(Struct_1(809f, vec2<f32>(-1000f, arg_0), vec2<i32>(u_input.c.x, 2147483647i)), Struct_1(arg_0, vec2<f32>(arg_0, arg_0), vec2<i32>(0i, 11123i)), Struct_1(1986f, vec2<f32>(arg_0, 1000f), vec2<i32>(u_input.c.x, 1i)), Struct_1(-135f, vec2<f32>(481f, arg_0), u_input.c), vec3<u32>(u_input.d, global0.x, global0.x) >> (vec3<u32>(u_input.d, 4294967295u, u_input.d) % vec3<u32>(32u)))), vec2<bool>(true, true), vec4<f32>(-1000f, _wgslsmith_f_op_f32(1000f - 1172f), arg_0, 3147f)), ~(_wgslsmith_dot_vec3_u32(vec3<u32>(74809u, global0.x, 4294967295u) & vec3<u32>(global0.x, 27888u, 26610u), firstTrailingBit(vec3<u32>(global0.x, 20851u, 0u))) >> (~25878u % 32u)), Struct_1(arg_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0, 640f)))), vec2<i32>(u_input.b, u_input.b)));
    let var_0 = -vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(~u_input.b, _wgslsmith_clamp_i32(u_input.b, u_input.c.x, 2147483647i), u_input.c.x, 1i), ~(vec4<i32>(1i, 10622i, -2147483647i, -1i) >> (vec4<u32>(1u, global0.x, global0.x, u_input.a.x) % vec4<u32>(32u)))), u_input.c.x, abs(u_input.c.x));
    global0 = _wgslsmith_sub_vec3_u32(func_3(Struct_4(vec4<f32>(_wgslsmith_div_f32(-836f, arg_0), -425f, -1279f, _wgslsmith_f_op_f32(-arg_0)), Struct_3(Struct_2(Struct_1(317f, vec2<f32>(-1046f, -535f), vec2<i32>(14594i, -1i)), Struct_1(336f, vec2<f32>(arg_0, 265f), var_0.yz), Struct_1(arg_0, vec2<f32>(-504f, arg_0), u_input.c), Struct_1(-1132f, vec2<f32>(1053f, arg_0), var_0.yx), vec3<u32>(u_input.a.x, 1u, 0u))), vec2<bool>(false, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, 118f, arg_0) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-163f, arg_0, arg_0, arg_0)))), global0.x, Struct_1(1019f, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1276f, arg_0))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-717f, 181f))))), -reverseBits(vec2<i32>(var_0.x, var_0.x)))), ~(~_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global0.x, u_input.d, 0u), vec3<u32>(u_input.d, u_input.a.x, 0u)), vec3<u32>(4294967295u, u_input.d, u_input.d), _wgslsmith_add_vec3_u32(vec3<u32>(global0.x, 2757u, global0.x), vec3<u32>(u_input.d, 4294967295u, 52848u)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, arg_0, true))) + -1000f) + _wgslsmith_div_f32(-638f, arg_0)) + _wgslsmith_f_op_f32(-arg_0));
    let var_2 = true;
    return _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -581f));
}

fn func_1(arg_0: vec4<f32>) -> vec3<f32> {
    let var_0 = ~min(~(~vec3<u32>(1u, 3666u, u_input.a.x)), select(vec3<u32>(7946u, u_input.d, 1u), vec3<u32>(1u, u_input.d, 28107u), vec3<bool>(true, true, false))) & max(~(~(~vec3<u32>(6858u, 87770u, u_input.a.x))), ~vec3<u32>(0u, _wgslsmith_mult_u32(global0.x, u_input.a.x), global0.x));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, 766f) + arg_0.yww) + vec3<f32>(-431f, _wgslsmith_f_op_f32(func_2(1787f)), -1161f)))) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-145f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -704f)), _wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_div_f32(arg_0.x, arg_0.x), any(vec2<bool>(true, true))))))));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: vec3<f32>) -> Struct_2 {
    global0 = vec3<u32>(u_input.d << (36879u % 32u), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, 65519u, 1u, global0.x)) & _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(52841u, u_input.a.x, 49825u, u_input.d), vec4<u32>(0u, global0.x, u_input.d, global0.x)), vec4<u32>(32208u, 18368u, 4294967295u, global0.x)), ~(~vec4<u32>(u_input.a.x, u_input.d, global0.x, global0.x))), abs(u_input.d & firstLeadingBit(global0.x)));
    global0 = min(~(vec3<u32>(u_input.d, 1u, abs(u_input.a.x)) << (vec3<u32>(global0.x, ~u_input.d, 52782u) % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(~max(vec3<u32>(0u, global0.x, 51315u), vec3<u32>(u_input.a.x, global0.x, u_input.d)), ~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 63603u, u_input.a.x), vec3<u32>(10020u, u_input.d, global0.x))), vec3<u32>(47533u, 14008u, _wgslsmith_dot_vec2_u32(vec2<u32>(5019u, 1157u), firstTrailingBit(u_input.a)))));
    let var_0 = arg_2.yz;
    var var_1 = ~_wgslsmith_mult_i32(_wgslsmith_clamp_i32(78182i, -5116i ^ u_input.c.x, -25473i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, arg_1), vec2<i32>(u_input.b, -66296i))) >= _wgslsmith_mod_i32(firstTrailingBit(_wgslsmith_clamp_i32(i32(-1i) * -1i, -arg_1, 27956i)), firstLeadingBit(~arg_1) << (((u_input.d >> (1u % 32u)) >> (~u_input.a.x % 32u)) % 32u));
    let var_2 = select(vec3<bool>(true, arg_0, arg_0), select(select(select(!vec3<bool>(false, arg_0, arg_0), select(vec3<bool>(false, arg_0, false), vec3<bool>(arg_0, false, true), true), vec3<bool>(arg_0, arg_0, true)), !select(vec3<bool>(false, true, false), vec3<bool>(true, arg_0, arg_0), arg_0), !arg_0 != (u_input.a.x <= global0.x)), vec3<bool>(!arg_0 && arg_0, true, arg_0), arg_0), select(!select(vec3<bool>(arg_0, false, false), !vec3<bool>(false, arg_0, arg_0), arg_0), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), 8366i != u_input.c.x), !(!select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, false, arg_0)))));
    return Struct_2(Struct_1(-892f, arg_2.zz, u_input.c), Struct_1(arg_2.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.zz + var_0)), vec2<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, u_input.b, u_input.c.x), vec3<i32>(arg_1, u_input.c.x, -30449i)), _wgslsmith_clamp_i32(u_input.c.x ^ arg_1, 41791i, u_input.c.x))), Struct_1(_wgslsmith_div_f32(-708f, arg_2.x), _wgslsmith_f_op_vec2_f32(arg_2.zy - vec2<f32>(_wgslsmith_f_op_f32(-arg_2.x), 1464f)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, -4843i), vec2<i32>(-1i) * -u_input.c)), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2.x - 1305f), arg_2.x, var_2.x && arg_0)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(358f, arg_2.x), _wgslsmith_f_op_f32(f32(-1f) * -290f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-771f, arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * arg_2.x))), u_input.c), vec3<u32>(u_input.a.x, 1u, select(global0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.a.x), vec2<u32>(0u, global0.x)), arg_0) ^ ~abs(9231u)));
}

fn func_5(arg_0: f32, arg_1: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_sub_u32(20587u, _wgslsmith_div_u32(global0.x, 1u));
    global0 = _wgslsmith_mod_vec3_u32(func_3(Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.b.x, arg_0, 1437f, 594f)), Struct_3(arg_1), vec2<bool>(arg_0 < arg_1.b.a, true), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -781f), _wgslsmith_f_op_f32(min(-190f, arg_1.d.a)), -489f, 1341f)), arg_1.e.x, Struct_1(-172f, _wgslsmith_f_op_vec2_f32(-arg_1.d.b), vec2<i32>(-2140i, ~1i))), arg_1.e ^ arg_1.e);
    global0 = ~arg_1.e;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -320f), arg_1.c.a, 1297f, arg_1.d.a);
    let var_2 = !(abs(-38299i) >= ((_wgslsmith_mod_i32(u_input.c.x, u_input.b) ^ -u_input.c.x) >> (arg_1.e.x % 32u)));
    return func_4(var_2 | select(!var_2, select(true, false, true) || var_2, var_2), 5627i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1170f, 3000f, 228f), var_1.yzx))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-600f)));
    var var_1 = func_5(_wgslsmith_f_op_f32(select(var_0, -2474f, true)), func_4(true, -57276i, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -282f, -1624f, var_0)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(962f, -261f, 2350f), vec3<f32>(1012f, var_0, var_0))), any(vec3<bool>(true, true, true))))));
    var var_2 = vec3<i32>(_wgslsmith_div_i32(i32(-1i) * -2147483647i, func_5(_wgslsmith_f_op_f32(-1000f + -727f), func_4(true, -2147483647i, vec3<f32>(var_0, 823f, 177f))).d.c.x), 0i, _wgslsmith_add_i32(select(i32(-1i) * -1i, _wgslsmith_mod_i32(-23375i, u_input.b), all(vec3<bool>(false, true, true))), 23492i)) >> (~(~(var_1.e & vec3<u32>(var_1.e.x, 45082u, var_1.e.x)) >> (var_1.e % vec3<u32>(32u))) % vec3<u32>(32u));
    var_1 = func_4(false, -(~58577i), _wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.d.a, 447f, 259f, var_1.d.b.x)))), vec4<f32>(_wgslsmith_div_f32(var_1.b.b.x, var_1.c.b.x), _wgslsmith_f_op_f32(-1543f * 1715f), -399f, var_0))))));
    var var_3 = 0u;
    let var_4 = _wgslsmith_div_vec4_i32(abs(vec4<i32>(-1i) * -vec4<i32>(var_1.a.c.x, var_2.x, u_input.b, u_input.b)), _wgslsmith_clamp_vec4_i32(~_wgslsmith_mod_vec4_i32(~vec4<i32>(var_1.c.c.x, var_1.b.c.x, 0i, var_2.x), _wgslsmith_mod_vec4_i32(vec4<i32>(var_2.x, 50795i, var_1.b.c.x, var_1.c.c.x), vec4<i32>(28393i, u_input.b, var_2.x, 1i))), vec4<i32>(func_5(_wgslsmith_f_op_f32(func_2(var_0)), func_5(-1892f, Struct_2(Struct_1(var_0, vec2<f32>(-780f, -429f), vec2<i32>(u_input.b, 2147483647i)), Struct_1(var_0, vec2<f32>(var_1.b.a, var_0), var_2.xy), var_1.b, var_1.d, var_1.e))).d.c.x, ~u_input.b, reverseBits(var_1.b.c.x), 2147483647i), firstTrailingBit(vec4<i32>(var_2.x, 1i, 14308i, -1i)) >> (~vec4<u32>(4187u, u_input.d, 61745u, 1u) % vec4<u32>(32u))));
    let var_5 = vec2<bool>(all(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), true)), !(!((45222i >= var_2.x) || true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(vec2<u32>((u_input.d << (32959u % 32u)) ^ _wgslsmith_div_u32(18616u, 15863u), func_4(true, ~var_4.x, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(727f, -224f, -185f)))).e.x), max(firstTrailingBit(reverseBits(vec2<u32>(1u, global0.x))), min(u_input.a, var_1.e.yz))), ~_wgslsmith_mod_vec4_i32(var_4, ~max(vec4<i32>(var_2.x, -1i, var_1.a.c.x, 0i), var_4)));
}

