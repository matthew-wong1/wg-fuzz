struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: f32,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec2<f32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18> = array<f32, 18>(329f, -1341f, -539f, -275f, -242f, -1129f, -496f, -453f, -649f, -2066f, -965f, -717f, -1000f, -206f, -731f, 853f, -1635f, 680f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_2(!vec4<bool>(false, arg_0.b.x, !(!arg_0.b.x), (arg_0.b.x & false) || all(arg_0.b)), reverseBits(abs(_wgslsmith_add_vec2_i32(-vec2<i32>(1i, u_input.a), abs(vec2<i32>(u_input.a, -7165i))))), Struct_1(1000f, select(arg_0.b, select(select(arg_0.b, arg_0.b, false), arg_0.b, true), arg_0.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(376f + global0[_wgslsmith_index_u32(arg_0.d, 18u)])), -473f), ~arg_0.d, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.d >> (arg_0.d % 32u), 18u)])));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_0.d, 4294967295u, abs(26994u | arg_0.d)), 18u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1138f + arg_0.e))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(arg_0.c, -547f))))))), arg_0.b, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.c.d, abs(17425u)), 18u)], var_0.c.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_0.a)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-914f)), 1039f, true))));
    let var_2 = Struct_3(arg_0.d, ~(~(min(vec2<u32>(3867u, var_1.d), vec2<u32>(arg_0.d, var_0.c.d)) ^ abs(vec2<u32>(72566u, var_1.d)))), Struct_1(_wgslsmith_div_f32(var_1.a, 1f), var_0.c.b, -1047f, arg_0.d, -193f), !select(select(true, true, any(var_0.a)), any(arg_0.b), false));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.c.e)));
    var var_4 = select(vec4<bool>((_wgslsmith_add_u32(var_1.d, 1u) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.d, var_0.c.d), var_2.b) % 32u)) >= ~1u, var_0.a.x, all(select(select(vec2<bool>(arg_0.b.x, var_2.d), vec2<bool>(false, var_1.b.x), vec2<bool>(arg_0.b.x, var_1.b.x)), var_1.b.yy, true)), true), !(!vec4<bool>(var_2.d, !var_2.d, true, all(vec4<bool>(var_0.a.x, var_0.c.b.x, false, false)))), !(!var_0.a));
    return -384f;
}

fn func_2(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_3) -> Struct_3 {
    let var_0 = Struct_3(arg_0 << (4294967295u % 32u), arg_2.b, arg_2.c, true);
    let var_1 = Struct_2(!vec4<bool>(true & arg_2.d, any(vec4<bool>(false, true, var_0.c.b.x, true)), !all(vec3<bool>(true, var_0.c.b.x, arg_2.c.b.x)), !(!arg_2.c.b.x)), vec2<i32>(u_input.a, select(u_input.a, -(~u_input.a), var_0.c.b.x)), var_0.c);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f * arg_1.x))) + -2388f)), var_0.c.c, _wgslsmith_f_op_f32(370f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(Struct_1(arg_2.c.a, vec3<bool>(var_0.c.b.x, arg_2.c.b.x, var_1.c.b.x), arg_2.c.a, var_0.c.d, -1762f)))))), var_0.c.a);
    global0 = array<f32, 18>();
    let var_3 = max(abs(countOneBits(0i)), u_input.a);
    return arg_2;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_3) -> Struct_2 {
    global0 = array<f32, 18>();
    var var_0 = Struct_2(select(select(vec4<bool>(arg_1.c.b.x & arg_2.c.b.x, arg_2.c.b.x || false, true, any(vec4<bool>(arg_1.d, arg_2.c.b.x, arg_1.d, arg_1.d))), !select(vec4<bool>(arg_2.d, arg_2.c.b.x, arg_1.d, arg_2.d), vec4<bool>(arg_2.d, arg_0.c.b.x, true, arg_2.c.b.x), true), !select(vec4<bool>(true, false, false, arg_2.c.b.x), vec4<bool>(arg_2.d, arg_0.c.b.x, true, arg_0.c.b.x), false)), select(!(!vec4<bool>(false, true, true, arg_1.c.b.x)), !vec4<bool>(arg_0.d, true, arg_0.c.b.x, true), select(arg_2.c.d == arg_1.b.x, false, all(vec4<bool>(arg_2.d, true, false, arg_2.c.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-943f, -1808f))) <= -1629f), _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(~vec2<i32>(u_input.a, 40230i), vec2<i32>(u_input.a, u_input.a), vec2<i32>(24574i, u_input.a)) << (~_wgslsmith_add_vec2_u32(arg_0.b, vec2<u32>(0u, 4294967295u)) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_mod_i32(u_input.a, 1i), ~(u_input.a >> (arg_2.b.x % 32u)))), func_2(~(~arg_2.a), vec4<f32>(-1000f, _wgslsmith_f_op_f32(step(arg_0.c.a, _wgslsmith_f_op_f32(trunc(arg_1.c.a)))), -369f, func_2(43469u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-672f, 981f, arg_1.c.c, -204f)), arg_1).c.c), Struct_3(reverseBits(firstLeadingBit(39279u)), ~_wgslsmith_clamp_vec2_u32(arg_1.b, vec2<u32>(arg_0.a, arg_1.c.d), vec2<u32>(15700u, arg_0.a)), Struct_1(_wgslsmith_f_op_f32(sign(-154f)), arg_2.c.b, _wgslsmith_f_op_f32(floor(arg_0.c.c)), 3799u << (arg_0.b.x % 32u), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 57592u, 0u), 18u)]), func_2(abs(arg_1.b.x), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1044f, -422f, 1635f, 817f), vec4<f32>(arg_2.c.c, arg_0.c.c, global0[_wgslsmith_index_u32(arg_0.a, 18u)], 677f))), arg_0).d)).c);
    global0 = array<f32, 18>();
    let var_1 = arg_0.c;
    let var_2 = 65974u;
    return Struct_2(var_0.a, max(select(var_0.b, abs(firstTrailingBit(vec2<i32>(var_0.b.x, var_0.b.x))), vec2<bool>(var_0.a.x, arg_1.c.e < -486f)), vec2<i32>(_wgslsmith_sub_i32(var_0.b.x, select(-12493i, -63478i, false)), -2147483647i)), arg_2.c);
}

fn func_1() -> u32 {
    global0 = array<f32, 18>();
    var var_0 = func_4(func_2(37491u, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(4294967295u, 18u)])), global0[_wgslsmith_index_u32(~4294967295u, 18u)], global0[_wgslsmith_index_u32(31874u, 18u)], global0[_wgslsmith_index_u32(firstTrailingBit(1u), 18u)]))), Struct_3(_wgslsmith_dot_vec4_u32(min(vec4<u32>(1u, 0u, 4294967295u, 0u), vec4<u32>(61524u, 0u, 88404u, 4294967295u)), min(vec4<u32>(4408u, 60353u, 4294967295u, 4294967295u), vec4<u32>(0u, 1u, 24148u, 1u))), firstTrailingBit(vec2<u32>(14102u, 0u) << (vec2<u32>(1u, 0u) % vec2<u32>(32u))), Struct_1(902f, vec3<bool>(true, true, true), _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(4294967295u, 18u)])), 1u, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(51441u, 18u)])), true)), Struct_3(~4294967295u, _wgslsmith_div_vec2_u32(~abs(vec2<u32>(1u, 4294967295u)), select(~vec2<u32>(0u, 0u), vec2<u32>(0u, 1u), func_2(0u, vec4<f32>(global0[_wgslsmith_index_u32(14573u, 18u)], global0[_wgslsmith_index_u32(7927u, 18u)], global0[_wgslsmith_index_u32(30023u, 18u)], global0[_wgslsmith_index_u32(4294967295u, 18u)]), Struct_3(4294967295u, vec2<u32>(0u, 69285u), Struct_1(global0[_wgslsmith_index_u32(33064u, 18u)], vec3<bool>(true, false, false), global0[_wgslsmith_index_u32(41907u, 18u)], 1u, 533f), false)).c.b.yz)), func_2(~(~105427u), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 198f, 1565f, global0[_wgslsmith_index_u32(54941u, 18u)])))), func_2(1u, _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(43309u, 18u)], 1230f, -1313f, global0[_wgslsmith_index_u32(64563u, 18u)]) + vec4<f32>(-1380f, global0[_wgslsmith_index_u32(72469u, 18u)], global0[_wgslsmith_index_u32(4294967295u, 18u)], 746f)), func_2(4294967295u, vec4<f32>(237f, global0[_wgslsmith_index_u32(1u, 18u)], 1425f, 1090f), Struct_3(1u, vec2<u32>(4294967295u, 0u), Struct_1(-859f, vec3<bool>(false, false, true), global0[_wgslsmith_index_u32(52844u, 18u)], 4294967295u, global0[_wgslsmith_index_u32(4294967295u, 18u)]), false)))).c, false), func_2(~27919u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1147f, -1322f, -1490f, global0[_wgslsmith_index_u32(26975u, 18u)]), vec4<f32>(177f, 158f, -1279f, global0[_wgslsmith_index_u32(0u, 18u)]))) + vec4<f32>(1200f, global0[_wgslsmith_index_u32(4294967295u, 18u)], global0[_wgslsmith_index_u32(84748u, 18u)], -105f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0[_wgslsmith_index_u32(28285u, 18u)], -810f, global0[_wgslsmith_index_u32(8745u, 18u)], -1255f), vec4<f32>(global0[_wgslsmith_index_u32(47866u, 18u)], 2487f, -652f, -426f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 18u)], global0[_wgslsmith_index_u32(47867u, 18u)], -663f, 456f) - vec4<f32>(-1325f, global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(9903u, 18u)], 154f)))), func_2(~1u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(1u, 18u)], -721f, -330f, -313f))), func_2(~80853u, vec4<f32>(global0[_wgslsmith_index_u32(97524u, 18u)], -1025f, -531f, global0[_wgslsmith_index_u32(4294967295u, 18u)]), Struct_3(1u, vec2<u32>(48514u, 1965u), Struct_1(global0[_wgslsmith_index_u32(9913u, 18u)], vec3<bool>(false, true, true), 1379f, 24222u, global0[_wgslsmith_index_u32(81724u, 18u)]), true)))));
    var var_1 = _wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(var_0.c.d, var_0.c.d, var_0.c.d) << (_wgslsmith_div_vec3_u32(vec3<u32>(1u, var_0.c.d, var_0.c.d), vec3<u32>(var_0.c.d, 49952u, var_0.c.d)) % vec3<u32>(32u))) & vec3<u32>(var_0.c.d, var_0.c.d >> ((var_0.c.d | 23676u) % 32u), var_0.c.d), vec3<u32>(var_0.c.d & ~var_0.c.d, ~firstTrailingBit(var_0.c.d ^ 16228u), 82548u));
    let var_2 = var_0.c.a;
    let var_3 = var_0.c.c == _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0.c.d, 18u)] + var_0.c.c);
    return 117451u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_1(), ~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, _wgslsmith_mod_u32(46454u, 32037u)), _wgslsmith_div_vec2_u32(~vec2<u32>(0u, 134244u), select(vec2<u32>(38298u, 13486u), vec2<u32>(4294967295u, 43208u), vec2<bool>(true, true)))), func_4(Struct_3(1u, vec2<u32>(firstTrailingBit(0u), ~79557u), func_4(func_2(13174u, vec4<f32>(global0[_wgslsmith_index_u32(1u, 18u)], -220f, global0[_wgslsmith_index_u32(67383u, 18u)], global0[_wgslsmith_index_u32(69287u, 18u)]), Struct_3(1u, vec2<u32>(0u, 1u), Struct_1(global0[_wgslsmith_index_u32(39u, 18u)], vec3<bool>(true, false, false), global0[_wgslsmith_index_u32(1u, 18u)], 4294967295u, global0[_wgslsmith_index_u32(19112u, 18u)]), false)), Struct_3(51286u, vec2<u32>(30275u, 41540u), Struct_1(133f, vec3<bool>(false, false, true), global0[_wgslsmith_index_u32(4294967295u, 18u)], 1u, 2834f), false), func_2(13465u, vec4<f32>(global0[_wgslsmith_index_u32(55949u, 18u)], -208f, 209f, global0[_wgslsmith_index_u32(0u, 18u)]), Struct_3(1u, vec2<u32>(28697u, 4294967295u), Struct_1(-1121f, vec3<bool>(false, true, false), global0[_wgslsmith_index_u32(10474u, 18u)], 0u, global0[_wgslsmith_index_u32(0u, 18u)]), true))).c, select(all(vec3<bool>(false, false, true)), any(vec4<bool>(true, false, false, false)), true)), Struct_3(1u, _wgslsmith_mod_vec2_u32(vec2<u32>(28676u, 0u), vec2<u32>(1u, 1u)), func_2(1u, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 18u)], -1149f, global0[_wgslsmith_index_u32(59567u, 18u)], global0[_wgslsmith_index_u32(16654u, 18u)]))), Struct_3(35715u, vec2<u32>(31464u, 1u), Struct_1(global0[_wgslsmith_index_u32(1u, 18u)], vec3<bool>(true, true, false), 1000f, 22896u, 1264f), true)).c, true), Struct_3(abs(~4294967295u), abs(firstLeadingBit(vec2<u32>(48055u, 0u))), func_2(min(1u, 8549u), vec4<f32>(-1495f, 680f, global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(1u, 18u)]), Struct_3(1u, vec2<u32>(4294967295u, 4294967295u), Struct_1(global0[_wgslsmith_index_u32(1u, 18u)], vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(11275u, 18u)], 18211u, 1401f), false)).c, true)).c, any(func_4(Struct_3(0u, vec2<u32>(36462u, 15278u), func_4(Struct_3(95117u, vec2<u32>(1u, 1u), Struct_1(417f, vec3<bool>(false, true, false), global0[_wgslsmith_index_u32(1u, 18u)], 14796u, global0[_wgslsmith_index_u32(33526u, 18u)]), true), Struct_3(0u, vec2<u32>(1u, 50072u), Struct_1(-1212f, vec3<bool>(false, false, false), 382f, 3231u, global0[_wgslsmith_index_u32(4294967295u, 18u)]), true), Struct_3(0u, vec2<u32>(894u, 0u), Struct_1(1682f, vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(1u, 18u)], 48123u, global0[_wgslsmith_index_u32(38205u, 18u)]), true)).c, func_4(Struct_3(0u, vec2<u32>(4294967295u, 13784u), Struct_1(-620f, vec3<bool>(false, false, false), -1293f, 22679u, global0[_wgslsmith_index_u32(4294967295u, 18u)]), true), Struct_3(69312u, vec2<u32>(18963u, 4294967295u), Struct_1(960f, vec3<bool>(false, true, false), -1000f, 37110u, 452f), true), Struct_3(1u, vec2<u32>(14369u, 35281u), Struct_1(global0[_wgslsmith_index_u32(0u, 18u)], vec3<bool>(true, false, true), 864f, 2257u, global0[_wgslsmith_index_u32(1u, 18u)]), false)).c.b.x), func_2(10587u, _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(1u, 18u)], global0[_wgslsmith_index_u32(4294967295u, 18u)], -1706f, 1537f) - vec4<f32>(1000f, 992f, global0[_wgslsmith_index_u32(0u, 18u)], 1864f)), func_2(25211u, vec4<f32>(global0[_wgslsmith_index_u32(59832u, 18u)], global0[_wgslsmith_index_u32(1u, 18u)], 1000f, 2506f), Struct_3(1u, vec2<u32>(6794u, 4294967295u), Struct_1(-127f, vec3<bool>(false, true, false), -218f, 40476u, -1008f), true))), func_2(0u, _wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(64963u, 18u)], global0[_wgslsmith_index_u32(1u, 18u)], 150f, 583f), vec4<f32>(global0[_wgslsmith_index_u32(46770u, 18u)], 982f, -1235f, 301f)), Struct_3(4464u, vec2<u32>(1u, 0u), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 18u)], vec3<bool>(true, false, false), 271f, 1u, global0[_wgslsmith_index_u32(11908u, 18u)]), true))).a.xwz));
    var_0 = Struct_3(var_0.b.x, vec2<u32>(0u, 0u), Struct_1(-202f, var_0.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -621f)), select(~(~76162u), ~38556u, any(var_0.c.b.yy)), -344f), false);
    var var_1 = -1343f;
    var_0 = func_2(abs(4294967295u) << (_wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(var_0.b.x, 21266u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.x, var_0.c.d), vec2<u32>(var_0.a, 1u))), var_0.c.d) % 32u), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-977f, var_0.c.c, global0[_wgslsmith_index_u32(55205u, 18u)], global0[_wgslsmith_index_u32(var_0.a, 18u)]) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.a, 1003f, var_0.c.e, global0[_wgslsmith_index_u32(10714u, 18u)]) - vec4<f32>(global0[_wgslsmith_index_u32(0u, 18u)], var_0.c.a, var_0.c.c, var_0.c.c)))))), func_2(_wgslsmith_mult_u32(min(~var_0.c.d, 33101u), 52396u), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1403f, global0[_wgslsmith_index_u32(var_0.c.d, 18u)], 1046f, var_0.c.a) - vec4<f32>(global0[_wgslsmith_index_u32(0u, 18u)], -839f, 202f, 226f))))), func_2(var_0.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.e, var_0.c.e, var_0.c.e, 1555f)), vec4<f32>(var_0.c.a, 1555f, global0[_wgslsmith_index_u32(25443u, 18u)], 1037f), any(vec4<bool>(var_0.d, false, var_0.d, true)))), func_2(24179u, vec4<f32>(-522f, global0[_wgslsmith_index_u32(var_0.b.x, 18u)], global0[_wgslsmith_index_u32(var_0.a, 18u)], 356f), func_2(var_0.b.x, vec4<f32>(1483f, -233f, 1429f, -1584f), Struct_3(var_0.b.x, vec2<u32>(var_0.a, var_0.c.d), Struct_1(var_0.c.c, var_0.c.b, global0[_wgslsmith_index_u32(4294967295u, 18u)], 4294967295u, 1712f), false))))));
    global0 = array<f32, 18>();
    let var_2 = func_4(Struct_3(_wgslsmith_mult_u32(~4411u, ~var_0.c.d), var_0.b, var_0.c, var_0.d), Struct_3(var_0.a, ~select(var_0.b, firstLeadingBit(vec2<u32>(35546u, var_0.b.x)), !vec2<bool>(var_0.d, false)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.c.a))), vec3<bool>(true, true, true), var_0.c.e, 4294967295u, 1468f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-474f, 616f))) < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(var_0.a, 18u)], global0[_wgslsmith_index_u32(0u, 18u)]))), func_2(~min(abs(var_0.b.x), var_0.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(952f, -2163f, global0[_wgslsmith_index_u32(var_0.a, 18u)], 101f))) * _wgslsmith_div_vec4_f32(vec4<f32>(-821f, 1235f, var_0.c.c, 361f), vec4<f32>(322f, -226f, -586f, global0[_wgslsmith_index_u32(var_0.a, 18u)]))) * vec4<f32>(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(1u, 18u)])), global0[_wgslsmith_index_u32(var_0.a, 18u)], var_0.c.e, -155f)), Struct_3(var_0.c.d, var_0.b, func_4(Struct_3(var_0.b.x, var_0.b, Struct_1(var_0.c.e, vec3<bool>(true, var_0.c.b.x, true), var_0.c.a, 20566u, global0[_wgslsmith_index_u32(65106u, 18u)]), true), func_2(var_0.a, vec4<f32>(var_0.c.c, var_0.c.e, 219f, -849f), Struct_3(var_0.c.d, vec2<u32>(var_0.c.d, var_0.c.d), var_0.c, var_0.d)), Struct_3(var_0.a, vec2<u32>(0u, var_0.b.x), var_0.c, var_0.c.b.x)).c, var_0.c.b.x)));
    var var_3 = var_0.c.d;
    var var_4 = abs(_wgslsmith_sub_vec4_i32(max(~vec4<i32>(u_input.a, u_input.a, var_2.b.x, var_2.b.x), firstTrailingBit(vec4<i32>(40331i, var_2.b.x, var_2.b.x, -2147483647i))) >> (~(~vec4<u32>(4294967295u, 1u, 12985u, var_2.c.d)) % vec4<u32>(32u)), vec4<i32>(abs(2247i), 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(17215i, 40951i), vec2<i32>(u_input.a, u_input.a)), -15379i) & (vec4<i32>(-1i, 1299i, var_2.b.x, u_input.a) | (vec4<i32>(1i, var_2.b.x, var_2.b.x, -39901i) ^ vec4<i32>(-32991i, -11639i, var_2.b.x, 11959i)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-123f + var_2.c.e), 316f), ~(~_wgslsmith_div_u32(var_2.c.d, var_2.c.d) << (_wgslsmith_mult_u32(4294967295u, 1u) % 32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(4294967295u, 18u)], var_0.c.e))), 1665f)), reverseBits(abs(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, var_2.b.x), var_4.zz) & (var_2.b << (vec2<u32>(76356u, 4294967295u) % vec2<u32>(32u))))), var_4.ww);
}

