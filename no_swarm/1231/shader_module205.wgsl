struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_4,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: Struct_3) -> vec4<u32> {
    var var_0 = countOneBits(abs(u_input.a & ~vec3<u32>(0u, arg_0.b.b, 4294967295u))) | u_input.a;
    var_0 = u_input.a;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(arg_2.a.a.d.x)), _wgslsmith_f_op_f32(trunc(arg_2.a.a.d.x)))), _wgslsmith_f_op_f32(-arg_0.b.d.x)))) + 508f);
    var var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_mult_i32(2147483647i, firstTrailingBit(arg_0.b.a)), 0u, true, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.a.d.x, arg_0.b.d.x, arg_0.b.d.x, arg_2.a.a.d.x) - arg_2.a.a.d))))), -_wgslsmith_clamp_vec2_i32(arg_2.b, _wgslsmith_mod_vec2_i32(arg_2.b, abs(arg_2.b)), vec2<i32>(0i, -54264i)));
    let var_2 = arg_0;
    return ~(vec4<u32>(arg_2.a.a.b, 16177u, var_2.b.b, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(4064u, 46601u), vec2<u32>(0u, arg_2.a.a.b)), min(var_0.zz, vec2<u32>(0u, 4015u)))) & vec4<u32>(1u, _wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.b, var_2.b.b), u_input.a.x, ~10978u), ~2990u, abs(~arg_2.a.a.b)));
}

fn func_2(arg_0: u32) -> bool {
    var var_0 = 1i;
    let var_1 = ~_wgslsmith_div_vec4_u32(~func_3(Struct_4(vec4<bool>(true, true, true, true), Struct_1(-2147483647i, arg_0, true, vec4<f32>(-151f, -600f, 356f, -900f))), select(true, true, true), Struct_3(Struct_2(Struct_1(21800i, arg_0, true, vec4<f32>(-753f, -519f, -495f, 653f))), vec2<i32>(26370i, 44722i))), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, func_3(Struct_4(vec4<bool>(false, true, true, false), Struct_1(0i, 4294967295u, false, vec4<f32>(1429f, -531f, 743f, -1071f))), true, Struct_3(Struct_2(Struct_1(30654i, arg_0, false, vec4<f32>(-630f, 368f, -308f, 401f))), vec2<i32>(-8583i, -1i))).x, ~1u, arg_0), _wgslsmith_add_vec4_u32(select(vec4<u32>(u_input.b, 76777u, arg_0, 4294967295u), vec4<u32>(u_input.b, arg_0, arg_0, arg_0), vec4<bool>(true, false, true, false)), vec4<u32>(arg_0, u_input.a.x, u_input.b, u_input.b) & vec4<u32>(54282u, 0u, 97026u, 0u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a.x, arg_0, u_input.a.x, 31956u), ~vec4<u32>(4294967295u, 4294967295u, u_input.a.x, arg_0))));
    var var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1010f - -848f), 1f)))));
    var var_3 = Struct_1(-14107i, u_input.a.x, select(true, false, !(!all(vec2<bool>(false, false)))), vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-628f - -668f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + var_2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1422f * var_2.x)))));
    var_3 = Struct_1(firstTrailingBit(max(var_3.a, max(2013i, var_3.a))), ~_wgslsmith_mult_u32(u_input.a.x, (arg_0 & 49930u) & firstLeadingBit(var_3.b)), var_2.x > var_2.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-var_3.d), vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(exp2(var_2.x)), var_3.d.x)))));
    return any(select(select(select(vec3<bool>(var_3.c, true, var_3.c), !vec3<bool>(false, false, var_3.c), u_input.b <= arg_0), !(!vec3<bool>(var_3.c, var_3.c, var_3.c)), vec3<bool>(var_3.c, !var_3.c, all(vec2<bool>(var_3.c, false)))), vec3<bool>(var_3.c, true | var_3.c, false), !vec3<bool>(true, var_3.c, var_3.c)));
}

fn func_1() -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1117f);
    var_0 = -1332f;
    var var_1 = true;
    var_1 = !func_2(u_input.b);
    let var_2 = Struct_2(Struct_1(1i, _wgslsmith_add_u32(u_input.a.x, ~(~1u)), -1041f > _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1905f + 1735f), -2185f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(739f)), 1008f, _wgslsmith_f_op_f32(round(-571f)), _wgslsmith_div_f32(-1027f, 231f)))));
    return Struct_4(!vec4<bool>(any(vec3<bool>(true, var_2.a.c, true)), !any(vec2<bool>(var_2.a.c, var_2.a.c)), all(vec3<bool>(var_2.a.c, true, false)), true), Struct_1(var_2.a.a, _wgslsmith_sub_u32(~var_2.a.b & _wgslsmith_mod_u32(0u, 18221u), 11664u), var_2.a.c, var_2.a.d));
}

fn func_4(arg_0: Struct_4) -> bool {
    var var_0 = select(max(arg_0.b.a, arg_0.b.a), select(arg_0.b.a, arg_0.b.a, -2147483647i < firstTrailingBit(arg_0.b.a)), true);
    let var_1 = !(!select(vec4<bool>(!arg_0.b.c, !arg_0.a.x, all(vec2<bool>(arg_0.a.x, false)), true), arg_0.a, !arg_0.a.x));
    let var_2 = -1110f;
    let var_3 = Struct_3(Struct_2(Struct_1(select(~29644i, -28771i, arg_0.b.b >= 44904u), u_input.a.x, all(vec2<bool>(arg_0.b.c, arg_0.b.c)), _wgslsmith_f_op_vec4_f32(arg_0.b.d * vec4<f32>(572f, 794f, var_2, -1582f)))), vec2<i32>(_wgslsmith_div_i32(arg_0.b.a, arg_0.b.a), 1i >> (_wgslsmith_mult_u32(firstLeadingBit(39033u), func_3(Struct_4(vec4<bool>(arg_0.b.c, arg_0.a.x, arg_0.b.c, true), arg_0.b), true, Struct_3(Struct_2(Struct_1(-18052i, arg_0.b.b, true, arg_0.b.d)), vec2<i32>(21728i, -1i))).x) % 32u)));
    global0 = var_2;
    return func_2(var_3.a.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(~_wgslsmith_mod_i32(firstLeadingBit(0i), 76453i << (u_input.a.x % 32u)), 10872u, func_4(func_1()), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1366f, 652f, 1977f, -257f) * vec4<f32>(-1000f, 1064f, -105f, -1060f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-206f, 837f, 628f, 1000f) + vec4<f32>(910f, -1061f, 378f, -265f)))))));
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_0.a.d.x, -1483f, true)))) - _wgslsmith_div_f32(var_0.a.d.x, var_0.a.d.x)), var_0.a.d.x));
    var var_1 = !(var_0.a.c & (true & any(func_1().a.xx)));
    global0 = _wgslsmith_f_op_f32(-var_0.a.d.x);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.a.d.x, 1050f, !(!select(var_0.a.c, true, var_0.a.c)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a.d.x, _wgslsmith_f_op_f32(f32(-1f) * -2158f)))));
    var var_2 = vec2<u32>(~(~reverseBits(var_0.a.b << (0u % 32u))), _wgslsmith_add_u32(~_wgslsmith_sub_u32(1u, u_input.a.x), func_3(Struct_4(vec4<bool>(false, true, false, var_0.a.c), Struct_1(-16271i, 4294967295u, true, vec4<f32>(1413f, -123f, 129f, 1000f))), !var_0.a.c, Struct_3(Struct_2(var_0.a), vec2<i32>(var_0.a.a, -2147483647i))).x) | countOneBits(u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(ceil(var_0.a.d.xzz)), -reverseBits(vec2<i32>(abs(var_0.a.a), 0i)), abs(vec2<i32>(-167i, select(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.a, var_0.a.a, -21289i, 16986i), vec4<i32>(var_0.a.a, 66876i, -36424i, -1i)), -var_0.a.a, any(vec2<bool>(true, var_0.a.c))))), _wgslsmith_f_op_vec3_f32(var_0.a.d.wxz * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a.d.yzw), var_0.a.d.yxx)));
}

