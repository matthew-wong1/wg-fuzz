struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 4>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<i32>) -> f32 {
    var var_0 = true;
    let var_1 = vec4<f32>(-1023f, -667f, _wgslsmith_f_op_f32(floor(-2088f)), 771f);
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(var_1.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-574f, 310f)))));
    let var_3 = Struct_2(!(!(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false))), -(~(-select(2147483647i, arg_0.x, true))));
    let var_4 = 2194f;
    return 105f;
}

fn func_4(arg_0: f32) -> f32 {
    var var_0 = Struct_2(!vec3<bool>(any(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, true, true, true)), u_input.d < 1i), _wgslsmith_dot_vec4_i32(-_wgslsmith_add_vec4_i32(-u_input.c, vec4<i32>(2147483647i, u_input.c.x, 12305i, -34478i)), vec4<i32>(u_input.d, 68986i, u_input.d, -_wgslsmith_div_i32(u_input.c.x, u_input.c.x))));
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-960f)) * -173f) + _wgslsmith_f_op_f32(floor(129f)))), 5142u, min(u_input.a, _wgslsmith_sub_u32(abs(_wgslsmith_div_u32(u_input.b, u_input.b)), reverseBits(u_input.b))), abs(vec2<u32>(u_input.a, _wgslsmith_mult_u32(52514u, ~u_input.a))));
    var var_2 = var_0.a.x;
    let var_3 = false;
    var var_4 = ~_wgslsmith_mult_u32(max(34086u, 0u), ~var_1.d.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0)))))) * _wgslsmith_f_op_f32(select(1149f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-461f + _wgslsmith_f_op_f32(-var_1.a.x))), true)));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: u32) -> u32 {
    var var_0 = vec2<u32>(54991u, u_input.a);
    var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(~(~(~0u)), 1u), ~(vec2<u32>(arg_3, 35572u) ^ _wgslsmith_div_vec2_u32(vec2<u32>(1u, arg_3), vec2<u32>(arg_3, 20544u))) | vec2<u32>(_wgslsmith_dot_vec2_u32(max(vec2<u32>(64623u, arg_3), vec2<u32>(4294967295u, 0u)), countOneBits(vec2<u32>(0u, var_0.x))), ~(~u_input.b)));
    global0 = array<vec2<i32>, 4>();
    let var_1 = u_input.c;
    let var_2 = Struct_2(vec3<bool>(!arg_2.a.x, false, !any(arg_2.a.yy)), _wgslsmith_dot_vec4_i32(reverseBits(-(u_input.c ^ vec4<i32>(arg_2.b, var_1.x, var_1.x, 8968i))), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.x, countOneBits(arg_2.b), -u_input.c.x, u_input.d >> (var_0.x % 32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2.b, 0i, 2147483647i, -2147483647i), vec4<i32>(-1i, -1i, var_1.x, -1i) | u_input.c, abs(var_1)), var_1 & _wgslsmith_mod_vec4_i32(var_1, vec4<i32>(1i, u_input.d, var_1.x, -1462i)))));
    return ~(~var_0.x);
}

fn func_2(arg_0: i32) -> u32 {
    let var_0 = _wgslsmith_div_f32(-2010f, -219f);
    global0 = array<vec2<i32>, 4>();
    global0 = array<vec2<i32>, 4>();
    let var_1 = -(~2147483647i);
    global0 = array<vec2<i32>, 4>();
    return func_5(_wgslsmith_div_vec4_f32(vec4<f32>(var_0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-1181f)), -534f)), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(func_3(u_input.c.ywy)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * _wgslsmith_f_op_f32(1947f - var_0))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0, -156f, 641f, 240f), vec4<f32>(var_0, var_0, var_0, 482f))) + vec4<f32>(var_0, var_0, var_0, var_0)) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1144f, 1000f, 1290f, var_0)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-878f, 153f, -597f, -740f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1271f, var_0, 1548f, 1744f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0, var_0, -934f, var_0))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0, 511f, var_0, -1080f)))))), Struct_2(select(vec3<bool>(true, true, true), vec3<bool>(true, true, 78019u <= u_input.a), _wgslsmith_f_op_f32(-735f * var_0) != _wgslsmith_f_op_f32(var_0 + -304f)), _wgslsmith_mod_i32(var_1 >> ((945u | u_input.a) % 32u), _wgslsmith_mult_i32(firstTrailingBit(arg_0), _wgslsmith_add_i32(u_input.d, -26213i)))), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), _wgslsmith_mod_vec4_u32(~select(vec4<u32>(u_input.a, u_input.a, u_input.b, 15087u), vec4<u32>(4294967295u, 5054u, u_input.b, 4294967295u), vec4<bool>(true, false, true, true)), countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(79888u, 0u, 9997u, 0u), vec4<u32>(9989u, u_input.a, u_input.a, u_input.a))))));
}

fn func_6(arg_0: vec3<u32>) -> bool {
    global0 = array<vec2<i32>, 4>();
    global0 = array<vec2<i32>, 4>();
    var var_0 = Struct_2(vec3<bool>(false, true, _wgslsmith_f_op_f32(trunc(1000f)) >= -428f), firstTrailingBit(~_wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.d, u_input.c.x), ~u_input.c.x)));
    let var_1 = Struct_3(Struct_2(var_0.a, var_0.b));
    let var_2 = Struct_2(vec3<bool>(false, var_1.a.a.x, true), var_1.a.b);
    return any(!select(select(select(vec4<bool>(var_1.a.a.x, true, var_1.a.a.x, var_0.a.x), vec4<bool>(var_0.a.x, false, var_1.a.a.x, true), var_2.a.x), !vec4<bool>(var_0.a.x, var_1.a.a.x, var_0.a.x, false), true), !select(vec4<bool>(var_1.a.a.x, true, var_0.a.x, false), vec4<bool>(true, var_2.a.x, var_2.a.x, var_0.a.x), true), vec4<bool>(var_0.a.x, all(var_1.a.a.zx), false, all(vec4<bool>(var_1.a.a.x, var_1.a.a.x, var_0.a.x, false)))));
}

fn func_7(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_2) -> Struct_3 {
    let var_0 = 593f;
    global0 = array<vec2<i32>, 4>();
    var var_1 = min(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_2.b, arg_2.b), global0[_wgslsmith_index_u32(u_input.b, 4u)], vec2<i32>(u_input.d, arg_2.b)), vec2<i32>(_wgslsmith_dot_vec2_i32(select(vec2<i32>(-2147483647i, -1i), vec2<i32>(2147483647i, 1763i), arg_2.a.x), global0[_wgslsmith_index_u32(21349u, 4u)]), _wgslsmith_dot_vec4_i32(u_input.c, -u_input.c))), firstLeadingBit(u_input.c.x));
    global0 = array<vec2<i32>, 4>();
    let var_2 = !(!(!select(!vec2<bool>(true, arg_1.x), !arg_2.a.zy, true)));
    return Struct_3(Struct_2(select(select(arg_2.a, !arg_2.a, select(vec3<bool>(arg_2.a.x, true, arg_2.a.x), arg_2.a, false)), select(select(arg_2.a, vec3<bool>(false, false, false), arg_2.a), vec3<bool>(false, false, false), arg_2.a.x), vec3<bool>(var_2.x, arg_2.a.x, true)), u_input.d));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(458f - _wgslsmith_f_op_f32(step(551f, -1000f))), -688f)), u_input.a, u_input.b, vec2<u32>(2475u, 6269u) | ~_wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(u_input.a, 0u)), vec2<u32>(u_input.a, 15210u)));
    let var_1 = func_7(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * 705f), -836f)), 2104f, false)), vec3<bool>(!all(arg_0.a.zy), func_6(vec3<u32>(func_2(u_input.d), ~0u, ~4294967295u)), !(arg_1.a.b != u_input.d) || arg_1.a.a.x), arg_0);
    var var_2 = 2147483647i;
    let var_3 = any(vec2<bool>(!arg_1.a.a.x && func_7(_wgslsmith_f_op_f32(func_4(-999f)), !vec3<bool>(false, var_1.a.a.x, true), func_7(var_0.a.x, vec3<bool>(var_1.a.a.x, true, var_1.a.a.x), Struct_2(vec3<bool>(arg_1.a.a.x, var_1.a.a.x, false), arg_1.a.b)).a).a.a.x, false));
    var var_4 = Struct_3(arg_0);
    return arg_1.a;
}

fn func_8(arg_0: Struct_2, arg_1: Struct_3, arg_2: bool) -> bool {
    global0 = array<vec2<i32>, 4>();
    global0 = array<vec2<i32>, 4>();
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1291f);
    let var_1 = func_7(_wgslsmith_f_op_f32(-1021f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -175f)))), func_1(arg_1.a, func_7(_wgslsmith_f_op_f32(f32(-1f) * -1398f), func_7(1000f, vec3<bool>(true, arg_1.a.a.x, arg_0.a.x), func_7(276f, arg_1.a.a, arg_1.a).a).a.a, func_7(_wgslsmith_f_op_f32(func_3(u_input.c.xyx)), select(arg_0.a, vec3<bool>(arg_0.a.x, arg_0.a.x, arg_1.a.a.x), arg_1.a.a.x), Struct_2(arg_0.a, -12928i)).a)).a, func_7(_wgslsmith_f_op_f32(f32(-1f) * -201f), arg_0.a, arg_0).a);
    var var_2 = _wgslsmith_f_op_f32(func_3(-(~(~(-vec3<i32>(2147483647i, 3251i, var_1.a.b))))));
    return var_1.a.a.x;
}

fn func_9(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_2, arg_3: u32) -> u32 {
    global0 = array<vec2<i32>, 4>();
    let var_0 = Struct_3(Struct_2(vec3<bool>(false | arg_0.x, select(true, true, arg_0.x), any(arg_2.a)), arg_2.b));
    var var_1 = ~u_input.a;
    let var_2 = var_0;
    return func_5(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -181f), _wgslsmith_f_op_f32(exp2(1f)), 1065f, -1615f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-241f, _wgslsmith_f_op_f32(abs(145f)), -952f, _wgslsmith_div_f32(-740f, 160f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(938f, -147f, 774f, 1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(754f, 100f, -269f, -1000f))))), Struct_2(arg_2.a, ~(~min(2147483647i, 1i))), arg_3);
}

fn func_10(arg_0: u32, arg_1: Struct_2, arg_2: u32) -> Struct_3 {
    let var_0 = arg_2;
    let var_1 = u_input.c.zwx << (vec3<u32>(0u & min(0u, reverseBits(var_0)), firstTrailingBit(~var_0), arg_2) % vec3<u32>(32u));
    let var_2 = all(func_7(_wgslsmith_div_f32(-661f, -643f), !select(!arg_1.a, arg_1.a, vec3<bool>(true, arg_1.a.x, arg_1.a.x)), func_7(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) - _wgslsmith_f_op_f32(round(164f))), vec3<bool>(false, arg_1.a.x, true), func_7(_wgslsmith_f_op_f32(f32(-1f) * -1574f), vec3<bool>(arg_1.a.x, arg_1.a.x, true), arg_1).a).a).a.a.zy);
    let var_3 = ~(_wgslsmith_div_u32(_wgslsmith_add_u32(max(4047u, u_input.b), 1u), 50622u) | ~_wgslsmith_mod_u32(u_input.a, 7336u));
    var var_4 = !(!select(arg_1.a, !func_7(-1236f, arg_1.a, arg_1).a.a, !any(arg_1.a)));
    return func_7(202f, vec3<bool>(var_4.x & func_6(firstLeadingBit(vec3<u32>(4294967295u, 10633u, arg_2))), false, select(arg_1.a.x, !func_8(Struct_2(vec3<bool>(true, true, var_4.x), var_1.x), Struct_3(Struct_2(arg_1.a, -3278i)), false), all(!vec4<bool>(var_2, var_4.x, var_2, arg_1.a.x)))), Struct_2(vec3<bool>(var_4.x, var_4.x, true), var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(!vec4<bool>(true, true, any(vec4<bool>(true, false, true, false)) | true, any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)))));
    let var_1 = func_10(u_input.b, Struct_2(!(!select(vec3<bool>(var_0, var_0, true), vec3<bool>(true, true, var_0), false)), u_input.c.x), func_9(vec3<bool>(var_0, func_8(func_1(Struct_2(vec3<bool>(false, var_0, true), 32470i), Struct_3(Struct_2(vec3<bool>(var_0, true, var_0), u_input.d))), func_7(-1677f, vec3<bool>(var_0, true, var_0), Struct_2(vec3<bool>(var_0, false, var_0), 29000i)), select(false, var_0, false)), true), abs(u_input.b), func_1(func_1(Struct_2(vec3<bool>(var_0, true, true), -25437i), func_7(-644f, vec3<bool>(var_0, true, var_0), Struct_2(vec3<bool>(false, var_0, false), u_input.c.x))), func_7(_wgslsmith_f_op_f32(f32(-1f) * -619f), !vec3<bool>(true, var_0, false), func_1(Struct_2(vec3<bool>(true, false, true), 0i), Struct_3(Struct_2(vec3<bool>(true, var_0, var_0), u_input.c.x))))), countOneBits(18182u)));
    let var_2 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1426f, -353f, -2865f))))))));
}

