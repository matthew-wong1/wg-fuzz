struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec4<i32> {
    let var_0 = vec4<bool>(true, (_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f + -1250f), -514f, true)) > 135f) | all(select(vec2<bool>(true, true), vec2<bool>(false, true), all(vec3<bool>(true, false, false)))), all(select(vec2<bool>(select(true, true, false), true), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), false)), !(!(_wgslsmith_sub_u32(u_input.a, 6001u) >= 4294967295u)));
    global0 = -(vec3<i32>(45754i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(0i, global0.x), 41669i), global0.x) & ~(-_wgslsmith_add_vec3_i32(vec3<i32>(13302i, global0.x, 74838i), vec3<i32>(global0.x, global0.x, global0.x))));
    return countOneBits(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(abs(abs(vec4<i32>(global0.x, 17153i, global0.x, global0.x))), _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.x, global0.x, global0.x, global0.x), vec4<i32>(global0.x, 62353i, global0.x, 1i), vec4<i32>(global0.x, global0.x, 0i, global0.x)), min(vec4<i32>(-12456i, global0.x, 1i, -7223i), vec4<i32>(global0.x, global0.x, global0.x, global0.x)))), vec4<i32>(global0.x, 0i, ~max(global0.x, 20269i), 14933i & global0.x)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec3<i32> {
    global0 = arg_1.a.xxy;
    var var_0 = Struct_1(vec4<i32>(arg_1.a.x, -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(arg_1.c.x, global0.x), global0.x, ~arg_1.a.x), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.c.x, arg_1.c.x, 2147483647i), _wgslsmith_div_vec3_i32(arg_1.c.xwy, vec3<i32>(global0.x, arg_0.a.x, 0i)))), func_3().x), vec2<f32>(_wgslsmith_f_op_f32(floor(-647f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1158f)), _wgslsmith_f_op_f32(f32(-1f) * -1098f))), _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.a.x | arg_0.a.x, i32(-1i) * -2147483647i, firstTrailingBit(2147483647i), countOneBits(arg_0.a.x)), ~vec4<i32>(-13342i, 2147483647i, arg_1.a.x, arg_1.a.x)), select(func_3(), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.x, -34999i, arg_0.a.x, global0.x), vec4<i32>(0i, -5852i, -6610i, global0.x), arg_0.a), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), true)), arg_0.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -754f, _wgslsmith_f_op_f32(-arg_1.b.x), -689f) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(arg_1.d)))))));
    global0 = _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(select(-var_0.a.wzw, arg_1.c.wyw, select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)) ^ min(vec3<i32>(1i, 1i, 1i), vec3<i32>(var_0.c.x, 2147483647i, var_0.c.x)), -((vec3<i32>(arg_1.a.x, -2147483647i, arg_0.c.x) >> (u_input.b % vec3<u32>(32u))) << (vec3<u32>(78423u, 4294967295u, u_input.a) % vec3<u32>(32u)))), -_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(arg_0.c.zyy, _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.a.x, global0.x, -2147483647i), arg_1.a.wwz)), _wgslsmith_mod_vec3_i32(~arg_1.a.zzz, ~var_0.c.yxy)));
    var var_1 = arg_0.c.zy;
    var var_2 = func_3();
    return max(vec3<i32>(max(-22300i, _wgslsmith_dot_vec3_i32(reverseBits(arg_0.c.yxx), -vec3<i32>(2147483647i, 1i, 22657i))), arg_0.a.x, -39133i), select(arg_0.a.wwx, arg_0.c.xzz, select(vec3<bool>(true, arg_0.d.x >= 838f, true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), vec3<bool>(false, true, false)), any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), true)))));
}

fn func_2() -> i32 {
    global0 = vec3<i32>(0i >> (u_input.c.x % 32u), global0.x, 27831i);
    global0 = -(-_wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(global0.x, 1i, global0.x)), _wgslsmith_add_vec3_i32(vec3<i32>(global0.x, 32102i, global0.x), vec3<i32>(global0.x, global0.x, 24614i))) & _wgslsmith_clamp_vec3_i32(vec3<i32>(global0.x, global0.x, global0.x), _wgslsmith_mod_vec3_i32(abs(vec3<i32>(-8268i, 2147483647i, 2147483647i)), ~vec3<i32>(1i, global0.x, 2147483647i)), select(abs(vec3<i32>(-34301i, -2147483647i, global0.x)), firstLeadingBit(vec3<i32>(2147483647i, global0.x, global0.x)), true)));
    let var_0 = ~vec2<u32>(~1u | max(19547u, u_input.a), 1u);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-752f * 255f))))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(369f + -2082f))))));
    global0 = ~func_4(Struct_1(vec4<i32>(global0.x, abs(-1i), global0.x, global0.x & 0i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) + vec2<f32>(var_1, -403f)) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1, 101f)))), countOneBits(vec4<i32>(global0.x, -34486i, 2147483647i, global0.x)), vec4<f32>(var_1, _wgslsmith_f_op_f32(-var_1), var_1, -1439f)), Struct_1(~vec4<i32>(1i, global0.x, 1i, -17645i) >> (vec4<u32>(var_0.x, 1u, 29047u, var_0.x) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, var_1), vec2<f32>(-287f, -1065f), true)) - vec2<f32>(var_1, var_1)), _wgslsmith_div_vec4_i32(vec4<i32>(1i, global0.x, 67327i, -21393i), func_3()), _wgslsmith_div_vec4_f32(vec4<f32>(var_1, -1412f, -1814f, -724f), vec4<f32>(var_1, var_1, var_1, -379f))));
    return -29021i ^ max(global0.x, global0.x << (select(~92375u, var_0.x, any(vec4<bool>(false, false, false, true))) % 32u));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec4<u32>) -> f32 {
    global0 = vec3<i32>(~0i, ~(~func_2()), -1i << (u_input.a % 32u)) | firstTrailingBit(_wgslsmith_div_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(global0.x, global0.x, global0.x), vec3<i32>(global0.x, global0.x, global0.x)), max(vec3<i32>(-43901i, 49058i, -3941i), ~vec3<i32>(2147483647i, 0i, global0.x))));
    let var_0 = arg_1;
    global0 = -reverseBits(vec3<i32>(global0.x & _wgslsmith_div_i32(2147483647i, global0.x), -1i, -1i));
    global0 = _wgslsmith_div_vec3_i32(max(vec3<i32>(global0.x & global0.x, -_wgslsmith_add_i32(global0.x, -18298i), global0.x), firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(global0.x, -30131i, 1086i), _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, -12858i, global0.x), vec3<i32>(2147483647i, 2147483647i, 1i))))), -(~_wgslsmith_add_vec3_i32(vec3<i32>(0i, global0.x, 21005i), vec3<i32>(global0.x, global0.x, 1i))));
    var var_1 = Struct_1(~firstLeadingBit(firstLeadingBit(~vec4<i32>(17334i, 33953i, 0i, global0.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) * vec2<f32>(124f, 292f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1021f, -1112f))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(var_0 + arg_1), var_0), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1, 131f), vec2<f32>(-1000f, var_0)))))), vec2<bool>(!all(vec3<bool>(arg_0, arg_0, arg_0)), false))), vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(-3275i << (u_input.c.x % 32u), 0i, -1i), global0.x), -5962i, 2147483647i, 1i), _wgslsmith_div_vec4_f32(vec4<f32>(var_0, _wgslsmith_f_op_f32(abs(var_0)), arg_1, _wgslsmith_f_op_f32(step(-1004f, _wgslsmith_f_op_f32(-var_0)))), vec4<f32>(_wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(floor(arg_1)))), arg_1, var_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(751f - var_0))))));
    return 1263f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(_wgslsmith_dot_vec2_i32(global0.zx, ~vec2<i32>(~global0.x, -2147483647i)), _wgslsmith_dot_vec2_i32(vec2<i32>(max(-49063i, global0.x), 2147483647i), vec2<i32>(-1i) * -global0.yy) & global0.x, global0.x);
    let var_1 = Struct_1(-countOneBits(select(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, global0.x, var_0.x, global0.x), vec4<i32>(var_0.x, var_0.x, global0.x, 19833i)), abs(vec4<i32>(var_0.x, 34428i, global0.x, 2147483647i)), true)), vec2<f32>(_wgslsmith_f_op_f32(func_1(true, _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -688f))), ~u_input.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1370f * 684f), _wgslsmith_f_op_f32(f32(-1f) * -853f))))), vec4<i32>(var_0.x, -33210i, global0.x, _wgslsmith_div_i32(~1i, _wgslsmith_mod_i32(~2147483647i, global0.x))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(655f)))), -1020f, _wgslsmith_f_op_f32(trunc(1597f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1102f * _wgslsmith_f_op_f32(round(822f))))));
    var var_2 = u_input.c;
    var var_3 = ~var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(min(var_3.wzy, _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(select(vec3<i32>(25808i, -34691i, -26877i), vec3<i32>(-44563i, 0i, 1127i), true), var_3.xxx), abs(-vec3<i32>(-2147483647i, global0.x, 51327i)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.d.wx)), u_input.c.x, _wgslsmith_dot_vec2_u32(~(~(vec2<u32>(var_2.x, var_2.x) & u_input.c.wz)), vec2<u32>(_wgslsmith_add_u32(min(u_input.a, u_input.c.x), 6591u), u_input.a)));
}

