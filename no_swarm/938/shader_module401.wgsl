struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(vec4<bool>(true, true, true, true), vec3<f32>(-938f, -1000f, 1427f), vec3<i32>(40567i, -27041i, 53761i)), Struct_2(vec4<bool>(false, false, true, true), vec3<f32>(289f, -719f, 907f), vec3<i32>(i32(-2147483648), -5448i, -8071i)), Struct_2(vec4<bool>(true, false, true, false), vec3<f32>(-386f, 2128f, -313f), vec3<i32>(i32(-2147483648), 56424i, -35354i)), Struct_2(vec4<bool>(true, true, true, true), vec3<f32>(-1038f, -1427f, -1360f), vec3<i32>(2147483647i, -1i, 13588i)), Struct_2(vec4<bool>(false, true, true, false), vec3<f32>(1291f, -304f, -631f), vec3<i32>(51016i, -38113i, -1i)), Struct_2(vec4<bool>(false, false, true, false), vec3<f32>(-263f, -1653f, 1848f), vec3<i32>(-29089i, 0i, i32(-2147483648))), Struct_2(vec4<bool>(true, true, false, false), vec3<f32>(-659f, -186f, 1233f), vec3<i32>(i32(-2147483648), 1i, -1i)), Struct_2(vec4<bool>(true, true, false, false), vec3<f32>(-1176f, 1173f, 1508f), vec3<i32>(29899i, 19953i, i32(-2147483648))), Struct_2(vec4<bool>(false, false, true, false), vec3<f32>(-232f, 689f, -2362f), vec3<i32>(-10129i, -1i, 1665i)), Struct_2(vec4<bool>(false, true, true, true), vec3<f32>(1155f, 729f, 555f), vec3<i32>(-1i, 59493i, 0i)));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(_wgslsmith_div_i32(u_input.a, -12267i) << (_wgslsmith_clamp_u32(0u, _wgslsmith_add_u32(u_input.d, u_input.d), u_input.d) % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-969f, 270f, 393f, -880f) + vec4<f32>(-1000f, -938f, 1485f, -717f)))))), u_input.c.zxx ^ (_wgslsmith_mult_vec3_u32(u_input.c.wwx | vec3<u32>(u_input.d, 88451u, u_input.c.x), ~u_input.c.xyx) >> (u_input.c.wzw % vec3<u32>(32u))), _wgslsmith_div_vec4_i32(-(vec4<i32>(u_input.a, u_input.b, 17682i, 7314i) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, u_input.c.x, 39285u), u_input.c, u_input.c) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a, 0i, u_input.a, u_input.b)) << (_wgslsmith_mult_vec4_u32(u_input.c, vec4<u32>(u_input.d, u_input.d, u_input.c.x, 1u)) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-50595i, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.a, u_input.b, -1i, -7593i)), ~vec4<i32>(-1i, u_input.b, u_input.b, 2147483647i)), abs(vec4<i32>(u_input.b, -2147483647i, u_input.b, 17863i) ^ vec4<i32>(u_input.a, u_input.b, 1305i, u_input.a)))), !all(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), 1332i < u_input.a)));
    var_0 = Struct_1(_wgslsmith_mod_i32(~countOneBits(-38879i), ~(countOneBits(u_input.a) & 61626i)), vec4<f32>(var_0.b.x, var_0.b.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-407f, var_0.b.x)), 286f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-700f - _wgslsmith_f_op_f32(round(-120f))) - _wgslsmith_f_op_f32(1359f + _wgslsmith_f_op_f32(var_0.b.x - var_0.b.x)))), vec3<u32>(u_input.d, abs(~u_input.d) ^ ~0u, _wgslsmith_dot_vec4_u32(~u_input.c >> (min(u_input.c, vec4<u32>(1u, 5593u, 31899u, var_0.c.x)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(~u_input.c, _wgslsmith_add_vec4_u32(u_input.c, u_input.c)))), -vec4<i32>(1i, var_0.d.x, abs(countOneBits(2147483647i)), firstTrailingBit(var_0.a)), any(select(select(!vec4<bool>(var_0.e, var_0.e, false, true), vec4<bool>(var_0.e, var_0.e, false, true), false), !vec4<bool>(var_0.e, false, false, var_0.e), !vec4<bool>(var_0.e, false, false, var_0.e))));
    var_0 = Struct_1(reverseBits(max(u_input.a, var_0.a)), vec4<f32>(350f, var_0.b.x, _wgslsmith_f_op_f32(max(var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) + var_0.b.x))), _wgslsmith_f_op_f32(step(var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x * var_0.b.x) * _wgslsmith_f_op_f32(ceil(-799f)))))), ~vec3<u32>(_wgslsmith_div_u32(abs(4294967295u), select(1u, 4528u, false)), abs(u_input.d) ^ min(0u, u_input.d), ~(~1u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(reverseBits(-1i), _wgslsmith_mod_i32(u_input.a, -1i), -var_0.d.x, ~(-17174i)), var_0.d, ~(-vec4<i32>(u_input.a, u_input.a, var_0.d.x, var_0.d.x))) ^ vec4<i32>(countOneBits(var_0.d.x), -2147483647i, -_wgslsmith_dot_vec4_i32(var_0.d, vec4<i32>(var_0.a, 28510i, u_input.b, 2147483647i)), u_input.b), !(!all(vec3<bool>(var_0.e, var_0.e, false)) & any(vec2<bool>(true, false))));
    let var_1 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(var_0.c.x, 4294967295u ^ (37082u >> (var_0.c.x % 32u))), 1u ^ ~(~(~var_0.c.x)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.b.x)), _wgslsmith_f_op_f32(-368f - var_0.b.x))), _wgslsmith_f_op_f32(ceil(var_0.b.x))));
    return 1950f;
}

fn func_2(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_1, arg_3: f32) -> Struct_3 {
    let var_0 = -arg_2.d.zw;
    global0 = array<Struct_2, 10>();
    global0 = array<Struct_2, 10>();
    var var_1 = arg_2.c.x;
    let var_2 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), arg_3), arg_2, Struct_1(_wgslsmith_dot_vec4_i32(~arg_2.d, ~vec4<i32>(arg_2.a, var_0.x, var_0.x, arg_1)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, _wgslsmith_f_op_f32(arg_2.b.x + 900f), arg_3, -633f))), arg_2.c, -select(vec4<i32>(797i, var_0.x, u_input.a, arg_1), -arg_2.d, vec4<bool>(arg_2.e, true, false, true)), false), max(vec4<u32>(arg_2.c.x, max(_wgslsmith_clamp_u32(36119u, arg_2.c.x, arg_0.x), 35681u), 4294967295u, ~(~99049u)), select(~(~vec4<u32>(64115u, 40137u, arg_2.c.x, arg_2.c.x)), ~vec4<u32>(4294967295u, 8944u, arg_0.x, 8078u), select(vec4<bool>(true, true, arg_2.e, true), !vec4<bool>(arg_2.e, arg_2.e, true, false), !vec4<bool>(arg_2.e, arg_2.e, true, arg_2.e)))));
    return var_2;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3) -> Struct_1 {
    let var_0 = -1372f;
    global0 = array<Struct_2, 10>();
    let var_1 = arg_0;
    var var_2 = var_1.c.d;
    let var_3 = var_1.c.d.x;
    return arg_0.c;
}

fn func_5(arg_0: f32, arg_1: Struct_3, arg_2: vec3<u32>) -> vec4<f32> {
    var var_0 = Struct_2(select(vec4<bool>(arg_1.b.e, false, arg_1.b.e, !all(vec3<bool>(false, arg_1.b.e, true))), !vec4<bool>(!arg_1.c.e, any(vec3<bool>(arg_1.b.e, arg_1.b.e, false)), func_4(arg_1, Struct_3(-224f, Struct_1(-2147483647i, vec4<f32>(-445f, 626f, 1000f, arg_0), vec3<u32>(arg_2.x, 17000u, 18132u), arg_1.b.d, true), Struct_1(10369i, arg_1.c.b, vec3<u32>(arg_2.x, 87360u, 74585u), arg_1.b.d, arg_1.c.e), vec4<u32>(32671u, 4294967295u, u_input.d, 1u))).e, true), arg_1.c.a <= ~u_input.a), arg_1.c.b.zyy, _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(select(~arg_1.c.d.zxy, arg_1.b.d.xwy, !vec3<bool>(false, arg_1.c.e, true)), arg_1.b.d.yxy), vec3<i32>(reverseBits(i32(-1i) * -1i), -24094i, u_input.a)));
    let var_1 = var_0.c.x;
    let var_2 = 1i;
    global0 = array<Struct_2, 10>();
    global0 = array<Struct_2, 10>();
    return _wgslsmith_f_op_vec4_f32(-arg_1.c.b);
}

fn func_1(arg_0: vec3<bool>) -> vec4<f32> {
    global0 = array<Struct_2, 10>();
    let var_0 = !vec2<bool>(true, !arg_0.x);
    global0 = array<Struct_2, 10>();
    global0 = array<Struct_2, 10>();
    var var_1 = select(vec3<bool>(false, any(vec4<bool>(arg_0.x, true, true, all(vec3<bool>(false, var_0.x, true)))), true), arg_0, var_0.x);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) - _wgslsmith_f_op_vec4_f32(func_5(-279f, Struct_3(_wgslsmith_f_op_f32(select(1000f, -1290f, false)), func_4(func_2(u_input.c.yzz, u_input.a, Struct_1(u_input.a, vec4<f32>(1134f, -326f, 985f, -429f), u_input.c.wxy, vec4<i32>(u_input.b, u_input.a, u_input.b, 0i), var_0.x), 906f), Struct_3(-337f, Struct_1(-12187i, vec4<f32>(-1919f, 422f, -1000f, -1610f), vec3<u32>(0u, u_input.d, 0u), vec4<i32>(-64058i, -23176i, -38634i, 12352i), var_0.x), Struct_1(u_input.b, vec4<f32>(-787f, 663f, 1688f, -370f), vec3<u32>(18941u, u_input.d, 15943u), vec4<i32>(32522i, u_input.b, -5096i, u_input.a), false), u_input.c)), func_4(Struct_3(1776f, Struct_1(u_input.a, vec4<f32>(-1496f, 1045f, 2628f, 629f), u_input.c.yxx, vec4<i32>(u_input.a, u_input.b, u_input.a, 2147483647i), var_1.x), Struct_1(-9446i, vec4<f32>(-489f, -515f, 1000f, -249f), vec3<u32>(49481u, 70852u, 4294967295u), vec4<i32>(u_input.b, u_input.a, -2147483647i, u_input.a), true), u_input.c), Struct_3(442f, Struct_1(1i, vec4<f32>(-1937f, 1428f, -1519f, 234f), u_input.c.xyw, vec4<i32>(u_input.a, -17945i, u_input.a, -9376i), true), Struct_1(-24805i, vec4<f32>(-1000f, 934f, 316f, -1082f), vec3<u32>(0u, u_input.c.x, 93084u), vec4<i32>(u_input.b, u_input.a, u_input.b, u_input.a), false), vec4<u32>(u_input.d, u_input.c.x, 19826u, 22421u))), firstTrailingBit(u_input.c) << (func_2(vec3<u32>(u_input.d, u_input.d, u_input.d), u_input.a, Struct_1(-39088i, vec4<f32>(952f, -1794f, 988f, -2683f), vec3<u32>(u_input.c.x, u_input.d, 1u), vec4<i32>(2147483647i, u_input.b, u_input.a, 2147483647i), arg_0.x), -627f).d % vec4<u32>(32u))), u_input.c.wyx)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_1(!select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true), vec3<bool>(any(vec4<bool>(false, false, true, false)), false, u_input.b < u_input.b), vec3<bool>(all(vec3<bool>(true, true, true)), select(true, true, false), true))));
    let var_1 = func_2(vec3<u32>(32214u, ~(~reverseBits(12409u)), ~firstTrailingBit(1u)), u_input.a, Struct_1(func_4(Struct_3(var_0.x, Struct_1(6130i, var_0, vec3<u32>(u_input.c.x, u_input.d, u_input.c.x), vec4<i32>(-1i, u_input.a, -54151i, u_input.b), true), func_2(u_input.c.xzx, u_input.b, Struct_1(33165i, var_0, vec3<u32>(7257u, u_input.d, u_input.c.x), vec4<i32>(-7660i, 0i, -8861i, 7406i), false), 200f).b, ~u_input.c), Struct_3(-476f, Struct_1(-7227i, var_0, u_input.c.yxx, vec4<i32>(40568i, -2188i, -23282i, u_input.a), true), Struct_1(u_input.a, var_0, u_input.c.wzw, vec4<i32>(1i, u_input.a, u_input.a, -45292i), true), abs(u_input.c))).d.x, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-581f, var_0.x, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_0))))), abs((u_input.c.wwx | u_input.c.zyx) & (vec3<u32>(u_input.c.x, u_input.d, u_input.c.x) << (u_input.c.zxz % vec3<u32>(32u)))), -vec4<i32>(firstTrailingBit(24363i), ~(-1i), min(u_input.b, u_input.b), -44285i), u_input.d <= 20062u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(func_2(~u_input.c.xyy, i32(-1i) * -1i, func_2(u_input.c.yxx, u_input.b, Struct_1(u_input.a, vec4<f32>(var_0.x, -1311f, var_0.x, var_0.x), u_input.c.yyz, vec4<i32>(u_input.b, 17915i, u_input.a, -10545i), false), var_0.x).b, _wgslsmith_f_op_f32(ceil(var_0.x))).b.b.x + _wgslsmith_f_op_f32(f32(-1f) * -1010f))));
    var var_2 = vec3<i32>(u_input.a, func_2(vec3<u32>(countOneBits(u_input.c.x), 1u, u_input.c.x), abs(_wgslsmith_mult_i32(u_input.a, -2147483647i)), var_1.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1236f)))).c.a << (var_1.c.c.x % 32u), -2147483647i);
    let var_3 = !var_1.b.e;
    var var_4 = Struct_1(-7644i, _wgslsmith_f_op_vec4_f32(var_0 * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1000f, -2106f, _wgslsmith_f_op_f32(var_0.x - var_1.c.b.x)))), ~var_1.d.yyy, var_1.b.d, var_1.c.e);
    var var_5 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1076f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.a), var_1.c.b.x, false)), _wgslsmith_f_op_f32(max(var_4.b.x, 1256f)), var_3)), _wgslsmith_f_op_f32(-1418f + 833f)));
    var var_6 = var_4.d;
    var_4 = func_4(var_1, func_2(vec3<u32>(var_1.c.c.x, ~_wgslsmith_div_u32(var_4.c.x, 1u), reverseBits(u_input.c.x)), ~var_2.x, var_1.c, -2213f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(var_1.c.b - func_2(vec3<u32>(var_4.c.x, 1u, _wgslsmith_mult_u32(var_1.d.x, var_4.c.x)), 40338i, var_1.b, -1468f).b.b), ~1u, countOneBits(var_6.x), _wgslsmith_mult_vec3_i32(min(-firstTrailingBit(var_6.yzy), var_1.b.d.zwy), var_6.zxw));
}

