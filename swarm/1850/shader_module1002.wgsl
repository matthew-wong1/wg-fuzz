struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(25246i, 28719i), 2147483647i, 2147483647i, true);

var<private> global1: f32;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>) -> u32 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(274f, 799f) - _wgslsmith_f_op_f32(2384f - 421f)) * _wgslsmith_f_op_f32(-463f + -625f))));
    let var_0 = arg_0;
    var var_1 = arg_0;
    var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-333f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -616f))), _wgslsmith_f_op_f32(max(-121f, _wgslsmith_f_op_f32(f32(-1f) * -2319f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-197f, -397f, 454f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1129f, -406f, 161f))))));
    return _wgslsmith_add_u32(~(u_input.c | u_input.a), 11605u);
}

fn func_3() -> f32 {
    global0 = Struct_1(vec2<i32>(global0.a.x, -2147483647i), _wgslsmith_mod_i32(global0.a.x, abs(i32(-1i) * -25882i)), _wgslsmith_add_i32(19983i, -99967i), !(global0.c > (_wgslsmith_div_i32(-32629i, global0.b) & 1i)));
    var var_0 = select(vec4<bool>(!(!(global0.c >= global0.a.x)), true, !all(vec4<bool>(false, false, global0.d, true)), true), select(!select(select(vec4<bool>(global0.d, global0.d, global0.d, true), vec4<bool>(true, false, false, false), global0.d), vec4<bool>(global0.d, false, true, global0.d), u_input.b.x > 0u), !select(vec4<bool>(true, global0.d, global0.d, true), select(vec4<bool>(false, true, true, global0.d), vec4<bool>(global0.d, global0.d, false, global0.d), true), global0.d), select(select(select(vec4<bool>(true, global0.d, global0.d, false), vec4<bool>(true, global0.d, global0.d, false), true), !vec4<bool>(global0.d, global0.d, false, global0.d), !global0.d), !vec4<bool>(global0.d, true, global0.d, true), true)), select(!vec4<bool>(global0.d, !global0.d, global0.d, !global0.d), select(vec4<bool>(true, any(vec3<bool>(true, global0.d, global0.d)), true, any(vec4<bool>(true, false, global0.d, false))), !vec4<bool>(true, global0.d, global0.d, global0.d), select(vec4<bool>(true, true, true, true), vec4<bool>(false, global0.d, true, global0.d), select(vec4<bool>(true, true, false, global0.d), vec4<bool>(true, true, false, global0.d), true))), !(!select(vec4<bool>(true, false, global0.d, global0.d), vec4<bool>(global0.d, global0.d, false, true), vec4<bool>(global0.d, true, global0.d, false)))));
    global0 = Struct_1(_wgslsmith_mod_vec2_i32(max(~(vec2<i32>(-33471i, global0.a.x) >> (u_input.b.xy % vec2<u32>(32u))), _wgslsmith_clamp_vec2_i32(global0.a, _wgslsmith_div_vec2_i32(vec2<i32>(30937i, global0.b), vec2<i32>(1i, 1i)), ~global0.a)), global0.a ^ -(global0.a >> (u_input.b.zw % vec2<u32>(32u)))), global0.c, _wgslsmith_mult_i32(~global0.c, ~(global0.a.x ^ -6437i)), true);
    let var_1 = (_wgslsmith_div_vec3_i32(vec3<i32>(global0.c << (u_input.c % 32u), _wgslsmith_clamp_i32(global0.c, 25093i, -27639i), 17606i), abs(vec3<i32>(1320i, -7203i, global0.c)) << (~u_input.b.yyz % vec3<u32>(32u))) | _wgslsmith_mod_vec3_i32(-vec3<i32>(global0.c, global0.b, global0.c), abs(vec3<i32>(global0.a.x, global0.c, 2147483647i)))) >> (u_input.b.zzx % vec3<u32>(32u));
    let var_2 = global0.d;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(361f, -334f))));
}

fn func_2(arg_0: vec4<u32>, arg_1: i32, arg_2: i32, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = vec3<f32>(-2495f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())));
    var var_1 = Struct_1(global0.a, global0.b, 2147483647i, any(arg_3));
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(635f)), _wgslsmith_f_op_f32(f32(-1f) * -1326f)))))));
    var var_3 = !(!(!vec4<bool>(all(vec4<bool>(arg_3.x, global0.d, arg_3.x, true)), arg_3.x || false, true, var_1.d)));
    global0 = Struct_1(min(-vec2<i32>(_wgslsmith_add_i32(arg_1, -1i), global0.a.x), vec2<i32>(countOneBits(var_1.c), i32(-1i) * -2147483647i)), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(-firstTrailingBit(vec2<i32>(-1i, -6462i)), reverseBits(select(vec2<i32>(-19637i, -1i), global0.a, var_3.x))), var_1.a), var_1.c, false);
    return Struct_1(vec2<i32>(arg_1, ~(-1i)), firstLeadingBit(arg_1), _wgslsmith_mod_i32(-arg_1, firstTrailingBit(4758i)), true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_2(firstLeadingBit(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4015u, u_input.a, 9956u, 51612u), u_input.b ^ vec4<u32>(u_input.c, u_input.b.x, 0u, u_input.b.x)), vec4<u32>(~1u, func_1(Struct_1(vec2<i32>(global0.b, -6319i), -20475i, 1i, false), vec4<bool>(true, global0.d, global0.d, false)), u_input.b.x, 1u >> (1u % 32u)))), 0i, global0.b, vec3<bool>(global0.d, global0.d, global0.d));
    var var_0 = u_input.b.zww ^ ~u_input.b.xww;
    let var_1 = func_2(vec4<u32>(~var_0.x, abs(~15503u), u_input.a, 48898u), 76768i, global0.b, !(!vec3<bool>(true, select(global0.d, global0.d, true), global0.d)));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -175f))));
    let var_2 = !any(vec2<bool>(true, !global0.d));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(637f * 410f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-335f, 1521f)))), !all(!vec4<bool>(var_1.d, true, false, var_1.d)))));
    let var_4 = Struct_1(vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(global0.a, -vec2<i32>(-16248i, 31960i)), vec2<i32>(global0.c | var_1.c, global0.a.x)), global0.a.x), -27786i, -351i, !any(vec4<bool>(var_1.d, false, true, all(vec2<bool>(var_2, var_1.d)))));
    global0 = func_2(~(~max(vec4<u32>(var_0.x, var_0.x, u_input.c, u_input.a), vec4<u32>(var_0.x, 44427u, u_input.a, 27098u))), var_1.c >> (u_input.c % 32u), global0.b, select(select(!select(vec3<bool>(var_1.d, true, false), vec3<bool>(var_1.d, global0.d, var_1.d), var_1.d), select(vec3<bool>(var_2, var_4.d, global0.d), !vec3<bool>(false, true, var_4.d), vec3<bool>(var_1.d, var_4.d, var_1.d)), true), select(select(select(vec3<bool>(var_2, global0.d, var_2), vec3<bool>(var_4.d, false, global0.d), var_4.d), select(vec3<bool>(false, false, true), vec3<bool>(false, global0.d, global0.d), vec3<bool>(true, false, var_2)), vec3<bool>(false, var_1.d, false)), select(vec3<bool>(false, false, true), !vec3<bool>(var_1.d, var_1.d, var_4.d), select(vec3<bool>(false, var_2, true), vec3<bool>(var_1.d, false, global0.d), var_1.d)), true), !any(select(vec3<bool>(global0.d, var_1.d, var_1.d), vec3<bool>(var_1.d, var_4.d, false), vec3<bool>(var_1.d, false, true)))));
    let var_5 = abs(u_input.b.yx) ^ u_input.b.xz;
    let x = u_input.a;
    s_output = StorageBuffer(1000f, var_4.c, firstTrailingBit(firstLeadingBit(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.c, -21020i, 0i, var_1.c), vec4<i32>(2147483647i, var_4.b, global0.a.x, -2147483647i)), var_4.a.x << (53313u % 32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-662f, _wgslsmith_f_op_f32(f32(-1f) * -418f))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-334f, -543f) - _wgslsmith_f_op_f32(trunc(-904f))), 182f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, 1107f)) + _wgslsmith_div_f32(-199f, -1676f)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(1382f)))))));
}

