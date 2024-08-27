struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: f32,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: bool) -> u32 {
    let var_0 = select(any(vec2<bool>(0u < u_input.a.x, true)) || arg_0, all(select(vec2<bool>(true, any(vec4<bool>(true, true, arg_2, true))), vec2<bool>(true, u_input.d.x != 1u), select(vec2<bool>(arg_1, true), vec2<bool>(true, true), true))), any(vec3<bool>(!all(vec3<bool>(arg_0, arg_2, arg_0)), arg_2, !all(vec3<bool>(false, false, arg_2)))));
    let var_1 = Struct_2(false);
    let var_2 = Struct_2(true);
    let var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(2516f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1834f, 1000f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1802f, -1239f), vec2<f32>(-335f, 870f))))));
    let var_4 = _wgslsmith_add_i32(abs(i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(-24526i, -2147483647i, -15529i, 44939i), vec4<i32>(1i, 1i, -12716i, 2147483647i))), _wgslsmith_mult_i32(_wgslsmith_add_i32(~26142i, countOneBits(19264i) << (abs(u_input.d.x) % 32u)), u_input.b << (~(~1u) % 32u)));
    return _wgslsmith_sub_u32(u_input.c.x >> (_wgslsmith_dot_vec3_u32(u_input.d, ~reverseBits(u_input.d)) % 32u), _wgslsmith_mult_u32(u_input.a.x | 1u, u_input.a.x));
}

fn func_2(arg_0: vec3<u32>, arg_1: f32, arg_2: vec4<i32>, arg_3: Struct_4) -> Struct_4 {
    var var_0 = reverseBits(u_input.c) | u_input.d;
    var_0 = arg_0 | u_input.c;
    let var_1 = vec4<u32>(_wgslsmith_div_u32(var_0.x, u_input.a.x), u_input.d.x, ~(~(~var_0.x)) >> (((func_3(true, false, false) >> (abs(2799u) % 32u)) << (u_input.a.x % 32u)) % 32u), 24087u);
    let var_2 = 10595i;
    let var_3 = var_2 > -1i;
    return Struct_4(arg_3.a);
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: vec4<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(48056i, -2147483647i, arg_2.x), _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(arg_2.yyz, vec3<i32>(u_input.b, -17202i, arg_2.x)), ~arg_2.yzw)), arg_2.xzz) ^ ~_wgslsmith_clamp_vec3_i32(select(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 0i, -1i), vec3<i32>(-28678i, arg_2.x, u_input.b)), vec3<i32>(0i, arg_2.x, 2147483647i), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true)), -vec3<i32>(u_input.b, u_input.b, arg_2.x), vec3<i32>(-21348i, u_input.b, u_input.b));
    var var_1 = arg_1.a.x;
    var var_2 = ~select(arg_2.x, min(countOneBits(2147483647i), var_0.x << (0u % 32u)), true) != -44585i;
    var_2 = true;
    let var_3 = select(~(-u_input.b), 2147483647i, 37294i <= var_0.x);
    return Struct_2(!(~u_input.d.x < u_input.d.x));
}

fn func_1() -> Struct_4 {
    let var_0 = vec3<i32>(u_input.b, firstLeadingBit(u_input.b), ~(~(~(~8564i))));
    var var_1 = u_input.a.x;
    var var_2 = func_4(4294967295u, func_2(u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(2137f, -2199f)), _wgslsmith_f_op_f32(f32(-1f) * -604f), var_0.x <= 7836i))), max(~vec4<i32>(-2147483647i, u_input.b, 2147483647i, 2147483647i), max(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, var_0.x, u_input.b, var_0.x), vec4<i32>(1i, var_0.x, var_0.x, u_input.b)), vec4<i32>(var_0.x, var_0.x, 14871i, 836i))), Struct_4(vec2<f32>(1f, 1f))), vec4<i32>(_wgslsmith_dot_vec2_i32(select(var_0.yx, vec2<i32>(-2147483647i, var_0.x), vec2<bool>(false, true)), var_0.zz), -2147483647i, var_0.x, _wgslsmith_div_i32(-6883i, i32(-1i) * -var_0.x)));
    var var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-673f + -875f)))))));
    var_1 = ~4294967295u ^ firstTrailingBit(u_input.a.x);
    return func_2(select(~u_input.d, u_input.d & vec3<u32>(_wgslsmith_add_u32(72903u, 0u), ~4294967295u, ~u_input.d.x), true), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1440f + _wgslsmith_div_f32(-2943f, -1613f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1642f * 1163f), _wgslsmith_div_f32(-1368f, 1031f)))) - -1125f), vec4<i32>(u_input.b, select(var_0.x, _wgslsmith_dot_vec3_i32(var_0, var_0), true), var_0.x, 1i), Struct_4(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(412f)), -1364f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-253f, -495f))))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.a * func_2(vec3<u32>(~5395u, 0u, max(u_input.d.x, u_input.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.a.x, 1080f))), -select(vec4<i32>(u_input.b, u_input.b, -12038i, 6495i), vec4<i32>(0i, u_input.b, u_input.b, -2147483647i), false), func_2(vec3<u32>(u_input.c.x, 14246u, u_input.a.x), _wgslsmith_f_op_f32(-arg_1.a.x), ~vec4<i32>(1i, u_input.b, u_input.b, 0i), arg_1)).a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(-574f, _wgslsmith_f_op_f32(f32(-1f) * -942f)) * _wgslsmith_f_op_vec2_f32(func_5(Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(375f, 268f) - vec2<f32>(382f, -1126f))), func_1()))));
    var var_1 = var_0;
    let var_2 = select(select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), select(vec3<bool>(false, false, false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true), true), true), vec3<bool>(true, true, any(vec2<bool>(false, true))), true), vec3<bool>(!func_4(4294967295u, Struct_4(vec2<f32>(1786f, var_0.a.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, u_input.b, -20i, u_input.b), vec4<i32>(26177i, u_input.b, u_input.b, 1i), vec4<i32>(0i, 42669i, u_input.b, -1i))).a, true, true && ((u_input.b <= -210i) | func_4(u_input.c.x, var_0, vec4<i32>(u_input.b, -2147483647i, 48534i, 78059i)).a)), false);
    let var_3 = Struct_3(_wgslsmith_add_vec3_u32(vec3<u32>(~(~u_input.d.x), 1u, ~u_input.c.x), abs(~_wgslsmith_sub_vec3_u32(u_input.d, vec3<u32>(16410u, u_input.c.x, u_input.c.x)))), min(vec3<i32>(abs(-31069i), u_input.b | 22844i, u_input.b), -abs(vec3<i32>(u_input.b, -2336i, u_input.b))) | (_wgslsmith_div_vec3_i32(-vec3<i32>(-22164i, u_input.b, -28013i), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, 2147483647i, 0i), vec3<i32>(79702i, -42302i, u_input.b))) | max(firstTrailingBit(vec3<i32>(-1i, u_input.b, u_input.b)), vec3<i32>(u_input.b, u_input.b, -2147483647i))), 193f);
    let var_4 = _wgslsmith_mod_vec2_i32(~vec2<i32>(~var_3.b.x ^ ~12906i, _wgslsmith_dot_vec3_i32(var_3.b, var_3.b)), _wgslsmith_sub_vec2_i32(-var_3.b.yx, vec2<i32>(-41742i, var_3.b.x)));
    let var_5 = u_input.b;
    var_1 = Struct_4(vec2<f32>(var_3.c, _wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_5(Struct_4(var_0.a), Struct_4(var_0.a))).x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.a.x - 1000f))))));
    let var_6 = _wgslsmith_f_op_f32(var_0.a.x * 1116f);
    let var_7 = -12369i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1049f))), _wgslsmith_f_op_f32(-1683f - _wgslsmith_f_op_f32(-var_6)))))), vec2<f32>(var_0.a.x, 190f), _wgslsmith_mod_vec2_i32(~var_3.b.zz, var_3.b.yz));
}

