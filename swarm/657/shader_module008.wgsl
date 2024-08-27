struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: bool,
    d: vec2<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: bool,
    d: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2() -> Struct_3 {
    let var_0 = u_input.d.x;
    let var_1 = vec3<bool>(true, any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)), true)), 74174u > (_wgslsmith_sub_u32(~u_input.a, u_input.a) >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 87897u, 4294967295u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)) % 32u)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1927f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))) + 476f);
    var_2 = _wgslsmith_f_op_f32(-133f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(abs(602f))))), -966f, var_1.x)));
    var var_3 = vec4<bool>(true || var_1.x, !var_1.x, !(!var_1.x), !all(vec3<bool>(true, var_1.x, any(var_1))));
    return Struct_3(Struct_2(abs(u_input.a & u_input.a)), true, any(!var_3.wxz), select(-(vec3<i32>(u_input.d.x, 1i, -29728i) & _wgslsmith_add_vec3_i32(vec3<i32>(-30854i, var_0, -2147483647i), vec3<i32>(u_input.c, var_0, var_0))), _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(u_input.b, 1i), -u_input.c, 12535i), select(-vec3<i32>(-1i, 0i, 38247i), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, 79525i, -20454i), vec3<i32>(u_input.c, 25369i, 32264i)), !vec3<bool>(false, false, var_1.x))), var_3.x));
}

fn func_3(arg_0: vec4<bool>) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-242f, 604f, _wgslsmith_div_f32(288f, -461f), _wgslsmith_f_op_f32(448f - -464f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -124f), _wgslsmith_f_op_f32(f32(-1f) * -322f), _wgslsmith_div_f32(-448f, 1000f), _wgslsmith_div_f32(172f, 319f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, -1000f)) + vec4<f32>(-178f, -972f, -344f, var_0.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 111f, var_0.x)))))));
    var_0 = vec4<f32>(325f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), var_0.x, _wgslsmith_f_op_f32(floor(var_0.x)));
    let var_1 = Struct_3(Struct_2(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(79563u, 1u, 0u, 1u), vec4<u32>(18936u, 0u, u_input.a, 1u)), u_input.a)), arg_0.x, all(arg_0), firstLeadingBit(vec3<i32>(select(-1i, u_input.b, arg_0.x) | _wgslsmith_mult_i32(u_input.c, -1i), _wgslsmith_dot_vec2_i32(select(u_input.d, u_input.d, arg_0.x), firstTrailingBit(vec2<i32>(13823i, 1i))), u_input.d.x)));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.xy + _wgslsmith_f_op_vec2_f32(var_0.xw - var_0.yw))), var_0.wy, arg_0.x)), var_0.yx);
    return _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(107f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_0.x)), -196f, var_1.b & true))), -1553f, var_0.x, 812f), vec4<f32>(_wgslsmith_f_op_f32(-230f * -338f), var_2.x, _wgslsmith_f_op_f32(trunc(var_2.x)), var_2.x), arg_0));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_4(func_2().a, !arg_2.a, u_input.b, arg_3);
    var var_1 = -580f;
    var_1 = -805f;
    var_1 = 588f;
    let var_2 = arg_2;
    return Struct_1(false && !(true == any(arg_2.d)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.d.b * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.x, 1000f, 1100f, 386f))) * var_2.b), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-795f)), _wgslsmith_f_op_f32(sign(arg_1)))), _wgslsmith_f_op_f32(ceil(arg_3.b.x)), 363f, 1647f))), !any(select(vec3<bool>(false, false, arg_2.d.x), vec3<bool>(arg_0.c, arg_2.c, var_0.d.a), vec3<bool>(true, false, arg_0.c))), !(!arg_3.d), select(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(1091i, var_2.e.x), vec2<i32>(17824i, var_2.e.x)) | vec2<i32>(var_2.e.x, 42483i), reverseBits(var_2.e)), firstTrailingBit(var_2.e) >> (select(~vec2<u32>(24687u, 56456u), ~vec2<u32>(77030u, u_input.a), vec2<bool>(false, arg_3.a)) % vec2<u32>(32u)), select(!var_2.c && all(vec4<bool>(arg_0.b, var_0.b, arg_0.b, var_0.b)), !(var_0.d.c && false), true)));
}

fn func_1(arg_0: u32) -> Struct_4 {
    let var_0 = false;
    let var_1 = Struct_4(Struct_2(4294967295u), false, 55730i, func_4(func_2(), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1018f, -3336f, var_0)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-737f, -218f) * _wgslsmith_f_op_f32(step(1000f, 1000f)))), Struct_1(false, _wgslsmith_f_op_vec4_f32(func_3(vec4<bool>(false, var_0, true, var_0))), !select(false, false, var_0), vec2<bool>(var_0 || false, var_0), select(u_input.d, u_input.d, vec2<bool>(var_0, var_0)) & _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, u_input.d.x), u_input.d)), Struct_1(false, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1185f, -190f, -1107f, -1096f) + vec4<f32>(530f, -1000f, -1209f, 1746f)))), var_0, !vec2<bool>(true, var_0), u_input.d)));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(trunc(var_1.d.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.d.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-330f, var_1.d.b.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1648f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.b.x)))));
    var var_3 = _wgslsmith_dot_vec3_i32(select(firstLeadingBit(select(vec3<i32>(15579i, u_input.b, u_input.b), vec3<i32>(var_1.c, 29091i, var_1.c), true)), vec3<i32>(var_1.c, select(u_input.d.x, var_1.d.e.x, var_0), u_input.b), true), vec3<i32>(i32(-1i) * -39806i, var_1.d.e.x, -6298i)) & ~_wgslsmith_sub_i32(-u_input.b, -2147483647i >> (u_input.a % 32u));
    var var_4 = _wgslsmith_sub_i32(27717i, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, -32598i, u_input.b, ~u_input.b), min(vec4<i32>(-2147483647i, 1i, var_1.c, u_input.b), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.d.e.x, u_input.d.x, var_1.d.e.x, var_1.c), vec4<i32>(-2147483647i, var_1.c, -2147483647i, 2147483647i)))), -_wgslsmith_div_i32(u_input.c, u_input.d.x & -21444i)));
    return var_1;
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: vec4<bool>) -> Struct_3 {
    let var_0 = arg_2.x;
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1105f)) * 668f), _wgslsmith_f_op_f32(f32(-1f) * -688f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.b.x) + _wgslsmith_f_op_f32(floor(arg_1.d.b.x)))))));
    var var_2 = arg_1.d.b.x;
    let var_3 = Struct_2(u_input.a);
    var var_4 = func_2();
    return Struct_3(arg_1.a, !(var_4.d.x <= arg_1.c), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(floor(2488f))) > _wgslsmith_f_op_f32(ceil(arg_1.d.b.x)), (_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(arg_1.c, 1807i, -10680i), var_4.d), vec3<i32>(u_input.b, 0i, arg_1.c), vec3<i32>(28400i, -2147483647i, u_input.d.x)) | vec3<i32>(arg_1.c, _wgslsmith_mod_i32(1i, arg_1.c), var_4.d.x)) << (abs(~reverseBits(vec3<u32>(1u, 0u, var_4.a.a))) % vec3<u32>(32u)));
}

fn func_6(arg_0: Struct_3, arg_1: i32, arg_2: bool) -> vec4<f32> {
    var var_0 = 1i;
    let var_1 = arg_1;
    var var_2 = Struct_4(arg_0.a, false, (-func_4(arg_0, -2272f, Struct_1(arg_0.c, vec4<f32>(2319f, -1097f, -1000f, -1639f), arg_2, vec2<bool>(false, arg_2), vec2<i32>(-39614i, arg_1)), Struct_1(arg_0.c, vec4<f32>(797f, 2377f, -195f, 245f), arg_2, vec2<bool>(true, false), u_input.d)).e.x >> (_wgslsmith_sub_u32(firstLeadingBit(arg_0.a.a), _wgslsmith_clamp_u32(arg_0.a.a, u_input.a, 17805u)) % 32u)) ^ arg_0.d.x, func_4(arg_0, _wgslsmith_f_op_f32(abs(1374f)), Struct_1(true, _wgslsmith_f_op_vec4_f32(vec4<f32>(2610f, -585f, -1062f, -1717f) - _wgslsmith_div_vec4_f32(vec4<f32>(1347f, 483f, -2247f, -515f), vec4<f32>(-1000f, -257f, -658f, -1153f))), true, vec2<bool>(false && arg_0.b, arg_2 & true), u_input.d | arg_0.d.yz), func_4(arg_0, _wgslsmith_f_op_f32(933f - _wgslsmith_f_op_f32(trunc(1036f))), func_4(arg_0, -331f, Struct_1(true, vec4<f32>(-864f, 1000f, -769f, 371f), false, vec2<bool>(arg_0.c, arg_2), vec2<i32>(var_1, -8517i)), func_1(1u).d), Struct_1(!arg_0.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-727f, 1000f, -426f, 228f)), func_1(44137u).b, vec2<bool>(false, arg_0.b), select(vec2<i32>(30582i, arg_0.d.x), u_input.d, false)))));
    let var_3 = max(vec3<u32>(46877u, func_5(!vec4<bool>(true, false, false, var_2.b), func_1(6426u), select(vec4<bool>(var_2.d.d.x, arg_0.b, false, arg_0.b), vec4<bool>(arg_2, true, var_2.d.a, arg_0.b), vec4<bool>(arg_2, true, arg_2, false))).a.a, ~var_2.a.a) >> (vec3<u32>(~0u, func_5(select(vec4<bool>(var_2.d.a, arg_2, true, false), vec4<bool>(false, false, arg_2, var_2.d.d.x), arg_0.b), Struct_4(var_2.a, var_2.b, 4468i, var_2.d), !vec4<bool>(false, false, arg_0.b, true)).a.a, u_input.a) % vec3<u32>(32u)), vec3<u32>(~abs(u_input.a), 0u, 39046u));
    return _wgslsmith_f_op_vec4_f32(round(var_2.d.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_6(func_5(select(select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), false), vec4<bool>(false, true, true, true)), vec4<bool>(true, all(vec4<bool>(false, false, true, false)), true, 0i == u_input.b), vec4<bool>(false, true, true, true)), func_1(34174u), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), true)), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, true, true))), func_5(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false)), func_1(~0u), !vec4<bool>(false, func_1(u_input.a).b, false, all(vec2<bool>(true, false)))).d.x, any(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), false))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, -_wgslsmith_sub_i32(-_wgslsmith_mult_i32(u_input.d.x, u_input.c), ~u_input.b));
}

