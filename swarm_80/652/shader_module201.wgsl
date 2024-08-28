struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<f32>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: vec3<bool>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: vec3<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn func_3(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: Struct_2) -> i32 {
    var var_0 = ~firstTrailingBit(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(~vec3<i32>(arg_2.a.d, -1i, -2147483647i), vec3<i32>(-89398i, 2147483647i, arg_2.a.d)), select(_wgslsmith_sub_vec3_i32(vec3<i32>(-26846i, arg_2.a.d, arg_2.a.d), vec3<i32>(arg_2.a.d, arg_2.a.d, 2147483647i)), reverseBits(vec3<i32>(-60520i, 35105i, arg_2.a.d)), arg_0)));
    var_0 = vec3<i32>(arg_2.a.d, countOneBits(select(var_0.x, ~(var_0.x ^ 2147483647i), false)), var_0.x);
    var var_1 = _wgslsmith_add_i32(-16831i, reverseBits(arg_2.a.d));
    let var_2 = 0u;
    var var_3 = arg_2.a;
    return arg_2.a.d;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: Struct_4) -> Struct_3 {
    var var_0 = vec4<i32>(func_3(!arg_2.c, vec2<u32>(~(~u_input.a), u_input.a), Struct_2(arg_2.a.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.d, arg_1.d) + arg_2.d), vec2<f32>(_wgslsmith_f_op_f32(sign(arg_2.d)), -1046f), !arg_2.a.a.a)), _wgslsmith_add_i32(reverseBits(arg_2.a.a.d), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(arg_2.a.a.d, 0i, arg_2.a.a.d, arg_2.a.a.d)), vec4<i32>(2147483647i, 6902i, 2147483647i, -14583i)) >> (0u % 32u)), -1121i, 2147483647i);
    var var_1 = !arg_2.c;
    var var_2 = reverseBits(vec4<i32>(-2147483647i | -func_3(vec3<bool>(arg_2.c.x, arg_1.a.a.b, true), vec2<u32>(u_input.a, 23099u), arg_2.a), countOneBits(firstTrailingBit(arg_0.x << (0u % 32u))), 1i, 24465i));
    var var_3 = Struct_1(arg_1.a.a.a, any(vec2<bool>(false, !var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -329f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2.a.c.x)) + arg_2.d))), _wgslsmith_div_i32(_wgslsmith_clamp_i32(-50653i, ~abs(arg_0.x), -_wgslsmith_mod_i32(arg_1.a.a.d, 723i)), 1i));
    var var_4 = 0u;
    return Struct_3(true);
}

fn func_4(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-591f - _wgslsmith_div_f32(160f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-127f, -1183f), -1186f))))));
    let var_1 = Struct_2(Struct_1(!select(vec2<bool>(arg_2.a, false), vec2<bool>(false, false), vec2<bool>(true, arg_0)), false, _wgslsmith_f_op_f32(557f * _wgslsmith_f_op_f32(f32(-1f) * -1319f)), min(-1i, abs(max(1i, -2147483647i)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1084f, var_0))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-281f, var_0))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1303f, 300f))))), select(select(vec2<bool>(arg_2.a == arg_2.a, true), vec2<bool>(any(vec4<bool>(true, false, arg_0, true)), select(arg_2.a, true, false)), select(!vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true), vec2<bool>(arg_2.a, true))), select(select(vec2<bool>(arg_2.a, true), select(vec2<bool>(false, arg_0), vec2<bool>(false, arg_2.a), vec2<bool>(arg_2.a, false)), true), vec2<bool>(false && arg_0, any(vec3<bool>(true, true, true))), vec2<bool>(true, true)), false));
    let var_2 = abs(arg_1.x);
    let var_3 = Struct_3(false);
    var var_4 = Struct_4(var_1, _wgslsmith_dot_vec3_u32(countOneBits(_wgslsmith_mod_vec3_u32(arg_1, arg_1)), vec3<u32>(countOneBits(arg_3), ~246u, _wgslsmith_sub_u32(19344u, u_input.a))) < ~66064u, vec3<bool>(var_3.a, -var_1.a.d >= var_1.a.d, func_2(-countOneBits(vec3<i32>(27890i, -17692i, -28405i)), Struct_4(var_1, true, vec3<bool>(false, false, false), _wgslsmith_f_op_f32(ceil(var_1.a.c))), Struct_4(Struct_2(var_1.a, var_0, var_1.c, var_1.d), select(var_1.d.x, false, false), !vec3<bool>(true, var_3.a, true), _wgslsmith_f_op_f32(round(1462f)))).a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-833f - var_1.c.x)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(var_0)))) - _wgslsmith_f_op_f32(-298f - _wgslsmith_f_op_f32(f32(-1f) * -463f)));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec4<f32>) -> bool {
    var var_0 = Struct_2(Struct_1(vec2<bool>(true, !all(vec4<bool>(true, false, false, false))), true, 572f, 0i), -577f, _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(arg_0.yw, arg_1.wx)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, 902f) + vec2<f32>(arg_1.x, -466f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, 461f) * vec2<f32>(-380f, arg_1.x))) - vec2<f32>(arg_1.x, -1749f))), vec2<bool>(true, true));
    return !select(firstLeadingBit(~var_0.a.d) == _wgslsmith_mod_i32(firstLeadingBit(var_0.a.d), var_0.a.d), !func_2(vec3<i32>(-2147483647i, 11722i, 1i), Struct_4(Struct_2(Struct_1(var_0.a.a, true, 1238f, var_0.a.d), arg_0.x, vec2<f32>(-293f, arg_1.x), var_0.d), var_0.a.a.x, vec3<bool>(false, false, var_0.d.x), 441f), Struct_4(Struct_2(Struct_1(var_0.a.a, true, arg_1.x, -1i), var_0.c.x, arg_0.yw, vec2<bool>(var_0.a.b, false)), false, vec3<bool>(var_0.a.a.x, var_0.d.x, true), -412f)).a, !(u_input.a > u_input.a));
}

fn func_1() -> Struct_4 {
    let var_0 = func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1126f, -166f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1127f))), _wgslsmith_f_op_f32(func_4(true, _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 1u, 93649u), vec3<u32>(94688u, u_input.a, 119887u)), func_2(vec3<i32>(-20825i, -3330i, 0i), Struct_4(Struct_2(Struct_1(vec2<bool>(false, true), true, -696f, 7920i), 935f, vec2<f32>(-980f, 172f), vec2<bool>(true, false)), false, vec3<bool>(false, true, true), 221f), Struct_4(Struct_2(Struct_1(vec2<bool>(false, true), false, 1960f, -21830i), -1265f, vec2<f32>(-1000f, 994f), vec2<bool>(true, true)), true, vec3<bool>(true, false, true), 572f)), max(u_input.a, 0u))))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1058f - _wgslsmith_f_op_f32(f32(-1f) * -175f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -497f))) - _wgslsmith_f_op_f32(744f + _wgslsmith_f_op_f32(-710f * 224f))), -1730f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(floor(524f))))));
    var var_1 = !select(!select(vec2<bool>(true, true), !vec2<bool>(var_0, var_0), select(vec2<bool>(var_0, false), vec2<bool>(false, false), true)), select(vec2<bool>(true, all(vec2<bool>(true, var_0))), vec2<bool>(var_0, u_input.a <= 0u), select(select(vec2<bool>(true, var_0), vec2<bool>(var_0, var_0), vec2<bool>(false, var_0)), vec2<bool>(true, true), func_2(vec3<i32>(25192i, 2147483647i, -2147483647i), Struct_4(Struct_2(Struct_1(vec2<bool>(true, true), false, 917f, 9524i), -285f, vec2<f32>(-504f, 868f), vec2<bool>(true, false)), var_0, vec3<bool>(true, var_0, true), 1612f), Struct_4(Struct_2(Struct_1(vec2<bool>(var_0, var_0), var_0, 1349f, 0i), -738f, vec2<f32>(-747f, -1530f), vec2<bool>(var_0, true)), var_0, vec3<bool>(false, var_0, var_0), -885f)).a)), !vec2<bool>(var_0, true));
    var_1 = !select(select(!(!vec2<bool>(var_0, var_0)), select(vec2<bool>(var_1.x, false), !vec2<bool>(var_0, false), !vec2<bool>(false, var_1.x)), select(vec2<bool>(var_1.x, true), vec2<bool>(false, var_0), !var_1.x)), !(!vec2<bool>(var_1.x, var_0)), var_1.x);
    var_1 = select(select(select(vec2<bool>(var_1.x, var_0), vec2<bool>(true, true), false), select(vec2<bool>(all(vec4<bool>(var_1.x, true, true, false)), var_1.x), vec2<bool>(select(var_0, true, var_1.x), true), var_0), select(select(!vec2<bool>(false, var_1.x), vec2<bool>(var_0, true), vec2<bool>(var_1.x, var_1.x)), vec2<bool>(false, var_1.x), !(!vec2<bool>(var_1.x, false)))), vec2<bool>(true, !var_1.x), !all(select(select(vec2<bool>(var_1.x, var_0), vec2<bool>(false, false), vec2<bool>(var_1.x, var_0)), !vec2<bool>(var_1.x, false), select(vec2<bool>(var_1.x, var_0), vec2<bool>(true, true), true))));
    var var_2 = select(-1i, 20049i, !var_1.x);
    return Struct_4(Struct_2(Struct_1(vec2<bool>(true, true), !(var_1.x | true), 542f, ~_wgslsmith_div_i32(5368i, -11157i)), _wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1046f, -1840f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-799f, -1196f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -836f))), !(!select(vec2<bool>(true, true), vec2<bool>(true, var_0), vec2<bool>(var_1.x, var_1.x)))), !var_0, vec3<bool>(var_0 && (true | !var_1.x), !(!func_5(vec4<f32>(786f, 806f, 184f, -1000f), vec4<f32>(1206f, -238f, 1046f, -594f))), true), _wgslsmith_f_op_f32(min(555f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-248f + 313f))))));
}

fn func_6(arg_0: Struct_4, arg_1: bool, arg_2: bool, arg_3: Struct_3) -> i32 {
    var var_0 = func_1().a.a;
    let var_1 = u_input.a;
    var_0 = arg_0.a.a;
    var_0 = arg_0.a.a;
    let var_2 = countOneBits(reverseBits(arg_0.a.a.d));
    return max(-var_2, _wgslsmith_sub_i32(_wgslsmith_mod_i32(select(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2, var_2, -2147483647i), vec3<i32>(arg_0.a.a.d, arg_0.a.a.d, 8956i)), -var_2, arg_0.b | arg_1), var_2), ~1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-2147483647i);
    let var_1 = Struct_1(vec2<bool>(true, true), !(!(-37340i == firstTrailingBit(24909i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1139f + _wgslsmith_f_op_f32(sign(1000f)))) + 1602f), 1i);
    var_0 = -var_1.d;
    var_0 = -1i;
    let var_2 = ~vec2<i32>(_wgslsmith_sub_i32(503i, _wgslsmith_clamp_i32(var_1.d, var_1.d, var_1.d) & -4153i), min(func_6(func_1(), any(var_1.a), false, func_2(vec3<i32>(48723i, 18263i, var_1.d), Struct_4(Struct_2(var_1, var_1.c, vec2<f32>(var_1.c, 821f), vec2<bool>(true, var_1.b)), false, vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x), var_1.c), Struct_4(Struct_2(Struct_1(vec2<bool>(var_1.b, var_1.b), var_1.b, var_1.c, -59882i), -1819f, vec2<f32>(var_1.c, 1326f), vec2<bool>(var_1.b, var_1.b)), var_1.a.x, vec3<bool>(var_1.a.x, var_1.a.x, false), -1815f))), min(-var_1.d, ~(-48451i))));
    var var_3 = func_1().c;
    let var_4 = func_1().a.a;
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, u_input.a, vec4<f32>(var_4.c, _wgslsmith_f_op_f32(1153f + _wgslsmith_f_op_f32(ceil(448f))), _wgslsmith_div_f32(var_1.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_4.c, -789f)), func_1().d)), _wgslsmith_div_f32(var_1.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4.c, 128f) * -672f))), reverseBits(vec3<i32>(_wgslsmith_sub_i32(var_1.d, var_4.d), var_4.d, -var_1.d)) ^ vec3<i32>(var_4.d, -26208i, -2147483647i), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(var_4.c, 763f, var_1.c, var_4.c), vec4<f32>(var_4.c, 167f, var_4.c, var_1.c))))))));
}

