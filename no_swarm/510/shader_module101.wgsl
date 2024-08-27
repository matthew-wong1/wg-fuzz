struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> u32 {
    var var_0 = Struct_3(Struct_2(~select(~(-2147483647i), -2147483647i, select(false, false, true)), Struct_1(false), _wgslsmith_div_i32(-1i, firstTrailingBit(1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1000f, 980f)))))));
    let var_1 = _wgslsmith_mult_vec3_i32(firstLeadingBit(select(-vec3<i32>(var_0.a.a, var_0.a.c, var_0.a.a), vec3<i32>(var_0.a.c, var_0.a.c, 1i ^ var_0.a.a), vec3<bool>(var_0.a.b.a, false, var_0.a.b.a & var_0.a.b.a))), -vec3<i32>(-2147483647i, firstTrailingBit(0i) & var_0.a.c, _wgslsmith_sub_i32(var_0.a.c, -116126i) >> (abs(u_input.a) % 32u)));
    var var_2 = 18385i;
    let var_3 = var_1.x;
    var var_4 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-751f, _wgslsmith_f_op_f32(step(681f, -1338f)), -351f) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1300f, var_0.a.d, 2225f)))))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(min(-206f, var_0.a.d)), var_0.a.d, _wgslsmith_f_op_f32(sign(var_0.a.d)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.a.d, -117f, var_0.a.d)))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.d, 1486f, -1000f))))) + vec3<f32>(var_0.a.d, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.a.d + -582f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a.d)))))));
    return u_input.a;
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_1(true);
    let var_1 = vec4<u32>(~func_3(), ~u_input.a >> (min(~(~4294967295u), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(20769u, u_input.a, u_input.a, u_input.a), vec4<u32>(5213u, u_input.a, 4294967295u, 4294967295u)))) % 32u), max(58529u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(11960u, 0u), u_input.a), ~(u_input.a | 42969u))), _wgslsmith_div_u32(4294967295u, u_input.a) | 27815u);
    let var_2 = !select(!select(select(vec2<bool>(var_0.a, true), vec2<bool>(false, false), true), !vec2<bool>(true, var_0.a), vec2<bool>(true, var_0.a)), !select(select(vec2<bool>(true, true), vec2<bool>(var_0.a, false), var_0.a), vec2<bool>(var_0.a, true), select(false, true, true)), select(!vec2<bool>(var_0.a, var_0.a), select(vec2<bool>(false, false), !vec2<bool>(var_0.a, false), true), all(!vec3<bool>(var_0.a, var_0.a, true))));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1126f + -909f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1725f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1334f))), _wgslsmith_f_op_f32(-2282f - -757f));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(2921f)))) - -591f));
    return Struct_3(Struct_2(_wgslsmith_div_i32(max(_wgslsmith_dot_vec3_i32(vec3<i32>(62099i, 22244i, 38263i), vec3<i32>(0i, 24596i, -17916i)), _wgslsmith_sub_i32(-38580i, 11695i)), 1i), Struct_1(var_0.a == true), -2147483647i, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_3.x, var_3.x, var_0.a)), -1288f)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: i32, arg_3: vec4<i32>) -> vec4<i32> {
    var var_0 = vec4<u32>(_wgslsmith_dot_vec2_u32(~(_wgslsmith_clamp_vec2_u32(vec2<u32>(66118u, u_input.a), vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)) << (~vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), vec2<u32>(~(60068u >> (u_input.a % 32u)), ~_wgslsmith_mod_u32(36633u, u_input.a))), 4294967295u, u_input.a, _wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 19149u, u_input.a), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 20204u), vec4<u32>(u_input.a, u_input.a, u_input.a, 0u))), max(~vec4<u32>(u_input.a, 22352u, u_input.a, 4294967295u), reverseBits(vec4<u32>(44955u, u_input.a, 5341u, 3836u)))));
    var var_1 = false;
    let var_2 = Struct_2(max(firstTrailingBit(arg_3.x), ~arg_2 << (0u % 32u)), arg_1.a.b, firstLeadingBit(max(max(_wgslsmith_sub_i32(16132i, -40178i), 2147483647i), arg_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-177f + arg_0.x) * 707f));
    var_0 = vec4<u32>(_wgslsmith_dot_vec4_u32(~(~reverseBits(vec4<u32>(var_0.x, u_input.a, u_input.a, var_0.x))), vec4<u32>(~var_0.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(29995u, u_input.a, 0u, u_input.a), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a), vec4<u32>(0u, u_input.a, var_0.x, var_0.x))), firstLeadingBit(func_3()), func_3())), var_0.x, u_input.a, _wgslsmith_div_u32(~(~1u), 81137u));
    var_0 = select(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, 16908u, 27312u), vec4<u32>(u_input.a, var_0.x, 1u, 1u))), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, u_input.a, var_0.x, 3320u) << (vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, u_input.a, u_input.a, u_input.a), vec4<u32>(var_0.x, u_input.a, u_input.a, 17724u))), ~vec4<u32>(5415u, 67543u, u_input.a, 4294967295u)), select(vec4<u32>(~4294967295u, u_input.a | u_input.a, func_3(), var_0.x << (74473u % 32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, 5106u, 0u, u_input.a), vec4<u32>(u_input.a, 41443u, u_input.a, 50797u)), !(!vec4<bool>(true, arg_1.a.b.a, var_2.b.a, arg_1.a.b.a)))), !arg_1.a.b.a);
    return arg_3;
}

fn func_1(arg_0: Struct_4) -> vec2<bool> {
    let var_0 = _wgslsmith_dot_vec4_i32(max(-vec4<i32>(_wgslsmith_mod_i32(arg_0.b.x, arg_0.b.x), ~(-2147483647i), max(arg_0.b.x, -2147483647i), arg_0.b.x), func_4(vec4<f32>(788f, 1000f, arg_0.a.x, arg_0.a.x), func_2(), 0i, vec4<i32>(arg_0.b.x, arg_0.b.x, 1068i, arg_0.b.x) | vec4<i32>(arg_0.b.x, -28639i, arg_0.b.x, arg_0.b.x)) ^ vec4<i32>(_wgslsmith_sub_i32(0i, 1i), firstLeadingBit(4281i), _wgslsmith_dot_vec4_i32(vec4<i32>(-22800i, 67134i, arg_0.b.x, -4176i), vec4<i32>(arg_0.b.x, arg_0.b.x, 2147483647i, 1i)), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b.x, arg_0.b.x), arg_0.b))), select(max(vec4<i32>(0i << (arg_0.c.x % 32u), arg_0.b.x, arg_0.b.x, arg_0.b.x), countOneBits(vec4<i32>(arg_0.b.x, arg_0.b.x, 44787i, -1i))), vec4<i32>(firstLeadingBit(1i), _wgslsmith_dot_vec2_i32(max(vec2<i32>(arg_0.b.x, arg_0.b.x), arg_0.b), reverseBits(arg_0.b)), ~(arg_0.b.x << (arg_0.c.x % 32u)), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-593f, arg_0.a.x, arg_0.a.x, arg_0.a.x)), func_2(), arg_0.b.x, select(vec4<i32>(arg_0.b.x, 1i, 2147483647i, -25364i), vec4<i32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, 40081i), vec4<bool>(true, true, true, false))).x), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), true), vec4<bool>(false, false, true, true))));
    var var_1 = arg_0.b.x < -abs(_wgslsmith_sub_i32(0i, ~arg_0.b.x));
    let var_2 = vec2<f32>(arg_0.a.x, _wgslsmith_f_op_f32(sign(-762f)));
    var var_3 = 13392u;
    return !vec2<bool>(true, select(~arg_0.b.x > 1i, !(-2147483647i >= arg_0.b.x), true));
}

fn func_5(arg_0: f32, arg_1: vec2<bool>, arg_2: vec3<u32>, arg_3: vec4<bool>) -> Struct_3 {
    var var_0 = Struct_3(func_2().a);
    var var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0, var_0.a.d, 926f), vec3<f32>(var_0.a.d, 841f, arg_0)))), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.d, -817f, arg_0), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.a.d, arg_0, 624f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-244f, -604f, -121f) + vec3<f32>(-953f, -1149f, arg_0)))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-148f, var_0.a.d, var_0.a.d), vec3<f32>(-2052f, -1844f, arg_0))))))), select(_wgslsmith_div_vec2_i32((vec2<i32>(var_0.a.a, 1i) ^ vec2<i32>(var_0.a.a, var_0.a.a)) >> (~arg_2.yy % vec2<u32>(32u)), -(~vec2<i32>(2147483647i, 12554i))), -vec2<i32>(-13448i, var_0.a.a) ^ abs(-vec2<i32>(var_0.a.c, var_0.a.a)), func_1(Struct_4(vec3<f32>(-1368f, arg_0, 888f), vec2<i32>(-1i, var_0.a.c) >> (arg_2.zx % vec2<u32>(32u)), ~arg_2))), _wgslsmith_mod_vec3_u32(arg_2, ~(~_wgslsmith_div_vec3_u32(vec3<u32>(1u, 58209u, 10653u), arg_2))));
    var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(var_1.a * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(var_1.a * var_1.a))) + var_1.a)), firstLeadingBit(_wgslsmith_add_vec2_i32(~select(vec2<i32>(2147483647i, var_0.a.a), vec2<i32>(var_1.b.x, var_0.a.a), vec2<bool>(false, false)), select(var_1.b, var_1.b, !arg_3.yy))), vec3<u32>(func_3(), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, arg_2.x, 4294967295u, var_1.c.x), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, arg_2.x, u_input.a, 1u), vec4<u32>(var_1.c.x, 11692u, 10195u, 93250u))), u_input.a));
    var var_2 = arg_2.x;
    let var_3 = ~var_1.c.xz;
    return Struct_3(func_2().a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2003f)))), vec2<bool>(true, !(!(4294967295u <= u_input.a))), vec3<u32>(~firstTrailingBit(~u_input.a), u_input.a, _wgslsmith_mod_u32(48124u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, 56066u), _wgslsmith_sub_u32(u_input.a, 41939u)))), vec4<bool>(true, !any(func_1(Struct_4(vec3<f32>(730f, -985f, -162f), vec2<i32>(-58525i, 2147483647i), vec3<u32>(u_input.a, u_input.a, 0u)))), !select(true, true, true), true));
    let var_1 = ~(~firstTrailingBit(~(vec2<u32>(51339u, u_input.a) << (vec2<u32>(100984u, 1u) % vec2<u32>(32u)))));
    let var_2 = Struct_2(var_0.a.a << (56223u % 32u), var_0.a.b, 1i | firstLeadingBit(_wgslsmith_div_i32(var_0.a.c, -50342i) << (~var_1.x % 32u)), var_0.a.d);
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-412f * var_2.d), -253f, _wgslsmith_f_op_f32(-var_0.a.d), var_2.d), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-var_2.d), -179f, 1326f, -299f))))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1296f)) * _wgslsmith_f_op_f32(f32(-1f) * -1181f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(384f - -251f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.d * 379f) - _wgslsmith_f_op_f32(select(-911f, -921f, var_0.a.b.a))))), -1140f));
    var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-438f, _wgslsmith_f_op_f32(abs(1746f)), var_3.x, 633f));
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1780f - var_2.d))), var_2.d);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_1.x << (var_1.x % 32u), _wgslsmith_sub_u32(~12618u, select(0u, 100602u, var_0.a.b.a)), 0u, firstLeadingBit(_wgslsmith_mod_u32(u_input.a, u_input.a))) << (~select(min(vec4<u32>(0u, 1u, 15249u, var_1.x), vec4<u32>(1u, u_input.a, u_input.a, var_1.x)), firstLeadingBit(vec4<u32>(0u, u_input.a, var_1.x, 4291u)), select(vec4<bool>(false, true, false, true), vec4<bool>(var_0.a.b.a, var_0.a.b.a, true, true), vec4<bool>(true, true, var_0.a.b.a, var_2.b.a))) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -902f))), var_3.x)));
}

