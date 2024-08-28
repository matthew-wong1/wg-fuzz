struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: i32) -> f32 {
    var var_0 = vec3<bool>(arg_0.a, _wgslsmith_f_op_f32(f32(-1f) * -1782f) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), arg_1), false);
    var_0 = vec3<bool>(select(false & (arg_1 < arg_1), arg_0.a, false), any(select(vec3<bool>(!var_0.x, var_0.x, false), select(select(vec3<bool>(false, false, var_0.x), vec3<bool>(true, arg_0.a, true), false), select(vec3<bool>(var_0.x, true, arg_0.a), vec3<bool>(arg_0.a, true, true), vec3<bool>(false, false, var_0.x)), vec3<bool>(arg_0.a, arg_0.a, false)), var_0.x)), arg_0.a);
    var_0 = select(vec3<bool>(false == any(vec3<bool>(false, false, arg_0.a)), any(!select(vec3<bool>(var_0.x, arg_0.a, arg_0.a), vec3<bool>(arg_0.a, false, arg_0.a), vec3<bool>(true, arg_0.a, arg_0.a))), true), vec3<bool>((_wgslsmith_f_op_f32(-arg_1) < -159f) | (var_0.x && false), _wgslsmith_f_op_f32(abs(-1631f)) <= arg_1, var_0.x), (countOneBits(u_input.b) ^ ~1u) == (u_input.b & 41346u));
    var_0 = select(vec3<bool>(true, any(!(!vec3<bool>(true, arg_0.a, false))), ~6319i >= ~u_input.c.x), vec3<bool>(true, true, false && arg_0.a), true);
    var var_1 = arg_0;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1128f, 896f, var_1.a)), _wgslsmith_f_op_f32(round(arg_1)))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -340f)));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> vec4<f32> {
    var var_0 = arg_1;
    let var_1 = -30291i;
    let var_2 = Struct_1(true);
    var_0 = Struct_1(arg_1.a);
    var var_3 = (4294967295u <= ~(~_wgslsmith_add_u32(76266u, u_input.b))) && true;
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, arg_0)) * vec4<f32>(877f, arg_0, arg_0, -553f)), vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(false), arg_0, 1i)), _wgslsmith_f_op_f32(-arg_0), arg_0, arg_0))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 450f, arg_0, arg_0) * vec4<f32>(arg_0, 110f, 2787f, arg_0)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, 967f) + vec4<f32>(arg_0, 397f, arg_0, arg_0)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(616f, 353f, 3653f, arg_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, 430f), vec4<f32>(-1395f, 1137f, arg_0, -926f))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = max(firstTrailingBit(max(vec3<u32>(u_input.b, 64975u, u_input.b), vec3<u32>(66969u, u_input.b, u_input.b))) ^ max(abs(vec3<u32>(1u, u_input.b, u_input.b)), vec3<u32>(4294967295u, 1u, u_input.b) << (vec3<u32>(51072u, u_input.b, u_input.b) % vec3<u32>(32u))), countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(1106u, 1u, u_input.b))) | max(abs(vec3<u32>(0u, 0u, u_input.b)), abs(vec3<u32>(4294967295u, u_input.b, u_input.b)))) >> (vec3<u32>(min(4294967295u, 0u), _wgslsmith_sub_u32(u_input.b | ~37313u, u_input.b), ~45117u) % vec3<u32>(32u));
    let var_1 = 1u;
    let var_2 = abs(-min(u_input.c.xy, u_input.c.zz));
    let var_3 = _wgslsmith_div_vec3_u32(~(~vec3<u32>(19103u, 18562u, 1u)) | ~(~vec3<u32>(40016u, 28186u, 1u) << ((vec3<u32>(u_input.b, 1u, var_0.x) ^ vec3<u32>(var_1, 4294967295u, 67294u)) % vec3<u32>(32u))), ~vec3<u32>(~1u, _wgslsmith_sub_u32(var_1, 1u), select(abs(36469u), var_1, true)));
    var_0 = ~(~vec3<u32>(_wgslsmith_mult_u32(22906u, 5911u), _wgslsmith_div_u32(u_input.b, u_input.b), _wgslsmith_mod_u32(1u, 54630u))) ^ vec3<u32>(_wgslsmith_mult_u32(1742u ^ var_0.x, abs(~var_3.x)), ~firstLeadingBit(u_input.b) << (_wgslsmith_dot_vec3_u32(~var_3, var_3) % 32u), min(_wgslsmith_add_u32(~var_3.x, abs(u_input.b)), _wgslsmith_div_u32(63265u, 25215u) << (~var_1 % 32u)));
    return arg_1;
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(542f, Struct_1(true))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1620f, 1484f, 2751f, 478f) - vec4<f32>(314f, 817f, 373f, -652f))))), Struct_1(abs(i32(-1i) * -1i) != ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 2147483647i, u_input.a), u_input.c)));
    let var_1 = func_4(vec4<f32>(385f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1194f)) - _wgslsmith_f_op_f32(select(-1681f, -1770f, var_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2292f) * _wgslsmith_f_op_f32(f32(-1f) * -130f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec4_f32(func_2(503f, Struct_1(var_0.a))).x, Struct_1(false))).x + -1255f), 1568f), func_4(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_f32(func_3(Struct_1(false), _wgslsmith_f_op_f32(abs(2124f)), -2147483647i)), Struct_1(any(vec2<bool>(var_0.a, var_0.a))))), func_4(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1106f), _wgslsmith_f_op_f32(2644f * -1658f), -599f, _wgslsmith_f_op_f32(-308f - 1615f)), var_0)));
    var var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-1392f)), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-376f - -1138f)))), _wgslsmith_f_op_f32(-224f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(false), -251f, u_input.a)))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1039f * -402f), _wgslsmith_f_op_f32(floor(798f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-317f, 278f))))), vec4<f32>(-1765f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2358f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(424f, 1953f) + 1999f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-382f - -444f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1099f * -1267f))));
    let var_3 = var_2.www;
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3.x)))))), _wgslsmith_f_op_f32(var_2.x - -871f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.x, -199f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-145f * var_3.x)));
    return Struct_1(!all(vec2<bool>(!var_1.a, var_1.a)));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: i32, arg_3: Struct_1) -> vec2<f32> {
    var var_0 = arg_0;
    var_0 = Struct_1(any(select(select(vec3<bool>(arg_3.a, false, false), select(vec3<bool>(true, arg_0.a, true), vec3<bool>(arg_3.a, false, var_0.a), vec3<bool>(var_0.a, true, true)), vec3<bool>(true, false, false)), select(vec3<bool>(true, false, true), vec3<bool>(arg_0.a, arg_0.a, arg_3.a), func_1().a), !select(vec3<bool>(false, true, false), vec3<bool>(var_0.a, arg_3.a, false), vec3<bool>(true, false, var_0.a)))));
    var var_1 = arg_3;
    var var_2 = arg_0;
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_2(510f, Struct_1(arg_0.a))).xw), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(627f, -491f)))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-479f, -735f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1199f + 1356f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1142f + -1673f)))));
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_3.x, -110f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(384f, var_3.x), vec2<f32>(var_3.x, var_3.x), vec2<bool>(false, false)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_5(func_1(), ~u_input.b, -1i, func_1())));
    let var_1 = Struct_1(func_4(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(942f, var_0.x, var_0.x, -586f), vec4<f32>(-282f, var_0.x, var_0.x, -790f)), vec4<f32>(2006f, -1186f, var_0.x, 317f)))), func_4(vec4<f32>(256f, _wgslsmith_f_op_f32(f32(-1f) * -555f), _wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_vec4_f32(func_2(-226f, Struct_1(false))).x), func_1())).a);
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(427f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.x, 402f)))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-980f, 408f) + vec2<f32>(var_0.x, -239f))))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -1109f)), vec2<f32>(-1862f, -3014f), vec2<bool>(var_1.a, var_1.a))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(714f, 189f)))), !(!var_1.a)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f + var_0.x))) * _wgslsmith_f_op_f32(405f + _wgslsmith_f_op_f32(-var_0.x)))));
    let var_3 = 55819u;
    let var_4 = !(~countOneBits(~var_3) >= u_input.b);
    let var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(countOneBits(u_input.c), vec3<i32>(1i, -_wgslsmith_clamp_i32(-18600i, 14772i, u_input.a), min(firstTrailingBit(-1i), 0i))), firstLeadingBit(var_3) | 1u, min(vec3<u32>(abs(0u), u_input.b, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.b, u_input.b, var_3), vec4<u32>(13420u, u_input.b, 1u, 5206u) << (vec4<u32>(u_input.b, var_3, var_3, var_3) % vec4<u32>(32u)))), select(~min(vec3<u32>(u_input.b, 0u, 5211u), vec3<u32>(40255u, u_input.b, 0u)), vec3<u32>(countOneBits(var_3), _wgslsmith_sub_u32(var_3, 4294967295u), ~var_3), !(u_input.c.x > -1i))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(232f + _wgslsmith_div_f32(144f, -596f)), _wgslsmith_f_op_f32(sign(444f)), _wgslsmith_f_op_f32(-373f - _wgslsmith_f_op_f32(1000f * var_2.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -143f), 1f))) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, _wgslsmith_f_op_vec4_f32(func_2(1395f, var_1)).x, _wgslsmith_f_op_f32(-var_0.x), var_0.x)))), _wgslsmith_f_op_f32(trunc(var_0.x)));
}

