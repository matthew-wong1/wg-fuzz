struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: u32,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(vec3<f32>(-303f, 1163f, 529f), vec3<bool>(false, true, false), 2147483647i, Struct_1(false, vec3<f32>(1000f, 1120f, -345f), 130140u, false, vec3<u32>(28460u, 1u, 4294967295u)), Struct_1(false, vec3<f32>(-430f, -1272f, 826f), 37858u, true, vec3<u32>(0u, 23900u, 4294967295u))), Struct_2(vec3<f32>(-854f, -2420f, 2085f), vec3<bool>(false, false, false), 2638i, Struct_1(true, vec3<f32>(1578f, -277f, 1715f), 96832u, false, vec3<u32>(0u, 0u, 1u)), Struct_1(true, vec3<f32>(1000f, 859f, 145f), 6957u, true, vec3<u32>(33249u, 66435u, 45583u))), Struct_2(vec3<f32>(1000f, 1177f, 1273f), vec3<bool>(true, false, true), 0i, Struct_1(false, vec3<f32>(-1567f, -249f, 1053f), 90695u, false, vec3<u32>(77262u, 1451u, 57702u)), Struct_1(false, vec3<f32>(560f, -1000f, 325f), 4294967295u, true, vec3<u32>(4294967295u, 94354u, 4294967295u))), Struct_2(vec3<f32>(110f, 460f, -1394f), vec3<bool>(false, true, false), -30417i, Struct_1(true, vec3<f32>(1792f, 578f, -491f), 1u, false, vec3<u32>(4294967295u, 1u, 42057u)), Struct_1(false, vec3<f32>(-368f, -1687f, -161f), 16338u, false, vec3<u32>(75657u, 4294967295u, 4294967295u))), Struct_2(vec3<f32>(206f, -935f, -1127f), vec3<bool>(true, false, false), -1i, Struct_1(false, vec3<f32>(632f, -124f, -141f), 39892u, false, vec3<u32>(26856u, 1u, 1u)), Struct_1(true, vec3<f32>(-1020f, 203f, -939f), 54681u, true, vec3<u32>(118494u, 27007u, 4294967295u))), Struct_2(vec3<f32>(236f, -343f, -1717f), vec3<bool>(false, false, true), -61668i, Struct_1(false, vec3<f32>(542f, -382f, -1461f), 46823u, true, vec3<u32>(4294967295u, 4294967295u, 8085u)), Struct_1(true, vec3<f32>(857f, 627f, 502f), 40513u, false, vec3<u32>(1u, 2902u, 46622u))), Struct_2(vec3<f32>(1198f, -964f, 508f), vec3<bool>(true, true, true), i32(-2147483648), Struct_1(true, vec3<f32>(382f, -468f, 351f), 7052u, false, vec3<u32>(1u, 1u, 10998u)), Struct_1(false, vec3<f32>(-4359f, -618f, -485f), 28987u, false, vec3<u32>(23337u, 0u, 55855u))));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1() -> vec4<f32> {
    global0 = array<Struct_2, 7>();
    return _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1442f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(565f - -337f) - -132f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -941f)) + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-143f, 978f)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-369f * 1179f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-339f - -1720f))))));
}

fn func_3() -> bool {
    global0 = array<Struct_2, 7>();
    let var_0 = reverseBits(~_wgslsmith_mod_vec4_i32(~reverseBits(vec4<i32>(u_input.c, u_input.b, -1i, 0i)), vec4<i32>(firstTrailingBit(2147483647i), reverseBits(u_input.b), _wgslsmith_add_i32(1i, u_input.c), _wgslsmith_sub_i32(46172i, -1i))));
    let var_1 = ((0i | var_0.x) ^ ~abs(-u_input.a)) & u_input.c;
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(-2013f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -326f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1731f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-849f + 230f))), -560f))));
    global0 = array<Struct_2, 7>();
    return _wgslsmith_sub_u32(reverseBits(~36369u) << (_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 42420u), ~vec2<u32>(8977u, 24478u)) % 32u), ~abs(_wgslsmith_clamp_u32(1u, 21723u, 4294967295u))) >= ~4294967295u;
}

fn func_2(arg_0: vec4<f32>, arg_1: bool) -> Struct_1 {
    global0 = array<Struct_2, 7>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(570f)));
    let var_1 = !all(select(!vec2<bool>(arg_1, true), select(vec2<bool>(arg_1, arg_1), vec2<bool>(true, false), false), false)) | func_3();
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-100f, arg_0.x, 1295f)) - arg_0.yzx)), !select(!vec3<bool>(var_1, false, false), !select(vec3<bool>(false, arg_1, var_1), vec3<bool>(false, true, true), arg_1), !select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(var_1, true, arg_1), arg_1)), select(-select(0i, u_input.a, arg_1), firstLeadingBit(-2147483647i), any(select(vec4<bool>(true, arg_1, var_1, true), vec4<bool>(true, arg_1, true, true), arg_1))) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(abs(21372u), ~25897u), max(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 6489u), vec2<u32>(42854u, 1u)), vec2<u32>(1u, 1u))) % 32u), Struct_1(-u_input.b < _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(19096i, u_input.c, u_input.b), vec3<i32>(-58815i, u_input.b, u_input.b)), u_input.b), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, -834f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, false)))), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 1u, 13681u), vec3<u32>(43029u, 4294967295u, 12370u), vec3<u32>(29861u, 1u, 55319u))), arg_1, ~select(vec3<u32>(4294967295u, 1u, 40703u), firstTrailingBit(vec3<u32>(29033u, 91445u, 0u)), vec3<bool>(arg_1, true, arg_1))), Struct_1(5710i > abs(-10300i | u_input.c), _wgslsmith_f_op_vec3_f32(-arg_0.yxx), 63811u, var_1, vec3<u32>(100008u, ~_wgslsmith_add_u32(46127u, 54506u), 12724u)));
    var var_3 = arg_0.x;
    return var_2.e;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> f32 {
    global0 = array<Struct_2, 7>();
    let var_0 = arg_0;
    global0 = array<Struct_2, 7>();
    var var_1 = vec2<bool>(!arg_2, func_3());
    var_1 = !select(vec2<bool>(false == any(vec3<bool>(false, false, arg_1.a)), false), !(!(!vec2<bool>(var_1.x, arg_1.a))), !(-1851f > arg_0.b.x) & arg_0.d);
    return -409f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(-1187f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(1000f))))) - -166f), _wgslsmith_f_op_f32(func_4(func_2(_wgslsmith_f_op_vec4_f32(func_1()), true), func_2(vec4<f32>(-1000f, _wgslsmith_f_op_f32(step(1661f, -1068f)), _wgslsmith_f_op_f32(1395f - 624f), _wgslsmith_f_op_f32(677f - 884f)), any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)))), true, 0i)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-762f + 1000f) * 430f), _wgslsmith_f_op_f32(select(-652f, _wgslsmith_f_op_f32(func_4(Struct_1(false, vec3<f32>(-111f, -1378f, -1000f), 3891u, true, vec3<u32>(4294967295u, 1u, 2840u)), Struct_1(false, vec3<f32>(-1236f, -444f, 239f), 48889u, true, vec3<u32>(25712u, 38481u, 0u)), false, -1i)), true))))));
    var var_1 = !(!(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true)));
    let var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.xyz - vec3<f32>(var_0.x, 2036f, var_0.x)) + var_0.ywz)))));
    var var_3 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-581f, var_2.x, var_0.x, -556f), vec4<f32>(var_2.x, var_0.x, 535f, -1000f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_0.x, var_2.x, 372f) + vec4<f32>(var_0.x, -586f, var_2.x, -1469f)) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, var_0.x, -1000f, var_2.x)))))), var_1.x);
    var_3 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -1000f, 468f, -303f)) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b.x, var_0.x, var_3.b.x, 519f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(455f, 387f, var_3.b.x, -1647f)), vec4<bool>(false, false, var_1.x, true))))), true);
    let var_4 = _wgslsmith_div_vec4_i32(~select(vec4<i32>(-1i, 2147483647i >> (var_3.e.x % 32u), 1i >> (var_3.e.x % 32u), max(-11433i, u_input.b)), vec4<i32>(u_input.c, u_input.b | u_input.c, firstTrailingBit(0i), -22902i), vec4<bool>(!var_3.a, true, all(var_1.zy), var_1.x)), select(vec4<i32>(min(u_input.a, u_input.a), ~u_input.b, ~0i, ~u_input.c), ~(vec4<i32>(u_input.c, -2147483647i, u_input.b, u_input.c) ^ vec4<i32>(u_input.a, -1i, u_input.c, u_input.c)), vec4<bool>(var_0.x <= var_2.x, false, var_1.x, true)) & _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.c, u_input.b, u_input.a, -22085i), vec4<i32>(u_input.c, -63533i, -2147483647i, -20068i) | vec4<i32>(23328i, -46068i, u_input.a, 2147483647i)), vec4<i32>(~(-1i), ~(-21101i), -21324i, countOneBits(u_input.a))));
    var_3 = Struct_1(true, _wgslsmith_f_op_vec3_f32(-var_0.wwx), 56343u, -10720i != (_wgslsmith_mult_i32(-3475i, _wgslsmith_dot_vec4_i32(var_4, var_4)) & _wgslsmith_sub_i32(u_input.b, u_input.a >> (4294967295u % 32u))), _wgslsmith_mult_vec3_u32(abs(~var_3.e), max(~(~var_3.e), var_3.e)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-352f, var_2.x, var_2.x, var_3.b.x) * vec4<f32>(var_2.x, var_2.x, 1001f, var_2.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, var_3.b.x, 759f))))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-var_3.b.x), _wgslsmith_f_op_f32(floor(-1607f)), _wgslsmith_f_op_f32(f32(-1f) * -392f), _wgslsmith_f_op_f32(-1000f * var_3.b.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_3.b.x, var_3.b.x, var_3.b.x, var_0.x), vec4<f32>(-385f, var_2.x, var_2.x, var_3.b.x)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.x, var_0.x, var_3.b.x, 1632f), vec4<f32>(-545f, 2843f, var_3.b.x, -1876f), false))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b.x, -1558f, var_2.x, 1407f)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_3.b.x, var_2.x, -469f, var_0.x), vec4<f32>(1000f, -1177f, 425f, 564f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 2669f, 1060f, -1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(var_3.b.x, 702f, 1000f, var_0.x), vec4<f32>(1000f, var_3.b.x, var_0.x, 401f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 634f, var_3.b.x, var_2.x) + vec4<f32>(613f, -1000f, var_0.x, var_3.b.x))))))));
}

