struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: bool,
    e: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_4) -> vec4<bool> {
    let var_0 = arg_1;
    let var_1 = arg_2.c;
    return select(select(vec4<bool>(any(select(vec4<bool>(false, arg_0.d, arg_0.c, false), vec4<bool>(arg_0.d, false, false, false), arg_0.c)), arg_0.c, arg_0.d, true), vec4<bool>(arg_0.c, true, all(vec3<bool>(true, false, arg_0.d)), false), false), select(!(!vec4<bool>(true, true, false, arg_0.d)), select(select(select(vec4<bool>(false, arg_0.c, arg_0.d, arg_0.d), vec4<bool>(true, arg_0.d, arg_0.c, false), true), select(vec4<bool>(arg_0.c, arg_0.d, false, arg_0.c), vec4<bool>(arg_0.d, arg_0.d, arg_0.d, true), vec4<bool>(true, arg_0.d, arg_0.c, arg_0.d)), arg_0.c), select(vec4<bool>(arg_0.d, false, arg_0.c, true), vec4<bool>(arg_0.d, true, arg_0.c, false), true | arg_0.d), false), false), arg_0.d);
}

fn func_2(arg_0: f32, arg_1: Struct_4, arg_2: bool) -> vec4<u32> {
    var var_0 = Struct_4(-((-27736i | arg_1.a) >> (0u % 32u)), arg_1.b, Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(330f, arg_0))))), arg_1.b, arg_1.c.b, _wgslsmith_div_vec2_i32(firstLeadingBit(u_input.b), -arg_1.c.d ^ vec2<i32>(7931i, arg_1.a))));
    let var_1 = 0u;
    var_0 = arg_1;
    var var_2 = arg_1;
    var var_3 = func_3(Struct_2(var_0.b, arg_1.b, true, !all(vec2<bool>(arg_2, arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, -146f) - -676f))), Struct_4(-(~u_input.b.x), var_0.c.c, var_2.c), Struct_4(-21011i, var_0.c.c, Struct_3(var_2.c.a, arg_1.c.c, Struct_1(10888i), _wgslsmith_mod_vec2_i32(vec2<i32>(71370i, arg_1.b.a), var_2.c.d))));
    return ~firstLeadingBit(select(~vec4<u32>(var_1, 31424u, u_input.c, u_input.c), _wgslsmith_sub_vec4_u32(vec4<u32>(var_1, 83134u, 24327u, u_input.c), vec4<u32>(0u, 38622u, 55312u, u_input.c)), true) & ~max(vec4<u32>(u_input.c, 4294967295u, 1u, 0u), vec4<u32>(var_1, 15277u, u_input.c, 58676u)));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: vec2<bool>) -> i32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1008f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-651f + _wgslsmith_f_op_f32(min(-263f, 205f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(2091f, -1085f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))));
    var var_1 = -371f;
    var var_2 = Struct_1(min(_wgslsmith_div_i32(30224i, -u_input.a.x), u_input.a.x));
    let var_3 = arg_0.x;
    let var_4 = vec2<f32>(-968f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.x)) - 386f)))));
    return (var_2.a ^ u_input.a.x) >> (~31094u % 32u);
}

fn func_1(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_4) -> Struct_1 {
    let var_0 = vec3<i32>(func_4(_wgslsmith_mod_vec4_u32(func_2(arg_2.c.a.x, Struct_4(12438i, Struct_1(u_input.a.x), arg_2.c), arg_0), vec4<u32>(11961u, u_input.c, arg_1.x, 0u)), vec2<u32>(1u, 0u), select(!vec2<bool>(true, arg_0), vec2<bool>(true, true), false)), u_input.a.x, -(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.b.a, u_input.b.x, -24427i), vec3<i32>(26132i, arg_2.a, -2147483647i)) << (~arg_1.x % 32u))) ^ _wgslsmith_div_vec3_i32(u_input.a.zxw, vec3<i32>(~u_input.a.x, 0i, _wgslsmith_clamp_i32(u_input.b.x, arg_2.a, 1i)));
    var var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1997f), arg_2.c.a.x)), _wgslsmith_f_op_f32(step(-389f, arg_2.c.a.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(2259f * arg_2.c.a.x), _wgslsmith_f_op_f32(1076f - 1057f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2.c.a.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1060f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1124f, arg_2.c.a.x, arg_2.c.a.x, arg_2.c.a.x)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-310f, -1375f, -583f, arg_2.c.a.x), vec4<f32>(1372f, arg_2.c.a.x, arg_2.c.a.x, 439f))))))));
    var_1 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1030f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -124f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.x)) + -1752f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2.c.a.x, 1447f)) * _wgslsmith_f_op_f32(arg_2.c.a.x * arg_2.c.a.x)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(step(var_1.x, -1000f)))), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-134f, 598f))), -773f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-483f, 656f, var_1.x, -169f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(642f, arg_2.c.a.x, 401f, -1207f) - vec4<f32>(arg_2.c.a.x, -1102f, -1000f, -456f)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.c.a.x, arg_2.c.a.x, 196f, 954f), vec4<f32>(var_1.x, arg_2.c.a.x, 235f, 106f))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1028f, 134f, var_1.x, 803f))))))));
    var var_2 = Struct_1(arg_2.a);
    return Struct_1(var_0.x | (_wgslsmith_sub_i32(var_0.x, var_0.x) & abs(_wgslsmith_div_i32(-1i, 2147483647i))));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: vec4<f32>) -> bool {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(arg_3.zx)))), arg_0, func_1(!all(vec2<bool>(arg_1, false)) & !arg_1, _wgslsmith_mult_vec3_u32(func_2(1000f, Struct_4(-12198i, Struct_1(26531i), Struct_3(arg_3.zz, arg_2, Struct_1(-14556i), vec2<i32>(u_input.b.x, 2147483647i))), all(vec3<bool>(false, arg_1, arg_1))).xyz, max(~vec3<u32>(u_input.c, u_input.c, 56039u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, 1u, u_input.c), vec3<u32>(u_input.c, u_input.c, 7565u)))), Struct_4(1i, func_1(true, vec3<u32>(u_input.c, u_input.c, u_input.c), Struct_4(arg_0.a, Struct_1(-2147483647i), Struct_3(vec2<f32>(658f, 659f), arg_0, arg_0, u_input.b))), Struct_3(_wgslsmith_f_op_vec2_f32(floor(arg_3.wz)), Struct_1(arg_2.a), func_1(true, vec3<u32>(18210u, u_input.c, u_input.c), Struct_4(-8838i, arg_2, Struct_3(arg_3.wy, Struct_1(56452i), arg_0, vec2<i32>(u_input.a.x, u_input.b.x)))), -vec2<i32>(arg_0.a, 2147483647i)))), u_input.a.wy);
    let var_1 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.x), var_0.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.a.x))))), _wgslsmith_f_op_f32(min(191f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1420f) + _wgslsmith_f_op_f32(exp2(var_0.a.x)))))), arg_0, Struct_1(2147483647i), vec2<i32>(23790i, 2147483647i));
    var var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(arg_3, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_3), _wgslsmith_f_op_vec4_f32(sign(arg_3)))))));
    let var_3 = Struct_4(430i, Struct_1(abs(47143i)), var_1);
    var var_4 = func_1(all(select(vec4<bool>(true, true, arg_1, arg_1 | arg_1), func_3(Struct_2(var_0.c, Struct_1(1i), true, false, -468f), Struct_4(var_3.b.a, Struct_1(-2147483647i), var_0), var_3), true)), vec3<u32>(u_input.c, ~40559u, u_input.c), var_3);
    return all(func_3(Struct_2(arg_2, Struct_1(i32(-1i) * -43446i), any(select(vec3<bool>(arg_1, true, arg_1), vec3<bool>(arg_1, arg_1, arg_1), arg_1)), arg_1, _wgslsmith_f_op_f32(round(arg_3.x))), var_3, var_3).wx);
}

fn func_6(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_u32(~u_input.c, ~0u, firstLeadingBit(func_2(_wgslsmith_f_op_f32(263f - _wgslsmith_f_op_f32(f32(-1f) * -496f)), Struct_4(~36200i, Struct_1(u_input.a.x), Struct_3(vec2<f32>(1240f, -421f), Struct_1(29150i), Struct_1(u_input.b.x), vec2<i32>(-35646i, u_input.b.x))), !all(vec4<bool>(arg_0.x, true, true, arg_0.x))).x));
    let var_1 = ~reverseBits(~_wgslsmith_mod_vec4_u32(~vec4<u32>(var_0, u_input.c, var_0, u_input.c), abs(vec4<u32>(4294967295u, var_0, 0u, u_input.c))));
    var var_2 = func_1(true, _wgslsmith_add_vec3_u32(firstLeadingBit(_wgslsmith_div_vec3_u32(var_1.xzz, reverseBits(var_1.zwy))), firstTrailingBit(vec3<u32>(4294967295u, var_1.x, u_input.c))), Struct_4(_wgslsmith_sub_i32(u_input.a.x | -24203i, _wgslsmith_dot_vec3_i32(u_input.a.wyw, vec3<i32>(18724i, 61520i, u_input.a.x))) << (~38784u % 32u), Struct_1(i32(-1i) * -u_input.a.x), Struct_3(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(400f, -159f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2236f, 1824f) + vec2<f32>(-1501f, 168f)))), func_1(true, vec3<u32>(0u, 0u, 0u), Struct_4(u_input.b.x, Struct_1(2147483647i), Struct_3(vec2<f32>(-2170f, -1338f), Struct_1(1i), Struct_1(-1i), u_input.a.xx))), Struct_1(-2147483647i), countOneBits(vec2<i32>(0i, 1i)))));
    var_2 = Struct_1(var_2.a | 14129i);
    var var_3 = ~u_input.c;
    return func_1(arg_0.x, var_1.zyx, Struct_4(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.a, u_input.b.x, u_input.a.x, -17485i), ~vec4<i32>(var_2.a, u_input.b.x, 2147483647i, 2147483647i)), countOneBits(-var_2.a)), func_1(arg_0.x, firstLeadingBit(vec3<u32>(u_input.c, var_1.x, var_0)), Struct_4(firstTrailingBit(var_2.a), Struct_1(2147483647i), Struct_3(vec2<f32>(-121f, 292f), Struct_1(u_input.a.x), Struct_1(-17409i), vec2<i32>(0i, var_2.a)))), Struct_3(vec2<f32>(263f, _wgslsmith_f_op_f32(round(-1207f))), Struct_1(var_2.a | u_input.a.x), Struct_1(~var_2.a), ~_wgslsmith_add_vec2_i32(u_input.a.yz, vec2<i32>(50151i, var_2.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(i32(-1i) * -2147483647i), func_6(select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false), u_input.a.x < u_input.a.x), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), func_5(func_1(true, vec3<u32>(u_input.c, u_input.c, 50461u), Struct_4(-66075i, Struct_1(-60495i), Struct_3(vec2<f32>(-1383f, -268f), Struct_1(-15832i), Struct_1(1i), u_input.b))), u_input.c == u_input.c, func_1(false, vec3<u32>(u_input.c, u_input.c, 45400u), Struct_4(2147483647i, Struct_1(u_input.b.x), Struct_3(vec2<f32>(-227f, -418f), Struct_1(0i), Struct_1(u_input.b.x), vec2<i32>(u_input.b.x, u_input.b.x)))), vec4<f32>(-419f, -1917f, 123f, -1345f)))), true && any(vec3<bool>(any(vec4<bool>(true, false, false, false)), false, u_input.c < 40082u)), !(!any(vec2<bool>(true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-857f))))));
    var var_1 = Struct_4(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(u_input.a.x, 0i) << (vec2<u32>(u_input.c, 1u) % vec2<u32>(32u)), -reverseBits(u_input.a.yx)), min(vec2<i32>(_wgslsmith_sub_i32(var_0.a.a, -3854i), -1i), vec2<i32>(u_input.b.x, -1i << (u_input.c % 32u)))), var_0.b, Struct_3(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.e, var_0.e), vec2<f32>(var_0.e, -564f)))))), var_0.a, var_0.b, select(_wgslsmith_sub_vec2_i32(u_input.a.xx, abs(vec2<i32>(var_0.b.a, -2147483647i))), _wgslsmith_clamp_vec2_i32(min(vec2<i32>(u_input.b.x, var_0.a.a), vec2<i32>(1i, u_input.b.x)), u_input.b, -vec2<i32>(-2147483647i, var_0.a.a)), vec2<bool>(var_0.d, !var_0.c))));
    var_1 = Struct_4(reverseBits(-33848i), var_1.c.c, var_1.c);
    var var_2 = select(select(select(!select(vec2<bool>(true, true), vec2<bool>(false, var_0.c), var_0.c), vec2<bool>(true, !var_0.d), var_0.d), func_3(var_0, Struct_4(-22348i, Struct_1(-39620i), Struct_3(var_1.c.a, Struct_1(var_1.b.a), var_1.b, var_1.c.d)), Struct_4(_wgslsmith_div_i32(var_1.b.a, -2147483647i), var_1.c.b, Struct_3(vec2<f32>(859f, var_0.e), Struct_1(-1i), Struct_1(-22777i), vec2<i32>(u_input.b.x, u_input.b.x)))).yz, any(vec4<bool>(0u >= u_input.c, true, true, !var_0.c))), vec2<bool>(30868i == reverseBits(firstTrailingBit(-1i)), true), !(!(!(!vec2<bool>(true, var_0.c)))));
    var var_3 = var_0;
    var_3 = Struct_2(Struct_1(_wgslsmith_clamp_i32(35158i | var_3.b.a, u_input.a.x, ~countOneBits(1566i))), var_0.b, true, _wgslsmith_f_op_f32(f32(-1f) * -249f) > var_0.e, _wgslsmith_f_op_f32(-var_1.c.a.x));
    var_1 = Struct_4(_wgslsmith_mod_i32(-(min(-32000i, var_1.a) << (0u % 32u)), -2147483647i), func_6(func_3(var_0, Struct_4(1i, Struct_1(8037i), Struct_3(var_1.c.a, var_1.b, var_0.a, vec2<i32>(1i, var_0.b.a))), Struct_4(func_1(var_2.x, vec3<u32>(u_input.c, u_input.c, 0u), Struct_4(-2147483647i, var_3.b, Struct_3(vec2<f32>(-514f, var_1.c.a.x), Struct_1(u_input.a.x), Struct_1(-2147483647i), u_input.b))).a, Struct_1(-2147483647i), Struct_3(var_1.c.a, Struct_1(var_3.b.a), var_1.c.b, vec2<i32>(971i, u_input.b.x)))).wyz), var_1.c);
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.c.a.x), _wgslsmith_f_op_f32(exp2(var_1.c.a.x)), 152f) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.e, var_1.c.a.x, 126f), vec3<f32>(-806f, -1146f, var_3.e)))))));
    let var_5 = var_1.c.a;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(vec4<u32>(u_input.c, 0u, 4294967295u, u_input.c) ^ vec4<u32>(0u, u_input.c, u_input.c, 4294967295u)))), var_0.e);
}

