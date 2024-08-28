struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
    c: vec4<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<i32>,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: u32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: f32) -> vec4<i32> {
    global0 = Struct_4(!(!select(!global0.a, select(vec2<bool>(arg_0, global0.a.x), vec2<bool>(true, arg_0), arg_0), false)), _wgslsmith_div_i32(firstTrailingBit(global0.b), global0.c.x), vec4<i32>(global0.b, global0.b, arg_2.x, global0.b));
    let var_0 = arg_2.xyx;
    global0 = Struct_4(vec2<bool>(global0.a.x, !global0.a.x), -_wgslsmith_sub_i32(var_0.x, 383i), ~arg_2);
    let var_1 = Struct_4(vec2<bool>(all(!vec4<bool>(false, arg_0, true, global0.a.x)) | (_wgslsmith_sub_i32(global0.b, arg_2.x) != 1i), ~select(31520u, u_input.b, arg_0) > _wgslsmith_sub_u32(~1u, _wgslsmith_clamp_u32(arg_1.a.x, 11317u, u_input.a))), 28388i, vec4<i32>(arg_2.x, _wgslsmith_sub_i32(global0.b, 3825i), _wgslsmith_dot_vec4_i32(countOneBits(select(arg_2, arg_2, true)), arg_2), _wgslsmith_sub_i32(7825i, -3113i)));
    var var_2 = var_1;
    return ~_wgslsmith_mod_vec4_i32(var_2.c, ~min(-arg_2, vec4<i32>(var_2.c.x, global0.c.x, var_2.b, global0.c.x)));
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: i32) -> vec4<bool> {
    global0 = Struct_4(vec2<bool>(global0.a.x, !(!(!global0.a.x))), 76093i, -_wgslsmith_div_vec4_i32(vec4<i32>(~2147483647i, arg_2 | -1i, _wgslsmith_dot_vec4_i32(global0.c, global0.c), ~(-1i)), func_3(true, Struct_3(vec2<u32>(18754u, arg_1)), _wgslsmith_clamp_vec4_i32(vec4<i32>(global0.c.x, global0.c.x, -2147483647i, arg_2), global0.c, vec4<i32>(-13212i, 45074i, arg_2, 5263i)), _wgslsmith_f_op_f32(f32(-1f) * -1059f))));
    global0 = Struct_4(!select(select(!global0.a, !global0.a, true), global0.a, vec2<bool>(true, global0.a.x)), i32(-1i) * -1i, abs(-global0.c));
    var var_0 = Struct_4(select(!vec2<bool>(arg_1 > u_input.a, u_input.a >= u_input.b), global0.a, vec2<bool>(false, global0.a.x)), global0.b, select(vec4<i32>(-24103i, i32(-1i) * -29564i, ~firstTrailingBit(global0.b), abs(arg_2)), abs(~firstLeadingBit(vec4<i32>(global0.c.x, -10502i, arg_2, 0i))), !arg_0.a | all(!vec3<bool>(arg_0.a, global0.a.x, false))));
    var var_1 = Struct_2(!arg_0.a, _wgslsmith_f_op_vec3_f32(abs(arg_0.b)));
    let var_2 = vec4<bool>(!(!(all(vec3<bool>(var_1.a, var_0.a.x, true)) | var_0.a.x)), any(!(!vec4<bool>(global0.a.x, global0.a.x, true, true))), false, all(vec3<bool>(!global0.a.x, var_1.a, !var_1.a)));
    return var_2;
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: bool) -> u32 {
    var var_0 = !select(!vec4<bool>(!global0.a.x, true, arg_2, global0.a.x), select(select(!vec4<bool>(global0.a.x, global0.a.x, global0.a.x, arg_2), !vec4<bool>(arg_2, true, arg_2, true), arg_2 & false), select(select(vec4<bool>(false, false, true, global0.a.x), vec4<bool>(global0.a.x, global0.a.x, global0.a.x, false), vec4<bool>(global0.a.x, true, global0.a.x, global0.a.x)), vec4<bool>(arg_2, arg_2, false, false), func_2(Struct_2(false, vec3<f32>(1400f, -1206f, -4089f)), u_input.a, 27706i)), !select(vec4<bool>(false, true, arg_2, global0.a.x), vec4<bool>(global0.a.x, false, false, global0.a.x), global0.a.x)), vec4<bool>(true, !arg_2, !global0.a.x, global0.a.x));
    var var_1 = _wgslsmith_mult_u32(39688u, u_input.a);
    let var_2 = Struct_4(!select(select(var_0.ww, select(vec2<bool>(arg_2, false), vec2<bool>(false, arg_2), vec2<bool>(false, true)), !global0.a), vec2<bool>(func_2(Struct_2(false, vec3<f32>(-960f, 1721f, -1799f)), 9801u, arg_0).x, !arg_2), true), -2147483647i, -global0.c);
    global0 = var_2;
    global0 = var_2;
    return (_wgslsmith_div_u32(1u, _wgslsmith_mod_u32(u_input.b, u_input.b)) >> (u_input.a % 32u)) & countOneBits(abs(28902u << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 72392u, u_input.a, 1u), vec4<u32>(u_input.b, 6085u, 17497u, 4294967295u)) % 32u)));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_4) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-379f, _wgslsmith_div_f32(1596f, -629f), -354f, -2769f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-199f, -387f, -1876f, -727f) + vec4<f32>(-717f, -777f, -994f, 511f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-583f, 1000f, 1616f, -479f) - vec4<f32>(-728f, 1964f, 2184f, 694f)))))));
    global1 = select(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, ~8455u, arg_0, _wgslsmith_div_u32(~25085u, ~arg_0)), max(vec4<u32>(3612u, 59843u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, u_input.a, 4294967295u), vec3<u32>(u_input.a, u_input.a, 75418u)), 4294967295u), min(vec4<u32>(4294967295u, arg_0, arg_0, u_input.a) ^ vec4<u32>(0u, u_input.a, u_input.b, u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 526u, 7878u, arg_0), vec4<u32>(7937u, 90811u, u_input.a, u_input.b))))), false);
    var var_1 = !(!(!select(select(vec3<bool>(false, true, global0.a.x), vec3<bool>(true, global0.a.x, true), vec3<bool>(false, arg_2.a.x, true)), vec3<bool>(false, global0.a.x, false), global0.a.x && false)));
    let var_2 = ~(-58111i);
    let var_3 = min(arg_2.c.x, global0.c.x);
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 4294967295u;
    let var_0 = _wgslsmith_div_u32(_wgslsmith_div_u32(func_4(_wgslsmith_sub_u32(u_input.b & u_input.a, func_1(global0.b, vec2<i32>(global0.c.x, 2343i), false)), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(global0.c.ww, vec2<i32>(global0.c.x, 19980i)), ~vec2<i32>(37424i, global0.b)), Struct_4(global0.a, abs(global0.c.x), func_3(true, Struct_3(vec2<u32>(u_input.a, u_input.b)), vec4<i32>(-2147483647i, global0.c.x, 21485i, 2147483647i), -2409f))), abs(~u_input.b | u_input.a)), ~u_input.a);
    global1 = 0u;
    let var_1 = vec4<i32>(global0.c.x, (((global0.c.x << (u_input.b % 32u)) | global0.b) | _wgslsmith_mod_i32(global0.b, global0.b)) | max(~global0.c.x << (4294967295u % 32u), ~14815i), _wgslsmith_mod_i32(-func_3(global0.a.x, Struct_3(vec2<u32>(u_input.b, var_0)), countOneBits(global0.c), _wgslsmith_f_op_f32(-380f + 684f)).x, _wgslsmith_dot_vec3_i32(-func_3(global0.a.x, Struct_3(vec2<u32>(74127u, 4960u)), global0.c, -2051f).xzz, ~(-global0.c.wxy))), -(~(-44287i)));
    var var_2 = any(global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(~var_0, var_1.x, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(364f + 1510f) - _wgslsmith_div_f32(-336f, 1857f)), -1000f))), -200f);
}

