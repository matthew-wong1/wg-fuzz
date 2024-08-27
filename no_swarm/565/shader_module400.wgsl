struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: i32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: bool) -> u32 {
    var var_0 = _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, (i32(-1i) * -2147483647i) & arg_1.x), firstLeadingBit(select(u_input.b, vec2<i32>(-32625i, -56461i), any(vec4<bool>(arg_2, arg_2, true, arg_2))))), vec2<i32>(19995i, -20569i << (firstTrailingBit(select(0u, 4294967295u, true)) % 32u)));
    var_0 = -_wgslsmith_mult_vec2_i32((-vec2<i32>(0i, var_0.x) >> (reverseBits(vec2<u32>(1u, 4339u)) % vec2<u32>(32u))) ^ max(arg_1 << (vec2<u32>(4294967295u, 11914u) % vec2<u32>(32u)), select(u_input.b, vec2<i32>(arg_1.x, -1i), true)), -vec2<i32>(reverseBits(var_0.x), -var_0.x));
    let var_1 = u_input.b.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-766f, -1665f, _wgslsmith_f_op_f32(arg_0 - arg_0), arg_0)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-436f, 1751f, 943f, _wgslsmith_f_op_f32(ceil(1963f)))));
    var_0 = -abs(~vec2<i32>(_wgslsmith_div_i32(2147483647i, -1i), ~u_input.b.x));
    return select(_wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(0u, 18642u, 38825u)), vec3<u32>(73983u, 2159u, 17453u)), _wgslsmith_mod_u32(1u, 4294967295u)), 1u), ~4294967295u, true);
}

fn func_2(arg_0: bool, arg_1: vec4<i32>) -> vec4<bool> {
    var var_0 = ~select(vec3<i32>(1i, _wgslsmith_mod_i32(-1i, _wgslsmith_mod_i32(-2147483647i, u_input.b.x)), 0i), vec3<i32>(-arg_1.x, 0i, u_input.a & 0i) | arg_1.xyx, vec3<bool>(false, arg_0, true));
    var var_1 = _wgslsmith_sub_u32(_wgslsmith_clamp_u32(~func_3(_wgslsmith_f_op_f32(abs(-100f)), vec2<i32>(arg_1.x, u_input.a) ^ vec2<i32>(u_input.b.x, arg_1.x), arg_0), ~1u, 1247u), _wgslsmith_div_u32(0u, ~(1u << (_wgslsmith_dot_vec2_u32(vec2<u32>(95635u, 4294967295u), vec2<u32>(1u, 0u)) % 32u))));
    let var_2 = false;
    let var_3 = ~_wgslsmith_mult_u32(18780u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 14813u, 1u)));
    var var_4 = (vec3<i32>(-5215i, _wgslsmith_mod_i32(1i, max(3479i, arg_1.x)), arg_1.x) & (_wgslsmith_add_vec3_i32(vec3<i32>(arg_1.x, var_0.x, var_0.x) << (vec3<u32>(7957u, var_3, 1u) % vec3<u32>(32u)), vec3<i32>(63624i, -38240i, -24981i)) | min(~vec3<i32>(u_input.a, var_0.x, u_input.a), _wgslsmith_div_vec3_i32(arg_1.yzw, arg_1.wxw)))) & arg_1.wyy;
    return !vec4<bool>(arg_0, true, true, arg_0);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1649f * -696f), _wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + -1315f)))), arg_1.x, _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-arg_1.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, -671f, arg_1.x, 234f) + vec4<f32>(1893f, arg_1.x, 165f, 570f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -1000f, arg_1.x, arg_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -1000f, arg_1.x, arg_1.x)), vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x))), vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x & arg_0.x))) * vec4<f32>(_wgslsmith_f_op_f32(-723f + arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1855f, 2391f)) * _wgslsmith_f_op_f32(-arg_1.x)), arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * arg_1.x) + arg_1.x))));
    let var_1 = Struct_5(select(~((-30102i << (arg_2 % 32u)) & (u_input.b.x ^ u_input.b.x)), u_input.b.x, false), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(step(arg_1.x, _wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(-var_0.x)));
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.b.x, 428f, -1380f, arg_1.x), vec4<f32>(arg_1.x, 244f, var_1.b.x, var_1.b.x), arg_0)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(685f, var_0.x, arg_1.x, arg_1.x))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1408f, arg_1.x, var_0.x, var_0.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-276f, 247f, -166f, -116f))) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, var_1.b.x, 1000f, var_1.b.x), vec4<f32>(arg_1.x, -586f, -1448f, arg_1.x))))));
    let var_2 = ~(~101784u);
    var_0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1002f, arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(542f, -841f)) - _wgslsmith_div_f32(-738f, _wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-290f))), -360f)));
    return arg_2;
}

fn func_1(arg_0: vec3<bool>) -> vec4<bool> {
    let var_0 = Struct_5(select(_wgslsmith_dot_vec2_i32(max(-u_input.b, firstLeadingBit(u_input.b)), u_input.b), -3607i, true), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -939f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_div_f32(709f, -1046f)), 938f), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1357f), _wgslsmith_f_op_f32(round(424f)), _wgslsmith_f_op_f32(472f + -502f)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(329f, 231f, -219f))), vec3<f32>(-905f, -1440f, 850f))))));
    var var_1 = Struct_3(vec4<i32>(abs(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a, u_input.a), vec3<i32>(1i, -1i, -44023i)), ~(-12051i))), _wgslsmith_mod_i32(0i, -(i32(-1i) * -2147483647i)), u_input.a, 0i), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1639f, var_0.b.x, arg_0.x))), -firstTrailingBit(vec3<i32>(var_0.a, 55953i, -7199i)), vec2<i32>(u_input.b.x, -var_0.a), func_4(func_2(arg_0.x, vec4<i32>(u_input.b.x, u_input.a, -6622i, var_0.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, var_0.b.x, 147f)), ~0u), select(vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 64292u), arg_0.x) ^ select(vec2<u32>(20574u, 4294967295u), vec2<u32>(4294967295u, 29548u), vec2<bool>(arg_0.x, true))), Struct_1(_wgslsmith_f_op_f32(-var_0.b.x), vec3<i32>(var_0.a, var_0.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, var_0.a, 2147483647i), vec3<i32>(var_0.a, 0i, u_input.a))), ~u_input.b, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(26920u, 0u, 1u)), vec3<u32>(0u, 1593u, 36865u)), abs(vec2<u32>(1u, 1u))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.b.x)) - _wgslsmith_f_op_f32(step(798f, -1599f))), vec3<i32>(select(u_input.a, -18198i, arg_0.x), var_0.a, -var_0.a), u_input.b, 1u, select(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u), vec2<bool>(arg_0.x, false))), var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.b.x)) - _wgslsmith_f_op_f32(step(var_0.b.x, -1531f))) + var_0.b.x)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x * var_0.b.x))), vec3<i32>(u_input.b.x, -9152i, reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 2147483647i, u_input.a), vec3<i32>(u_input.b.x, var_0.a, var_0.a)))), u_input.b ^ _wgslsmith_mod_vec2_i32(abs(u_input.b), min(u_input.b, vec2<i32>(var_0.a, var_0.a))), 1u, firstTrailingBit(vec2<u32>(1u, 1u)) >> (vec2<u32>(~0u, _wgslsmith_div_u32(0u, 44893u)) % vec2<u32>(32u))), Struct_2(Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(2010f, 126f), _wgslsmith_div_f32(var_0.b.x, var_0.b.x), arg_0.x)), vec3<i32>(-2147483647i, 1i, 1i), vec2<i32>(var_0.a, ~var_0.a), select(1u, 28931u, arg_0.x) << (~1u % 32u), ~max(vec2<u32>(8960u, 0u), vec2<u32>(77792u, 0u))), Struct_1(-181f, ~select(vec3<i32>(var_0.a, var_0.a, 5866i), vec3<i32>(69348i, var_0.a, 0i), arg_0.x), ~vec2<i32>(u_input.b.x, 13112i), func_3(var_0.b.x, vec2<i32>(221i, -1i), false) | 1u, vec2<u32>(countOneBits(0u), ~1u)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), max(-vec3<i32>(1i, 19979i, u_input.a), -vec3<i32>(2235i, u_input.a, 3640i)), ~vec2<i32>(var_0.a, 3942i), func_3(410f, u_input.b, true) >> (1u % 32u), ~(~vec2<u32>(11142u, 0u))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.b.x + -728f), var_0.b.x)))), _wgslsmith_f_op_f32(-var_0.b.x)), Struct_2(Struct_1(var_0.b.x, vec3<i32>(firstLeadingBit(-35193i), var_0.a | u_input.a, var_0.a), vec2<i32>(~(-55684i), -2147483647i), _wgslsmith_clamp_u32(47510u, 1u, 117431u), vec2<u32>(countOneBits(71071u), 39923u << (1u % 32u))), Struct_1(var_0.b.x, vec3<i32>(var_0.a, var_0.a, var_0.a) & max(vec3<i32>(38874i, 0i, u_input.a), vec3<i32>(var_0.a, 0i, 35191i)), firstLeadingBit(u_input.b), abs(1u), vec2<u32>(1u << (1u % 32u), 1u)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x * -643f) + _wgslsmith_f_op_f32(941f + var_0.b.x)), _wgslsmith_clamp_vec3_i32(min(vec3<i32>(u_input.b.x, u_input.b.x, 1i), vec3<i32>(4360i, u_input.a, -1i)), vec3<i32>(var_0.a, u_input.b.x, var_0.a), ~vec3<i32>(u_input.a, u_input.a, var_0.a)), u_input.b, 27757u, abs(firstTrailingBit(vec2<u32>(4294967295u, 1u)))), _wgslsmith_div_f32(-921f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(733f * -259f), _wgslsmith_f_op_f32(-var_0.b.x), false))), _wgslsmith_f_op_f32(step(var_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -803f)))));
    var_1 = Struct_3(var_1.a, var_1.b, var_1.c, var_1.d, Struct_2(var_1.d.b, var_1.d.b, var_1.b.a, -837f, var_1.b.e));
    var_1 = Struct_3(var_1.a, Struct_2(var_1.c, Struct_1(_wgslsmith_f_op_f32(max(1867f, 1000f)), -_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 1i, 13974i), vec3<i32>(var_1.b.a.b.x, var_1.c.b.x, u_input.a), var_1.d.b.b), firstTrailingBit(~var_1.b.c.c), 11454u, _wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(60100u, 4547u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(var_1.b.c.e.x, var_1.c.e.x), var_1.e.c.e), var_1.e.c.e)), Struct_1(751f, var_1.e.a.b, vec2<i32>(var_1.a.x, firstLeadingBit(56987i)), var_1.d.b.d, var_1.b.a.e), var_0.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-808f, var_0.b.x)), var_0.b.x, true))))), Struct_1(-728f, var_1.a.wxx, vec2<i32>(_wgslsmith_dot_vec4_i32(~var_1.a, var_1.a), u_input.a), max(var_1.c.d, var_1.d.a.e.x), _wgslsmith_add_vec2_u32(var_1.c.e, var_1.b.a.e)), var_1.e, Struct_2(Struct_1(var_0.b.x, var_1.c.b, vec2<i32>(_wgslsmith_sub_i32(77724i, u_input.b.x), u_input.a | var_1.b.c.b.x), max(var_1.e.b.d, abs(4294967295u)), vec2<u32>(~var_1.c.e.x, abs(var_1.c.d))), Struct_1(_wgslsmith_f_op_f32(var_1.c.a * _wgslsmith_f_op_f32(var_0.b.x - var_0.b.x)), vec3<i32>(reverseBits(var_0.a), _wgslsmith_div_i32(8868i, 2147483647i), u_input.a ^ 1i), vec2<i32>(var_0.a, 1i), 1u, ~var_1.b.c.e), var_1.b.b, _wgslsmith_f_op_f32(-var_0.b.x), var_0.b.x));
    let var_2 = true;
    return select(!vec4<bool>(-2147483647i <= _wgslsmith_clamp_i32(-83859i, var_0.a, -2147483647i), var_2 | arg_0.x, all(vec2<bool>(false, true)) || (arg_0.x | true), _wgslsmith_div_f32(-440f, var_0.b.x) < _wgslsmith_f_op_f32(var_1.e.e - -666f)), select(select(!vec4<bool>(var_2, var_2, true, arg_0.x), !select(vec4<bool>(arg_0.x, arg_0.x, var_2, true), vec4<bool>(var_2, true, false, true), vec4<bool>(arg_0.x, false, true, arg_0.x)), !(arg_0.x != false)), func_2((var_1.d.c.a > -634f) || func_2(false, var_1.a).x, -vec4<i32>(var_0.a, 0i, 11859i, var_1.b.a.b.x)), var_2), !(!(!(!vec4<bool>(arg_0.x, false, true, arg_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, ~(-19531i), ~(-27579i), _wgslsmith_add_i32(u_input.b.x, 0i)), vec4<i32>(select(u_input.a, 0i, false), -u_input.b.x, 0i, 32364i)) > _wgslsmith_sub_i32(select(max(u_input.a, u_input.a), ~u_input.b.x, any(vec2<bool>(true, true))), u_input.a));
    let var_1 = Struct_4(1i);
    var var_2 = select(select(select(vec4<bool>(true, true, false, var_0.x), !func_1(vec3<bool>(var_0.x, var_0.x, false)), !select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(false, var_0.x, true, false), vec4<bool>(false, true, var_0.x, var_0.x))), !vec4<bool>(false, false, true, var_0.x), vec4<bool>(all(!vec3<bool>(true, var_0.x, var_0.x)), !all(vec4<bool>(var_0.x, var_0.x, false, var_0.x)), all(vec4<bool>(true, var_0.x, false, var_0.x)), true & !var_0.x)), !(!func_1(select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, false)))), !var_0.x);
    let var_3 = Struct_3(max(~abs(vec4<i32>(u_input.a, var_1.a, u_input.b.x, u_input.b.x)) & select(-vec4<i32>(u_input.a, u_input.b.x, u_input.a, -22056i), -vec4<i32>(var_1.a, 1i, var_1.a, u_input.a), !var_0.x), ~vec4<i32>(-u_input.b.x, countOneBits(-1i), firstLeadingBit(u_input.a), -17728i)), Struct_2(Struct_1(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(123f - 325f)), reverseBits(vec3<i32>(-38032i, u_input.b.x, 1i) | vec3<i32>(0i, var_1.a, -2147483647i)), ~vec2<i32>(5821i, -50225i), 44598u, vec2<u32>(1u, 1u)), Struct_1(_wgslsmith_div_f32(-1488f, _wgslsmith_f_op_f32(f32(-1f) * -1805f)), ~_wgslsmith_add_vec3_i32(vec3<i32>(var_1.a, var_1.a, -38058i), vec3<i32>(u_input.b.x, 1i, -1i)), u_input.b, 1u, vec2<u32>(1u, 1u)), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(1069f, 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), any(vec2<bool>(false, var_0.x)))), select(vec3<i32>(var_1.a, -2147483647i, 32270i), vec3<i32>(u_input.b.x, -1i, var_1.a), true), u_input.b, ~(~0u), _wgslsmith_add_vec2_u32(abs(vec2<u32>(0u, 29769u)), ~vec2<u32>(3272u, 4294967295u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-857f, 714f)) + _wgslsmith_f_op_f32(abs(-489f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(136f - -1259f))), 211f), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1841f * -1754f))), ~countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, -2147483647i, var_1.a), vec3<i32>(2147483647i, u_input.a, -1i))), vec2<i32>(-u_input.a, var_1.a), ~(select(4294967295u, 27695u, false) >> (~1u % 32u)), vec2<u32>(_wgslsmith_div_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 21233u), vec2<u32>(5151u, 0u))), 1u)), Struct_2(Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-1009f, 1934f, true)), 880f, var_0.x | var_2.x)), countOneBits(max(vec3<i32>(var_1.a, 19533i, 3429i), vec3<i32>(-11753i, 0i, 777i))), -min(u_input.b, u_input.b), 4294967295u, vec2<u32>(1u, 1u)), Struct_1(-476f, vec3<i32>(1i, min(-94117i, u_input.a), -5916i), abs(vec2<i32>(var_1.a, var_1.a)), ~(~4294967295u), min(vec2<u32>(1u, 1u), ~vec2<u32>(1u, 53230u))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1569f)) + _wgslsmith_f_op_f32(sign(-179f))), _wgslsmith_mod_vec3_i32(vec3<i32>(var_1.a, u_input.a, var_1.a) | vec3<i32>(u_input.b.x, 1420i, u_input.a), vec3<i32>(u_input.b.x, -1i, var_1.a)), abs(-u_input.b), 1u, ~reverseBits(vec2<u32>(43615u, 4294967295u))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -898f))), -147f), Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -340f), vec3<i32>(abs(-55083i), -var_1.a, u_input.a ^ var_1.a), countOneBits(reverseBits(vec2<i32>(var_1.a, 14705i))), 1u, vec2<u32>(1u, 1u)), Struct_1(_wgslsmith_f_op_f32(-1025f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), reverseBits(select(vec3<i32>(var_1.a, -11716i, -3092i), vec3<i32>(u_input.b.x, 0i, -1i), false)), abs(u_input.b), 45271u, vec2<u32>(~4294967295u, _wgslsmith_clamp_u32(4294967295u, 244u, 70258u))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -2041f), countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(3018i, u_input.a, 1i), vec3<i32>(-14955i, u_input.b.x, -80253i))), select(~vec2<i32>(-2147483647i, var_1.a), min(u_input.b, u_input.b), var_0), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 0u), ~vec3<u32>(1u, 63116u, 4283u)), vec2<u32>(1u, 1u)), _wgslsmith_f_op_f32(-626f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(453f * -957f))), _wgslsmith_f_op_f32(min(1461f, _wgslsmith_f_op_f32(round(-965f))))));
    var var_4 = abs(_wgslsmith_div_i32(var_1.a, u_input.a) << (_wgslsmith_div_u32(var_3.c.e.x, reverseBits(~1u)) % 32u));
    let var_5 = var_3.b;
    var_4 = var_5.a.c.x;
    var_4 = firstLeadingBit(u_input.b.x);
    let var_6 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.d.e))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(904f)))))), 218f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2064f, var_3.c.a, 793f, 223f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.e.a.a, 821f, var_5.b.a, var_5.a.a) + vec4<f32>(var_3.b.e, -146f, 301f, -1517f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1255f, -234f, -221f, var_3.c.a))))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(var_3.b.a.d, max(var_5.c.e.x, var_3.d.c.d), 59207u, 0u), countOneBits(vec4<u32>(4294967295u, 70503u, 0u, 1u))));
}

