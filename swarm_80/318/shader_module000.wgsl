struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: vec3<bool>,
    d: u32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec2<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: i32,
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32) -> vec3<u32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-275f, -1618f, 1750f, -551f)))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(ceil(1303f)), _wgslsmith_f_op_f32(f32(-1f) * -116f), 152f, _wgslsmith_f_op_f32(sign(537f)))))));
    var var_1 = arg_1;
    var_1 = ~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, _wgslsmith_mod_u32(u_input.b, 1u), _wgslsmith_div_u32(0u, arg_1)), vec3<u32>(~7767u, ~1u, 1u)), arg_0.x);
    let var_2 = firstLeadingBit(~u_input.a.x);
    var var_3 = !select(vec2<bool>(true, all(vec4<bool>(true, true, true, true))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(any(vec3<bool>(true, true, false)), true), arg_1 > _wgslsmith_dot_vec3_u32(arg_0, arg_0)), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true)));
    return firstTrailingBit(vec3<u32>(arg_0.x, ~(9054u & (arg_1 >> (u_input.b % 32u))), 4294967295u));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_5) -> bool {
    let var_0 = ~_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(select(~vec3<u32>(1u, 0u, 29161u), max(vec3<u32>(u_input.b, u_input.b, 0u), vec3<u32>(4294967295u, 24384u, u_input.b)), !arg_1.a.x), vec3<u32>(~u_input.b, 1u, reverseBits(u_input.b))), ~func_3(vec3<u32>(1u, u_input.b, 4294967295u), _wgslsmith_add_u32(u_input.b, 36171u)), _wgslsmith_mod_vec3_u32(max(vec3<u32>(134342u, 0u, 1u) ^ vec3<u32>(4294967295u, u_input.b, 4294967295u), vec3<u32>(u_input.b, u_input.b, 24935u)), ~vec3<u32>(u_input.b, 70990u, 70463u)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1929f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x + 503f) * 498f)) - 717f) + 130f);
    let var_2 = select(select(vec4<bool>(all(vec4<bool>(arg_1.a.x, false, arg_1.a.x, false)), true, true, arg_1.a.x), select(select(select(vec4<bool>(arg_1.a.x, arg_1.a.x, false, arg_1.a.x), vec4<bool>(false, arg_1.a.x, arg_1.a.x, true), arg_1.a.x), !vec4<bool>(true, false, arg_1.a.x, true), arg_1.b.a.x != arg_0.a.x), vec4<bool>(arg_1.a.x, any(arg_1.a), arg_1.a.x, 4294967295u == u_input.b), arg_1.a.x), u_input.a.x < -48630i), select(select(select(select(vec4<bool>(false, arg_1.a.x, true, arg_1.a.x), vec4<bool>(false, true, arg_1.a.x, true), vec4<bool>(arg_1.a.x, false, false, arg_1.a.x)), !vec4<bool>(arg_1.a.x, arg_1.a.x, true, arg_1.a.x), arg_1.a.x), select(!vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, arg_1.a.x), !vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, true), vec4<bool>(false, true, true, arg_1.a.x)), true), vec4<bool>(!(u_input.b > u_input.b), true, false, false), select(!vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, true), vec4<bool>(-1519f <= arg_1.c.a.x, !arg_1.a.x, -21246i > u_input.a.x, !arg_1.a.x), any(select(vec4<bool>(arg_1.a.x, false, arg_1.a.x, false), vec4<bool>(arg_1.a.x, true, false, false), arg_1.a.x)))), !all(vec3<bool>(true, any(vec3<bool>(arg_1.a.x, false, false)), !arg_1.a.x)));
    var_1 = -996f;
    var var_3 = arg_1;
    return var_3.a.x;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1.b.xz, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1000f, arg_1.b.x))), vec2<f32>(-344f, -235f))))));
    let var_1 = Struct_5(!vec2<bool>(572f <= _wgslsmith_f_op_f32(var_0.x - arg_1.b.x), select(true, all(arg_1.a.wzz), true)), Struct_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, arg_1.b.x, -1000f, -761f) * vec4<f32>(arg_1.b.x, 1051f, var_0.x, arg_1.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-594f, var_0.x, -457f, -1028f)), func_2(Struct_2(vec4<f32>(arg_1.b.x, var_0.x, -895f, 111f)), Struct_5(vec2<bool>(arg_1.c.x, true), Struct_2(vec4<f32>(arg_1.b.x, arg_1.b.x, arg_1.b.x, -931f)), Struct_2(vec4<f32>(arg_1.b.x, -193f, 702f, -1627f))))))))), Struct_2(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_0.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))))));
    var var_2 = !(!arg_1.a);
    var_2 = !vec4<bool>(var_1.a.x, !var_1.a.x, (arg_3 >= 38427u) & var_2.x, all(!arg_1.c) || arg_1.e.x);
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_0.x)), _wgslsmith_f_op_f32(-var_0.x), 551f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.b.x, var_0.x))))));
    return Struct_5(vec2<bool>(arg_0, false), Struct_2(var_3.a), var_3);
}

fn func_4(arg_0: Struct_5) -> Struct_1 {
    var var_0 = min(u_input.b, abs(u_input.b >> (1u % 32u)));
    var var_1 = Struct_4(-_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(-17459i, 8393i, -2147483647i)), ~vec3<i32>(u_input.a.x, u_input.a.x, -20213i)), abs(_wgslsmith_mult_vec3_i32(u_input.a.wyz, u_input.a.yxx))));
    var var_2 = select(vec2<bool>(arg_0.a.x, u_input.a.x >= abs(_wgslsmith_clamp_i32(2147483647i, -24075i, var_1.a.x))), func_1(false, Struct_1(vec4<bool>(!arg_0.a.x, false, true, arg_0.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(arg_0.b.a.xwy, arg_0.b.a.zwz)) * vec3<f32>(arg_0.b.a.x, 126f, -2580f)), !vec3<bool>(arg_0.a.x, arg_0.a.x, false), reverseBits(u_input.b), arg_0.a), ~_wgslsmith_add_i32(reverseBits(17913i), 1i), countOneBits(~_wgslsmith_mod_u32(u_input.b, u_input.b))).a, vec2<bool>(arg_0.a.x, arg_0.a.x));
    return Struct_1(select(vec4<bool>(true, false, !(17753u <= u_input.b), false), !(!(!vec4<bool>(var_2.x, true, false, var_2.x))), vec4<bool>(!all(vec4<bool>(var_2.x, false, arg_0.a.x, arg_0.a.x)), arg_0.a.x, var_2.x, any(select(vec4<bool>(false, false, arg_0.a.x, arg_0.a.x), vec4<bool>(var_2.x, false, arg_0.a.x, arg_0.a.x), vec4<bool>(true, false, true, false))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(arg_0.c.a.ywz)) * vec3<f32>(-1000f, -1940f, -928f)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.c.a.x, 1170f, arg_0.b.a.x), vec3<f32>(265f, arg_0.c.a.x, -1222f), vec3<bool>(false, arg_0.a.x, true))) - _wgslsmith_f_op_vec3_f32(arg_0.b.a.ywx * vec3<f32>(arg_0.b.a.x, arg_0.b.a.x, -1004f))))))), select(select(select(vec3<bool>(arg_0.a.x, false, var_2.x), !vec3<bool>(var_2.x, arg_0.a.x, false), true), !vec3<bool>(var_2.x, false, true), vec3<bool>(false, true, !var_2.x)), select(vec3<bool>(all(vec3<bool>(arg_0.a.x, false, var_2.x)), arg_0.a.x, true | var_2.x), !(!vec3<bool>(var_2.x, true, arg_0.a.x)), !select(vec3<bool>(arg_0.a.x, true, false), vec3<bool>(var_2.x, var_2.x, true), vec3<bool>(true, true, arg_0.a.x))), vec3<bool>(true, true, true)), ~9593u, vec2<bool>(931f <= _wgslsmith_f_op_f32(-arg_0.b.a.x), (u_input.b & _wgslsmith_clamp_u32(4294967295u, u_input.b, 10560u)) < 22292u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(false, Struct_1(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true), true), vec3<f32>(_wgslsmith_f_op_f32(-278f + 728f), -677f, _wgslsmith_f_op_f32(-341f * 239f)), vec3<bool>(true, false, true), ~(~u_input.b), vec2<bool>(true, true)), abs(u_input.a.x), u_input.b));
    let var_1 = var_0.b.zz;
    var var_2 = Struct_3(vec3<f32>(331f, 1219f, _wgslsmith_f_op_f32(f32(-1f) * -539f)), u_input.a, var_0.a.xz);
    let var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(354f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * -300f) * _wgslsmith_f_op_f32(-var_0.b.x)) + -1768f), -1524f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(332f, var_2.a.x, var_2.a.x) + _wgslsmith_f_op_vec3_f32(ceil(var_2.a)))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_0.b)))))));
    var var_4 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.a))), ~_wgslsmith_add_vec4_i32(min(-var_2.b, var_2.b << (vec4<u32>(0u, 4294967295u, var_0.d, 0u) % vec4<u32>(32u))), vec4<i32>(-2147483647i, var_2.b.x, var_2.b.x, u_input.a.x) | _wgslsmith_add_vec4_i32(vec4<i32>(var_2.b.x, -2147483647i, u_input.a.x, -2147483647i), vec4<i32>(-34258i, u_input.a.x, var_2.b.x, 0i))), vec2<bool>(true, true));
    let x = u_input.a;
    s_output = StorageBuffer(-1845f, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(181f, var_4.a.x)) - _wgslsmith_div_f32(-741f, 359f)), var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -366f))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(min(var_2.a.x, var_0.b.x)), var_3.x, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_3.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a.x, -1000f, var_2.a.x, -1650f)) + vec4<f32>(var_3.x, var_4.a.x, 1363f, var_1.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.x, 639f, var_3.x, -1482f), vec4<f32>(var_0.b.x, var_4.a.x, var_1.x, var_3.x))) + vec4<f32>(var_0.b.x, var_3.x, var_4.a.x, var_2.a.x))), ~(-(-24614i << (var_0.d % 32u)) | ~(-var_2.b.x)));
}

