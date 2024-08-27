struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: vec3<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
}

struct Struct_5 {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 29> = array<vec3<bool>, 29>(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false));

var<private> global1: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(i32(-2147483648), Struct_1(10915i), Struct_1(1i), Struct_1(6628i), Struct_1(2147483647i)), Struct_2(6336i, Struct_1(12126i), Struct_1(32879i), Struct_1(1i), Struct_1(-1i)), Struct_2(54904i, Struct_1(6789i), Struct_1(19301i), Struct_1(2147483647i), Struct_1(15861i)), Struct_2(2147483647i, Struct_1(-12180i), Struct_1(2147483647i), Struct_1(2147483647i), Struct_1(752i)), Struct_2(i32(-2147483648), Struct_1(1i), Struct_1(-1i), Struct_1(0i), Struct_1(-53065i)), Struct_2(-1i, Struct_1(1i), Struct_1(32730i), Struct_1(6907i), Struct_1(2147483647i)), Struct_2(-21641i, Struct_1(2147483647i), Struct_1(i32(-2147483648)), Struct_1(0i), Struct_1(1i)), Struct_2(-63612i, Struct_1(-52205i), Struct_1(25860i), Struct_1(i32(-2147483648)), Struct_1(-10863i)), Struct_2(0i, Struct_1(-53114i), Struct_1(11626i), Struct_1(-1i), Struct_1(0i)), Struct_2(-15340i, Struct_1(-1i), Struct_1(-15892i), Struct_1(-14232i), Struct_1(-47231i)), Struct_2(1i, Struct_1(21317i), Struct_1(-243i), Struct_1(i32(-2147483648)), Struct_1(31926i)), Struct_2(73298i, Struct_1(3910i), Struct_1(-49174i), Struct_1(0i), Struct_1(2147483647i)), Struct_2(1i, Struct_1(-1i), Struct_1(i32(-2147483648)), Struct_1(1i), Struct_1(2147483647i)), Struct_2(-1i, Struct_1(-53510i), Struct_1(0i), Struct_1(1i), Struct_1(10403i)), Struct_2(0i, Struct_1(-13383i), Struct_1(1386i), Struct_1(1i), Struct_1(-1i)), Struct_2(-31659i, Struct_1(i32(-2147483648)), Struct_1(80435i), Struct_1(0i), Struct_1(0i)), Struct_2(2320i, Struct_1(14864i), Struct_1(1i), Struct_1(24592i), Struct_1(10348i)), Struct_2(1i, Struct_1(16387i), Struct_1(-1i), Struct_1(-1i), Struct_1(-21612i)), Struct_2(2147483647i, Struct_1(2147483647i), Struct_1(32535i), Struct_1(-20995i), Struct_1(i32(-2147483648))), Struct_2(1i, Struct_1(46718i), Struct_1(2147483647i), Struct_1(i32(-2147483648)), Struct_1(37902i)), Struct_2(32862i, Struct_1(-1i), Struct_1(31169i), Struct_1(2147483647i), Struct_1(2147483647i)), Struct_2(0i, Struct_1(1i), Struct_1(-5002i), Struct_1(15045i), Struct_1(-7039i)), Struct_2(i32(-2147483648), Struct_1(2245i), Struct_1(-1i), Struct_1(36635i), Struct_1(1i)), Struct_2(-21535i, Struct_1(i32(-2147483648)), Struct_1(13932i), Struct_1(0i), Struct_1(-55764i)), Struct_2(2147483647i, Struct_1(i32(-2147483648)), Struct_1(-15707i), Struct_1(0i), Struct_1(i32(-2147483648))), Struct_2(41113i, Struct_1(1i), Struct_1(1i), Struct_1(2147483647i), Struct_1(1i)), Struct_2(-11263i, Struct_1(-20649i), Struct_1(33238i), Struct_1(i32(-2147483648)), Struct_1(-95925i)), Struct_2(-1i, Struct_1(14042i), Struct_1(8786i), Struct_1(1i), Struct_1(-10590i)), Struct_2(14115i, Struct_1(63548i), Struct_1(-1i), Struct_1(-1i), Struct_1(57594i)), Struct_2(0i, Struct_1(10845i), Struct_1(0i), Struct_1(2147483647i), Struct_1(26404i)), Struct_2(-1i, Struct_1(41893i), Struct_1(73486i), Struct_1(1i), Struct_1(0i)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32) -> vec3<bool> {
    return !select(!(!global0[_wgslsmith_index_u32(u_input.a.x, 29u)]), vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(~firstTrailingBit(_wgslsmith_dot_vec3_u32(u_input.a.www, vec3<u32>(u_input.a.x, 2976u, 53109u))), 29u)]);
}

fn func_1(arg_0: Struct_4, arg_1: Struct_5) -> Struct_1 {
    global1 = array<Struct_2, 31>();
    global1 = array<Struct_2, 31>();
    let var_0 = select(select(func_2(-2147483647i), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, 15913u) | ~arg_1.b.x, 29u)], false), vec3<bool>(true, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d) + _wgslsmith_f_op_f32(floor(1790f))) <= _wgslsmith_f_op_f32(-arg_1.d)), true);
    let var_1 = -4219i;
    global1 = array<Struct_2, 31>();
    return arg_0.a.c;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_5, arg_2: vec4<u32>) -> i32 {
    var var_0 = !(!vec3<bool>(!all(vec3<bool>(false, true, true)), !all(global0[_wgslsmith_index_u32(4294967295u, 29u)]), all(vec4<bool>(false, true, false, false))));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d, _wgslsmith_f_op_f32(step(arg_1.d, 144f)), _wgslsmith_f_op_f32(-arg_1.d), arg_1.d) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.d, -820f, arg_1.d, 188f))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1067f, arg_1.d, arg_1.d, -211f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.d, -376f, arg_1.d, arg_1.d), vec4<f32>(684f, 1000f, arg_1.d, 1829f), var_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.d, arg_1.d, arg_1.d, -349f)))), vec4<bool>(var_0.x, !var_0.x, true, true)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1273f, _wgslsmith_f_op_f32(arg_1.d + _wgslsmith_f_op_f32(trunc(arg_1.d))), _wgslsmith_f_op_f32(-1490f * arg_1.d), -1553f) + vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(432f)), _wgslsmith_f_op_f32(223f * -777f), var_0.x)), arg_1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d) * _wgslsmith_f_op_f32(select(arg_1.d, -1036f, var_0.x))))));
    let var_2 = func_1(Struct_4(Struct_2(arg_1.a, func_1(Struct_4(Struct_2(arg_0.a, arg_0, arg_0, arg_0, Struct_1(arg_1.a)), arg_0.a), arg_1), Struct_1(~arg_1.a), func_1(Struct_4(Struct_2(-1i, arg_0, arg_0, arg_0, Struct_1(2147483647i)), 0i), Struct_5(arg_0.a, vec4<u32>(arg_2.x, 0u, 3166u, 0u), -1i, arg_1.d)), Struct_1(arg_1.c)), -35312i), Struct_5(_wgslsmith_dot_vec2_i32(reverseBits(min(vec2<i32>(arg_1.a, arg_1.c), vec2<i32>(-7948i, arg_1.c))), abs(abs(vec2<i32>(-20509i, -1i)))), ~vec4<u32>(_wgslsmith_dot_vec4_u32(arg_2, vec4<u32>(arg_1.b.x, arg_1.b.x, u_input.a.x, arg_2.x)), _wgslsmith_add_u32(1u, arg_2.x), 0u, ~arg_2.x), countOneBits(_wgslsmith_clamp_i32(reverseBits(-1i), _wgslsmith_sub_i32(arg_0.a, arg_0.a), countOneBits(-2147483647i))), -916f));
    global0 = array<vec3<bool>, 29>();
    var var_3 = vec3<i32>(2147483647i, arg_1.a, -firstTrailingBit(-21697i) | ~firstTrailingBit(-var_2.a));
    return firstLeadingBit(var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(func_3(func_1(Struct_4(global1[_wgslsmith_index_u32(u_input.a.x, 31u)], 2147483647i), Struct_5(1i, vec4<u32>(1u, 0u, 23584u, 0u), -4684i, 1889f)), Struct_5(_wgslsmith_div_i32(1i, 2147483647i), max(vec4<u32>(u_input.a.x, 17718u, u_input.a.x, u_input.a.x), vec4<u32>(16270u, u_input.a.x, u_input.a.x, u_input.a.x)), 24402i, _wgslsmith_f_op_f32(abs(797f))), abs(vec4<u32>(u_input.a.x, u_input.a.x, 12833u, 62821u))) | _wgslsmith_add_i32(-46165i, ~1i), ~vec4<u32>(abs(~1u), 1u, ~_wgslsmith_clamp_u32(1u, 72554u, u_input.a.x), 4294967295u), 53799i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -233f) + _wgslsmith_f_op_f32(125f * _wgslsmith_f_op_f32(1305f - 1000f))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-280f)))))));
    let var_1 = ~(-25635i | (var_0.a & ~(~1i)));
    var var_2 = _wgslsmith_div_u32(~(~_wgslsmith_sub_u32(var_0.b.x, ~u_input.a.x)), ~(~4294967295u));
    let var_3 = any(!vec3<bool>(false, !any(vec3<bool>(false, true, false)), false));
    let var_4 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-396f, _wgslsmith_f_op_f32(f32(-1f) * -305f), false)), -312f, -879f, 1423f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1019f, var_0.d, -764f, -316f))))))));
    global0 = array<vec3<bool>, 29>();
    let var_5 = !var_3 && select(var_3, var_3 & var_3, !(-190f == _wgslsmith_f_op_f32(ceil(var_4.x))));
    global1 = array<Struct_2, 31>();
    var_0 = Struct_5(~(i32(-1i) * -67580i), vec4<u32>(abs(var_0.b.x), 11703u, _wgslsmith_add_u32(abs(~var_0.b.x), var_0.b.x), 69333u), var_0.a, _wgslsmith_div_f32(-438f, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-var_0.d))));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_add_vec3_i32(vec3<i32>(func_3(Struct_1(43487i), Struct_5(0i, var_0.b, -2147483647i, var_4.x), var_0.b), 2147483647i, var_1), countOneBits(-vec3<i32>(-1i, 0i, var_1))), u_input.a.zyy, u_input.a.xy, _wgslsmith_f_op_f32(select(-610f, var_4.x, all(!(!vec2<bool>(var_3, false))))));
}

