struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec4<bool>(true, false, false, true), true), Struct_1(vec4<bool>(true, true, true, true), true), Struct_1(vec4<bool>(true, false, true, false), true), Struct_1(vec4<bool>(false, true, false, false), true), Struct_1(vec4<bool>(true, true, true, false), true));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: vec2<bool>) -> f32 {
    let var_0 = _wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u) >> (vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(18974u, 30707u), vec2<u32>(2556u, 4150u)), vec2<u32>(0u, 1u)), ~firstTrailingBit(7459u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(17760u, 50886u, 17913u)), 34325u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, 4294967295u, 26695u, 4294967295u), vec4<u32>(37469u, 29119u, 61716u, 43305u), vec4<u32>(1u, 1u, 1u, 1u)), ~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), ~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 40298u), vec2<u32>(58908u, 1u)), ~124679u, reverseBits(4294967295u), min(0u, 13335u))));
    var var_1 = arg_2.x;
    var var_2 = !all(select(!arg_2, !vec2<bool>(arg_2.x, arg_0), arg_0)) != any(arg_2);
    var var_3 = 4294967295u;
    global0 = array<Struct_1, 5>();
    return _wgslsmith_f_op_f32(-arg_1.x);
}

fn func_2(arg_0: u32) -> Struct_4 {
    var var_0 = Struct_5(-13903i);
    let var_1 = Struct_4(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -649f), _wgslsmith_f_op_f32(func_3(true, _wgslsmith_f_op_vec2_f32(vec2<f32>(1562f, -2193f) + vec2<f32>(1000f, -208f)), select(vec2<bool>(true, false), vec2<bool>(false, false), true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(534f * 430f) + -819f) - _wgslsmith_f_op_f32(func_3(true, vec2<f32>(-1802f, -1058f), select(vec2<bool>(false, true), vec2<bool>(false, true), true))))));
    let var_2 = global0[_wgslsmith_index_u32(arg_0, 5u)];
    global0 = array<Struct_1, 5>();
    let var_3 = u_input.a;
    return Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(sign(-1000f))) * _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1070f * var_1.a), 1289f), var_1.a, true || any(vec3<bool>(true, false, var_2.a.x))))));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: vec3<i32>) -> f32 {
    let var_0 = _wgslsmith_dot_vec2_u32(min(~abs(vec2<u32>(4712u, 24644u)), min(~vec2<u32>(47292u, 1u), min(vec2<u32>(1u, 1u), vec2<u32>(0u, 26633u)))) << (((~vec2<u32>(45217u, 17233u) & select(vec2<u32>(58757u, 4599u), vec2<u32>(0u, 4294967295u), vec2<bool>(false, true))) | abs(~vec2<u32>(50261u, 51550u))) % vec2<u32>(32u)), vec2<u32>(~1u, ~max(~114493u, firstLeadingBit(0u))));
    var var_1 = Struct_3(~_wgslsmith_dot_vec2_i32(~(-vec2<i32>(arg_2.x, -9770i)), -vec2<i32>(2147483647i, u_input.a) | arg_2.zy), true, Struct_1(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), all(vec3<bool>(true, true, false))), !(any(vec2<bool>(false, true)) | true)), -428f);
    let var_2 = vec3<i32>(_wgslsmith_mod_i32(2147483647i >> (_wgslsmith_div_u32(var_0 >> (1u % 32u), var_0) % 32u), arg_2.x), 0i, firstTrailingBit(10213i));
    var var_3 = _wgslsmith_clamp_i32(-2147483647i, ~(~(-28046i)), u_input.a);
    var_3 = -(~(-17718i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_0), firstLeadingBit(vec2<u32>(4294967295u, var_0))) % 32u)));
    return -2156f;
}

fn func_5(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: vec4<f32>) -> Struct_4 {
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    var var_0 = ~_wgslsmith_sub_u32(_wgslsmith_add_u32(~21963u, 1u), abs(_wgslsmith_mod_u32(_wgslsmith_add_u32(138270u, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(19579u, 4294967295u), vec2<u32>(65125u, 4294967295u)))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(arg_2.x - 528f), _wgslsmith_f_op_f32(315f - -354f), Struct_1(select(vec4<bool>(false, true, true, true), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), true), true), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_2.x, arg_0.x)) * arg_2.wzx) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-arg_2.xyx))), _wgslsmith_f_op_vec3_f32(-arg_2.zyy)))));
    let var_2 = !select(var_1.c.a.yxw, !select(var_1.c.a.wzy, vec3<bool>(true, var_1.c.a.x, var_1.c.b), var_1.c.b), var_1.c.a.zzy);
    return Struct_4(_wgslsmith_f_op_f32(-1166f - var_1.b));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var_0 = func_5(vec4<f32>(309f, _wgslsmith_f_op_f32(select(var_0.a, var_0.a, false)), var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -243f)), -vec3<i32>(u_input.a, select(-u_input.a, 1i, var_0.a < var_0.a), _wgslsmith_mult_i32(-23699i, _wgslsmith_div_i32(u_input.a, u_input.a))), vec4<f32>(_wgslsmith_div_f32(-888f, _wgslsmith_f_op_f32(select(var_0.a, -406f, u_input.a >= u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_2(40256u), vec4<f32>(var_0.a, 924f, var_0.a, 1294f), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 1i, u_input.a), vec3<i32>(17780i, 0i, -1i)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a * var_0.a) + 2188f)), var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(var_0.a, var_0.a, true)), _wgslsmith_f_op_f32(func_3(false, vec2<f32>(-805f, var_0.a), vec2<bool>(false, false))))) - -567f)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - _wgslsmith_f_op_f32(-var_0.a));
    var_0 = func_5(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a, -843f, var_0.a, var_0.a), vec4<f32>(-1939f, var_0.a, var_0.a, var_0.a)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_4(168f), vec4<f32>(-776f, -558f, -2368f, -470f), vec3<i32>(u_input.a, u_input.a, u_input.a))) - -1127f), var_0.a, var_0.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a)))))), reverseBits(max(vec3<i32>(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -14274i), vec2<i32>(2147483647i, u_input.a)), -2147483647i), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 9339i), vec2<i32>(u_input.a, u_input.a)), 1i, u_input.a))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a, var_0.a, 570f, var_0.a), vec4<f32>(-1551f, -680f, var_0.a, 489f), vec4<bool>(true, false, true, false))))), vec4<f32>(_wgslsmith_div_f32(var_0.a, var_0.a), _wgslsmith_f_op_f32(func_3(-1i < u_input.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(446f, 878f)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-418f, -985f, true))), _wgslsmith_f_op_f32(f32(-1f) * -1295f))));
    var var_2 = firstTrailingBit(_wgslsmith_mod_i32(~0i, 2147483647i));
    return global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(4294967295u, 0u, 51087u, 20906u)), abs(vec4<u32>(1u, 1u, 1u, 1u))), abs(firstLeadingBit(22504u))) >> (1u % 32u), 5u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(u_input.a >> (~34464u % 32u));
    let var_1 = any(vec4<bool>(select(select(u_input.a, var_0, true), 1i, true) >= (var_0 & (i32(-1i) * -2147483647i)), true, true, false));
    var var_2 = ~_wgslsmith_mod_vec4_u32(~(vec4<u32>(0u, 47140u, 1u, 1u) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(23649u, 0u, 66142u, 36443u), vec4<u32>(16101u, 1u, 0u, 4294967295u), vec4<u32>(8971u, 10569u, 17710u, 53497u))), vec4<u32>(1u, _wgslsmith_mult_u32(1u, _wgslsmith_div_u32(7578u, 10600u)), ~1u, ~(1u >> (0u % 32u))));
    var_2 = _wgslsmith_mod_vec4_u32(~(~vec4<u32>(var_2.x, ~40549u, var_2.x, var_2.x | var_2.x)), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(firstLeadingBit(~vec4<u32>(4294967295u, var_2.x, var_2.x, var_2.x)), ~(~vec4<u32>(var_2.x, var_2.x, 76980u, var_2.x))), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.x, 27786u, 4294967295u, var_2.x), vec4<u32>(var_2.x, 0u, 10908u, 22927u)))));
    global0 = array<Struct_1, 5>();
    let var_3 = 1603f;
    let var_4 = Struct_3(firstTrailingBit(48778i) << (_wgslsmith_div_u32(select(var_2.x, 4294967295u, !var_1), var_2.x) % 32u), all(vec3<bool>(false, true && var_1, true)), func_1(), _wgslsmith_f_op_f32(f32(-1f) * -687f));
    global0 = array<Struct_1, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(-10643i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) * -445f));
}

