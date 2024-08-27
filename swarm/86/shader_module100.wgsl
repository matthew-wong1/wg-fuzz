struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: vec3<u32>,
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    var var_0 = _wgslsmith_add_i32(select(2147483647i, arg_2.d.b, any(vec3<bool>(true, true, true))) << (1u % 32u), -7146i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_2.a.b, 0i) & (u_input.b | u_input.b), max(vec3<i32>(arg_0.b, arg_0.b, 1i), _wgslsmith_sub_vec3_i32(u_input.b, u_input.b))));
    var var_1 = _wgslsmith_mult_u32(~90584u, 0u);
    var var_2 = max(vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), firstTrailingBit(vec3<u32>(1u, 130455u, 4294967295u))), 1u), 1u, 1u, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(14110u, 1u, 4294967295u, 6824u)), vec4<u32>(80340u, 41468u, 23184u, 576u)) | 40520u), vec4<u32>(abs(0u), _wgslsmith_mult_u32(_wgslsmith_div_u32(3868u, 1u) ^ firstTrailingBit(44632u), _wgslsmith_div_u32(firstLeadingBit(69619u), 1u)), 0u, 1u));
    let var_3 = ~(~(~var_2.ywy));
    var_2 = ~countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(var_3.x, var_2.x, 4294967295u, var_2.x), firstTrailingBit(vec4<u32>(36332u, var_2.x, 0u, var_2.x))) ^ ~(vec4<u32>(19334u, var_2.x, var_2.x, var_3.x) | vec4<u32>(var_3.x, var_3.x, 4294967295u, 1u)));
    return 248f;
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: f32, arg_3: f32) -> vec3<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-arg_3), countOneBits(49372i), select(arg_0, !(!any(vec4<bool>(arg_0, arg_0, true, true))), any(select(!vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(arg_0, true, true, true), vec4<bool>(arg_0, arg_0, true, arg_0)))));
    var var_1 = 0u;
    var_1 = max(arg_1, ~39795u);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(148f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(854f * _wgslsmith_f_op_f32(-var_0.a)) * -188f)), u_input.b.x, false);
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(875f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(round(arg_2)))), min(-u_input.b.x | 1i, 44672i), true), Struct_1(_wgslsmith_f_op_f32(-207f - var_2.a), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, ~var_0.b, countOneBits(var_0.b), ~u_input.a.x), abs(~vec4<i32>(25792i, var_0.b, 43183i, -17149i))), !any(select(vec2<bool>(var_0.c, var_2.c), vec2<bool>(true, arg_0), vec2<bool>(false, false)))), select(vec4<bool>(true, (var_0.a < -1182f) && true, true, all(vec2<bool>(true, true))), !vec4<bool>(true, var_0.c, all(vec4<bool>(false, var_0.c, false, var_2.c)), arg_0), !arg_0), Struct_1(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_add_i32(var_2.b, 52771i), !var_2.c && var_0.c));
    return vec3<i32>(-22449i, var_3.d.b, var_3.a.b);
}

fn func_2(arg_0: vec2<bool>, arg_1: f32, arg_2: bool, arg_3: vec3<f32>) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1, arg_3.x, -242f, arg_3.x), vec4<f32>(-315f, arg_3.x, -437f, -494f))) - vec4<f32>(-285f, arg_1, _wgslsmith_div_f32(arg_1, arg_1), _wgslsmith_div_f32(arg_3.x, -1858f)))))));
    let var_1 = func_4(!(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(34640u, 0u), vec2<u32>(30981u, 27273u))) <= _wgslsmith_add_u32(1u, 63841u)), 1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x * arg_3.x) * _wgslsmith_f_op_f32(func_3(Struct_1(arg_1, 0i, arg_0.x), Struct_1(1015f, u_input.a.x, false), Struct_2(Struct_1(468f, u_input.a.x, arg_0.x), Struct_1(arg_3.x, u_input.b.x, true), vec4<bool>(true, arg_0.x, arg_0.x, arg_2), Struct_1(548f, u_input.b.x, arg_2))))) + 103f) - 1000f), _wgslsmith_f_op_f32(step(1167f, -480f)));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(926f, _wgslsmith_f_op_f32(-arg_3.x), 496f, 1088f));
}

fn func_5(arg_0: vec4<f32>, arg_1: i32) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.x)) * arg_0.x))), -29288i, true), Struct_1(199f, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(1i, 4721i, arg_1)), vec3<i32>(arg_1, -1i, arg_1)) << (~50268u % 32u), !(!select(false, true, true))), !vec4<bool>(select(true, false, true), true, any(select(vec2<bool>(false, false), vec2<bool>(true, true), false)), true), Struct_1(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_sub_i32(~(~arg_1), min(u_input.a.x, 63845i)), all(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(643f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, var_0.b.a))), _wgslsmith_f_op_f32(round(-526f)))));
    return Struct_1(-1095f, -18556i, !(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.d.a))) != _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_div_f32(arg_0.x, var_1))));
}

fn func_1() -> vec2<u32> {
    let var_0 = func_5(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(vec2<bool>(true, true), -843f, false, vec3<f32>(-259f, -430f, -222f)))), vec4<f32>(1f, 1f, 1f, 1f)))), -27390i);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1f))), select(17265i, 7204i, true), !var_0.c);
    var_1 = var_0;
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), -33865i, false);
    var var_2 = ~(i32(-1i) * -28129i) | ~var_1.b;
    return ~(~_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(44326u, 0u), vec2<u32>(31080u, 45841u)), vec2<u32>(~94818u, 91878u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 112162u), abs(vec2<u32>(4294967295u, 0u))), ~1u) | select(vec2<u32>(~28426u, _wgslsmith_div_u32(10590u, 9489u)), _wgslsmith_sub_vec2_u32(select(vec2<u32>(40080u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<bool>(false, true)), ~vec2<u32>(1u, 1u)), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true))), _wgslsmith_mult_vec2_u32(vec2<u32>(~(~20456u), ~_wgslsmith_add_u32(28806u, 1u)), ~_wgslsmith_div_vec2_u32(func_1(), ~vec2<u32>(4294967295u, 1u))));
    var var_1 = 559f;
    let var_2 = Struct_2(Struct_1(-478f, u_input.a.x, true), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1326f)), 0i, all(vec4<bool>(true, true, true, true)) & true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_2(vec2<bool>(true, true), 176f, false, vec3<f32>(786f, 2295f, 2059f))).x + 1804f), 431f)), -36339i, 0i < u_input.b.x));
    var var_3 = var_2;
    var_1 = -857f;
    let var_4 = func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-428f, var_3.b.a, -718f, 215f), vec4<f32>(173f, var_3.d.a, var_2.b.a, var_3.a.a), vec4<bool>(var_2.d.c, var_3.b.c, var_3.b.c, false)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.a.a, 395f, 208f, var_2.d.a))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.a, var_2.a.a, 113f, -1394f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -847f, var_3.d.a, 772f)))), -_wgslsmith_mod_i32(var_2.b.b, var_2.a.b));
    var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b.a + _wgslsmith_f_op_f32(var_2.d.a - var_3.a.a))), min(~(~u_input.b.x), var_2.a.b ^ countOneBits(var_2.a.b)), -_wgslsmith_dot_vec4_i32(vec4<i32>(var_4.b, -2147483647i, var_4.b, var_4.b), vec4<i32>(0i, var_2.d.b, var_2.a.b, -4424i)) != _wgslsmith_div_i32(-2147483647i, u_input.b.x)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -351f) - _wgslsmith_f_op_f32(sign(-1000f))), abs(~(-var_2.d.b)), var_3.d.c), select(select(!(!vec4<bool>(true, var_2.a.c, var_3.a.c, var_4.c)), vec4<bool>(true, all(vec3<bool>(true, var_3.c.x, true)), all(var_2.c.wy), var_2.a.c), var_2.c), var_3.c, !var_2.c), var_2.d);
    let var_5 = Struct_1(_wgslsmith_f_op_f32(-func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(113f, var_3.b.a, var_4.a, -404f))), -var_3.d.b & reverseBits(var_3.a.b)).a), ~1i, any(!select(vec2<bool>(true, var_4.c), vec2<bool>(false, var_4.c), var_2.c.yx)) || !(var_2.d.c && (var_3.a.a == -255f)));
    let var_6 = var_4.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(var_4.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b.a + 2111f)))))), (max(vec3<i32>(-2147483647i, -13494i, var_6), vec3<i32>(var_2.b.b, -1i, u_input.b.x)) & u_input.b) & vec3<i32>(abs(7429i) << (var_0.x % 32u), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 11129i, var_5.b, 2147483647i), vec4<i32>(9984i, 0i, -1i, -1i)), var_4.b | var_5.b), func_4(select(false, var_4.c, var_4.c), _wgslsmith_div_u32(var_0.x, var_0.x), _wgslsmith_f_op_f32(round(var_3.d.a)), _wgslsmith_f_op_f32(abs(var_5.a))).x), _wgslsmith_dot_vec4_i32(~vec4<i32>(48674i, -1i, var_5.b, -11597i) << (vec4<u32>(~var_0.x, firstTrailingBit(var_0.x), reverseBits(1u), var_0.x) % vec4<u32>(32u)), reverseBits(vec4<i32>(1i, -var_2.d.b, _wgslsmith_clamp_i32(1i, -2701i, var_3.d.b), -var_3.a.b))), ~max(~vec3<u32>(64220u, var_0.x, var_0.x), ~vec3<u32>(var_0.x, var_0.x, 0u)) << (~select(max(vec3<u32>(var_0.x, 4294967295u, var_0.x), vec3<u32>(43869u, var_0.x, var_0.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, var_0.x, var_0.x), vec3<u32>(var_0.x, var_0.x, var_0.x)), 25177u != var_0.x) % vec3<u32>(32u)), _wgslsmith_div_f32(var_2.d.a, -812f));
}

