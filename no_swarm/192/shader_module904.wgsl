struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<u32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 17> = array<vec3<u32>, 17>(vec3<u32>(4294967295u, 64457u, 49622u), vec3<u32>(3593u, 1u, 0u), vec3<u32>(72578u, 1u, 30327u), vec3<u32>(626u, 1u, 17459u), vec3<u32>(4294967295u, 0u, 55505u), vec3<u32>(4294967295u, 9648u, 5822u), vec3<u32>(43163u, 4294967295u, 20059u), vec3<u32>(4294967295u, 1u, 8797u), vec3<u32>(3605u, 4294967295u, 112071u), vec3<u32>(0u, 26415u, 0u), vec3<u32>(1u, 0u, 5388u), vec3<u32>(100745u, 31633u, 1u), vec3<u32>(4294967295u, 427u, 4294967295u), vec3<u32>(19614u, 4294967295u, 52569u), vec3<u32>(77256u, 13249u, 1u), vec3<u32>(0u, 87802u, 4294967295u), vec3<u32>(1u, 21763u, 28618u));

var<private> global1: vec3<i32>;

var<private> global2: i32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: i32, arg_3: Struct_3) -> i32 {
    let var_0 = vec2<i32>(_wgslsmith_dot_vec2_i32(abs(_wgslsmith_div_vec2_i32(select(global1.xx, vec2<i32>(arg_0, arg_0), true), firstTrailingBit(global1.xz))), global1.xy), ~firstTrailingBit(~1i));
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_f32(sign(1013f));
    var var_3 = countOneBits(~_wgslsmith_clamp_u32(~min(6985u, 4294967295u), arg_1, ~arg_3.a.c.x));
    var var_4 = arg_3.a;
    return ~arg_2;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<f32>) -> Struct_3 {
    global2 = func_3(max(-8106i, 38484i), u_input.b, select(-countOneBits(-global1.x), ~firstLeadingBit(global1.x), true), Struct_3(Struct_1(true, _wgslsmith_f_op_f32(sign(-1000f)), ~vec4<u32>(97292u, 4294967295u, 1u, 0u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_1, vec3<f32>(2249f, -203f, -403f))))), Struct_2(Struct_1(-48186i > arg_0.x, _wgslsmith_f_op_f32(exp2(arg_1.x)), reverseBits(vec4<u32>(709u, 9516u, u_input.a, 4294967295u)), _wgslsmith_f_op_vec3_f32(arg_1 + arg_1)))));
    let var_0 = -(~select(select(vec3<i32>(global1.x, arg_0.x, -2147483647i), arg_0.xyy, true), arg_0.yzy, vec3<bool>(true, true, false)));
    global2 = ~_wgslsmith_sub_i32(countOneBits(firstTrailingBit(global1.x)) >> (_wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.a, 82187u, 0u), u_input.a) % 32u), var_0.x);
    var var_1 = vec3<u32>(u_input.b, 1u, ~u_input.b);
    let var_2 = all(!(!select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), select(false, true, true))));
    return Struct_3(Struct_1(false, 1510f, ~max(reverseBits(vec4<u32>(var_1.x, 101272u, u_input.a, 4294967295u)), vec4<u32>(u_input.a, 1u, var_1.x, u_input.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.x, arg_1.x, 318f), arg_1, vec3<bool>(true, true, var_2)))))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-arg_1.x) <= -1000f, -1248f, ~abs(vec4<u32>(var_1.x, var_1.x, 114610u, 4294967295u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1 + vec3<f32>(981f, arg_1.x, arg_1.x)), vec3<f32>(-1597f, -549f, -1196f)))));
}

fn func_4(arg_0: f32, arg_1: Struct_3) -> vec2<f32> {
    global0 = array<vec3<u32>, 17>();
    var var_0 = arg_1.a;
    global2 = _wgslsmith_dot_vec2_i32(~_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(global1.x, global1.x), -1i), -max(vec2<i32>(global1.x, -1473i), vec2<i32>(0i, -2147483647i))), vec2<i32>(-29803i, global1.x));
    var var_1 = arg_1;
    var var_2 = vec3<bool>(var_0.a, var_1.b.a.a, !arg_1.a.a);
    return var_1.b.a.d.xx;
}

fn func_5(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_3) -> Struct_1 {
    global0 = array<vec3<u32>, 17>();
    var var_0 = arg_0 & true;
    let var_1 = vec2<i32>(-(i32(-1i) * -(~58738i)), _wgslsmith_div_i32(~(~(global1.x & -1i)), 1i));
    var var_2 = vec3<u32>(max(_wgslsmith_div_u32(~1u, arg_2.a.c.x), abs(abs(arg_2.a.c.x) >> ((9319u << (arg_2.b.a.c.x % 32u)) % 32u))), abs(86068u), 4294967295u);
    return arg_2.b.a;
}

fn func_6(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_2 {
    global0 = array<vec3<u32>, 17>();
    let var_0 = Struct_4(_wgslsmith_add_u32(u_input.a, arg_2.c.x));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -182f);
    let var_2 = Struct_3(Struct_1(arg_2.a, -1625f, _wgslsmith_div_vec4_u32(arg_2.c, ~vec4<u32>(0u, u_input.b, var_0.a, 35068u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0))), func_2(_wgslsmith_sub_vec4_i32(firstTrailingBit(-vec4<i32>(global1.x, 0i, global1.x, 35586i)), vec4<i32>(30669i, select(global1.x, global1.x, true), global1.x, global1.x)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), 853f, 412f), vec3<f32>(_wgslsmith_f_op_f32(arg_0.x * 1475f), _wgslsmith_f_op_f32(-arg_1.x), 1649f)))).b);
    var var_3 = Struct_1(!any(vec3<bool>(false, true, false)) && var_2.b.a.a, 1370f, _wgslsmith_mult_vec4_u32(arg_2.c, abs(vec4<u32>(var_2.a.c.x, ~var_0.a, u_input.a, var_0.a))), vec3<f32>(arg_1.x, var_2.b.a.d.x, var_2.b.a.d.x));
    return func_2(reverseBits(firstTrailingBit(vec4<i32>(0i, reverseBits(global1.x), firstTrailingBit(0i), select(global1.x, -2147483647i, var_2.b.a.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.d))).b;
}

fn func_1() -> f32 {
    let var_0 = func_6(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-917f, -506f, 1000f)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1200f, 1430f, -219f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-972f, -158f, 1000f)), vec3<bool>(true, true, false))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(563f, 1133f, 958f, -736f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-522f, -1432f, 490f, 596f)), true)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, 328f, 366f, 755f))) - vec4<f32>(_wgslsmith_f_op_f32(ceil(-2029f)), _wgslsmith_f_op_f32(step(-406f, 822f)), _wgslsmith_f_op_f32(1072f - -850f), _wgslsmith_f_op_f32(-1035f * -766f)))), func_5(false, _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 1860f)), func_2(-vec4<i32>(global1.x, global1.x, 0i, 2147483647i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-438f, 678f, 321f))))), func_2(_wgslsmith_div_vec4_i32(-vec4<i32>(global1.x, 1i, global1.x, global1.x), ~vec4<i32>(global1.x, global1.x, global1.x, global1.x)), vec3<f32>(-660f, -455f, func_2(vec4<i32>(global1.x, -1i, -10469i, 8295i), vec3<f32>(433f, 559f, -144f)).b.a.b))));
    let var_1 = -411f;
    let var_2 = _wgslsmith_mult_vec4_i32(~max(~vec4<i32>(global1.x, global1.x, global1.x, global1.x), vec4<i32>(global1.x, 0i, global1.x, 3491i) ^ vec4<i32>(2147483647i, global1.x, -2147483647i, global1.x)), select(abs(-vec4<i32>(2147483647i, -76i, -37053i, global1.x)), vec4<i32>(1i, -48900i, 21933i, global1.x) >> (var_0.a.c % vec4<u32>(32u)), var_0.a.a)) << (abs(~(~_wgslsmith_clamp_vec4_u32(var_0.a.c, vec4<u32>(1u, 6761u, var_0.a.c.x, 4294967295u), var_0.a.c))) % vec4<u32>(32u));
    let var_3 = var_1;
    global2 = firstTrailingBit(~var_2.x);
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -vec3<i32>(global1.x, -2147483647i, _wgslsmith_div_i32(-(~global1.x), -332i));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(102f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1050f)))))));
    global1 = -(~(~vec3<i32>(max(global1.x, global1.x), global1.x | global1.x, firstTrailingBit(global1.x))));
    let var_1 = select(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), select(true, true, false))), select(!(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false))), select(vec3<bool>(true, false, false), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false), true), true), true), true);
    global2 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~u_input.b, 4294967295u), ~abs((i32(-1i) * -1i) | _wgslsmith_add_i32(global1.x, -24846i)), u_input.a);
}

