struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec2<bool>, arg_3: bool) -> vec4<u32> {
    let var_0 = arg_0;
    var var_1 = ~arg_0.a.x;
    var_1 = 24778u;
    var var_2 = select(!(!(!select(vec3<bool>(false, true, false), vec3<bool>(arg_3, arg_3, true), vec3<bool>(arg_2.x, arg_3, false)))), select(!select(!vec3<bool>(arg_2.x, arg_2.x, arg_3), select(vec3<bool>(arg_2.x, arg_3, false), vec3<bool>(false, true, arg_3), vec3<bool>(false, arg_2.x, arg_3)), select(vec3<bool>(arg_2.x, true, true), vec3<bool>(arg_2.x, arg_3, true), vec3<bool>(arg_3, arg_3, true))), select(vec3<bool>(true && arg_2.x, arg_2.x, arg_0.b.x > arg_0.b.x), select(select(vec3<bool>(arg_3, arg_2.x, false), vec3<bool>(arg_2.x, false, arg_2.x), true), select(vec3<bool>(true, arg_2.x, arg_3), vec3<bool>(false, arg_3, arg_2.x), arg_3), true), !vec3<bool>(arg_2.x, false, arg_2.x)), true), vec3<bool>(true, true, true));
    let var_3 = Struct_2(arg_0);
    return _wgslsmith_mult_vec4_u32(~select(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1, var_3.a.a.x, 86977u, 0u), vec4<u32>(arg_1, var_0.a.x, var_0.a.x, u_input.a)), ~vec4<u32>(4294967295u, arg_1, arg_0.a.x, arg_1), vec4<bool>(arg_3, false, arg_2.x, true)), ~(~vec4<u32>(arg_0.a.x, arg_0.a.x, var_3.a.a.x, 22274u)) >> (~(vec4<u32>(var_0.a.x, 4294967295u, 0u, 27252u) >> (vec4<u32>(arg_0.a.x, u_input.a, var_3.a.a.x, var_0.a.x) % vec4<u32>(32u))) % vec4<u32>(32u))) << (_wgslsmith_div_vec4_u32(~vec4<u32>(select(u_input.a, 1u, var_2.x), ~0u, select(arg_0.a.x, var_0.a.x, var_2.x), max(var_3.a.a.x, var_3.a.a.x)), firstLeadingBit(~vec4<u32>(var_0.a.x, 1u, var_0.a.x, arg_0.a.x))) % vec4<u32>(32u));
}

fn func_2() -> vec4<bool> {
    let var_0 = Struct_3(true, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1483f)), _wgslsmith_div_f32(-747f, -387f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1344f, 206f, true)), -1000f)), _wgslsmith_f_op_f32(sign(-228f)), -2202f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(767f, -395f, -1000f, -162f) - vec4<f32>(-2490f, -182f, -1592f, -1755f)) + vec4<f32>(-846f, 743f, -509f, -742f))))), u_input.c);
    var var_1 = -2147483647i;
    let var_2 = ~vec3<i32>(-37848i, _wgslsmith_sub_i32(1i, u_input.e.x), var_0.c.x);
    let var_3 = abs(max(countOneBits(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a) & vec4<u32>(4294967295u, u_input.a, 17619u, u_input.a)), ~(~vec4<u32>(u_input.a, 1u, u_input.a, u_input.a))) >> (~(func_3(Struct_1(vec2<u32>(12521u, 21737u), var_0.b.zw), 13234u, vec2<bool>(var_0.a, var_0.a), var_0.a) & (vec4<u32>(1u, u_input.a, 97191u, 1u) & vec4<u32>(75131u, 1u, 11588u, u_input.a))) % vec4<u32>(32u)));
    var var_4 = Struct_1(select(vec2<u32>(_wgslsmith_sub_u32(1u, min(u_input.a, u_input.a)), 0u), _wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(1u, u_input.a)), _wgslsmith_clamp_vec2_u32(var_3.zz, ~vec2<u32>(4294967295u, u_input.a), var_3.zw)), select(select(!vec2<bool>(var_0.a, var_0.a), select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(true, var_0.a), true), true), vec2<bool>(false, all(vec3<bool>(var_0.a, true, var_0.a))), !var_0.a)), _wgslsmith_f_op_vec2_f32(max(var_0.b.xy, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, 952f)) * _wgslsmith_f_op_vec2_f32(var_0.b.zx - var_0.b.xy)), var_0.b.ww)))));
    return vec4<bool>(all(!select(select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_0.a, false), var_0.a), !vec2<bool>(var_0.a, var_0.a), select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(true, true), var_0.a))), !var_0.a, ~var_2.x > -(~u_input.b >> (_wgslsmith_dot_vec4_u32(var_3, vec4<u32>(4804u, 1u, 23958u, u_input.a)) % 32u)), select(!any(!vec4<bool>(true, false, true, var_0.a)), true, var_0.a & (all(vec2<bool>(true, false)) && !var_0.a)));
}

fn func_4(arg_0: bool) -> Struct_3 {
    var var_0 = _wgslsmith_mod_vec3_u32(firstTrailingBit(~vec3<u32>(u_input.a, ~4294967295u, 0u >> (u_input.a % 32u))), vec3<u32>(~u_input.a, 13532u, _wgslsmith_add_u32(24864u, 28607u) ^ u_input.a) & vec3<u32>(u_input.a, 73590u, 25250u));
    var_0 = vec3<u32>(u_input.a, u_input.a, ~_wgslsmith_mod_u32(var_0.x >> (u_input.a % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(74657u, 1u, u_input.a), vec3<u32>(84039u, 36369u, var_0.x)) << ((u_input.a ^ u_input.a) % 32u)));
    var var_1 = vec4<u32>(1u, 59008u, var_0.x, ~(~abs(104298u)));
    var_0 = var_1.wzx;
    var var_2 = Struct_3(true, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1000f, -997f, 578f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(259f, -1818f, -139f, 1309f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-134f, 1373f, 1029f, 1000f)))))), reverseBits(-u_input.e.xw ^ vec2<i32>(u_input.d, _wgslsmith_mod_i32(-3407i, 3601i))));
    return Struct_3(!select(arg_0, firstTrailingBit(-43111i) > u_input.d, all(vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_2.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-885f, -884f, 427f, 1050f))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.b.x, -1000f, 974f, var_2.b.x), vec4<f32>(var_2.b.x, 1000f, var_2.b.x, var_2.b.x)))), !arg_0)) * vec4<f32>(853f, _wgslsmith_f_op_f32(f32(-1f) * -671f), 963f, -704f)), var_2.c);
}

fn func_5(arg_0: Struct_3) -> Struct_2 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.b.x)))), _wgslsmith_f_op_f32(min(arg_0.b.x, 286f)));
    let var_1 = func_4(true);
    var var_2 = vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-437f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.b.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(417f, var_0.x, arg_0.a)), var_1.b.x, true)) + 1326f) - _wgslsmith_f_op_f32(1000f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1679f - var_0.x), _wgslsmith_f_op_f32(round(arg_0.b.x))))));
    var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.b.xyw) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.x, var_2.x, 444f), arg_0.b.zwx, vec3<bool>(var_1.a, arg_0.a, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-522f, 328f, 930f) - vec3<f32>(-585f, var_0.x, -2292f))), !(!vec3<bool>(var_1.a, var_1.a, var_1.a))))), vec3<f32>(1445f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.x))), -1000f));
    var var_3 = !vec2<bool>(true, var_1.a);
    return Struct_2(Struct_1(select(min(~vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(0u, 4294967295u)), select(select(vec2<u32>(17973u, 17294u), vec2<u32>(0u, 4165u), vec2<bool>(false, true)), vec2<u32>(74078u, 0u), false), var_1.a || false), vec2<f32>(_wgslsmith_f_op_f32(-347f * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -880f))));
}

fn func_1(arg_0: Struct_2) -> bool {
    var var_0 = ~arg_0.a.a.x | 4294967295u;
    var var_1 = func_5(func_4(!all(func_2())));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.b.x));
    var var_3 = vec4<f32>(var_1.a.b.x, _wgslsmith_f_op_f32(-arg_0.a.b.x), arg_0.a.b.x, 628f);
    let var_4 = Struct_3(select(select(-38966i >= u_input.b, true, true), true, -u_input.d == 13739i) == (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1075f))) < -782f), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.b.x, var_1.a.b.x, var_3.x, var_1.a.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.b.x, var_1.a.b.x, 2055f, var_3.x)))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.a.b.x, -1758f, -731f, 251f), vec4<f32>(337f, -1000f, 264f, var_1.a.b.x), vec4<bool>(false, true, true, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.b.x, -2826f, arg_0.a.b.x, 1059f)) - vec4<f32>(1714f, var_1.a.b.x, 1000f, 892f))))), _wgslsmith_add_vec2_i32(vec2<i32>(-(i32(-1i) * -2147483647i), -6942i), u_input.c));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!vec2<bool>(false, !func_1(Struct_2(Struct_1(vec2<u32>(4294967295u, 1u), vec2<f32>(-1909f, -832f))))), vec2<bool>(true, false), _wgslsmith_dot_vec4_u32(max(~vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), ~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), func_3(Struct_1(vec2<u32>(u_input.a, u_input.a), vec2<f32>(1000f, -128f)), _wgslsmith_add_u32(u_input.a, u_input.a), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), true)) < abs(1u));
    let var_1 = func_4(var_0.x);
    var var_2 = vec2<f32>(_wgslsmith_div_f32(var_1.b.x, 346f), _wgslsmith_f_op_f32(864f + var_1.b.x));
    let var_3 = select(4294967295u, _wgslsmith_add_u32(~((u_input.a & 4294967295u) ^ countOneBits(52198u)), 57562u), var_1.a);
    let var_4 = func_4(false);
    var_2 = _wgslsmith_f_op_vec2_f32(func_4(func_1(Struct_2(func_5(var_1).a))).b.zx + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_4.b.xx)));
    let var_5 = Struct_1(~max(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(33785u, u_input.a, 1u, var_3), vec4<u32>(u_input.a, u_input.a, 11670u, u_input.a)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, var_3, var_3), vec4<u32>(u_input.a, 71439u, 0u, var_3))), vec2<u32>(u_input.a, countOneBits(4294967295u))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_1.b.zy), _wgslsmith_f_op_vec2_f32(-var_1.b.yw))));
    let var_6 = 24573u;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(~vec3<u32>(var_6, var_3, 4294967295u)))), _wgslsmith_f_op_vec3_f32(max(var_4.b.xyy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.b.x, var_5.b.x, var_2.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_5.b.x, var_4.b.x, var_5.b.x) + var_4.b.zyw))))));
}

