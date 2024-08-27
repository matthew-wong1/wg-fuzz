struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec3<bool>,
    d: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: i32, arg_3: vec2<u32>) -> bool {
    let var_0 = ~0u;
    var var_1 = Struct_1(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec3<bool>(false, false, true)), true, false)), select(vec4<bool>(true, false, true, any(vec3<bool>(true, true, false))), vec4<bool>(true, false, true, all(vec2<bool>(true, true))), (55096u >= arg_3.x) && all(vec2<bool>(false, false))), vec4<bool>(any(vec3<bool>(true, true, true)), any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), false)), false & any(vec2<bool>(true, true)), all(vec4<bool>(true, true, true, true)))), select(vec4<bool>(true, true, true, true), vec4<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, true), false)), any(vec3<bool>(true, true, false)), arg_2 > arg_2, u_input.a.x > arg_1), false), 12020u != _wgslsmith_dot_vec3_u32(vec3<u32>(85852u, 4294967295u, arg_3.x) ^ vec3<u32>(arg_1, u_input.a.x, var_0), vec3<u32>(36824u, firstTrailingBit(11889u), 0u)), _wgslsmith_sub_u32(119930u, abs(_wgslsmith_clamp_u32(~4294967295u, ~0u, ~var_0))));
    var_1 = Struct_1(vec4<bool>(!(!any(var_1.a)), all(select(select(var_1.a.xyz, vec3<bool>(false, true, var_1.a.x), var_1.b.yzx), !vec3<bool>(false, true, var_1.a.x), select(var_1.b.zyx, var_1.b.zzx, var_1.a.x))), false, all(select(vec4<bool>(false, true, true, false), vec4<bool>(var_1.a.x, var_1.a.x, false, false), select(vec4<bool>(false, var_1.a.x, var_1.a.x, var_1.a.x), var_1.a, var_1.b.x)))), vec4<bool>(false, !(arg_2 > ~arg_2), true, !(var_1.c || true)), -arg_2 == _wgslsmith_div_i32(reverseBits(1i), _wgslsmith_add_i32(-4172i, _wgslsmith_mult_i32(arg_2, arg_2))), reverseBits(~(4294967295u | var_1.d)));
    var_1 = Struct_1(var_1.b, select(var_1.b, vec4<bool>(false, true, var_1.c, true), !select(var_1.b, vec4<bool>(true, true, true, true), var_1.b.x)), arg_2 <= arg_2, ~1u);
    var var_2 = ~(firstTrailingBit(~u_input.a) ^ _wgslsmith_add_vec2_u32(vec2<u32>(~arg_0, 63804u), max(vec2<u32>(arg_1, 45348u), vec2<u32>(u_input.a.x, var_0))));
    return all(!vec4<bool>(var_1.b.x, all(vec4<bool>(var_1.a.x, true, false, false)), var_1.a.x, false));
}

fn func_2(arg_0: i32, arg_1: Struct_4) -> vec3<f32> {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-217f)))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.a, arg_1.d) * _wgslsmith_f_op_f32(-arg_1.a))))), all(vec3<bool>(true, all(!vec4<bool>(arg_1.c.b.x, arg_1.b, false, false)), arg_1.c.c.x)), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1.d, arg_1.c.a.x)))) - vec2<f32>(_wgslsmith_f_op_f32(arg_1.c.a.x * 610f), -1439f)), select(vec4<bool>(true, func_3(u_input.a.x, u_input.a.x, 27685i, vec2<u32>(u_input.a.x, 11829u)), arg_1.c.c.x, arg_1.c.c.x), !select(arg_1.c.b, arg_1.c.b, arg_1.c.b.x), select(arg_1.c.b, select(arg_1.c.b, vec4<bool>(arg_1.c.c.x, arg_1.b, arg_1.c.c.x, true), vec4<bool>(true, arg_1.b, false, arg_1.b)), arg_1.b)), vec3<bool>(select(false != arg_1.c.c.x, !arg_1.c.b.x, true), arg_1.c.b.x, !func_3(53656u, 0u, -39811i, vec2<u32>(4294967295u, u_input.a.x))), arg_1.c.d), 1258f);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(arg_1.c.a.x, var_0.a), _wgslsmith_f_op_f32(194f + var_0.c.a.x), 1f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(565f, var_0.d, 541f) + vec3<f32>(461f, -140f, arg_1.d))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(225f, arg_1.d, -2096f), vec3<f32>(-682f, arg_1.a, arg_1.a)))), (i32(-1i) * -36034i) == ~var_0.c.d)))));
    var var_2 = Struct_2(var_0.c.a, !select(select(!vec4<bool>(var_0.c.b.x, var_0.b, true, var_0.c.c.x), vec4<bool>(true, false, false, true), vec4<bool>(arg_1.b, true, arg_1.b, var_0.b)), arg_1.c.b, !arg_1.c.b), vec3<bool>(any(vec3<bool>(true, true, true)), u_input.a.x >= ((53709u >> (u_input.a.x % 32u)) & _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)), true), _wgslsmith_add_i32(-49668i, -1i));
    var var_3 = var_0;
    var_3 = var_0;
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))) - var_0.c.a.x), var_1.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-407f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(305f, var_3.d) - _wgslsmith_f_op_f32(-var_3.d))), -710f)));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: f32) -> Struct_3 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-884f, arg_2, 947f) - vec3<f32>(arg_2, 1144f, arg_2)), vec3<f32>(arg_2, -574f, 1000f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_2(arg_0, Struct_4(arg_2, true, Struct_2(vec2<f32>(-945f, 1085f), vec4<bool>(true, true, true, true), vec3<bool>(true, true, true), arg_0), -564f))))))), arg_2);
    var var_1 = ~vec3<u32>(~u_input.a.x, ~u_input.a.x, _wgslsmith_dot_vec3_u32(abs(firstTrailingBit(vec3<u32>(arg_1, u_input.a.x, arg_1))), ~(vec3<u32>(arg_1, arg_1, 4294967295u) & vec3<u32>(4294967295u, arg_1, 7183u))));
    var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2, 295f, arg_2), vec3<f32>(-459f, 219f, arg_2))))))), _wgslsmith_f_op_f32(-var_0.a.x));
    let var_2 = any(vec4<bool>(false, true || !(var_1.x <= u_input.a.x), any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false))), true));
    let var_3 = var_1.zx;
    return Struct_3(vec3<f32>(-986f, -1804f, arg_2), -2361f);
}

fn func_4(arg_0: bool, arg_1: Struct_3) -> Struct_1 {
    var var_0 = all(select(!select(select(vec2<bool>(arg_0, false), vec2<bool>(false, arg_0), vec2<bool>(true, arg_0)), !vec2<bool>(arg_0, false), func_3(u_input.a.x, u_input.a.x, -2147483647i, u_input.a)), !(!vec2<bool>(arg_0, true)), select(!(!vec2<bool>(true, arg_0)), vec2<bool>(u_input.a.x == 1u, arg_0), vec2<bool>(arg_0, arg_0 && arg_0))));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(285f - 195f), arg_0, Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, arg_1.a.x)), _wgslsmith_div_vec2_f32(arg_1.a.xx, arg_1.a.xz)), select(select(!vec4<bool>(true, arg_0, true, true), select(vec4<bool>(arg_0, true, arg_0, true), vec4<bool>(true, true, false, true), arg_0), true), select(!vec4<bool>(true, false, true, arg_0), select(vec4<bool>(arg_0, false, true, true), vec4<bool>(arg_0, arg_0, false, false), arg_0), arg_1.a.x < arg_1.b), true), vec3<bool>(false, true, arg_0), ~1i), arg_1.a.x);
    var var_2 = ~(111246u ^ select(1u, u_input.a.x, !any(vec3<bool>(true, true, arg_0))));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.a * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.d, -372f, var_1.c.a.x), _wgslsmith_f_op_vec3_f32(-arg_1.a))), arg_1.a))) + vec3<f32>(-432f, _wgslsmith_f_op_f32(-var_1.c.a.x), -711f));
    let var_4 = firstTrailingBit(select(select(-vec2<i32>(1i, 1i), abs(reverseBits(vec2<i32>(-1i, var_1.c.d))), true), vec2<i32>(-1i, 0i), ((4294967295u << (0u % 32u)) & (u_input.a.x << (0u % 32u))) != 780u));
    return Struct_1(var_1.c.b, !(!vec4<bool>(var_1.b, !arg_0, arg_0, arg_0 && true)), arg_0, ~4294967295u);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>) -> vec3<f32> {
    var var_0 = _wgslsmith_div_vec4_i32(-abs(countOneBits(countOneBits(vec4<i32>(-1i, 0i, 1i, 1182i)))), _wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(_wgslsmith_add_i32(-6037i, 0i), 16294i, ~46040i, _wgslsmith_mult_i32(1i, 1i))), -vec4<i32>(1i, 1i, 1i, 1i)));
    var_0 = (firstLeadingBit(vec4<i32>(var_0.x, -28607i, firstTrailingBit(1i), 1i)) >> (vec4<u32>(~11291u, arg_0.d, arg_1.x, ~reverseBits(u_input.a.x)) % vec4<u32>(32u))) ^ vec4<i32>(var_0.x, _wgslsmith_mult_i32(60304i, _wgslsmith_clamp_i32(9090i, -44668i, countOneBits(var_0.x))), -var_0.x, -8445i);
    var var_1 = func_4(arg_0.c, Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(2854f, -666f, 355f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1282f, -1267f, -981f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1155f, -431f, 1604f))))), -580f)).d;
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -311f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(540f, 458f)), vec2<f32>(1529f, 104f)))))), select(arg_0.a, !func_4(func_4(arg_0.b.x, Struct_3(vec3<f32>(-1052f, -1493f, 847f), -1744f)).b.x, func_1(var_0.x, u_input.a.x, 399f)).a, select(func_4(false, func_1(-2147483647i, 0u, -258f)).b, func_4(arg_0.c == false, Struct_3(vec3<f32>(146f, -260f, 1559f), -1000f)).a, select(!vec4<bool>(true, arg_0.c, true, false), !vec4<bool>(false, arg_0.c, true, arg_0.a.x), -51052i != var_0.x))), !vec3<bool>(select(arg_0.b.x, arg_0.c, func_4(true, Struct_3(vec3<f32>(847f, 2368f, -2106f), -1000f)).b.x), true, arg_1.x <= func_4(true, Struct_3(vec3<f32>(-951f, 437f, 198f), -1001f)).d), var_0.x);
    var_1 = _wgslsmith_mod_u32(arg_1.x, ~(u_input.a.x & arg_0.d));
    return _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-111f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -666f) - _wgslsmith_f_op_f32(f32(-1f) * -427f)), var_2.a.x) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-794f, -357f, -1679f)))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(549f, 329f, var_2.a.x)))))));
}

fn func_6(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: u32) -> Struct_3 {
    var var_0 = ~vec3<u32>(_wgslsmith_add_u32(~func_4(arg_1.x, Struct_3(arg_0.a, arg_0.b)).d, min(0u, _wgslsmith_dot_vec2_u32(u_input.a, u_input.a))), max(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), ~(arg_2 << (u_input.a.x % 32u))), 9698u);
    var_0 = vec3<u32>(~firstLeadingBit(~(~u_input.a.x)), 20700u, var_0.x);
    var_0 = countOneBits(firstTrailingBit(~vec3<u32>(1u, 53603u, 27928u))) << (~vec3<u32>(4294967295u, max(u_input.a.x, u_input.a.x) | _wgslsmith_div_u32(var_0.x, u_input.a.x), 1u) % vec3<u32>(32u));
    var_0 = vec3<u32>(var_0.x, max(45398u, ~var_0.x), min(116228u, ~(~var_0.x)));
    let var_1 = Struct_3(arg_0.a, _wgslsmith_f_op_f32(abs(1000f)));
    return Struct_3(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1001f, -154f, _wgslsmith_div_f32(2406f, _wgslsmith_f_op_f32(var_1.a.x + 2853f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(arg_0.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_3(_wgslsmith_f_op_vec3_f32(func_5(func_4(true, func_1(-4353i, u_input.a.x, -713f)), ~u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1222f)))), !select(func_4(true, Struct_3(vec3<f32>(-1077f, -1000f, 503f), -483f)).b.xxx, vec3<bool>(all(vec4<bool>(true, true, false, true)), true, true), true), ~28051u);
    var var_1 = _wgslsmith_add_i32(1i, _wgslsmith_clamp_i32(~min(1i, abs(38230i)), 0i, abs(-15826i)));
    var var_2 = Struct_1(select(select(vec4<bool>(u_input.a.x >= 29470u, func_4(false, Struct_3(vec3<f32>(var_0.a.x, -483f, var_0.b), var_0.b)).c, true, false), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true)), !any(vec2<bool>(true, false))), func_4(false, Struct_3(_wgslsmith_f_op_vec3_f32(-var_0.a), -955f)).a, select(vec4<bool>(any(vec2<bool>(false, true)), 4294967295u > u_input.a.x, true, false), vec4<bool>(true, true, true, true), any(vec2<bool>(true, true)) & true)), !select(vec4<bool>(func_3(u_input.a.x, u_input.a.x, -2147483647i, vec2<u32>(0u, 7077u)), true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true)), true, firstTrailingBit(1u));
    let var_3 = vec3<u32>(var_2.d, 1u, abs(_wgslsmith_div_u32(~_wgslsmith_mult_u32(var_2.d, 4780u), _wgslsmith_dot_vec4_u32(vec4<u32>(7388u, 1u, u_input.a.x, 1u) << (vec4<u32>(1u, 4294967295u, 0u, var_2.d) % vec4<u32>(32u)), vec4<u32>(23830u, 24626u, 1u, 26513u)))));
    let var_4 = func_6(func_1(~1i, 37811u, var_0.b), var_2.a.zzz, reverseBits(~65431u));
    var var_5 = -_wgslsmith_mult_i32(firstTrailingBit(abs(~(-1i))), 1774i);
    var var_6 = u_input.a.x;
    var var_7 = _wgslsmith_f_op_f32(-var_4.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(abs(select(vec4<i32>(-985i, 23361i, 10088i, -1i), vec4<i32>(48886i, 1i, -11796i, 0i), var_2.c)) & ~vec4<i32>(51695i, 1i, -2147483647i, -1i), reverseBits(~vec4<i32>(1i, 1i, 1i, 1i))), vec2<f32>(var_0.a.x, 1831f), reverseBits(~vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(3577i, 2147483647i, -42711i), vec3<i32>(-2147483647i, 2147483647i, -1i)), abs(-1i))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_4.b, func_1(abs(-2147483647i), ~28935u, -289f).a.x, -916f))));
}

