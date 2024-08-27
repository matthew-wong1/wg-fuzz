struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec3<u32>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: f32,
    e: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = select(_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(14352u, arg_0.b.c.x, arg_1.c.x), _wgslsmith_mult_u32(1u, 70092u), ~22082u) | reverseBits(vec3<u32>(0u, 0u, 1u) << (vec3<u32>(104861u, arg_0.b.c.x, 1u) % vec3<u32>(32u))), vec3<u32>(_wgslsmith_dot_vec3_u32(~arg_1.c, max(vec3<u32>(arg_0.b.c.x, 138852u, arg_0.b.c.x), vec3<u32>(arg_1.c.x, 4294967295u, arg_1.c.x))), arg_0.b.c.x, ~min(u_input.a, 22861u)), vec3<u32>(~(1u << (arg_1.c.x % 32u)), u_input.a, ~arg_1.c.x)), vec3<u32>(4294967295u, ~(~_wgslsmith_sub_u32(arg_1.c.x, arg_1.c.x)), _wgslsmith_dot_vec4_u32(~reverseBits(vec4<u32>(0u, u_input.a, u_input.a, 5702u)), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 4294967295u, 4294967295u, 1u), vec4<u32>(30329u, arg_1.c.x, 4294967295u, arg_0.b.c.x)) >> (~vec4<u32>(arg_1.c.x, 1u, 40105u, 4294967295u) % vec4<u32>(32u)))), false);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(929f, 527f) - _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b.b, 258f), vec2<f32>(arg_1.d, arg_1.b))), vec2<f32>(arg_0.b.d, _wgslsmith_f_op_f32(161f + 804f))))) - _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.b, arg_1.b)) * 785f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.d, -371f)))));
    var var_2 = arg_0.a;
    var var_3 = Struct_2(Struct_1(vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(29709i, 43149i, arg_1.a.x), vec3<i32>(-1i, arg_0.b.e, arg_0.b.e)), firstLeadingBit(~(-2147483647i))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + -1428f)), -1000f)), ~arg_0.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), ~(-(~arg_1.a.x))), Struct_1(vec2<i32>(arg_0.b.a.x, -arg_1.a.x) << (vec2<u32>(u_input.a, arg_0.b.c.x) % vec2<u32>(32u)), var_1.x, _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(max(vec3<u32>(arg_1.c.x, 487u, arg_0.b.c.x), arg_0.b.c), arg_0.b.c, ~vec3<u32>(0u, 4294967295u, 0u)), min(vec3<u32>(arg_0.b.c.x, arg_0.b.c.x, 74766u), arg_0.b.c & vec3<u32>(19752u, var_0.x, 27743u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1194f) + arg_0.b.b)), 0i), select(!(!vec4<bool>(false, var_2.x, false, false)), vec4<bool>(true, false, all(!vec4<bool>(false, var_2.x, arg_0.a.x, false)), !select(false, arg_0.a.x, arg_0.a.x)), vec4<bool>(true, true, any(arg_0.a), any(vec2<bool>(var_2.x, var_2.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.b - arg_1.b), _wgslsmith_f_op_f32(step(var_1.x, 688f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -915f) * _wgslsmith_f_op_f32(abs(arg_1.b)))), -1268f)), select(!any(!vec2<bool>(var_2.x, false)), true & var_2.x, true));
    global0 = -(~(-_wgslsmith_sub_i32(arg_1.e, -19989i)) & abs(0i));
    return ~vec2<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(85577u, max(10924u, 4294967295u)), arg_0.b.c.x), _wgslsmith_div_u32(arg_0.b.c.x, u_input.a));
}

fn func_2() -> i32 {
    let var_0 = Struct_1(countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(min(-2147483647i, 2147483647i), 2147483647i), _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(1i, -18289i)) << (func_3(Struct_3(vec3<bool>(false, true, true), Struct_1(vec2<i32>(-1i, 2147483647i), -2385f, vec3<u32>(u_input.a, u_input.a, u_input.a), 1605f, 0i)), Struct_1(vec2<i32>(1i, 34776i), -613f, vec3<u32>(u_input.a, 17797u, u_input.a), 667f, 0i)) % vec2<u32>(32u)))), -1461f, _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(32271u, 1u, u_input.a), vec3<u32>(15019u, 19787u, 4294967295u)), vec3<u32>(firstTrailingBit(0u), ~u_input.a, u_input.a)), ~(vec3<u32>(9826u, 4294967295u, 4294967295u) | _wgslsmith_sub_vec3_u32(vec3<u32>(10016u, u_input.a, 10789u), vec3<u32>(u_input.a, 0u, 1u)))), 1217f, _wgslsmith_dot_vec2_i32(~vec2<i32>(1i, 1i), (_wgslsmith_add_vec2_i32(vec2<i32>(-1i, 34331i), vec2<i32>(-36187i, 20135i)) >> (~vec2<u32>(u_input.a, 15886u) % vec2<u32>(32u))) ^ -vec2<i32>(1i, -2147483647i)));
    let var_1 = var_0;
    let var_2 = 746f;
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, _wgslsmith_f_op_f32(-var_2))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, var_0.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1258f, -1000f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 * var_2)), -1177f)));
    var var_4 = select(false, any(select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), true);
    return abs(-38202i);
}

fn func_4(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: f32) -> Struct_1 {
    global0 = 0i;
    return arg_0.a;
}

fn func_1(arg_0: u32) -> vec2<bool> {
    var var_0 = func_4(Struct_4(Struct_1(-vec2<i32>(-7743i, 1i), 1024f, _wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(27135u, u_input.a, u_input.a)), vec3<u32>(59087u, 21899u, 4294967295u)), _wgslsmith_f_op_f32(-1342f - -668f), func_2()), arg_0), vec2<bool>(!(true | all(vec4<bool>(false, false, false, false))), true), Struct_3(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), !select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), Struct_1(vec2<i32>(1i, 1i), 890f, vec3<u32>(_wgslsmith_sub_u32(arg_0, 26001u), u_input.a, u_input.a << (40435u % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(338f - 1065f)), -2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(518f * _wgslsmith_f_op_f32(f32(-1f) * -611f)), -1660f)));
    var var_1 = Struct_2(func_4(Struct_4(Struct_1(vec2<i32>(-30427i, var_0.a.x) & vec2<i32>(var_0.a.x, var_0.a.x), 666f, select(vec3<u32>(arg_0, 60617u, 5806u), var_0.c, vec3<bool>(false, true, true)), var_0.d, 2147483647i), firstTrailingBit(abs(arg_0))), vec2<bool>(true, true), Struct_3(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), var_0.b >= var_0.d), func_4(Struct_4(Struct_1(var_0.a, var_0.b, vec3<u32>(70872u, 13378u, u_input.a), var_0.d, var_0.a.x), arg_0), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), Struct_3(vec3<bool>(false, true, false), Struct_1(vec2<i32>(-25167i, var_0.e), -995f, vec3<u32>(69216u, 0u, 4294967295u), var_0.b, var_0.a.x)), 812f)), 674f), Struct_1(~var_0.a, var_0.b, _wgslsmith_mult_vec3_u32((var_0.c & var_0.c) << ((vec3<u32>(1u, 4294967295u, 117706u) & var_0.c) % vec3<u32>(32u)), ~var_0.c), func_4(Struct_4(Struct_1(var_0.a, var_0.b, vec3<u32>(0u, arg_0, var_0.c.x), var_0.d, -1i), max(arg_0, 1u)), vec2<bool>(true, true), Struct_3(vec3<bool>(true, true, true), func_4(Struct_4(Struct_1(var_0.a, var_0.b, vec3<u32>(u_input.a, var_0.c.x, var_0.c.x), -105f, var_0.e), arg_0), vec2<bool>(true, false), Struct_3(vec3<bool>(false, true, false), Struct_1(vec2<i32>(var_0.e, 45033i), 1368f, vec3<u32>(29486u, u_input.a, arg_0), -401f, var_0.e)), var_0.d)), _wgslsmith_f_op_f32(f32(-1f) * -314f)).d, var_0.a.x), !vec4<bool>((var_0.a.x ^ -13385i) <= (i32(-1i) * -21942i), !select(false, false, false), select(true, false, true) | true, var_0.a.x <= var_0.e), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.b)) - var_0.d)))), true);
    let var_2 = (_wgslsmith_sub_vec2_i32(select(_wgslsmith_clamp_vec2_i32(var_1.b.a, var_0.a, vec2<i32>(-17443i, 1i)), -vec2<i32>(var_1.b.e, var_1.a.e), var_1.a.b != var_1.b.d), ~(~vec2<i32>(0i, var_1.b.e))) ^ var_0.a) << (countOneBits(vec2<u32>(~1u, ~u_input.a)) % vec2<u32>(32u));
    global0 = _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, -10065i, var_2.x), vec3<i32>(var_1.b.e, var_2.x, var_1.a.e)), -1i)), var_1.a.a), ~_wgslsmith_div_i32(_wgslsmith_mod_i32(var_2.x, -9039i), _wgslsmith_add_i32(var_2.x, var_0.a.x)) & var_1.a.e);
    let var_3 = countOneBits(abs(_wgslsmith_mult_u32(~1u, 0u)));
    return vec2<bool>(var_1.e, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_1(u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(-10243i, 1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(435f, -520f), vec2<f32>(-1875f, 528f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1276f, 1742f), vec2<f32>(278f, 420f), var_0.x)), select(var_0.x, var_0.x, true))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(-401f, -295f), vec2<f32>(-450f, 836f)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-402f, -2059f, 1000f, -636f)))) - vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -322f, -825f, -990f)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-946f, 1000f, 525f, -159f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-539f, -723f, -1532f, -347f) - vec4<f32>(919f, 1353f, 404f, 682f))))), all(select(select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x), var_0.x), select(vec4<bool>(var_0.x, true, true, false), vec4<bool>(true, false, false, false), var_0.x), select(true, var_0.x, true))))), u_input.a & (u_input.a | ((u_input.a << (1u % 32u)) ^ ~u_input.a)), 17764u | (func_4(Struct_4(Struct_1(vec2<i32>(-36263i, -49047i), 265f, vec3<u32>(u_input.a, u_input.a, 23187u), -1000f, -19793i), 10863u), vec2<bool>(true, true), Struct_3(vec3<bool>(true, var_0.x, true), Struct_1(vec2<i32>(-39397i, -38580i), -572f, vec3<u32>(1u, u_input.a, u_input.a), -440f, -11364i)), 1043f).c.x & ~_wgslsmith_mult_u32(u_input.a, u_input.a)));
}

