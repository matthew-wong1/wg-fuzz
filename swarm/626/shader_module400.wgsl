struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec2<i32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: i32 = 46474i;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2) -> vec2<i32> {
    var var_0 = arg_1;
    let var_1 = _wgslsmith_mult_u32(max(_wgslsmith_div_u32(~(18503u & arg_1.a.x), arg_1.a.x), max(0u, firstTrailingBit(var_0.b.x)) << (_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(42850u, 4402u), vec2<u32>(1u, 0u)), ~var_0.b.yy) % 32u)), u_input.a & 4294967295u);
    var var_2 = select(vec2<bool>(any(vec4<bool>(!var_0.e.a.x, false, any(arg_1.e.a), select(var_0.d.x, true, arg_1.c.a.x))), any(vec4<bool>(true, true, false, true))), !select(select(var_0.c.a.yz, vec2<bool>(false, false), var_0.e.a.xx), var_0.c.a.yx, select(vec2<bool>(var_0.c.a.x, arg_1.d.x), !arg_1.c.a.yy, select(vec2<bool>(false, arg_1.c.a.x), var_0.d.zw, var_0.e.a.yx))), any(!select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(var_0.e.a.x, true), arg_1.c.a.yx, false))));
    return vec2<i32>(-1i) * -select(select(abs(arg_0.xz), vec2<i32>(1i, -1i) >> (global0.xy % vec2<u32>(32u)), vec2<bool>(false, var_2.x)), _wgslsmith_add_vec2_i32(countOneBits(vec2<i32>(-2147483647i, -52883i)), arg_0.xz), any(select(var_0.d, vec4<bool>(true, var_2.x, var_0.e.a.x, false), false)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_4) -> bool {
    let var_0 = u_input.a;
    let var_1 = vec4<i32>(max((8366i >> ((4294967295u << (global0.x % 32u)) % 32u)) ^ -29679i, arg_0.x), u_input.c, arg_1.b.x, reverseBits(_wgslsmith_mod_i32(-54045i, i32(-1i) * -21008i)));
    var var_2 = !all(!vec4<bool>(arg_1.c, true, any(vec3<bool>(arg_1.c, true, arg_1.c)), !arg_1.c));
    global0 = vec4<u32>(abs(59267u), ~(~37252u), 0u, min(arg_1.a, ~19781u));
    let var_3 = Struct_3(Struct_2(vec4<u32>(max(0u, ~global0.x), ~(~27314u), arg_1.a, ~_wgslsmith_dot_vec3_u32(vec3<u32>(46903u, 0u, global0.x), u_input.b)), ~vec3<u32>(~var_0, var_0, max(var_0, var_0)), Struct_1(!select(vec3<bool>(false, true, false), vec3<bool>(arg_1.c, true, false), arg_1.c)), !vec4<bool>(arg_1.c, arg_1.c & arg_1.c, any(vec3<bool>(arg_1.c, arg_1.c, false)), true), Struct_1(select(vec3<bool>(true, true, false), vec3<bool>(arg_1.c, arg_1.c, true), !arg_1.c))));
    return var_3.a.d.x;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: vec3<bool>, arg_3: Struct_2) -> bool {
    global0 = arg_3.a;
    let var_0 = Struct_1(vec3<bool>(func_4(func_3(vec3<i32>(arg_1.b.x, u_input.e, u_input.d) >> (arg_3.b % vec3<u32>(32u)), Struct_2(arg_3.a, global0.zzw, arg_3.e, arg_3.d, arg_3.e)), Struct_4(arg_1.a, vec2<i32>(-8122i, -2147483647i), arg_1.c)), (countOneBits(u_input.c) | arg_1.b.x) <= _wgslsmith_mult_i32(-u_input.e, ~(-11467i)), arg_2.x));
    var var_1 = -856f;
    global0 = arg_3.a;
    let var_2 = Struct_4(_wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.a, global0.x), _wgslsmith_add_u32(_wgslsmith_clamp_u32(0u, 7026u, global0.x), u_input.a >> (44200u % 32u))), ~(~arg_3.b.x)), arg_1.b, false);
    return true;
}

fn func_5(arg_0: vec4<bool>, arg_1: i32, arg_2: vec2<f32>, arg_3: vec4<f32>) -> Struct_2 {
    global1 = ~u_input.c;
    global1 = -_wgslsmith_clamp_i32(u_input.e, abs(arg_1), _wgslsmith_sub_i32(~u_input.d, -35553i ^ (u_input.d >> (4294967295u % 32u))));
    global1 = i32(-1i) * -32980i;
    global0 = _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(14318u, 1u, u_input.a, 4294967295u) ^ vec4<u32>(0u, global0.x, 89070u, 0u), countOneBits(vec4<u32>(u_input.a, 0u, 13371u, 0u))), 44928u, _wgslsmith_mod_u32(_wgslsmith_div_u32(global0.x, ~global0.x), 0u)), vec4<u32>(u_input.b.x, 96786u, u_input.a ^ 25648u, 38518u));
    let var_0 = vec3<bool>(arg_0.x, true, false);
    return Struct_2(~(~max(reverseBits(vec4<u32>(1u, u_input.a, 53489u, global0.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(17927u, u_input.a, global0.x, global0.x), vec4<u32>(u_input.b.x, global0.x, global0.x, global0.x)))), vec3<u32>(global0.x | _wgslsmith_mult_u32(~u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 32340u), u_input.b.yy)), global0.x, _wgslsmith_add_u32(1u ^ global0.x, _wgslsmith_div_u32(_wgslsmith_sub_u32(60527u, global0.x), ~u_input.a))), Struct_1(select(arg_0.zwx, vec3<bool>(false, true, var_0.x), !vec3<bool>(true, false, var_0.x))), !vec4<bool>(arg_0.x, true, true, func_2(u_input.b.zz, Struct_4(u_input.a, vec2<i32>(-5191i, -2147483647i), true), vec3<bool>(var_0.x, var_0.x, true), Struct_2(vec4<u32>(u_input.b.x, global0.x, u_input.b.x, 14015u), u_input.b, Struct_1(var_0), vec4<bool>(var_0.x, arg_0.x, arg_0.x, true), Struct_1(vec3<bool>(true, false, var_0.x))))), Struct_1(!vec3<bool>(var_0.x, all(vec4<bool>(arg_0.x, true, arg_0.x, true)), true)));
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = ~(~(~_wgslsmith_mod_u32(firstLeadingBit(global0.x), _wgslsmith_mod_u32(4294967295u, u_input.b.x))));
    var_0 = _wgslsmith_mult_u32(9001u, global0.x);
    let var_1 = func_5(!select(vec4<bool>(false, false, func_2(vec2<u32>(4294967295u, u_input.a), Struct_4(u_input.a, vec2<i32>(1i, 2147483647i), true), vec3<bool>(true, false, true), Struct_2(vec4<u32>(u_input.b.x, global0.x, global0.x, 1u), vec3<u32>(1u, 104629u, global0.x), Struct_1(vec3<bool>(true, true, true)), vec4<bool>(false, false, false, false), Struct_1(vec3<bool>(true, true, true)))), false), select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false)), true), _wgslsmith_sub_i32(~(-2147483647i) | firstTrailingBit(-33832i & arg_0), reverseBits(_wgslsmith_clamp_i32(~32832i, max(u_input.e, arg_0), _wgslsmith_add_i32(2147483647i, 0i)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(644f)), _wgslsmith_f_op_f32(-959f + -594f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(183f, 517f) * vec2<f32>(1f, 1f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 2036f, -861f, _wgslsmith_f_op_f32(trunc(1368f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(732f, 1142f, 521f, 1132f) - vec4<f32>(-814f, 1028f, 248f, -776f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1118f, 1811f, 1000f, 2331f))) - vec4<f32>(_wgslsmith_f_op_f32(-507f * -556f), _wgslsmith_f_op_f32(f32(-1f) * -280f), _wgslsmith_f_op_f32(abs(-367f)), _wgslsmith_f_op_f32(min(-380f, -1237f))))));
    var_0 = 43892u;
    var var_2 = _wgslsmith_dot_vec3_u32(var_1.a.xxz, ~(~global0.wxw << (vec3<u32>(~0u, abs(u_input.a), 18816u) % vec3<u32>(32u))));
    return var_1.c;
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: Struct_3, arg_3: vec3<u32>) -> f32 {
    global1 = _wgslsmith_dot_vec2_i32(-abs(select(vec2<i32>(-1i, -38993i) << (vec2<u32>(arg_3.x, global0.x) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(vec2<i32>(arg_1, 1i), vec2<i32>(36802i, arg_1)), true)), _wgslsmith_add_vec2_i32(-vec2<i32>(2147483647i, arg_1) << (~max(arg_3.zx, u_input.b.zx) % vec2<u32>(32u)), firstTrailingBit(-vec2<i32>(u_input.d, 25816i))));
    var var_0 = 31399u;
    let var_1 = ~min(~_wgslsmith_mod_u32(firstTrailingBit(u_input.b.x), arg_3.x | 57473u), firstLeadingBit(~(~1u)));
    var var_2 = func_5(!arg_2.a.d, u_input.c ^ -53759i, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(553f)), -144f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(440f, 1983f) * vec2<f32>(221f, -868f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1714f * _wgslsmith_f_op_f32(f32(-1f) * -247f)), -1657f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_f_op_f32(-565f + -1127f)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-441f, -102f, 1000f, 1787f)), vec4<f32>(-1159f, -821f, -116f, -1232f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(296f, -1722f, 1749f, -1859f) - vec4<f32>(-1305f, 491f, 547f, -581f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(259f, -198f, -821f, -274f))), arg_2.a.d)))).e;
    global0 = ~_wgslsmith_mult_vec4_u32(abs(abs(~vec4<u32>(u_input.a, 50738u, 1457u, 1u))), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(~arg_2.a.a, arg_2.a.a), vec4<u32>(global0.x, 1u, _wgslsmith_sub_u32(0u, arg_3.x), ~0u)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1031f * _wgslsmith_f_op_f32(1198f + 1000f)))) - -208f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-807f + -693f), 762f, -1094f, 144f) * vec4<f32>(-903f, _wgslsmith_f_op_f32(-2761f + -600f), _wgslsmith_f_op_f32(ceil(1058f)), 2581f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(func_6(func_1(-25503i), _wgslsmith_add_i32(u_input.c, 0i), Struct_3(Struct_2(vec4<u32>(global0.x, 8157u, u_input.b.x, global0.x), vec3<u32>(global0.x, 4294967295u, 6184u), Struct_1(vec3<bool>(false, false, false)), vec4<bool>(false, true, false, true), Struct_1(vec3<bool>(false, false, false)))), vec3<u32>(u_input.b.x, global0.x, 1u))), _wgslsmith_f_op_f32(-454f + -916f), _wgslsmith_f_op_f32(round(1f)))));
    let var_1 = ~(~u_input.b) << ((_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(u_input.b ^ vec3<u32>(u_input.b.x, 1u, 27171u), u_input.b), min(global0.ywx, _wgslsmith_clamp_vec3_u32(vec3<u32>(68042u, global0.x, u_input.b.x), global0.xyx, vec3<u32>(48774u, u_input.b.x, 4294967295u))), vec3<u32>(_wgslsmith_mod_u32(u_input.a, global0.x), ~u_input.a, _wgslsmith_sub_u32(31586u, 1u))) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x << (u_input.b.x % 32u), 4294967295u, firstLeadingBit(0u)), firstTrailingBit(vec3<u32>(1u, 18664u, 4294967295u)), select(u_input.b, vec3<u32>(global0.x, 0u, 4294967295u), vec3<bool>(false, false, false))) % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_2 = Struct_1(select(func_1(0i << (countOneBits(4111u) % 32u)).a, vec3<bool>(true, true, true), vec3<bool>(_wgslsmith_mod_i32(u_input.d, u_input.d) >= max(u_input.d, 17103i), -u_input.e <= -u_input.e, false | func_4(vec2<i32>(u_input.d, 1i), Struct_4(4294967295u, vec2<i32>(u_input.c, u_input.e), false)))));
    var var_3 = select(vec4<bool>(_wgslsmith_f_op_f32(1028f - _wgslsmith_f_op_f32(select(var_0.x, 734f, var_2.a.x))) == var_0.x, true, func_1(~_wgslsmith_div_i32(446i, u_input.e)).a.x, var_2.a.x), select(vec4<bool>(var_2.a.x, var_2.a.x, (global0.x < 4294967295u) | (1418f < var_0.x), true), select(!select(vec4<bool>(var_2.a.x, var_2.a.x, var_2.a.x, var_2.a.x), vec4<bool>(var_2.a.x, false, true, false), true), !vec4<bool>(false, false, var_2.a.x, var_2.a.x), var_2.a.x), !all(vec3<bool>(var_2.a.x, true, var_2.a.x))), u_input.d <= u_input.c);
    let var_4 = Struct_3(Struct_2(~vec4<u32>(1u, 70088u, global0.x, 45769u) ^ _wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a, 1406u, global0.x, 10528u)), vec4<u32>(u_input.a, global0.x, 1u, global0.x)), vec3<u32>(9986u, firstTrailingBit(54406u), countOneBits(0u) << (_wgslsmith_dot_vec2_u32(vec2<u32>(36226u, 1u), global0.zz) % 32u)), Struct_1(vec3<bool>(var_3.x, false, var_3.x)), vec4<bool>(func_4(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d, -1i), vec2<i32>(u_input.c, -1i), vec2<i32>(u_input.d, u_input.e)), Struct_4(var_1.x, vec2<i32>(u_input.d, u_input.d), var_3.x)), !var_2.a.x, true, true), func_1(firstTrailingBit(_wgslsmith_sub_i32(2147483647i, 5384i)))));
    let var_5 = countOneBits(2147483647i);
    let var_6 = -(~_wgslsmith_clamp_vec2_i32(reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(-50414i, -2147483647i), vec2<i32>(-3788i, var_5))), vec2<i32>(firstLeadingBit(var_5), 748i), abs(~vec2<i32>(var_5, -2147483647i))));
    var var_7 = var_4.a.a;
    var_0 = vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(-var_0.x), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-1i) * -(vec2<i32>(-1i) * -vec2<i32>(50909i, 57921i)));
}

