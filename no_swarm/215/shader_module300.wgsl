struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: u32,
    d: vec3<f32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec4<i32>) -> u32 {
    global0 = arg_0;
    let var_0 = all(select(vec4<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(17933i, u_input.a), vec2<i32>(13332i, -2147483647i)) != ~2147483647i, true || (arg_0 || arg_0), true, true), !vec4<bool>(true, all(vec2<bool>(arg_0, arg_0)), arg_0, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1))) <= arg_1));
    var var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-arg_1), arg_1, _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(arg_1 + 1000f));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-183f, arg_1, var_1.a.x, var_1.a.x)))))));
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_2.wzz))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1248f, var_1.b, -980f) * vec3<f32>(var_1.b, var_2.x, 122f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-942f, var_1.a.x, -457f) + var_1.a))) * _wgslsmith_f_op_vec3_f32(min(var_1.a, var_2.yxw)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))) + arg_1)));
    return reverseBits(0u);
}

fn func_2(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: f32, arg_3: Struct_2) -> bool {
    global0 = true;
    var var_0 = ~(~reverseBits(u_input.a));
    global0 = true;
    let var_1 = _wgslsmith_clamp_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(func_3(true, -330f, arg_1), 1u), firstLeadingBit(~vec2<u32>(4294967295u, 4294967295u))), vec2<u32>(1u, 1u), vec2<u32>(~_wgslsmith_mult_u32(countOneBits(0u), _wgslsmith_div_u32(40283u, 28547u)), 81784u));
    var_0 = u_input.a;
    return true;
}

fn func_4(arg_0: f32, arg_1: vec4<i32>, arg_2: f32) -> Struct_1 {
    global0 = select(true & (any(vec3<bool>(false, false, false)) && true), true, true);
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1072f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(min(260f, arg_2))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1296f, arg_0)) + arg_0))))));
    let var_1 = !(!select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), true), vec2<bool>(true, true), vec2<bool>(true, true)));
    global0 = arg_1.x <= _wgslsmith_add_i32(-1i, abs(~(~arg_1.x)));
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1841f, 702f, arg_0))))))), _wgslsmith_f_op_f32(-arg_2));
    return Struct_1(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 70085u, 12659u, 3017u), vec4<u32>(4294967295u, 29029u, 0u, 22268u)), _wgslsmith_mult_u32(1u, 67635u)) ^ 15071u, 27055u, 0u, ~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(112924u, 0u, 15876u, 17362u), vec4<u32>(14258u, 4294967295u, 4294967295u, 28447u)), ~vec4<u32>(0u, 0u, 0u, 20031u))), any(select(vec4<bool>(var_1.x, var_1.x, true, true), !select(vec4<bool>(false, false, false, var_1.x), vec4<bool>(true, false, false, false), var_1.x), true)), 1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(arg_2, 372f), arg_2, arg_0) + vec3<f32>(-638f, _wgslsmith_f_op_f32(sign(arg_2)), _wgslsmith_f_op_f32(max(1607f, 1040f))))), !(!(!select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, var_1.x, true), var_1.x))));
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> Struct_3 {
    global0 = arg_1.b;
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(arg_1.d.x))))), _wgslsmith_f_op_f32(684f - arg_1.d.x), true)) != _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.d.x)))));
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(select(arg_1.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.d) - _wgslsmith_f_op_vec3_f32(exp2(arg_1.d)))), !select(!arg_1.e, arg_1.e, select(vec3<bool>(arg_0, false, false), arg_1.e, vec3<bool>(arg_1.b, arg_0, arg_1.e.x))))), arg_1.d.x);
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(var_0.b)), _wgslsmith_f_op_f32(-1152f * arg_1.d.x), _wgslsmith_f_op_f32(sign(852f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_1.d.x, var_0.a.x)) * arg_1.d)))), 1000f);
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.d.x, -376f, -617f) * vec3<f32>(arg_1.d.x, var_0.b, -198f)), _wgslsmith_f_op_vec3_f32(-var_0.a)))), var_0.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1600f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-659f)))))))));
    return Struct_3(~(~arg_1.c), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1.d.x, -742f, -1108f)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.d.x, var_0.b))))), Struct_2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(abs(-1438f)), -741f, var_0.a.x))), arg_1.d.x), Struct_1(countOneBits(~countOneBits(vec4<u32>(arg_1.a.x, arg_1.c, 1u, arg_1.a.x))), abs(u_input.a ^ u_input.a) <= u_input.a, ~0u, arg_1.d, arg_1.e), arg_1.d.x);
}

fn func_1() -> bool {
    let var_0 = func_5(false, func_4(-683f, _wgslsmith_mult_vec4_i32(select(vec4<i32>(u_input.a, -1i, u_input.a, u_input.a), -vec4<i32>(u_input.a, u_input.a, -35377i, 2147483647i), func_2(Struct_2(vec3<f32>(1035f, 1159f, -1195f), 1374f), vec4<i32>(u_input.a, u_input.a, u_input.a, -75354i), -190f, Struct_2(vec3<f32>(-1054f, -692f, 236f), -942f))), -vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a) | max(vec4<i32>(u_input.a, u_input.a, u_input.a, -1i), vec4<i32>(u_input.a, 46529i, 53975i, u_input.a))), 1f));
    global0 = !(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_4(1702f, vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i), 929f).d.x * _wgslsmith_f_op_f32(exp2(var_0.d.d.x))), var_0.b.b)) > var_0.b.b);
    global0 = any(select(vec4<bool>(true, func_5(true, func_4(var_0.c.a.x, vec4<i32>(u_input.a, 39202i, 11470i, 7586i), var_0.e)).d.b, !(var_0.d.a.x >= var_0.a), func_4(368f, _wgslsmith_add_vec4_i32(vec4<i32>(1i, 35455i, u_input.a, 4600i), vec4<i32>(-2147483647i, 1i, 107i, u_input.a)), -1000f).e.x), !vec4<bool>(true, true, any(vec4<bool>(var_0.d.e.x, var_0.d.b, false, true)), any(vec4<bool>(false, true, false, true))), select(select(!vec4<bool>(var_0.d.e.x, true, var_0.d.b, true), select(vec4<bool>(false, false, false, false), vec4<bool>(var_0.d.b, var_0.d.b, var_0.d.b, true), vec4<bool>(false, var_0.d.e.x, var_0.d.b, false)), true), !(!vec4<bool>(var_0.d.b, var_0.d.b, true, false)), false)));
    let var_1 = -1000f;
    global0 = !all(!func_5(!var_0.d.e.x, Struct_1(vec4<u32>(var_0.a, var_0.d.c, 1u, 21973u), var_0.d.b, 25205u, var_0.c.a, var_0.d.e)).d.e);
    return func_5(var_0.d.e.x, Struct_1(~vec4<u32>(39329u, 4294967295u, ~35172u, _wgslsmith_div_u32(34806u, var_0.d.a.x)), -1427f < _wgslsmith_f_op_f32(abs(func_4(var_1, vec4<i32>(u_input.a, 2147483647i, u_input.a, 1i), 1224f).d.x)), var_0.d.a.x, var_0.c.a, vec3<bool>(true, true, all(vec2<bool>(false, false))))).d.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    let var_0 = firstLeadingBit(~(~max(vec2<i32>(u_input.a, u_input.a) & vec2<i32>(u_input.a, u_input.a), _wgslsmith_sub_vec2_i32(vec2<i32>(0i, 22501i), vec2<i32>(52867i, u_input.a)))));
    global0 = !func_1() == ((_wgslsmith_mult_i32(u_input.a, u_input.a >> (1u % 32u)) | ~var_0.x) != var_0.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(869f, 700f), func_5(true, Struct_1(vec4<u32>(1u, 1u, 1u, 1u), all(vec3<bool>(true, false, false)), max(0u, 0u), func_5(true, Struct_1(vec4<u32>(1u, 3051u, 1u, 18260u), true, 74318u, vec3<f32>(-1000f, -111f, 120f), vec3<bool>(true, false, false))).c.a, vec3<bool>(true, true, true))).b.a.yx)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(3241f, 734f, var_1.x))))), _wgslsmith_f_op_f32(f32(-1f) * -1155f));
    var var_3 = _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, 1u), firstLeadingBit(select(~vec3<u32>(0u, 4294967295u, 1u), max(vec3<u32>(49258u, 0u, 0u), vec3<u32>(9773u, 4294967295u, 0u)), vec3<bool>(true, true, true)))), abs(vec3<u32>(max(1u, ~4294967295u), 57170u, _wgslsmith_div_u32(~4294967295u, ~63011u))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(var_1.x, var_2.b, true)), _wgslsmith_div_f32(var_2.b, var_1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(vec3<i32>(u_input.a, var_0.x, -49495i) | abs(vec3<i32>(var_0.x, u_input.a, var_0.x)))));
}

