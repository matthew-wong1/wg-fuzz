struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: vec3<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: f32, arg_1: f32) -> bool {
    var var_0 = Struct_3(_wgslsmith_add_u32(firstTrailingBit(2909u), ~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(14410u, 1u, 80471u, 20415u), vec4<u32>(50198u, 7254u, 0u, 39776u)), vec4<u32>(0u, 94438u, 0u, 4294967295u))), -18812i >> (_wgslsmith_sub_u32(1u, firstLeadingBit(_wgslsmith_clamp_u32(0u, 0u, 0u))) % 32u), vec3<f32>(arg_1, _wgslsmith_f_op_f32(floor(arg_0)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, 2089f) * _wgslsmith_f_op_f32(1493f - -1655f))))));
    var var_1 = ~var_0.a;
    var_0 = Struct_3(1u, u_input.b.x, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(var_0.c + vec3<f32>(_wgslsmith_f_op_f32(round(arg_1)), _wgslsmith_div_f32(-155f, -1000f), -1265f)))));
    var_0 = Struct_3(~(~18255u), var_0.b, vec3<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.c.x, -508f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -154f)))));
    var_1 = 51556u;
    return !(!(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-893f, var_0.c.x)))) == arg_1));
}

fn func_2(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_3, arg_3: Struct_3) -> Struct_2 {
    var var_0 = ~countOneBits(21674u);
    let var_1 = Struct_1(vec4<bool>(!all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false))), any(vec3<bool>(true, false, true)), !((9733u <= arg_2.a) || func_3(arg_2.c.x, arg_2.c.x)), false), func_3(arg_3.c.x, arg_3.c.x));
    var var_2 = arg_2.c.x;
    var var_3 = arg_2.a | _wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 97225u, 99889u), vec3<u32>(arg_2.a, 35668u, 4294967295u)), 18298u);
    var var_4 = i32(-1i) * -24167i;
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(887f * arg_2.c.x) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-1330f)), _wgslsmith_f_op_f32(f32(-1f) * -900f), var_1.a.x || false)))), 23033u, -_wgslsmith_div_vec2_i32(arg_0.zy, -arg_0.wx) << (((min(vec2<u32>(37897u, arg_3.a), vec2<u32>(20580u, 4294967295u)) & vec2<u32>(0u, 35125u)) << (select(~vec2<u32>(4294967295u, 12896u), vec2<u32>(4294967295u, 1u) >> (vec2<u32>(arg_2.a, 23313u) % vec2<u32>(32u)), vec2<bool>(false, false)) % vec2<u32>(32u))) % vec2<u32>(32u)));
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> vec2<f32> {
    var var_0 = Struct_4(max(select(vec3<u32>(_wgslsmith_add_u32(14311u, 1u), _wgslsmith_add_u32(arg_1.b, 28337u), arg_1.b), _wgslsmith_clamp_vec3_u32(select(vec3<u32>(95706u, 66156u, arg_1.b), vec3<u32>(arg_1.b, 1u, arg_1.b), true), min(vec3<u32>(arg_1.b, arg_1.b, 16308u), vec3<u32>(arg_1.b, arg_1.b, 128012u)), vec3<u32>(arg_1.b, arg_1.b, 98759u)), vec3<bool>(true, true, true)), _wgslsmith_sub_vec3_u32(countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, arg_1.b, 63849u), vec3<u32>(arg_1.b, 1u, 1u))), abs(vec3<u32>(6000u, 39435u, 22148u)))));
    let var_1 = vec2<u32>(arg_1.b, 19645u);
    var_0 = Struct_4(select(~var_0.a >> (vec3<u32>(1u, max(var_0.a.x, var_0.a.x), 1u >> (var_1.x % 32u)) % vec3<u32>(32u)), vec3<u32>(~var_0.a.x | _wgslsmith_sub_u32(arg_1.b, var_1.x), ~var_1.x, var_1.x << (var_1.x % 32u)), vec3<bool>(any(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, true)), arg_1.a <= -150f)));
    var_0 = Struct_4(_wgslsmith_div_vec3_u32(min(max(var_0.a, select(var_0.a, var_0.a, vec3<bool>(false, true, false))), _wgslsmith_mod_vec3_u32(var_0.a, ~vec3<u32>(1u, 63347u, var_0.a.x))), vec3<u32>(~(var_0.a.x & 1u), _wgslsmith_div_u32(~var_0.a.x, var_1.x), 1u)));
    var var_2 = Struct_3(var_1.x, arg_1.c.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(1199f)), -870f, _wgslsmith_f_op_f32(-arg_1.a))));
    return _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-809f)) * _wgslsmith_f_op_f32(-var_2.c.x)), var_2.c.x)));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec2<bool>, arg_3: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(364f, 1320f) + vec2<f32>(-695f, 456f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-503f, -815f) - vec2<f32>(-321f, 1372f)))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(550f, -169f), vec2<f32>(1073f, 1271f)))))));
    let var_1 = reverseBits(2632u);
    var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(1961i & u_input.a.x, func_2(vec4<i32>(-1i, u_input.a.x, u_input.b.x, -12646i), u_input.a.x, Struct_3(13236u, u_input.a.x, vec3<f32>(var_0.x, 588f, 1138f)), Struct_3(var_1, u_input.b.x, vec3<f32>(-1000f, var_0.x, -2868f))))), vec2<f32>(var_0.x, var_0.x)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 398f))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 183f)), vec2<f32>(-748f, 1507f), select(arg_2, vec2<bool>(false, arg_2.x), arg_2)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(530f, var_0.x), vec2<f32>(-315f, var_0.x), false)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(134f, 438f))))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-497f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-404f, 1152f))), func_2(-abs(vec4<i32>(u_input.b.x, u_input.b.x, u_input.a.x, u_input.a.x)), u_input.a.x, Struct_3(~19114u, 2147483647i, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, -977f, var_0.x)))), Struct_3(abs(arg_3), ~u_input.a.x, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, -1594f, -365f))))).a));
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * -358f))), arg_0, -vec2<i32>(1i | firstTrailingBit(-1i), abs(u_input.b.x << (57242u % 32u))));
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: Struct_4) -> Struct_3 {
    var var_0 = arg_2;
    let var_1 = 1i;
    let var_2 = arg_2;
    var_0 = arg_2;
    var var_3 = !(!any(vec3<bool>(true, true, false)) && select(any(vec2<bool>(true, true)), false, true));
    return Struct_3(_wgslsmith_mult_u32(arg_2.a.x, _wgslsmith_add_u32(reverseBits(arg_2.a.x), var_2.a.x)) | (~var_2.a.x | 4294967295u), arg_1, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.a, arg_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a + arg_0.a)), _wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(-arg_0.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-828f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))));
    let var_1 = Struct_1(vec4<bool>(true, true, true, true), true);
    let var_2 = func_5(func_1(25989u, !all(vec4<bool>(false, true, var_1.a.x, true)), !(!vec2<bool>(var_1.b, var_1.b)), firstLeadingBit(~abs(8574u))), abs(_wgslsmith_sub_i32(firstLeadingBit(u_input.a.x), min(u_input.b.x, u_input.b.x))) | 0i, Struct_4(~vec3<u32>(countOneBits(92736u), 1u, ~1u)));
    var_0 = _wgslsmith_f_op_vec2_f32(func_4(~u_input.a.x, func_2(_wgslsmith_div_vec4_i32(~vec4<i32>(-1i, var_2.b, -26522i, var_2.b), -vec4<i32>(var_2.b, 2147483647i, 20564i, 48231i)) >> (firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(var_2.a, 12306u, var_2.a, 1u), vec4<u32>(0u, var_2.a, var_2.a, 39932u))) % vec4<u32>(32u)), -1i >> (var_2.a % 32u), Struct_3(var_2.a, u_input.a.x, var_2.c), func_5(Struct_2(var_2.c.x, reverseBits(1u), _wgslsmith_add_vec2_i32(vec2<i32>(var_2.b, -8305i), u_input.b.zz)), -(~0i), Struct_4(~vec3<u32>(var_2.a, 0u, 28686u)))))).x;
    let var_3 = Struct_4(~(~vec3<u32>(var_2.a, 47251u, ~var_2.a)));
    let var_4 = var_3.a.x;
    var var_5 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-313f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~select(firstTrailingBit(vec3<u32>(4294967295u, 0u, var_2.a) | vec3<u32>(0u, var_4, var_4)), _wgslsmith_div_vec3_u32(~vec3<u32>(43414u, var_3.a.x, var_2.a), max(var_3.a, vec3<u32>(var_4, 1u, 4294967295u))), var_1.b), abs(vec2<i32>(u_input.b.x, var_2.b)), var_2.c.x, var_2.c.yx);
}

