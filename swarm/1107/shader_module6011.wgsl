struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_5, arg_1: u32, arg_2: Struct_5, arg_3: vec2<bool>) -> vec4<f32> {
    var var_0 = -vec3<i32>(i32(-1i) * -arg_2.a.a, arg_0.a.a, -_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(arg_2.a.a, 2371i), vec2<i32>(arg_2.a.a, 26890i)), ~vec2<i32>(42202i, arg_2.a.a)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1226f, 142f, -1063f), vec3<f32>(-453f, -1000f, -1052f), true)))), true);
    let var_2 = _wgslsmith_sub_u32(arg_1, 57184u);
    var var_3 = all(vec2<bool>(arg_3.x, true));
    var_0 = _wgslsmith_sub_vec3_i32(reverseBits(select(~max(vec3<i32>(arg_0.a.a, 2147483647i, -1i), vec3<i32>(arg_0.a.a, var_0.x, arg_2.a.a)), vec3<i32>(arg_2.a.a, 31091i, arg_0.a.a << (arg_1 % 32u)), true)), firstTrailingBit(vec3<i32>(-16601i, 2147483647i, var_0.x)));
    return vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -534f), 1296f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1673f)))), _wgslsmith_f_op_f32(min(var_1.a.x, var_1.a.x)), _wgslsmith_f_op_f32(-var_1.a.x));
}

fn func_2(arg_0: i32, arg_1: vec3<bool>) -> vec4<u32> {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_5(Struct_4(26198i)), u_input.a, Struct_5(Struct_4(45476i)), !vec2<bool>(arg_1.x, false)))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_5(Struct_4(arg_0)), u_input.a, Struct_5(Struct_4(518i)), arg_1.zz)).x), 1f, 851f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(258f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)));
    let var_1 = Struct_2(vec4<u32>(u_input.a, 1u, max(~44023u, ~(~u_input.a)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(61919u, 44164u, u_input.a), ~vec3<u32>(u_input.a, u_input.a, u_input.a)), u_input.a, u_input.a ^ (u_input.a >> (1u % 32u)))));
    var var_2 = -1i;
    var var_3 = u_input.a;
    var var_4 = 36976u;
    return ~select(~vec4<u32>(4294967295u, u_input.a, 1837u, 1u) | var_1.a, var_1.a, true);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: vec3<f32>) -> Struct_3 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2.x, -1353f, -1907f, arg_2.x), vec4<f32>(arg_2.x, 1065f, 337f, 2245f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_2.x, 351f, 299f)), vec4<f32>(-885f, -1000f, arg_2.x, arg_2.x), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), false))), true))), Struct_2(~_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.x, 0u, 93384u, arg_1.x), vec4<u32>(u_input.a, 4294967295u, u_input.a, 25613u)), arg_0, vec4<u32>(1u, 1u, 65346u, 49883u))), Struct_2(vec4<u32>(41000u, 14745u, _wgslsmith_div_u32(_wgslsmith_add_u32(arg_1.x, 67026u), 0u), firstTrailingBit(u_input.a) << (_wgslsmith_clamp_u32(21029u, arg_1.x, 4294967295u) % 32u))), ~firstTrailingBit(arg_1.x));
    let var_1 = firstLeadingBit(64140u);
    var_0 = Struct_3(var_0.a, var_0.b, var_0.b, 4294967295u);
    var_0 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(trunc(arg_2.x)), arg_2.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2.x)))), Struct_2(arg_0), Struct_2(~countOneBits(vec4<u32>(u_input.a, 1u, var_0.c.a.x, 14295u))), _wgslsmith_add_u32(select(~4294967295u, arg_1.x, true), 4294967295u) & (firstLeadingBit(~arg_0.x) & ~u_input.a));
    var_0 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2.x, -916f, 860f, -1795f), vec4<f32>(1000f, -965f, arg_2.x, -1107f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, arg_2.x, var_0.a.x, 537f) * var_0.a)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-599f + var_0.a.x), arg_2.x, _wgslsmith_f_op_f32(651f - 551f), var_0.a.x))), var_0.c, Struct_2(firstLeadingBit(firstTrailingBit(var_0.b.a) << (vec4<u32>(43144u, 0u, 4294967295u, 6081u) % vec4<u32>(32u)))), ~1u);
    return Struct_3(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a.x))) - _wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, 199f)) * _wgslsmith_f_op_f32(-var_0.a.x)), var_0.a.x, var_0.a.x), Struct_2(countOneBits(vec4<u32>(1u, abs(arg_1.x), ~4294967295u, 58799u))), var_0.b, var_0.d);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_3) -> Struct_2 {
    var var_0 = vec2<i32>((arg_0.a ^ ~(~arg_0.a)) << ((4294967295u << (arg_2.b.a.x % 32u)) % 32u), -2147483647i);
    var_0 = -_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, var_0.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, _wgslsmith_mult_i32(arg_0.a, -47721i)), select(vec2<i32>(1i, arg_0.a), -vec2<i32>(0i, arg_0.a), arg_1.b && arg_1.b), vec2<i32>(16438i << (arg_2.c.a.x % 32u), -arg_0.a)));
    let var_1 = Struct_5(arg_0);
    var_0 = -_wgslsmith_mod_vec2_i32(select(-vec2<i32>(-26076i, var_0.x), countOneBits(vec2<i32>(var_0.x, arg_0.a)), vec2<bool>(arg_1.b, false)) & _wgslsmith_div_vec2_i32(-vec2<i32>(var_1.a.a, var_0.x), _wgslsmith_sub_vec2_i32(vec2<i32>(var_0.x, -15340i), vec2<i32>(arg_0.a, 0i))), vec2<i32>(var_1.a.a, var_1.a.a));
    var_0 = abs(max(~vec2<i32>(var_1.a.a, var_1.a.a) >> (_wgslsmith_add_vec2_u32(arg_2.c.a.yx, vec2<u32>(u_input.a, arg_2.c.a.x)) % vec2<u32>(32u)), firstTrailingBit(vec2<i32>(var_1.a.a, -3104i)))) << (reverseBits(vec2<u32>(~(~4294967295u), ~457u)) % vec2<u32>(32u));
    return Struct_2(arg_2.b.a);
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    let var_0 = func_5(Struct_4(8809i), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(846f, -458f, 369f) - vec3<f32>(844f, 549f, 1289f)))), true), func_4(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(10287u, u_input.a, u_input.a, 109999u)), firstLeadingBit(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a))) << ((func_2(1i, vec3<bool>(true, false, arg_0.x)) ^ min(vec4<u32>(0u, u_input.a, u_input.a, 0u), vec4<u32>(u_input.a, u_input.a, u_input.a, 1u))) % vec4<u32>(32u)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(37656u, 0u, u_input.a), vec3<u32>(1u, u_input.a, u_input.a) & vec3<u32>(u_input.a, 0u, u_input.a)), vec3<f32>(-162f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(609f - -922f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(814f * -613f))))));
    let var_1 = vec3<i32>(2147483647i, firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-2147483647i, -1i, 2147483647i, -2147483647i)), vec4<i32>(1i, 1i, 1i, 1i)), 1i)), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(~select(vec3<i32>(6026i, 17294i, 49532i), vec3<i32>(-1i, -12257i, 2147483647i), vec3<bool>(false, arg_0.x, arg_0.x)), vec3<i32>(~15201i, _wgslsmith_add_i32(1i, -3967i), 2147483647i)), _wgslsmith_mult_i32(_wgslsmith_mod_i32(abs(-31089i), i32(-1i) * -25220i), _wgslsmith_sub_i32(31609i, i32(-1i) * -16419i))));
    var var_2 = true;
    let var_3 = true;
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-222f - 2100f), _wgslsmith_f_op_f32(-1656f + 1000f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1111f - 570f) - 562f))), func_4(_wgslsmith_mult_vec4_u32(~var_0.a << (~var_0.a % vec4<u32>(32u)), ~vec4<u32>(3064u, var_0.a.x, u_input.a, var_0.a.x)), abs(var_0.a.zxz), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1000f, 1503f) + vec3<f32>(372f, -1000f, -2011f)))))).a.x);
    return _wgslsmith_f_op_f32(min(-1006f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(108f - -981f), _wgslsmith_f_op_f32(step(var_4, 626f)))), _wgslsmith_f_op_f32(-583f * 1000f))));
}

fn func_6(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: Struct_4) -> Struct_4 {
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(vec3<bool>(true, true, true), vec3<f32>(_wgslsmith_f_op_f32(func_1(vec4<bool>(all(vec4<bool>(false, true, true, true)), true, false, true))), -1503f, _wgslsmith_f_op_f32(718f - 100f)), Struct_4(~1i));
    var_0 = Struct_4(var_0.a >> (75170u % 32u));
    let var_1 = -982f;
    var_0 = func_6(vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, var_1)) * vec3<f32>(1000f, func_4(vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a), vec3<u32>(u_input.a, 2293u, 1u), vec3<f32>(var_1, var_1, 1054f)).a.x, 560f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, -1718f)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(897f, var_1, -653f)))))), Struct_4(1i));
    var var_2 = -(vec2<i32>(-1i) * -(~select(vec2<i32>(var_0.a, -605i), vec2<i32>(-2002i, -76974i), vec2<bool>(true, false))));
    var var_3 = func_5(Struct_4(var_2.x), Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-742f, var_1, var_1))))), u_input.a != (u_input.a ^ ~u_input.a)), func_4(max(vec4<u32>(0u, 35620u, 12982u, 0u) << (vec4<u32>(u_input.a, u_input.a, 43727u, u_input.a) % vec4<u32>(32u)), vec4<u32>(4294967295u, 4294967295u, u_input.a, u_input.a) >> (~vec4<u32>(1u, 62408u, u_input.a, u_input.a) % vec4<u32>(32u))), vec3<u32>(~firstLeadingBit(u_input.a), 1u, _wgslsmith_clamp_u32(~1u, 15658u, u_input.a)), vec3<f32>(1132f, var_1, _wgslsmith_f_op_f32(func_1(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), false))))));
    var var_4 = vec3<f32>(-893f, _wgslsmith_f_op_f32(-1000f - -104f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1369f * _wgslsmith_f_op_f32(f32(-1f) * -880f)))));
    var var_5 = _wgslsmith_add_i32(1i, -2147483647i);
    var_3 = Struct_2(vec4<u32>(u_input.a >> (var_3.a.x % 32u), var_3.a.x, ~11532u, abs(~(~var_3.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1, 759f, 236f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.x, var_4.x, -365f))), _wgslsmith_f_op_vec3_f32(exp2(func_4(vec4<u32>(7164u, 0u, var_3.a.x, 4294967295u), vec3<u32>(u_input.a, 21817u, var_3.a.x), vec3<f32>(-273f, var_1, var_4.x)).a.zxx))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-212f, var_1, -633f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(933f, var_4.x, 167f))))), 1f, vec4<u32>(2497u, _wgslsmith_div_u32(select(15646u, u_input.a, true) & ~0u, ~u_input.a), _wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.a, ~0u), firstTrailingBit(0u), ~var_3.a.x), 63972u), _wgslsmith_f_op_f32(floor(-283f)));
}

