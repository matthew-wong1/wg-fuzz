struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(Struct_1(vec3<u32>(42940u, 1u, 1u), 1i), Struct_1(vec3<u32>(2595u, 1u, 4294967295u), 51996i), -595f), Struct_2(Struct_1(vec3<u32>(61442u, 7372u, 57367u), -1i), Struct_1(vec3<u32>(1u, 5892u, 57866u), 35071i), -778f), Struct_2(Struct_1(vec3<u32>(5851u, 41437u, 43495u), 0i), Struct_1(vec3<u32>(4294967295u, 110866u, 1u), 2147483647i), 220f), Struct_2(Struct_1(vec3<u32>(20497u, 4294967295u, 0u), -35066i), Struct_1(vec3<u32>(90648u, 4294967295u, 18102u), 1i), -1428f), Struct_2(Struct_1(vec3<u32>(3690u, 19523u, 4294967295u), 4447i), Struct_1(vec3<u32>(0u, 0u, 16484u), 59774i), 210f), Struct_2(Struct_1(vec3<u32>(0u, 4294967295u, 0u), 2147483647i), Struct_1(vec3<u32>(0u, 0u, 1u), 2147483647i), -197f), Struct_2(Struct_1(vec3<u32>(19677u, 6226u, 62374u), -36322i), Struct_1(vec3<u32>(1u, 0u, 4294967295u), 0i), 851f), Struct_2(Struct_1(vec3<u32>(4294967295u, 0u, 45320u), -27692i), Struct_1(vec3<u32>(12410u, 1u, 16181u), i32(-2147483648)), -1197f), Struct_2(Struct_1(vec3<u32>(34508u, 56442u, 5981u), -1i), Struct_1(vec3<u32>(41595u, 20318u, 4294967295u), 0i), -341f), Struct_2(Struct_1(vec3<u32>(99386u, 1u, 0u), 6465i), Struct_1(vec3<u32>(0u, 1u, 7372u), 0i), -2463f), Struct_2(Struct_1(vec3<u32>(27022u, 34801u, 33350u), -1i), Struct_1(vec3<u32>(29051u, 0u, 4438u), -2640i), -235f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<i32>) -> vec2<bool> {
    global1 = array<Struct_2, 11>();
    global0 = firstTrailingBit(reverseBits(u_input.a)) > _wgslsmith_mod_i32(_wgslsmith_add_i32(-14372i, u_input.a), ~20904i);
    var var_0 = firstTrailingBit(vec3<i32>(u_input.a, arg_1.x, i32(-1i) * -42440i));
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(1230f, 1694f, 1314f, 964f), vec4<f32>(604f, 1678f, -1320f, -999f)), vec4<f32>(-832f, -346f, -1381f, -424f), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(641f, 1044f, -524f, -1525f))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, -687f, -1131f, 192f)))))))));
    var_0 = vec3<i32>(u_input.a, _wgslsmith_sub_i32(u_input.a, _wgslsmith_add_i32(u_input.a, var_0.x)), -_wgslsmith_dot_vec2_i32(countOneBits(arg_1.ww), _wgslsmith_div_vec2_i32(max(arg_1.xy, var_0.zx), vec2<i32>(3742i, arg_1.x))));
    return !select(vec2<bool>(true, true), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, false), true), all(vec2<bool>(true, true))), true);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>) -> f32 {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -329f) + -1393f)));
    var var_2 = vec3<i32>(1i ^ _wgslsmith_mod_i32(-u_input.a, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.b, 26169i), vec2<i32>(var_0.a.b, 2147483647i)))), -var_0.b.b, -22594i);
    var_2 = vec3<i32>(0i, reverseBits(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(1i, arg_0.b.b, -1i), vec3<i32>(var_2.x, arg_0.b.b, u_input.a), vec3<i32>(var_2.x, -92i, var_2.x) | vec3<i32>(-42277i, u_input.a, var_2.x)), firstLeadingBit(~vec3<i32>(var_2.x, -52988i, var_2.x)))), abs(_wgslsmith_dot_vec4_i32(-(~vec4<i32>(2147483647i, -2147483647i, 2147483647i, 1i)), vec4<i32>(firstLeadingBit(-56888i), -2147483647i, select(var_2.x, 2147483647i, arg_1.x), 1i))));
    let var_3 = 1970f;
    return var_3;
}

fn func_2(arg_0: vec4<u32>, arg_1: i32) -> vec3<u32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(397f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-408f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(553f))), 1564f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1065f + 177f))) * 833f));
    let var_1 = Struct_2(Struct_1(~min(arg_0.zxx, vec3<u32>(4294967295u, 4294967295u, arg_0.x)) << (~abs(arg_0.xzx) % vec3<u32>(32u)), firstLeadingBit(arg_1)), Struct_1(vec3<u32>(select(arg_0.x, firstLeadingBit(arg_0.x), true), arg_0.x, arg_0.x), -2147483647i), _wgslsmith_f_op_f32(func_4(global1[_wgslsmith_index_u32(arg_0.x, 11u)], !(!func_3(arg_0.zy, vec4<i32>(61559i, arg_1, arg_1, u_input.a))))));
    let var_2 = !(!(!vec3<bool>(true, arg_0.x < 102591u, false)));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), 567f, _wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1187f, -1580f), 316f)) + 207f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x)))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1066f, -255f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-661f, 451f))), vec2<f32>(1976f, var_1.c)))));
    return reverseBits(select(vec3<u32>(countOneBits(31093u), ~(arg_0.x ^ 10780u), _wgslsmith_mult_u32(_wgslsmith_div_u32(arg_0.x, 62562u), var_1.a.a.x)), _wgslsmith_div_vec3_u32(~select(vec3<u32>(var_1.b.a.x, 1u, 29086u), vec3<u32>(var_1.b.a.x, 37167u, 6409u), var_2), select(vec3<u32>(arg_0.x, 17139u, 1u), arg_0.yyx, var_2)), select(var_2, vec3<bool>(var_2.x, !var_2.x, any(vec4<bool>(true, false, false, var_2.x))), !var_2.x)));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    var var_0 = arg_1.b;
    var_0 = Struct_1(arg_1.b.a, -_wgslsmith_mod_i32(1i, 2147483647i));
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1203f + -977f) - _wgslsmith_f_op_f32(arg_1.c * -245f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.c + -206f), -811f), -316f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 2255f, arg_2.c) + vec3<f32>(-1000f, arg_2.c, -576f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-739f, -206f, -1126f) * vec3<f32>(arg_1.c, arg_1.c, arg_2.c))))))));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * -223f)))), var_1.x)));
    global0 = all(vec2<bool>(arg_0.x, false));
    return arg_2.a;
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 1u, 1u), ~vec3<u32>(68063u, 4294967295u, 20581u), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 5438u), vec3<u32>(7046u, 72474u, 4561u)), ~1u, ~14024u)), u_input.a), func_5(!(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false))), Struct_2(Struct_1(func_2(vec4<u32>(69654u, 0u, 4294967295u, 1u), u_input.a), ~40318i), Struct_1(~vec3<u32>(55779u, 62483u, 0u), u_input.a), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(-1770f)), any(vec3<bool>(false, true, true))))), global1[_wgslsmith_index_u32(~(~59010u), 11u)]), 362f);
    global0 = any(vec2<bool>(true, true));
    global1 = array<Struct_2, 11>();
    var var_1 = -30038i < min(var_0.b.b | (~(-2147483647i) | var_0.b.b), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.b.b, u_input.a, -25231i, var_0.a.b), vec4<i32>(var_0.b.b, -46627i, 18639i, var_0.a.b)), vec4<i32>(u_input.a, -2147483647i, -11048i, -1i) << (vec4<u32>(var_0.a.a.x, var_0.b.a.x, var_0.a.a.x, 4294967295u) % vec4<u32>(32u))), -u_input.a & var_0.a.b));
    var_1 = false;
    return global1[_wgslsmith_index_u32(min(15734u, var_0.b.a.x), 11u)];
}

fn func_6(arg_0: Struct_2, arg_1: vec2<f32>) -> Struct_1 {
    global0 = false;
    var var_0 = _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_2(arg_0.b, arg_0.a, _wgslsmith_f_op_f32(sign(304f))), vec2<bool>(any(vec2<bool>(true, false)), any(vec4<bool>(true, false, false, true))))) + -1351f), any(select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(true, false)))));
    global0 = true;
    global1 = array<Struct_2, 11>();
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c + arg_1.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-435f * arg_0.c) + 1000f));
    return Struct_1(~arg_0.b.a, -6643i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(!(!all(vec3<bool>(false, false, false))), true, true);
    global0 = true;
    var_0 = ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(34261u, 9510u), vec2<u32>(1u, 4294967295u)) ^ 19209u) <= ~(1u | _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 16743u, 0u), firstLeadingBit(vec3<u32>(0u, 4294967295u, 4294967295u))));
    var var_1 = func_6(func_1(), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-400f, -1000f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(819f, 499f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-223f, 439f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2167f, -903f), vec2<f32>(1728f, 1000f), true)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-658f, -2055f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-968f, -2315f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-674f, -796f))))));
    let var_2 = Struct_1(vec3<u32>(1u, func_1().b.a.x, abs(_wgslsmith_sub_u32(func_2(vec4<u32>(var_1.a.x, 88011u, var_1.a.x, 62539u), 0i).x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.x, 4294967295u, 52480u, 4294967295u), vec4<u32>(0u, 0u, 1u, var_1.a.x))))), reverseBits(max(~(i32(-1i) * -2147483647i), var_1.b)));
    let var_3 = vec4<bool>((!(var_2.a.x != var_1.a.x) | true) != all(vec3<bool>(true, true, true)), true, !all(vec2<bool>(true, true)), any(select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(false, true)), true), true)));
    let var_4 = select(vec3<bool>(any(var_3.wz), !(!all(vec2<bool>(true, true))), var_3.x), !vec3<bool>(!any(var_3), var_3.x, func_3(vec2<u32>(38579u, 489u), vec4<i32>(var_1.b, u_input.a, 2842i, -1i)).x && all(var_3)), var_3.zyx);
    global0 = u_input.a > _wgslsmith_div_i32(var_2.b, 61586i);
    var var_5 = any(select(vec4<bool>(func_3(vec2<u32>(110301u, var_2.a.x), abs(vec4<i32>(var_2.b, 2147483647i, -1i, var_2.b))).x, var_4.x, !any(vec2<bool>(true, false)), true), !select(var_3, vec4<bool>(false, false, var_4.x, false), var_4.x), !vec4<bool>(true, true, true, any(vec4<bool>(false, true, true, var_4.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, vec3<i32>(abs(74889i ^ _wgslsmith_mult_i32(-6987i, u_input.a)), u_input.a, _wgslsmith_div_i32(func_5(vec2<bool>(var_4.x, var_4.x), Struct_2(Struct_1(vec3<u32>(5116u, var_1.a.x, var_1.a.x), var_2.b), Struct_1(vec3<u32>(0u, var_1.a.x, 70727u), var_1.b), 2044f), func_1()).b, -2147483647i)), firstLeadingBit(~25365u));
}

