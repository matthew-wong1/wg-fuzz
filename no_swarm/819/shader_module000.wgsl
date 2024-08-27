struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec4<i32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<f32>,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec3<u32>,
    d: i32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: i32, arg_3: vec4<f32>) -> u32 {
    let var_0 = !(-1764f <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(291f + arg_3.x)))));
    let var_1 = _wgslsmith_f_op_f32(-1f);
    return select(u_input.a, ~u_input.b, any(vec2<bool>(all(!vec2<bool>(false, var_0)), any(select(vec4<bool>(true, true, var_0, arg_1.b.x), vec4<bool>(arg_1.b.x, var_0, false, arg_1.b.x), var_0)))));
}

fn func_2() -> vec3<bool> {
    let var_0 = vec2<u32>(abs(~(110310u & u_input.c.x)) << (func_3(select(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 1u, 1105u, u_input.c.x), vec4<u32>(81495u, u_input.c.x, u_input.c.x, u_input.b)), vec4<u32>(u_input.b, u_input.a, u_input.a, u_input.c.x), true), Struct_1(-1i, select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(611f, 1176f))), 3894i, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(141f, -824f, 654f, -731f))))) % 32u), 74u);
    let var_1 = all(select(select(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)), select(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, all(vec3<bool>(false, true, false))), !select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), true), _wgslsmith_f_op_f32(trunc(-394f)) > 779f)));
    let var_2 = select(_wgslsmith_clamp_i32(-51727i, ~0i << (var_0.x % 32u), max(i32(-1i) * -9616i, 1i)), _wgslsmith_sub_i32(-1i, 1i), all(select(select(vec2<bool>(true, var_1), vec2<bool>(var_1, var_1), true), vec2<bool>(var_1, false), vec2<bool>(true, true)))) < min(1i ^ (1i >> (var_0.x % 32u)), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(110844i, 1161i), vec2<i32>(77228i, -2147483647i), vec2<i32>(-26425i, 39047i)), -vec2<i32>(-48736i, -13006i)), countOneBits(-1i)));
    let var_3 = Struct_3(Struct_1(35688i, vec3<bool>(true, true, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(25479u, var_0.x, 1u)) <= ~34983u), max(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-21537i, 0i), vec2<i32>(23397i, 1i)), max(-2147483647i, 67628i), abs(0i), _wgslsmith_clamp_i32(-2147483647i, 1i, 33795i)), vec4<i32>(select(-2147483647i, 0i, var_1), firstLeadingBit(25566i), -40104i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -27596i, 0i), vec3<i32>(40753i, -48809i, -32094i)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1881f, 1000f), vec2<f32>(-113f, -1000f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(883f, -748f) + vec2<f32>(-842f, -402f)), 0u != u_input.a)))));
    let var_4 = Struct_2(Struct_1(~(-reverseBits(20096i)), var_3.a.b, -_wgslsmith_mod_vec4_i32(vec4<i32>(var_3.a.c.x, var_3.a.a, var_3.a.a, -5909i), var_3.a.c) ^ ~vec4<i32>(var_3.a.a, var_3.a.a, -64742i, 25958i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(-700f)), -2281f))), var_3.a.d.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.d.x, 226f, var_3.a.d.x, var_3.a.d.x)))) * vec4<f32>(_wgslsmith_f_op_f32(step(282f, 1789f)), _wgslsmith_f_op_f32(var_3.a.d.x * -1770f), -125f, _wgslsmith_f_op_f32(839f - var_3.a.d.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a.d.x, var_3.a.d.x, -720f, -1000f) * vec4<f32>(var_3.a.d.x, var_3.a.d.x, var_3.a.d.x, var_3.a.d.x))) - vec4<f32>(212f, _wgslsmith_f_op_f32(select(var_3.a.d.x, 391f, false)), _wgslsmith_f_op_f32(exp2(var_3.a.d.x)), _wgslsmith_f_op_f32(floor(var_3.a.d.x))))), 1276f);
    return !(!(!vec3<bool>(var_4.a.a > -2147483647i, !var_3.a.b.x, true)));
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = vec3<f32>(arg_0, -369f, -561f);
    var var_1 = i32(-1i) * -1i;
    var_1 = -1i;
    var_1 = 1i;
    let var_2 = 30118i;
    return Struct_1(~(1i >> (_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.a, 41483u)), _wgslsmith_mod_vec2_u32(vec2<u32>(30057u, 4294967295u), u_input.c.yy)) % 32u)), !(!select(func_2(), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), -(~reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2, var_2, var_2, var_2), vec4<i32>(var_2, 53879i, -18340i, var_2), vec4<i32>(var_2, 42095i, -19008i, -31784i)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.xz) - vec2<f32>(1573f, -956f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(885f, var_0.x)))));
}

fn func_4(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = vec4<bool>((arg_2.b.x || arg_2.b.x) && !(!(12617i >= arg_2.c.x)), arg_2.b.x, false, arg_2.b.x);
    let var_1 = vec4<i32>(arg_2.a, arg_2.a, -firstLeadingBit(0i), arg_2.a);
    var_0 = !(!select(!(!vec4<bool>(false, arg_0, true, var_0.x)), vec4<bool>(select(true, arg_2.b.x, false), all(arg_2.b), arg_0, true), !vec4<bool>(arg_0, var_0.x, arg_0, false)));
    let var_2 = Struct_2(func_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(972f - -1067f), _wgslsmith_f_op_f32(max(380f, arg_2.d.x))) * arg_2.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(arg_2.d.x, 529f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.d.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(arg_2.d.x + -1436f), _wgslsmith_f_op_f32(-1091f - arg_2.d.x), 259f, _wgslsmith_f_op_f32(-arg_2.d.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1301f, arg_2.d.x, arg_2.d.x, 926f)), vec4<f32>(arg_2.d.x, -173f, -428f, 360f), !var_0.x))))), arg_2.d.x);
    let var_3 = 0u;
    return !arg_2.b;
}

fn func_5(arg_0: vec3<bool>) -> vec3<bool> {
    var var_0 = -min(vec2<i32>(-1i) * -min(vec2<i32>(-31951i, 3984i), vec2<i32>(-17105i, 2147483647i)), _wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i), -firstTrailingBit(vec2<i32>(1i, 0i))));
    var var_1 = ~abs(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(4450i, var_0.x, var_0.x), vec3<i32>(18377i, -2147483647i, var_0.x), vec3<i32>(4753i, 0i, var_0.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, -1i, -19892i), vec3<i32>(0i, -31928i, var_0.x))), -(vec3<i32>(-3454i, var_0.x, 1i) << (u_input.c % vec3<u32>(32u)))));
    var var_2 = Struct_4(Struct_3(func_1(_wgslsmith_f_op_f32(-635f * _wgslsmith_f_op_f32(1909f + -1200f)))), Struct_2(Struct_1(var_0.x, !arg_0, _wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(-1i, 0i, 1i, var_0.x)), vec4<i32>(7183i, var_0.x, 22739i, 1i) | vec4<i32>(var_1.x, 0i, var_1.x, var_0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-259f, -279f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-381f * 560f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(1080f, _wgslsmith_f_op_f32(floor(-570f))))))), abs(firstLeadingBit(_wgslsmith_mult_vec3_u32(u_input.c, ~u_input.c))), -1841i, vec3<f32>(1029f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-606f + -1098f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(649f, 1722f)) + _wgslsmith_f_op_f32(f32(-1f) * -309f)))));
    var_2 = Struct_4(var_2.a, Struct_2(func_1(_wgslsmith_f_op_f32(ceil(var_2.b.d))), -925f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.b.c)), _wgslsmith_f_op_f32(abs(202f))), ~max(abs(vec3<u32>(4294967295u, 19473u, u_input.c.x)), abs(abs(var_2.c))), min(var_0.x, var_2.a.a.c.x) << (select(_wgslsmith_dot_vec2_u32(u_input.c.zx, _wgslsmith_add_vec2_u32(var_2.c.zy, vec2<u32>(var_2.c.x, var_2.c.x))), 13553u, true) % 32u), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.b.c.zzy) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.e * vec3<f32>(var_2.e.x, var_2.a.a.d.x, var_2.b.b)) - var_2.e)))));
    var_0 = (vec2<i32>(1i, _wgslsmith_add_i32(var_2.a.a.a, 22447i)) >> (var_2.c.xx % vec2<u32>(32u))) ^ vec2<i32>(var_0.x, _wgslsmith_clamp_i32(var_0.x, -16343i, -2147483647i));
    return var_2.b.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(1i, func_5(func_4(all(vec2<bool>(false, false)), ~vec4<u32>(4516u, 66506u, u_input.c.x, 47633u), func_1(794f))), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(max(abs(vec4<i32>(2147483647i, 42547i, -4034i, 55844i)), -vec4<i32>(0i, 2147483647i, 1i, 18032i)), ~(vec4<i32>(7601i, -2147483647i, -2147483647i, -2147483647i) >> (vec4<u32>(u_input.b, 1u, 4294967295u, u_input.a) % vec4<u32>(32u)))), vec4<i32>(-_wgslsmith_mult_i32(-1i, -1i), 0i, 1i, select(abs(47177i), 1i, false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-682f, 1158f)))))) * vec2<f32>(_wgslsmith_f_op_f32(floor(483f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(1245f)))))));
    var var_1 = u_input.c.x;
    var var_2 = select((-_wgslsmith_add_vec3_i32(var_0.c.wxz, var_0.c.wyw) << (u_input.c % vec3<u32>(32u))) ^ ~var_0.c.xxw, _wgslsmith_mod_vec3_i32(firstTrailingBit(_wgslsmith_sub_vec3_i32(~vec3<i32>(-2147483647i, var_0.a, var_0.a), -var_0.c.xyz)), var_0.c.ywx), var_0.b.x);
    var var_3 = var_0;
    var_2 = -_wgslsmith_sub_vec3_i32(max(vec3<i32>(var_2.x, 2147483647i, var_3.a), func_1(var_3.d.x).c.zzx), reverseBits(-_wgslsmith_mult_vec3_i32(var_3.c.wxy, vec3<i32>(var_0.a, var_3.a, -2147483647i))));
    var var_4 = var_3.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(0u, u_input.c.zx & (~(u_input.c.zz | u_input.c.zz) & vec2<u32>(u_input.a, countOneBits(u_input.a))), -vec2<i32>(var_2.x << (_wgslsmith_mult_u32(u_input.b, u_input.b) % 32u), var_2.x ^ firstLeadingBit(var_3.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1219f, var_3.d.x, var_0.d.x), vec3<f32>(-1193f, -639f, 151f)) + vec3<f32>(var_0.d.x, -708f, 607f))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(var_3.d.x, var_0.d.x, var_0.d.x), vec3<f32>(562f, -306f, var_0.d.x))))));
}

