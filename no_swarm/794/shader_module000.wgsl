struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: Struct_2,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 25>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<bool>) -> vec3<bool> {
    global0 = array<Struct_4, 25>();
    global0 = array<Struct_4, 25>();
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-748f, -473f), vec2<f32>(-1198f, -126f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(2550f, -587f)))))))), Struct_2(Struct_1(-159f, vec3<bool>(arg_0.x, any(arg_0), true), -_wgslsmith_mod_i32(-22598i, u_input.a.x), _wgslsmith_f_op_f32(-840f + _wgslsmith_div_f32(-696f, 670f))), false), Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -329f) + _wgslsmith_f_op_f32(trunc(-1484f))), select(!vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), true), u_input.a.x, _wgslsmith_f_op_f32(-942f + _wgslsmith_f_op_f32(f32(-1f) * -584f))), false), 314f, Struct_2(Struct_1(-1626f, !select(vec3<bool>(false, false, arg_0.x), vec3<bool>(false, false, arg_0.x), vec3<bool>(arg_0.x, true, true)), -(~1i), -299f), u_input.b != firstLeadingBit(_wgslsmith_mod_u32(u_input.b, 9899u))));
    let var_1 = !select(!(!(!var_0.e.a.b)), select(vec3<bool>(false, arg_0.x | arg_0.x, var_0.a.x > var_0.e.a.d), !select(var_0.e.a.b, vec3<bool>(var_0.b.a.b.x, arg_0.x, var_0.b.a.b.x), arg_0.x), vec3<bool>(10522u > u_input.b, !var_0.e.a.b.x, var_0.b.b | false)), !vec3<bool>(1u <= u_input.b, true, var_0.c.b));
    var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(var_0.a)))), _wgslsmith_f_op_vec2_f32(-var_0.a), true)), var_0.b, Struct_2(Struct_1(_wgslsmith_f_op_f32(var_0.e.a.d + _wgslsmith_f_op_f32(-var_0.d)), vec3<bool>(!var_0.c.a.b.x, true, !var_0.c.a.b.x), firstLeadingBit(u_input.a.x), _wgslsmith_f_op_f32(f32(-1f) * -369f)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.a.a + var_0.e.a.d)), var_0.b);
    return select(!(!var_0.e.a.b), select(var_0.c.a.b, !select(select(vec3<bool>(arg_0.x, false, true), vec3<bool>(var_0.c.b, var_1.x, var_1.x), vec3<bool>(arg_0.x, arg_0.x, true)), vec3<bool>(var_0.b.b, true, true), !vec3<bool>(var_1.x, false, false)), arg_0.x), var_0.b.a.b.x);
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> Struct_3 {
    let var_0 = true;
    let var_1 = false || arg_0.b.x;
    let var_2 = 434f;
    let var_3 = arg_0.b.x;
    global0 = array<Struct_4, 25>();
    return Struct_3(vec2<f32>(arg_2, arg_2), Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -770f), !vec3<bool>(true, var_1, var_1), -6877i, _wgslsmith_f_op_f32(sign(-851f))), ((i32(-1i) * -1i) >> (~u_input.b % 32u)) > countOneBits(0i)), Struct_2(arg_0, all(select(vec3<bool>(false, false, var_3), arg_0.b, all(vec3<bool>(var_1, false, true))))), arg_0.a, Struct_2(Struct_1(_wgslsmith_div_f32(-1000f, 741f), select(!vec3<bool>(false, arg_0.b.x, false), func_3(arg_0.b.xz), arg_0.b), arg_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * arg_2)), arg_0.b.x));
}

fn func_1(arg_0: bool, arg_1: vec4<i32>, arg_2: vec4<u32>, arg_3: vec2<u32>) -> vec3<bool> {
    let var_0 = func_2(Struct_1(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(573f - _wgslsmith_f_op_f32(trunc(-469f))), true)), !select(!vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, arg_0, arg_0), true), 0i, _wgslsmith_f_op_f32(f32(-1f) * -994f)), -284f, -1945f);
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(func_2(Struct_1(_wgslsmith_f_op_f32(exp2(var_0.b.a.d)), !var_0.b.a.b, arg_1.x, 1031f), 1897f, _wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(-1372f + -1107f))).a * var_0.a), var_0.c, func_2(func_2(Struct_1(_wgslsmith_f_op_f32(exp2(var_0.a.x)), vec3<bool>(false, var_0.b.b, arg_0), 1i, _wgslsmith_f_op_f32(var_0.a.x + -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(989f, -562f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.a.a - -1000f))).e.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(702f, var_0.a.x) + -1696f), -1110f, !(!var_0.e.b))), _wgslsmith_f_op_f32(round(var_0.d))).b, -478f, func_2(var_0.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1230f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a.x)) * _wgslsmith_f_op_f32(f32(-1f) * -888f))))).b);
    global0 = array<Struct_4, 25>();
    global0 = array<Struct_4, 25>();
    global0 = array<Struct_4, 25>();
    return var_0.e.a.b;
}

fn func_4(arg_0: vec2<u32>, arg_1: i32, arg_2: vec3<bool>, arg_3: Struct_4) -> Struct_2 {
    global0 = array<Struct_4, 25>();
    global0 = array<Struct_4, 25>();
    global0 = array<Struct_4, 25>();
    global0 = array<Struct_4, 25>();
    global0 = array<Struct_4, 25>();
    return func_2(Struct_1(-345f, !vec3<bool>(arg_1 <= 18258i, true, false), ~_wgslsmith_dot_vec4_i32(vec4<i32>(25081i, 1i, 0i, 0i), vec4<i32>(arg_3.b, arg_1, arg_1, arg_3.b)) << (~(~1u) % 32u), -1124f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-125f)) - _wgslsmith_f_op_f32(f32(-1f) * -353f)) * -1047f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-633f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-112f)), 812f)))).e;
}

fn func_5(arg_0: i32, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: Struct_3) -> vec4<u32> {
    global0 = array<Struct_4, 25>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.e.a.d, _wgslsmith_f_op_f32(f32(-1f) * -295f))), select(func_1(any(func_4(arg_2, u_input.a.x, vec3<bool>(arg_3.c.b, true, arg_3.e.b), global0[_wgslsmith_index_u32(arg_2.x, 25u)]).a.b), vec4<i32>(2147483647i, _wgslsmith_add_i32(9924i, arg_0), u_input.a.x ^ u_input.a.x, max(arg_3.e.a.c, 2147483647i)), vec4<u32>(min(arg_2.x, 4294967295u), 1u, ~40051u, ~0u), vec2<u32>(_wgslsmith_mult_u32(4294967295u, u_input.b), 73116u)), vec3<bool>(all(!arg_1.b.a.b), arg_1.b.b, func_2(func_2(Struct_1(arg_3.c.a.d, vec3<bool>(arg_3.e.b, arg_3.b.a.b.x, arg_1.c.b), arg_3.b.a.c, arg_1.c.a.a), arg_3.b.a.d, -1293f).c.a, -484f, _wgslsmith_f_op_f32(-arg_1.d)).b.a.b.x), arg_1.a.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.c.a.d))), _wgslsmith_mult_i32(-18097i, -(func_2(Struct_1(-318f, arg_3.e.a.b, u_input.a.x, arg_1.b.a.a), 1515f, arg_3.b.a.a).c.a.c & _wgslsmith_mult_i32(arg_0, arg_0))), arg_1.a.x);
    global0 = array<Struct_4, 25>();
    var var_1 = true;
    var var_2 = func_4(arg_2, _wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.a.x, _wgslsmith_div_i32(42483i, arg_3.c.a.c)), func_4(arg_2, ~var_0.c, vec3<bool>(true, arg_1.b.b, false), Struct_4(vec4<u32>(u_input.b, u_input.b, u_input.b, 58684u), u_input.a.x, arg_3.e.a.b)).a.c), 0i), vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(firstLeadingBit(arg_2.x), 25u)]).a;
    return _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(min(~vec4<u32>(arg_2.x, 1u, arg_2.x, 40866u), vec4<u32>(71624u, 0u, arg_2.x, arg_2.x)), ~_wgslsmith_div_vec4_u32(vec4<u32>(93910u, 38311u, 38947u, arg_2.x), vec4<u32>(arg_2.x, 4294967295u, 2126u, 34139u))), u_input.b, abs(25827u), abs(~1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_add_u32(countOneBits(arg_2.x), countOneBits(u_input.b)), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, u_input.b) & vec3<u32>(arg_2.x, u_input.b, 4294967295u), _wgslsmith_clamp_vec3_u32(vec3<u32>(43777u, 0u, arg_2.x), vec3<u32>(1893u, u_input.b, 16692u), vec3<u32>(u_input.b, u_input.b, 25637u))), reverseBits(min(0u, 57705u)), arg_2.x), select(reverseBits(vec4<u32>(3310u, u_input.b, 20798u, 41934u)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(arg_2.x, u_input.b, arg_2.x, 5786u), vec4<u32>(0u, 0u, arg_2.x, arg_2.x)) % vec4<u32>(32u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.x, u_input.b, u_input.b, 5830u), vec4<u32>(u_input.b, u_input.b, 20760u, arg_2.x)), !(!vec4<bool>(false, arg_3.c.b, true, false))), vec4<u32>(u_input.b, _wgslsmith_mod_u32(reverseBits(74403u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 4294967295u), vec3<u32>(u_input.b, u_input.b, u_input.b))), arg_2.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, 0u, 10504u), vec3<u32>(1u, u_input.b, 43420u)), arg_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 25>();
    let var_0 = func_5(u_input.a.x, Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(242f - 1523f)), _wgslsmith_f_op_f32(f32(-1f) * -394f)), func_4(~vec2<u32>(0u, u_input.b), (50152i & u_input.a.x) >> (~0u % 32u), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true), Struct_4(vec4<u32>(60840u, u_input.b, 112392u, u_input.b), _wgslsmith_add_i32(u_input.a.x, u_input.a.x), func_1(false, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i), vec4<u32>(4294967295u, 0u, u_input.b, u_input.b), vec2<u32>(4294967295u, 12841u)))), Struct_2(Struct_1(-1395f, vec3<bool>(true, true, true), -u_input.a.x, -583f), true), _wgslsmith_f_op_f32(trunc(-1290f)), Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(-1169f)), vec3<bool>(false, false, false), -5339i, -1109f), true)), vec2<u32>(58736u, 4294967295u), func_2(func_2(Struct_1(-548f, vec3<bool>(true, true, true), 27189i >> (u_input.b % 32u), _wgslsmith_f_op_f32(f32(-1f) * -1327f)), _wgslsmith_f_op_f32(step(-756f, _wgslsmith_f_op_f32(-1492f + -1000f))), _wgslsmith_f_op_f32(abs(1107f))).c.a, _wgslsmith_f_op_f32(max(-965f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -496f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -298f)))));
    global0 = array<Struct_4, 25>();
    let var_1 = vec3<bool>(true, !all(vec3<bool>(select(false, false, false), true, false)), true);
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), func_3(vec2<bool>(any(vec3<bool>(true, var_1.x, true)), false)), u_input.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, -1000f, var_1.x))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), true))), !(!(abs(u_input.a.x) <= 9535i)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1033f), var_2.a.b, -14190i, -612f);
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_3.a, 1866f, 559f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a, var_2.a.d, -215f) - vec3<f32>(195f, -290f, var_2.a.d)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(614f + var_2.a.d), var_3.d, _wgslsmith_div_f32(var_3.a, 484f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.d, var_2.a.d, -1000f), vec3<f32>(var_3.d, var_2.a.d, var_2.a.a), var_3.b))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.d, var_3.a, -784f) - vec3<f32>(-1026f, var_2.a.a, var_3.a)))))));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a ^ reverseBits(vec2<i32>(-u_input.a.x, ~(-6606i))), var_4.zx, ~(~var_0.x));
}

