struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec4<f32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec3<bool>,
    d: f32,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: bool,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
    c: i32,
    d: bool,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: u32,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, false, true);

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: i32) -> vec4<bool> {
    var var_0 = 22670i;
    var var_1 = -1052f;
    let var_2 = vec2<bool>(true, true);
    var var_3 = arg_2;
    global0 = arg_0.e;
    return !arg_0.e;
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: f32) -> Struct_2 {
    global0 = select(!(!select(!vec4<bool>(false, arg_0, true, global0.x), vec4<bool>(false, global0.x, arg_0, true), func_3(Struct_1(0i, vec2<i32>(-16052i, 34882i), 25107i, vec4<f32>(arg_2, -483f, 1354f, 2206f), vec4<bool>(global0.x, arg_0, arg_0, global0.x)), vec3<bool>(global0.x, true, arg_0), Struct_2(543f, true, vec3<bool>(arg_0, arg_0, false), 529f, vec3<i32>(56628i, -1i, -7587i)), -41112i))), vec4<bool>(true, !arg_0, true, all(select(vec3<bool>(false, false, true), func_3(Struct_1(-43531i, vec2<i32>(-8419i, -1i), -17131i, vec4<f32>(arg_1, arg_2, 635f, -1000f), vec4<bool>(global0.x, false, arg_0, global0.x)), global0.wyw, Struct_2(arg_1, global0.x, global0.wyx, arg_2, vec3<i32>(1i, -37339i, -2147483647i)), -7173i).wxw, !global0.zyx))), func_3(Struct_1(~(-1i), vec2<i32>(-1i) * -vec2<i32>(-1i, 0i), ~select(-11160i, -2423i, true), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1509f, 2505f, 255f, arg_2)))), vec4<bool>(any(vec4<bool>(true, arg_0, true, true)), u_input.a >= 4294967295u, false, any(global0.zxw))), func_3(Struct_1(_wgslsmith_clamp_i32(30895i, 60852i, -1i), countOneBits(vec2<i32>(29134i, -31659i)), -9083i, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-471f, arg_1, arg_1, 472f), vec4<f32>(arg_2, arg_2, -355f, -338f), vec4<bool>(arg_0, arg_0, false, false))), vec4<bool>(true, global0.x, arg_0, global0.x)), vec3<bool>(true, arg_0, !arg_0), Struct_2(331f, all(global0.wxz), select(vec3<bool>(true, arg_0, global0.x), vec3<bool>(global0.x, false, global0.x), vec3<bool>(true, true, arg_0)), _wgslsmith_f_op_f32(round(arg_1)), vec3<i32>(1i, 1i, 1i)), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(0i, -1i, 17531i))).xxx, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), true | all(vec3<bool>(arg_0, global0.x, false)), global0.zwx, _wgslsmith_f_op_f32(sign(1000f)), vec3<i32>(1i, -2147483647i, reverseBits(1i))), -43771i));
    var var_0 = vec3<u32>(_wgslsmith_clamp_u32(firstLeadingBit(_wgslsmith_clamp_u32(0u, u_input.b, u_input.a)), 38527u, ~select(u_input.b, 4294967295u, global0.x)), u_input.a, ~(~44772u)) ^ _wgslsmith_mod_vec3_u32(max(abs(vec3<u32>(25641u, u_input.b, 1u) >> (vec3<u32>(u_input.b, u_input.b, 4294967295u) % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(0u, 15689u, u_input.a)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.b), vec3<u32>(u_input.b, u_input.a, u_input.b)))), vec3<u32>(u_input.b, 0u >> (u_input.b % 32u), _wgslsmith_mult_u32(~u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(u_input.a, 1u)))));
    let var_1 = Struct_4(Struct_1(~(-select(-62398i, 0i, true)), _wgslsmith_add_vec2_i32(-reverseBits(vec2<i32>(-42025i, 0i)), vec2<i32>(1i, 1i)), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-2147483647i, 1i, 6316i, 1i)), firstTrailingBit(abs(vec4<i32>(1i, 49967i, 12697i, 52800i)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, _wgslsmith_f_op_f32(trunc(-332f)), -493f, _wgslsmith_f_op_f32(arg_1 + arg_1)) * vec4<f32>(459f, 1807f, arg_2, -1270f)), select(select(func_3(Struct_1(17937i, vec2<i32>(-21195i, 2535i), 43434i, vec4<f32>(arg_2, -1697f, -544f, arg_1), vec4<bool>(arg_0, false, true, true)), vec3<bool>(arg_0, arg_0, false), Struct_2(arg_1, false, vec3<bool>(arg_0, global0.x, true), -284f, vec3<i32>(-43635i, 13996i, 20924i)), -45974i), !vec4<bool>(false, arg_0, false, global0.x), !vec4<bool>(global0.x, true, global0.x, arg_0)), vec4<bool>(all(vec2<bool>(global0.x, arg_0)), global0.x, all(vec2<bool>(false, global0.x)), arg_0), arg_0)), vec3<u32>(_wgslsmith_clamp_u32(u_input.a, _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.b, 60293u), firstTrailingBit(u_input.a)), ~_wgslsmith_div_u32(4294967295u, u_input.a)), ~(~4294967295u), firstLeadingBit(~_wgslsmith_mult_u32(4294967295u, var_0.x))), -_wgslsmith_add_i32(_wgslsmith_mod_i32(2147483647i, -2147483647i), -1i) >> (~(_wgslsmith_mod_u32(43160u, 13563u) | _wgslsmith_mult_u32(u_input.a, var_0.x)) % 32u), all(!(!vec4<bool>(global0.x, global0.x, false, true))));
    var var_2 = !(all(vec2<bool>(false, false)) | global0.x);
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1594f);
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.d.x, 1000f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1)))), all(var_1.a.e), select(!vec3<bool>(global0.x | false, var_3 <= var_3, true), !select(select(var_1.a.e.ywz, global0.wyy, global0.zzz), !vec3<bool>(true, arg_0, true), true), vec3<bool>(!any(global0.yx), true, any(vec3<bool>(var_1.a.e.x, var_1.a.e.x, false)))), -1595f, -firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(var_1.a.a, 1i, var_1.c), vec3<i32>(1i, -19921i, var_1.c) & vec3<i32>(var_1.a.c, -1i, -8874i))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: vec2<i32>) -> Struct_3 {
    let var_0 = 57503u;
    var var_1 = -1i;
    var var_2 = func_2(global0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.d + 1120f), _wgslsmith_f_op_f32(-arg_1.d)))))), _wgslsmith_f_op_f32(f32(-1f) * -722f));
    return Struct_3(~(-arg_3), ~vec2<u32>(abs(~u_input.b), firstLeadingBit(4294967295u << (var_0 % 32u))), !func_2(!any(vec4<bool>(global0.x, arg_1.b, var_2.b, global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), _wgslsmith_f_op_f32(step(1000f, arg_1.d))).b, Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(var_2.d)))), arg_1.c.x, var_2.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1075f * -1056f))))), reverseBits(reverseBits(select(arg_2.zzz, arg_2.wzy, true)))), func_2(true, var_2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(func_2(false, 1223f, arg_1.a).a)))));
}

fn func_5(arg_0: Struct_3, arg_1: f32) -> Struct_2 {
    var var_0 = Struct_1(arg_0.e.e.x, arg_0.a, _wgslsmith_dot_vec3_i32(min(_wgslsmith_add_vec3_i32(min(vec3<i32>(19753i, -26012i, arg_0.a.x), arg_0.d.e), _wgslsmith_clamp_vec3_i32(vec3<i32>(25600i, arg_0.e.e.x, arg_0.a.x), vec3<i32>(-2147483647i, 1i, 20409i), vec3<i32>(22392i, 14778i, arg_0.a.x))), _wgslsmith_clamp_vec3_i32(~arg_0.d.e, abs(vec3<i32>(-1i, -43509i, -2147483647i)), vec3<i32>(arg_0.d.e.x, arg_0.e.e.x, 1563i))), arg_0.d.e), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 1363f, 1018f, arg_1)))), select(func_3(Struct_1(select(-6650i, arg_0.a.x, arg_0.c), vec2<i32>(-7745i, -9533i), arg_0.d.e.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_1, 233f, 1000f) - vec4<f32>(arg_0.e.a, arg_0.e.a, arg_1, arg_1)), func_3(Struct_1(arg_0.a.x, arg_0.a, 2147483647i, vec4<f32>(arg_1, arg_0.d.d, arg_0.e.a, -2616f), vec4<bool>(arg_0.e.b, arg_0.c, true, global0.x)), vec3<bool>(false, arg_0.e.b, true), Struct_2(-1721f, global0.x, arg_0.d.c, -147f, vec3<i32>(arg_0.d.e.x, arg_0.d.e.x, arg_0.d.e.x)), arg_0.a.x)), arg_0.e.c, arg_0.e, arg_0.a.x), select(vec4<bool>(all(arg_0.e.c), all(vec2<bool>(global0.x, true)), global0.x, arg_0.e.b), vec4<bool>(true, true, !global0.x, true), vec4<bool>(global0.x, false, global0.x, arg_0.e.c.x)), vec4<bool>(global0.x, arg_0.c, all(vec3<bool>(global0.x, global0.x, true)), false)));
    let var_1 = func_4(var_0.b, func_4(vec2<i32>(~func_4(arg_0.e.e.zz, Struct_2(-1203f, false, arg_0.d.c, 803f, vec3<i32>(var_0.a, var_0.b.x, 2147483647i)), vec4<i32>(-16351i, -19823i, var_0.a, var_0.a), vec2<i32>(var_0.a, 2147483647i)).e.e.x, -var_0.a), func_4(arg_0.a, arg_0.e, _wgslsmith_sub_vec4_i32(select(vec4<i32>(2147483647i, var_0.a, -45651i, var_0.c), vec4<i32>(arg_0.a.x, -46985i, -51002i, var_0.a), vec4<bool>(global0.x, true, true, false)), _wgslsmith_add_vec4_i32(vec4<i32>(0i, -24865i, arg_0.e.e.x, arg_0.a.x), vec4<i32>(20193i, 51275i, var_0.c, arg_0.d.e.x))), ~vec2<i32>(-7365i, 1i)).d, vec4<i32>(1i, ~var_0.b.x, var_0.a, _wgslsmith_div_i32(-2147483647i, 6459i)) & firstTrailingBit(~vec4<i32>(var_0.c, var_0.c, arg_0.d.e.x, var_0.a)), arg_0.d.e.yy).e, abs(firstTrailingBit(abs(abs(vec4<i32>(arg_0.e.e.x, arg_0.a.x, 2147483647i, 64180i))))), vec2<i32>(-2211i, arg_0.d.e.x & -8150i)).d;
    let var_2 = _wgslsmith_mod_vec2_u32(vec2<u32>(0u, _wgslsmith_mult_u32(_wgslsmith_add_u32(0u, func_4(vec2<i32>(31797i, 22647i), Struct_2(112f, var_0.e.x, var_1.c, arg_1, var_1.e), vec4<i32>(var_0.c, 5219i, 3859i, var_1.e.x), var_0.b).b.x), u_input.b)), arg_0.b);
    var_0 = Struct_1(_wgslsmith_mult_i32(-abs(arg_0.e.e.x) & (761i & -arg_0.e.e.x), 0i), reverseBits(vec2<i32>(arg_0.d.e.x, 1i)), -28540i, var_0.d, !(!var_0.e));
    let var_3 = var_2 ^ _wgslsmith_div_vec2_u32(~_wgslsmith_clamp_vec2_u32(arg_0.b, countOneBits(vec2<u32>(arg_0.b.x, 4294967295u)), ~vec2<u32>(arg_0.b.x, var_2.x)), var_2);
    return Struct_2(_wgslsmith_f_op_f32(-1014f * _wgslsmith_f_op_f32(round(func_4(_wgslsmith_div_vec2_i32(arg_0.d.e.zy, var_0.b), func_4(arg_0.d.e.yz, Struct_2(800f, true, global0.xwz, arg_0.d.a, var_1.e), vec4<i32>(51160i, arg_0.d.e.x, -19149i, var_0.a), var_0.b).e, vec4<i32>(-7439i, arg_0.d.e.x, 17136i, var_0.b.x), firstLeadingBit(vec2<i32>(-1i, var_1.e.x))).e.a))), !var_0.e.x, var_0.e.zxy, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1603f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(381f * -281f) - _wgslsmith_f_op_f32(sign(arg_0.e.d)))), _wgslsmith_f_op_f32(max(603f, _wgslsmith_f_op_f32(floor(arg_0.e.d))))), arg_0.d.e);
}

fn func_6(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec4<f32>) -> bool {
    let var_0 = func_5(func_4(arg_1.e.yz, Struct_2(arg_2.x, any(arg_0.a.e.zyz), arg_1.c, -1000f, vec3<i32>(~(-1i), arg_0.c, _wgslsmith_add_i32(-2147483647i, arg_1.e.x))), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(278i, arg_0.c, arg_0.a.a, -35001i) >> (vec4<u32>(arg_0.b.x, u_input.a, u_input.b, 4294967295u) % vec4<u32>(32u)), -vec4<i32>(arg_0.c, arg_0.a.b.x, 1i, arg_1.e.x)), _wgslsmith_mult_vec4_i32(-vec4<i32>(arg_0.c, -1i, -1i, -119222i), vec4<i32>(arg_0.c, -18800i, 0i, arg_1.e.x))), arg_1.e.xy), func_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.x))) >= func_4(arg_1.e.yx | vec2<i32>(arg_0.a.a, 40037i), arg_1, select(vec4<i32>(arg_0.c, -25111i, arg_1.e.x, arg_0.a.b.x), vec4<i32>(2147483647i, arg_0.a.a, 2147483647i, -2147483647i), arg_0.a.e), -vec2<i32>(arg_1.e.x, 1i)).d.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.x))) + arg_0.a.d.x), arg_2.x).a).d;
    let var_1 = _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(~arg_0.a.c, -26009i), -vec2<i32>(arg_0.c, arg_1.e.x)), arg_0.a.b, vec2<i32>(1i, arg_0.c)), select(firstLeadingBit(vec2<i32>(arg_0.a.b.x, -2147483647i)), abs(arg_1.e.yy), func_2(arg_0.a.e.x, _wgslsmith_f_op_f32(floor(arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.d.x + arg_0.a.d.x))).b));
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)))));
    var var_3 = arg_0.a;
    var var_4 = var_0;
    return false;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: Struct_4, arg_3: vec4<i32>) -> vec3<i32> {
    global0 = vec4<bool>(true, global0.x, func_6(Struct_4(arg_2.a, arg_2.b, firstTrailingBit(29890i), false), func_5(func_4(vec2<i32>(arg_3.x, arg_2.a.a) ^ vec2<i32>(arg_2.a.c, -44361i), func_2(false, 757f, 841f), select(arg_3, vec4<i32>(-27469i, arg_3.x, 2147483647i, 0i), false), arg_2.a.b << (arg_2.b.zx % vec2<u32>(32u))), 1923f), arg_2.a.d), arg_2.a.e.x);
    let var_0 = 264f;
    var var_1 = arg_0.x;
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(143f - -702f), var_0)))));
    var var_3 = !global0.x;
    return arg_3.xzw;
}

fn func_7(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_3 {
    var var_0 = Struct_5(_wgslsmith_clamp_vec2_u32(vec2<u32>(42334u, select(func_4(arg_2.e.xz, arg_2, vec4<i32>(-2147483647i, -12962i, -8819i, 2147483647i), arg_1.zx).b.x, 1u, any(vec2<bool>(false, global0.x)))), ~vec2<u32>(u_input.a, _wgslsmith_sub_u32(u_input.a, 51373u)), ~(~(vec2<u32>(37702u, u_input.a) & vec2<u32>(51169u, u_input.b)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(759f, -283f)), vec2<f32>(arg_2.a, -450f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a, -865f) - vec2<f32>(479f, arg_2.d)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a, 396f)))))), u_input.a, Struct_3(arg_1.zy | _wgslsmith_mult_vec2_i32(arg_1.xy, ~arg_1.xy), vec2<u32>(~select(43274u, u_input.a, false), max(_wgslsmith_add_u32(u_input.a, 4294967295u), u_input.b)), global0.x, Struct_2(arg_2.d, !arg_0.x, func_3(Struct_1(-31808i, arg_2.e.xy, arg_2.e.x, vec4<f32>(208f, -220f, arg_2.d, -407f), vec4<bool>(global0.x, true, arg_0.x, true)), arg_0, func_2(arg_0.x, arg_2.a, 576f), _wgslsmith_div_i32(2147483647i, arg_1.x)).wzy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(565f * 135f)), vec3<i32>(-arg_2.e.x, arg_2.e.x, _wgslsmith_sub_i32(2147483647i, arg_1.x))), Struct_2(_wgslsmith_f_op_f32(exp2(arg_2.a)), false, vec3<bool>(true, any(vec3<bool>(true, true, true)), true), -1330f, ~arg_2.e)));
    let var_1 = ~vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(1u, 1u, var_0.d.b.x), vec3<u32>(var_0.a.x, var_0.c, 0u)), _wgslsmith_add_vec3_u32(abs(vec3<u32>(var_0.a.x, 13370u, 38622u)), abs(vec3<u32>(var_0.c, 38461u, u_input.a)))), _wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(0u, u_input.a), ~u_input.a), ~(4294967295u & u_input.b)), 4294967295u, _wgslsmith_mod_u32(var_0.c, u_input.b));
    var var_2 = Struct_5(_wgslsmith_mult_vec2_u32(select(vec2<u32>(~var_0.a.x, var_0.d.b.x), ~_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.d.b.x, 0u), vec2<u32>(var_0.c, 33588u)), false), ~countOneBits(var_1.xx)), var_0.b, _wgslsmith_div_u32(u_input.b, _wgslsmith_dot_vec3_u32(var_1.zwz, firstTrailingBit(abs(vec3<u32>(var_0.c, 8263u, u_input.b))))), func_4(min(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.x, arg_2.e.x), arg_2.e.xy), vec2<i32>(arg_1.x & arg_1.x, ~(-2147483647i))), var_0.d.e, -((vec4<i32>(1i, 2147483647i, var_0.d.d.e.x, 0i) ^ vec4<i32>(-2147483647i, arg_2.e.x, var_0.d.d.e.x, var_0.d.a.x)) >> ((var_1 | var_1) % vec4<u32>(32u))), vec2<i32>(var_0.d.a.x, 38610i)));
    var_2 = Struct_5(var_1.wz, vec2<f32>(523f, -1411f), 1u, func_4(vec2<i32>(arg_2.e.x, min(~var_2.d.a.x, i32(-1i) * -1i)), var_2.d.e, _wgslsmith_mod_vec4_i32(vec4<i32>(~arg_2.e.x, -53945i, arg_2.e.x, 2147483647i), vec4<i32>(min(var_2.d.e.e.x, 15090i), 1i, ~12520i, _wgslsmith_mult_i32(-31459i, 1i))), func_1(~var_0.d.b, vec2<bool>(false, arg_2.b), Struct_4(Struct_1(arg_1.x, vec2<i32>(arg_1.x, arg_2.e.x), -4752i, vec4<f32>(arg_2.d, arg_2.d, -378f, 566f), vec4<bool>(arg_0.x, true, true, var_2.d.d.c.x)), var_1.zzz, i32(-1i) * -1i, false), ~reverseBits(vec4<i32>(2172i, arg_2.e.x, -20093i, 2147483647i))).yz));
    var var_3 = var_2.d.e.c.yz;
    return var_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, global0.x, global0.x), !vec4<bool>(true, global0.x, false, global0.x))));
    var var_1 = ~0i;
    global0 = vec4<bool>(false, true, false, false);
    var var_2 = Struct_5(vec2<u32>(~u_input.a, 32779u), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(276f + -1000f)), -985f), 1190f), ~(~(~(~88948u))), func_7(global0.wyx, abs(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 1i, -51135i, 2147483647i), vec4<i32>(2147483647i, -18197i, 2147483647i, 2147483647i)), 0i >> (u_input.a % 32u), i32(-1i) * -2147483647i)), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -556f), var_0.x, !(!var_0.zww), 414f, max(func_1(vec2<u32>(u_input.a, 33059u), vec2<bool>(true, false), Struct_4(Struct_1(-1i, vec2<i32>(-42328i, 0i), 12455i, vec4<f32>(167f, -1238f, 686f, -218f), vec4<bool>(true, false, false, true)), vec3<u32>(0u, 11386u, 4294967295u), 13626i, global0.x), vec4<i32>(22952i, 81091i, -2147483647i, 37432i)), firstTrailingBit(vec3<i32>(-10587i, -5972i, -48860i))))));
    var var_3 = _wgslsmith_mult_u32(u_input.a, 41369u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(~_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(u_input.b, u_input.b, 0u, 44728u)), abs(vec4<u32>(var_2.a.x, u_input.b, var_2.c, 0u))), _wgslsmith_mult_vec4_u32(~firstTrailingBit(vec4<u32>(0u, u_input.b, 0u, 0u)), _wgslsmith_div_vec4_u32(vec4<u32>(11255u, 4294967295u, 22166u, 11797u), vec4<u32>(var_2.c, u_input.b, u_input.a, 4294967295u)))), ~(u_input.b & reverseBits(17742u)));
}

