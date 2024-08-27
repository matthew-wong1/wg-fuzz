struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
    c: vec4<f32>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(arg_0.yxx, arg_0.xyw, false));
    let var_1 = arg_1.a;
    var var_2 = -(~vec4<i32>(u_input.b.x, var_1.x, _wgslsmith_div_i32(i32(-1i) * -17651i, _wgslsmith_add_i32(0i, u_input.c)), reverseBits(min(arg_1.a.x, var_1.x))));
    var var_3 = var_0.x;
    var var_4 = arg_1.a.x;
    return !(!arg_1.d.yz);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<bool>) -> vec3<i32> {
    let var_0 = ~(~(~vec4<u32>(~u_input.d, firstLeadingBit(56518u), u_input.d, u_input.d)));
    var var_1 = var_0.xyw;
    var_1 = _wgslsmith_mult_vec3_u32(vec3<u32>(max(0u, ~_wgslsmith_add_u32(30554u, var_0.x)), ~var_1.x, 0u), u_input.e ^ vec3<u32>(0u, 30480u, ~reverseBits(66808u)));
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1411f), -370f)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1060f, 1004f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 360f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-242f, -472f)), arg_1.x))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-350f, 144f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1383f, 259f) * vec2<f32>(-343f, 351f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-583f, -526f), vec2<f32>(925f, 201f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1838f) * vec2<f32>(323f, 2497f)), any(arg_0.xyy))), func_3(vec4<f32>(1000f, -672f, 292f, 334f), Struct_1(u_input.b, 45636u, vec3<u32>(var_0.x, var_0.x, var_1.x), vec3<bool>(arg_0.x, arg_0.x, true))))))), arg_1.x));
    let var_3 = false;
    return _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(min(_wgslsmith_div_vec3_i32(vec3<i32>(-53789i, -10369i, u_input.c), vec3<i32>(0i, -1i, 1i)), vec3<i32>(u_input.b.x, 2147483647i, u_input.b.x)), vec3<i32>(-u_input.c, _wgslsmith_sub_i32(u_input.b.x, u_input.b.x), ~(-2147483647i))), ~reverseBits(abs(vec3<i32>(-2147483647i, 3955i, u_input.c))), ~(~(vec3<i32>(-1i, u_input.b.x, 28254i) >> (vec3<u32>(30722u, 75140u, var_0.x) % vec3<u32>(32u))))) ^ ~(~firstLeadingBit(~vec3<i32>(-41083i, 1i, u_input.b.x)));
}

fn func_2(arg_0: f32) -> Struct_3 {
    var var_0 = vec2<f32>(arg_0, 595f);
    let var_1 = Struct_3(reverseBits(vec3<i32>(_wgslsmith_add_i32(u_input.c, u_input.b.x), -8556i, countOneBits(1i)) & func_4(vec4<bool>(false, true, true, true), func_3(vec4<f32>(arg_0, -629f, -1134f, arg_0), Struct_1(vec2<i32>(-1i, u_input.c), 0u, vec3<u32>(u_input.d, 32851u, 0u), vec3<bool>(true, true, false))))), _wgslsmith_clamp_vec3_i32(firstLeadingBit(_wgslsmith_mult_vec3_i32(select(vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x), vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<bool>(false, true, false)), _wgslsmith_add_vec3_i32(vec3<i32>(-43037i, u_input.b.x, u_input.b.x), vec3<i32>(u_input.c, 10117i, u_input.c)))), ~vec3<i32>(u_input.b.x ^ 41766i, u_input.b.x, 0i), _wgslsmith_add_vec3_i32(select(-vec3<i32>(u_input.b.x, 12433i, u_input.b.x), vec3<i32>(u_input.c, 2936i, -20561i), vec3<bool>(true, true, true)), firstTrailingBit(abs(vec3<i32>(2147483647i, u_input.c, u_input.c))))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(arg_0 - var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-230f + -669f)), 1669f, 2696f))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1552f, _wgslsmith_f_op_f32(exp2(arg_0)), any(vec2<bool>(true, false))))), Struct_1(u_input.b, ~u_input.e.x, min(u_input.e, u_input.e), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)))));
    var var_2 = Struct_1(min(vec2<i32>(~u_input.c, -firstLeadingBit(-1i)), var_1.d.b.a), ~var_1.d.b.b, vec3<u32>(var_1.d.b.b, var_1.d.b.b, 144123u), !select(select(select(var_1.d.b.d, var_1.d.b.d, var_1.d.b.d.x), vec3<bool>(var_1.d.b.d.x, true, var_1.d.b.d.x), select(var_1.d.b.d.x, var_1.d.b.d.x, true)), !(!vec3<bool>(true, var_1.d.b.d.x, false)), (u_input.a.x | 1u) != ~u_input.e.x));
    var_2 = Struct_1(vec2<i32>(var_2.a.x, ~select(abs(-17543i), i32(-1i) * -11553i, true)), var_2.b, max(u_input.e, vec3<u32>(~firstTrailingBit(u_input.e.x), reverseBits(~u_input.e.x), 36592u)), vec3<bool>(any(select(vec4<bool>(true, var_1.d.b.d.x, true, var_1.d.b.d.x), vec4<bool>(var_1.d.b.d.x, var_1.d.b.d.x, false, true), !vec4<bool>(true, false, var_1.d.b.d.x, true))), true, false));
    let var_3 = _wgslsmith_f_op_f32(min(var_1.c.x, var_0.x));
    return var_1;
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: Struct_3) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(arg_2.c.yxy, arg_1.c.ywx))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-arg_1.c.yzw), _wgslsmith_f_op_vec3_f32(arg_2.c.xxx - arg_2.c.xyy)))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.c.wzw), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d.a - arg_2.d.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-575f, arg_1.d.a)), _wgslsmith_div_f32(arg_2.c.x, _wgslsmith_f_op_f32(trunc(arg_2.c.x))))));
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_3) -> vec3<bool> {
    let var_0 = ~max(vec2<u32>(~arg_1.d.b.b, 79573u), vec2<u32>(~_wgslsmith_add_u32(7434u, 0u), ~firstTrailingBit(70639u)));
    var var_1 = arg_1.d.b.d.x;
    var var_2 = _wgslsmith_f_op_f32(-arg_0.x);
    return vec3<bool>(!(var_0.x <= (~1u >> (u_input.e.x % 32u))), !(!all(select(arg_1.d.b.d.yy, arg_1.d.b.d.zz, false))), (_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(-2147483647i, arg_1.b.x)), u_input.b.x) >> (4294967295u % 32u)) <= -24090i);
}

fn func_1(arg_0: vec2<bool>) -> vec2<f32> {
    var var_0 = func_6(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, 618f, 673f), vec3<f32>(-1304f, -2295f, -672f)))), _wgslsmith_f_op_vec3_f32(func_5(41738u, Struct_3(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(-70894i, -2147483647i, u_input.b.x), vec4<f32>(1095f, 718f, -1230f, -1000f), Struct_2(598f, Struct_1(vec2<i32>(-35789i, -1i), u_input.d, vec3<u32>(u_input.a.x, u_input.d, u_input.e.x), vec3<bool>(arg_0.x, true, true)))), func_2(2601f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1031f, -988f, 822f)))))), func_2(-1297f));
    var var_1 = _wgslsmith_div_f32(235f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-567f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-763f)), _wgslsmith_f_op_f32(floor(-496f))))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(794f, -605f)), _wgslsmith_f_op_f32(abs(456f))) * 766f)));
    var_0 = vec3<bool>(true, false, arg_0.x);
    var_1 = func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(418f)))))))).d.a;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1955f)) - -1284f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(450f, 1304f)))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(103f, -118f)))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-723f, 2555f) - vec2<f32>(968f, -1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-938f, 869f) + vec2<f32>(-533f, 139f)))))));
}

fn func_7(arg_0: vec3<bool>, arg_1: vec2<f32>) -> Struct_2 {
    var var_0 = Struct_1(func_4(select(!select(vec4<bool>(false, arg_0.x, false, arg_0.x), vec4<bool>(true, true, arg_0.x, arg_0.x), vec4<bool>(false, false, false, arg_0.x)), vec4<bool>(arg_0.x, true, true, arg_0.x), true), arg_0.yy).yy, 1u, _wgslsmith_clamp_vec3_u32(~u_input.e, ~(~(~u_input.e)), _wgslsmith_div_vec3_u32(vec3<u32>(920u, u_input.a.x, firstLeadingBit(4294967295u)), u_input.e)), vec3<bool>(true, arg_0.x, arg_1.x <= arg_1.x));
    var_0 = Struct_1(var_0.a, ~(((u_input.d >> (u_input.a.x % 32u)) & ~u_input.e.x) >> (4294967295u % 32u)), var_0.c & _wgslsmith_mult_vec3_u32(~vec3<u32>(var_0.b, var_0.c.x, 4294967295u), ~(~vec3<u32>(1u, 6789u, 1u))), var_0.d);
    let var_1 = vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(arg_1.x))))), !arg_0.x)), _wgslsmith_f_op_f32(max(428f, _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-arg_1.x)))), arg_1.x);
    var var_2 = Struct_3(vec3<i32>(2147483647i, 1i, 1i), _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(~(~vec3<i32>(-2147483647i, var_0.a.x, 1i)), vec3<i32>(firstLeadingBit(u_input.b.x), var_0.a.x, ~var_0.a.x)), abs(~vec3<i32>(u_input.c, var_0.a.x, u_input.b.x) & vec3<i32>(-2147483647i, u_input.c, 6936i))), vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.x, arg_1.x, false)) + var_1.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(441f, arg_1.x)) - _wgslsmith_f_op_f32(-arg_1.x)), 132f), func_2(_wgslsmith_f_op_vec3_f32(func_5(u_input.d, func_2(_wgslsmith_f_op_vec3_f32(func_5(0u, Struct_3(vec3<i32>(0i, -16923i, 1i), vec3<i32>(-1544i, u_input.b.x, u_input.c), vec4<f32>(arg_1.x, arg_1.x, arg_1.x, 647f), Struct_2(arg_1.x, Struct_1(var_0.a, var_0.c.x, var_0.c, vec3<bool>(false, arg_0.x, true)))), Struct_3(vec3<i32>(var_0.a.x, u_input.c, var_0.a.x), vec3<i32>(2147483647i, var_0.a.x, 1i), var_1, Struct_2(-1466f, Struct_1(var_0.a, var_0.b, var_0.c, vec3<bool>(arg_0.x, false, true)))))).x), Struct_3(vec3<i32>(1i, -17170i, var_0.a.x), vec3<i32>(var_0.a.x, u_input.c, 1i), var_1, Struct_2(var_1.x, Struct_1(vec2<i32>(u_input.c, 1i), u_input.d, vec3<u32>(u_input.d, u_input.a.x, var_0.c.x), var_0.d))))).x).d);
    var_2 = Struct_3(vec3<i32>((var_0.a.x ^ var_2.a.x) ^ ~12613i, func_4(!(!vec4<bool>(var_0.d.x, false, false, var_2.d.b.d.x)), !arg_0.yy).x, -29665i), vec3<i32>(var_0.a.x, abs(_wgslsmith_mod_i32(func_4(vec4<bool>(true, false, false, var_0.d.x), arg_0.zz).x, _wgslsmith_mult_i32(var_2.b.x, 17546i))), reverseBits(1i) & abs(countOneBits(var_0.a.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c.x, var_2.d.a, var_1.x, arg_1.x) + _wgslsmith_f_op_vec4_f32(var_2.c * vec4<f32>(273f, var_1.x, var_1.x, var_2.d.a))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.d.a, arg_1.x, -694f, var_2.c.x), vec4<f32>(866f, arg_1.x, -1226f, arg_1.x))))), var_1), var_2.d);
    return var_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(!vec3<bool>(74813u >= select(u_input.d, 4294967295u, true), false, all(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec2_f32(func_1(select(!select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(u_input.b.x > 42011i, true), _wgslsmith_f_op_f32(floor(1000f)) > -769f))));
    var var_1 = ~((reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, -39860i, -61381i, u_input.c), vec4<i32>(var_0.b.a.x, u_input.b.x, 28542i, var_0.b.a.x))) ^ -countOneBits(vec4<i32>(u_input.b.x, -1i, u_input.c, u_input.b.x))) ^ (vec4<i32>(70369i, u_input.c, var_0.b.a.x << (u_input.d % 32u), -u_input.c) ^ reverseBits(select(vec4<i32>(13237i, var_0.b.a.x, 3331i, u_input.b.x), vec4<i32>(u_input.b.x, var_0.b.a.x, 0i, u_input.c), vec4<bool>(var_0.b.d.x, true, var_0.b.d.x, true)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(var_0.a, var_0.a)), -807f, 219f, var_0.a), vec4<f32>(var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -850f), _wgslsmith_f_op_vec3_f32(func_5(var_0.b.c.x, Struct_3(vec3<i32>(var_1.x, -28556i, -1i), var_1.wxz, vec4<f32>(var_0.a, -2369f, -1428f, var_0.a), Struct_2(1651f, var_0.b)), Struct_3(var_1.wyx, var_1.ywy, vec4<f32>(var_0.a, 1475f, var_0.a, var_0.a), Struct_2(var_0.a, var_0.b)))).x, 477f)))));
    var_1 = _wgslsmith_clamp_vec4_i32(abs(min(vec4<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-42505i, -36866i, var_1.x, -2499i), vec4<i32>(var_1.x, 1i, -26441i, var_0.b.a.x)), -1i, -u_input.b.x), _wgslsmith_mod_vec4_i32(-vec4<i32>(var_1.x, u_input.b.x, u_input.b.x, var_1.x), select(vec4<i32>(-2147483647i, var_1.x, -17997i, u_input.c), vec4<i32>(1i, u_input.b.x, var_1.x, u_input.b.x), true)))), _wgslsmith_div_vec4_i32(select(-(~vec4<i32>(u_input.b.x, 17446i, -2147483647i, var_0.b.a.x)), reverseBits(vec4<i32>(-33782i, -2876i, var_1.x, u_input.b.x)), vec4<bool>(true, var_0.b.d.x && true, any(var_0.b.d), var_0.b.d.x || var_0.b.d.x)), reverseBits(vec4<i32>(var_1.x, -37512i, -2147483647i, u_input.b.x) ^ abs(vec4<i32>(1i, var_0.b.a.x, -47270i, var_0.b.a.x)))), -vec4<i32>(34334i, ~(-var_0.b.a.x), _wgslsmith_div_i32(i32(-1i) * -2147483647i, abs(-14400i)), func_4(vec4<bool>(var_0.b.d.x, true, var_0.b.d.x, var_0.b.d.x), var_0.b.d.yy).x << (22186u % 32u)));
    let var_3 = func_2(572f).d;
    let var_4 = ~u_input.a;
    var var_5 = -1316f;
    var var_6 = min(abs((_wgslsmith_add_u32(var_4.x, 0u) >> (0u % 32u)) ^ ~var_3.b.b), countOneBits(5830u));
    var var_7 = func_2(func_7(var_3.b.d, var_2.xx).a).d;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, -454f, ~(~vec4<u32>(0u, 20507u, 1u, 48181u)) | countOneBits(abs(~vec4<u32>(var_3.b.c.x, var_7.b.b, 693u, var_3.b.c.x))));
}

