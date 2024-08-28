struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: bool,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 479f;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: Struct_1) -> i32 {
    let var_0 = arg_1;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * arg_0.a.x));
    let var_1 = -_wgslsmith_dot_vec3_i32(-max(vec3<i32>(arg_2.b, 2147483647i, u_input.c) << (u_input.b % vec3<u32>(32u)), vec3<i32>(u_input.c, -2147483647i, 2147483647i) >> (u_input.b % vec3<u32>(32u))), vec3<i32>(-2147483647i, ~31536i, u_input.c) >> ((_wgslsmith_div_vec3_u32(arg_2.c.ywz, vec3<u32>(u_input.a, u_input.a, 0u)) ^ arg_2.c.wyz) % vec3<u32>(32u)));
    var var_2 = arg_2;
    var var_3 = Struct_1(~(~var_2.a), var_2.b, _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(arg_2.c, ~max(var_2.c, arg_2.c)), vec4<u32>(~(~var_2.a.x), abs(61679u), abs(arg_2.a.x) ^ ~6504u, 62217u), abs(_wgslsmith_clamp_vec4_u32(~vec4<u32>(47770u, 1u, arg_2.a.x, 50347u), ~vec4<u32>(var_2.a.x, u_input.a, var_2.a.x, u_input.b.x), vec4<u32>(0u, 4294967295u, 70175u, var_2.a.x)))));
    return 1i;
}

fn func_2(arg_0: bool, arg_1: vec4<f32>, arg_2: i32) -> f32 {
    let var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(func_3(Struct_3(vec2<f32>(-2511f, arg_1.x)), true, Struct_1(vec2<u32>(12778u, 44493u), -1i, vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, u_input.a))), _wgslsmith_add_i32(26964i, arg_2) >> (_wgslsmith_mult_u32(u_input.a, 4294967295u) % 32u)), 0i), -vec2<i32>(1i, 1i));
    let var_1 = -809f;
    global0 = var_1;
    var var_2 = Struct_3(arg_1.wz);
    global0 = _wgslsmith_div_f32(-296f, 373f);
    return _wgslsmith_f_op_f32(-910f * arg_1.x);
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>) -> vec2<i32> {
    let var_0 = arg_0.c;
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1846f) * _wgslsmith_f_op_f32(1062f - _wgslsmith_f_op_f32(f32(-1f) * -1723f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(784f * -257f) + -1000f) - _wgslsmith_f_op_f32(func_2(var_0, _wgslsmith_f_op_vec4_f32(vec4<f32>(-463f, 483f, 470f, 576f) * vec4<f32>(910f, -2266f, -703f, -1782f)), arg_0.a.b >> (arg_0.a.a.x % 32u)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-580f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-111f + -881f) - 1000f)))));
    let var_1 = arg_0.b.xx;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(false, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(663f, -1357f, 239f, -729f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(370f, 296f, 566f, -1949f) - vec4<f32>(1119f, 2116f, -1958f, 135f)))), u_input.c))));
    global0 = -537f;
    return _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(countOneBits(-23230i), _wgslsmith_div_i32(-1i, u_input.c)), abs(~vec2<i32>(arg_0.a.b, u_input.c))), firstTrailingBit(_wgslsmith_clamp_vec2_i32(~vec2<i32>(-2147483647i, -34047i), abs(vec2<i32>(18199i, arg_0.a.b)), ~vec2<i32>(u_input.c, -35837i)))) ^ reverseBits(~(vec2<i32>(-1i, u_input.c) | abs(vec2<i32>(-2147483647i, 2147483647i))));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(~(~min(u_input.b.yy, vec2<u32>(u_input.a, 1u))), u_input.c, _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(select(vec4<u32>(64510u, u_input.a, 1u, u_input.a), vec4<u32>(23817u, u_input.a, 99468u, 1u), true), vec4<u32>(4294967295u, 70574u, 1u, u_input.a)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 1u, 40025u, 1u), abs(vec4<u32>(u_input.a, u_input.b.x, 23102u, 13685u))))), vec3<bool>(all(vec3<bool>(true, true, true)), any(vec2<bool>(true, true)), select(arg_1.x <= arg_1.x, select(true, any(vec3<bool>(true, true, true)), true), 1754f >= arg_1.x)), select(true, true, true));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(sign(arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + 289f) + _wgslsmith_f_op_f32(func_2(false, vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), 0i))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.x + arg_1.x), 1000f)))));
    let var_2 = -635f;
    let var_3 = vec3<u32>(~(~countOneBits(~u_input.b.x)), ~var_0.a.c.x, var_0.a.a.x);
    global0 = -1550f;
    return Struct_1(u_input.b.zx, _wgslsmith_add_i32(2147483647i | arg_2.x, -9551i), firstLeadingBit(var_0.a.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.c, min(-2147483647i, u_input.c)), func_1(Struct_2(Struct_1(u_input.b.xx, u_input.c, vec4<u32>(0u, u_input.b.x, 4294967295u, u_input.b.x)), vec3<bool>(true, false, false), true), firstTrailingBit(vec4<u32>(u_input.b.x, 0u, u_input.b.x, 0u)))), 1i), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-334f)))), _wgslsmith_f_op_f32(-995f + _wgslsmith_f_op_f32(1214f - -676f)), _wgslsmith_f_op_f32(abs(1f))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-627f + 507f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(176f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-996f + 382f) * 1080f)))), select(vec3<i32>(u_input.c, _wgslsmith_mult_i32(~u_input.c, abs(21382i)), 30819i), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 0i, -2147483647i) ^ ~vec3<i32>(-2147483647i, 6060i, u_input.c), vec3<i32>(u_input.c, ~u_input.c, u_input.c)), (~u_input.b.x <= _wgslsmith_sub_u32(u_input.b.x, 57679u)) & (_wgslsmith_clamp_u32(81892u, u_input.b.x, u_input.a) >= abs(u_input.b.x))));
    global0 = _wgslsmith_f_op_f32(trunc(-619f));
    var var_1 = Struct_3(vec2<f32>(-252f, -646f));
    var var_2 = vec2<u32>(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(69310u, 1u, u_input.a)), var_0.c.wxz), 1818u);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~select(~vec3<i32>(u_input.c, 0i, -14023i), ~vec3<i32>(2147483647i, u_input.c, var_0.b), vec3<bool>(true, true, true))), _wgslsmith_div_i32(~_wgslsmith_div_i32(u_input.c, 1i), _wgslsmith_clamp_i32(-31044i, func_4(~vec2<i32>(-13388i, var_0.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, 1285f, var_1.a.x) * vec3<f32>(var_1.a.x, var_1.a.x, var_1.a.x)), vec3<i32>(var_0.b, 55900i, u_input.c)).b, 22814i)), _wgslsmith_f_op_f32(var_1.a.x + -1848f), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(268f)), _wgslsmith_f_op_f32(round(186f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a.x * -2897f), var_1.a.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x - var_1.a.x))))));
}

