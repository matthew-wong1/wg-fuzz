struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec4<f32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec2<bool>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: f32,
    b: u32,
}

struct Struct_5 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: f32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: i32) -> vec3<u32> {
    global0 = Struct_4(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.a)))))), 1u);
    global1 = global0.a;
    let var_0 = u_input.c.yx;
    global0 = Struct_4(_wgslsmith_f_op_f32(-334f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(global0.a)), global0.a))), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(global0.b, global0.b, global0.b, 0u), vec4<u32>(4294967295u >> (global0.b % 32u), ~global0.b, u_input.b.x, 12224u)));
    var var_1 = Struct_5(arg_0, 46059u);
    return ~_wgslsmith_add_vec3_u32(vec3<u32>(~(~var_1.b), u_input.d.x, _wgslsmith_sub_u32(var_1.b, 4294967295u)), reverseBits(vec3<u32>(54335u, u_input.d.x, 1560u)) & ~firstTrailingBit(vec3<u32>(global0.b, var_1.b, global0.b)));
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_5(u_input.c.x, ~_wgslsmith_dot_vec3_u32(~func_3(1i), ~vec3<u32>(94184u, 0u, 50511u) & max(vec3<u32>(u_input.b.x, global0.b, u_input.b.x), vec3<u32>(global0.b, global0.b, u_input.b.x))));
    var var_1 = Struct_2(firstLeadingBit(firstLeadingBit(vec3<i32>(var_0.a, 1i, u_input.a.x) | vec3<i32>(-31794i, var_0.a, 13073i))));
    let var_2 = var_0.a;
    var_0 = Struct_5(_wgslsmith_clamp_i32(reverseBits(countOneBits(2147483647i) >> (_wgslsmith_div_u32(global0.b, 26749u) % 32u)), firstLeadingBit(var_0.a), 49295i), u_input.b.x & global0.b);
    var var_3 = 4294967295u;
    return Struct_4(-868f, var_0.b);
}

fn func_1(arg_0: f32) -> i32 {
    let var_0 = reverseBits(u_input.d.x);
    global0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-381f, global0.a)), global0.a)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) * _wgslsmith_div_f32(global0.a, arg_0)) - arg_0)), ~u_input.d.x);
    var var_1 = 1000f;
    let var_2 = ~4294967295u;
    global0 = func_2();
    return ~u_input.a.x;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: i32, arg_3: Struct_4) -> Struct_2 {
    var var_0 = 0u;
    var var_1 = firstTrailingBit(vec4<u32>(abs(~arg_3.b), 0u, ~(~_wgslsmith_clamp_u32(global0.b, u_input.d.x, 0u)), max(~arg_3.b, _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), u_input.b))));
    let var_2 = vec3<f32>(arg_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(round(-873f)), true)), _wgslsmith_f_op_f32(-global0.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1177f)))) - arg_3.a));
    var var_3 = Struct_3(select(vec2<bool>(true, any(vec4<bool>(true, false, false, false)) & true), !vec2<bool>(any(vec3<bool>(false, false, false)), true), vec2<bool>(false, true | any(vec2<bool>(true, false)))), arg_1, select(select(vec2<bool>(true, true), vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, true), true)), select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)))), any(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), vec3<bool>(false, true, false), vec3<bool>(true, true, false)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.x, 1412f, global0.a, var_2.x), vec4<f32>(global0.a, -1315f, arg_3.a, -1016f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, global0.a, 305f, 1166f) - vec4<f32>(global0.a, global0.a, -114f, -245f)))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.a, var_2.x, global0.a, global0.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1469f, var_2.x, arg_3.a, -1360f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(503f, -178f, -292f, -1081f)))))));
    let var_4 = _wgslsmith_f_op_vec4_f32(-var_3.d);
    return var_3.b;
}

fn func_5(arg_0: Struct_2, arg_1: bool) -> Struct_4 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, global0.a, -372f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, 1240f, global0.a)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-545f * global0.a) * _wgslsmith_f_op_f32(select(global0.a, global0.a, arg_1))), _wgslsmith_f_op_f32(-global0.a), 462f), false)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-2051f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1533f, 699f) * 1011f))), global0.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, 617f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-309f)))), -1009f)), u_input.c);
    let var_1 = firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_div_i32(-2147483647i, 2147483647i), 0i, -_wgslsmith_dot_vec3_i32(arg_0.a, var_0.d), ~func_4(vec4<i32>(16476i, 19101i, 26753i, -12641i), arg_0, u_input.c.x, Struct_4(global0.a, global0.b)).a.x), ~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, 20344i, var_0.d.x, arg_0.a.x), vec4<i32>(-1i, var_0.d.x, u_input.a.x, arg_0.a.x))));
    return Struct_4(_wgslsmith_f_op_f32(-416f - global0.a), _wgslsmith_sub_u32((1u ^ _wgslsmith_mult_u32(u_input.d.x, u_input.b.x)) << (u_input.d.x % 32u), 12880u));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_3) -> Struct_3 {
    global1 = _wgslsmith_f_op_f32(step(1616f, _wgslsmith_f_op_f32(871f + _wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d.x))))));
    global1 = _wgslsmith_f_op_f32(trunc(-140f));
    global0 = func_2();
    let var_0 = arg_0.d.x;
    let var_1 = Struct_2(~(~(~_wgslsmith_add_vec3_i32(vec3<i32>(arg_0.d.x, arg_0.d.x, 705i), vec3<i32>(20591i, var_0, 38121i)))));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true & (~1u != u_input.b.x);
    var var_1 = Struct_2(vec3<i32>(-1i) * -max(-u_input.c, abs(u_input.c)));
    var var_2 = func_6(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, -334f, global0.a) + vec3<f32>(global0.a, -1836f, global0.a)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(190f, -305f, global0.a))), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.a))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.a)) + _wgslsmith_f_op_f32(1611f - -516f))), vec4<f32>(_wgslsmith_f_op_f32(193f - 2813f), -760f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(global0.a)))), -289f), u_input.c), func_5(func_4(vec4<i32>(var_1.a.x, min(u_input.c.x, -2147483647i), func_1(-212f), 23892i >> (u_input.b.x % 32u)), Struct_2(-var_1.a), abs(_wgslsmith_div_i32(var_1.a.x, -45686i)), func_2()), var_0), Struct_3(select(vec2<bool>(var_0, global0.a < -1097f), vec2<bool>(var_0, select(var_0, true, false)), var_0), func_4(-vec4<i32>(u_input.a.x, 72441i, u_input.a.x, u_input.a.x), func_4(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, var_1.a.x, u_input.c.x), vec4<i32>(var_1.a.x, var_1.a.x, 16129i, -2147483647i)), func_4(vec4<i32>(2147483647i, var_1.a.x, u_input.c.x, 1i), Struct_2(vec3<i32>(var_1.a.x, u_input.c.x, 705i)), u_input.c.x, Struct_4(-623f, u_input.d.x)), func_4(vec4<i32>(0i, var_1.a.x, u_input.c.x, var_1.a.x), Struct_2(vec3<i32>(u_input.c.x, u_input.c.x, 17069i)), -1i, Struct_4(global0.a, global0.b)).a.x, Struct_4(1954f, global0.b)), _wgslsmith_mult_i32(var_1.a.x, 0i), func_5(func_4(vec4<i32>(u_input.a.x, -12388i, var_1.a.x, var_1.a.x), Struct_2(var_1.a), u_input.c.x, Struct_4(global0.a, u_input.d.x)), false)), vec2<bool>(var_0, false), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.a, -1269f, -786f, 546f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, -1015f, global0.a, global0.a)))))));
    let var_3 = _wgslsmith_f_op_f32(abs(1640f));
    let var_4 = _wgslsmith_f_op_vec4_f32(select(var_2.d, var_2.d, true));
    var var_5 = 1950f;
    let x = u_input.a;
    s_output = StorageBuffer(func_6(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-global0.a), 133f, var_2.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(var_4)) - var_4), ~_wgslsmith_add_vec3_i32(var_2.b.a, u_input.c)), Struct_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -391f))), ~67101u), func_6(Struct_1(_wgslsmith_f_op_vec3_f32(var_4.zwx + var_2.d.wwy), var_2.d.x, var_2.d, var_2.b.a), func_2(), Struct_3(var_2.a, var_2.b, vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(step(var_2.d, var_2.d))))).b.a.x, select(var_2.b.a, -u_input.c, var_0), (min(u_input.c.x, func_6(Struct_1(vec3<f32>(-395f, var_2.d.x, global0.a), -536f, var_2.d, var_1.a), Struct_4(var_4.x, 1u), Struct_3(vec2<bool>(false, true), var_2.b, vec2<bool>(false, false), vec4<f32>(-1039f, -1629f, -1292f, global0.a))).b.a.x) << (u_input.d.x % 32u)) << (_wgslsmith_mult_u32(1u, global0.b) % 32u), _wgslsmith_div_vec2_i32(vec2<i32>((2147483647i >> (0u % 32u)) << (abs(u_input.b.x) % 32u), func_1(var_4.x)), var_2.b.a.zy));
}

