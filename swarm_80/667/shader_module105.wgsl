struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: bool,
    d: f32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(1u, 4294967295u, 4294967295u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: u32, arg_1: vec4<f32>) -> bool {
    global0 = vec3<u32>(~50340u, 1u, 9077u);
    global0 = ~(vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(86926u, global0.x, 83316u, global0.x), abs(vec4<u32>(global0.x, global0.x, 20376u, u_input.b))), reverseBits(~4294967295u), ~32282u) >> (vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1113u, 1u, 1u, u_input.b), vec4<u32>(1717u, u_input.b, 33835u, u_input.b)), vec4<u32>(global0.x, u_input.b, u_input.b, global0.x)), ~(~4294967295u), _wgslsmith_div_u32(~arg_0, countOneBits(u_input.b))) % vec3<u32>(32u)));
    let var_0 = u_input.b;
    var var_1 = vec2<i32>(2147483647i, 22242i);
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, 318f) * vec2<f32>(arg_1.x, 1213f)), _wgslsmith_f_op_vec2_f32(-arg_1.xz)))), !select(vec3<bool>(false, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false)), true, _wgslsmith_f_op_f32(sign(arg_1.x)), ~abs(vec4<i32>(2147483647i, ~u_input.a, 0i, 29898i)));
    return true;
}

fn func_2() -> vec4<bool> {
    let var_0 = vec3<bool>(false, func_3(1024u, vec4<f32>(_wgslsmith_f_op_f32(sign(-901f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-708f * 1205f) - _wgslsmith_f_op_f32(1313f + 994f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1988f), 746f, true)), _wgslsmith_f_op_f32(f32(-1f) * -1065f))), true);
    global0 = vec3<u32>(~global0.x, global0.x, ~_wgslsmith_mult_u32((u_input.b | 77431u) << (global0.x % 32u), 0u));
    global0 = reverseBits(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(~min(vec3<u32>(global0.x, global0.x, 0u), vec3<u32>(global0.x, 4998u, 23056u)), vec3<u32>(~4294967295u, 19746u, ~global0.x)), vec3<u32>(_wgslsmith_add_u32(global0.x, 4294967295u), 37880u, ~1u), select(~(~vec3<u32>(global0.x, 0u, 63291u)), vec3<u32>(u_input.b, 0u, 57119u), func_3(max(47397u, 0u), vec4<f32>(1f, 1f, 1f, 1f)))));
    var var_1 = Struct_1(vec2<f32>(459f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(647f, -507f)) - _wgslsmith_f_op_f32(abs(1045f)))), !var_0, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(151f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -636f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-624f)) + _wgslsmith_f_op_f32(min(-1500f, _wgslsmith_f_op_f32(abs(-2074f)))))), select(~vec4<i32>(_wgslsmith_mod_i32(u_input.a, u_input.a), -u_input.a, -2147483647i, _wgslsmith_sub_i32(-34536i, u_input.a)), vec4<i32>(firstLeadingBit(u_input.a | 49645i), firstTrailingBit(~u_input.a), countOneBits(_wgslsmith_sub_i32(59510i, u_input.a)), min(abs(0i), _wgslsmith_mod_i32(0i, u_input.a))), select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), !vec4<bool>(var_0.x, true, false, true), !vec4<bool>(true, var_0.x, false, var_0.x)), select(vec4<bool>(false, false, true, true), !vec4<bool>(var_0.x, var_0.x, true, var_0.x), global0.x > 16758u), !(!vec4<bool>(true, var_0.x, false, var_0.x)))));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -331f);
    return vec4<bool>((_wgslsmith_f_op_f32(var_1.d - -1014f) > var_1.a.x) && !(u_input.a <= _wgslsmith_sub_i32(var_1.e.x, u_input.a)), !any(vec4<bool>(var_1.a.x >= -302f, true, var_1.c, true)), !func_3(~(u_input.b << (4294967295u % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(579f, var_1.d, 1010f, var_1.d) * vec4<f32>(-712f, var_1.d, 233f, -1000f)))), u_input.a > ~(-21854i));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: i32, arg_3: vec4<f32>) -> u32 {
    global0 = ~vec3<u32>(~(~global0.x), global0.x, firstLeadingBit(51355u));
    global0 = vec3<u32>(u_input.b, (_wgslsmith_mult_u32(48527u, global0.x) >> (u_input.b % 32u)) | u_input.b, global0.x);
    return 4294967295u;
}

fn func_1() -> vec2<f32> {
    global0 = vec3<u32>(func_4(_wgslsmith_mult_i32(-10261i, 0i | firstLeadingBit(u_input.a)), Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1194f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1360f, -149f)))), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true))), all(func_2()), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(742f, 1165f)), _wgslsmith_div_f32(646f, -1496f))), (vec4<i32>(40675i, -29080i, u_input.a, u_input.a) ^ vec4<i32>(u_input.a, 37749i, u_input.a, 29445i)) | (vec4<i32>(u_input.a, u_input.a, 1i, u_input.a) & vec4<i32>(30587i, -6465i, u_input.a, u_input.a))), u_input.a >> (_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.b, global0.x), _wgslsmith_mod_u32(58556u, 1u), 0u) % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-504f, 195f, -1109f, 801f), vec4<f32>(261f, 828f, 1913f, -169f), false))))), global0.x, 41299u);
    var var_0 = vec2<i32>(~u_input.a, _wgslsmith_clamp_i32(~_wgslsmith_div_i32(-6501i, u_input.a), 0i, 1i));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -871f), 565f));
    let var_2 = vec2<u32>(max(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global0.x, global0.x, u_input.b, u_input.b), vec4<u32>(global0.x, 66826u, 4294967295u, 59504u)), _wgslsmith_add_vec4_u32(vec4<u32>(global0.x, u_input.b, 37900u, 4294967295u), vec4<u32>(52879u, u_input.b, global0.x, u_input.b))), ~(vec4<u32>(1u, 14408u, 36965u, global0.x) | vec4<u32>(global0.x, global0.x, 17627u, global0.x))), 21168u), min(u_input.b, _wgslsmith_mult_u32(countOneBits(~5660u), ~(~global0.x))));
    var_0 = select(vec2<i32>(-17177i << (u_input.b % 32u), _wgslsmith_mult_i32(1i & (-54286i & u_input.a), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(16061i, u_input.a, var_0.x, 28066i), vec4<i32>(-34967i, -2147483647i, var_0.x, u_input.a)), ~vec4<i32>(-73445i, var_0.x, 1i, -44931i)))), ~reverseBits(vec2<i32>(-1i, _wgslsmith_mod_i32(u_input.a, 1i))), firstLeadingBit(_wgslsmith_sub_u32(u_input.b >> (global0.x % 32u), select(5409u, global0.x, true))) >= _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 0u, u_input.b), vec3<u32>(u_input.b, u_input.b, var_2.x)), vec3<u32>(u_input.b, var_2.x, var_2.x) ^ vec3<u32>(49833u, u_input.b, 1u)), global0.x));
    return _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-142f - var_1), -1101f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, 958f)) * vec2<f32>(var_1, var_1)))))));
}

fn func_5(arg_0: vec2<f32>, arg_1: bool, arg_2: u32) -> Struct_1 {
    var var_0 = 1u;
    let var_1 = u_input.a << (_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(min(reverseBits(vec3<u32>(4294967295u, 1u, arg_2)), vec3<u32>(9686u, 56428u, 0u)), vec3<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, arg_2), vec3<u32>(26271u, arg_2, arg_2)), 77974u)), vec3<u32>(~1u, min(~17193u, ~64647u), arg_2)) % 32u);
    global0 = ~vec3<u32>(arg_2, arg_2, (27590u & ~global0.x) << (~global0.x % 32u));
    var var_2 = u_input.b;
    var_0 = arg_2;
    return Struct_1(_wgslsmith_div_vec2_f32(arg_0, arg_0), vec3<bool>(all(func_2()), _wgslsmith_div_f32(arg_0.x, 395f) != arg_0.x, func_3(_wgslsmith_mult_u32(1u, global0.x), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.x, -1595f, arg_0.x, -121f))))))), all(!(!func_2())), 273f, ~select(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 40709i, 1i, u_input.a) | vec4<i32>(1i, 2147483647i, -2147483647i, var_1), vec4<i32>(-1i, 0i, 2147483647i, u_input.a) >> (vec4<u32>(global0.x, 45986u, 34195u, u_input.b) % vec4<u32>(32u))), -select(vec4<i32>(4402i, 4196i, 0i, 1i), vec4<i32>(-1i, -41542i, -1i, var_1), arg_1), vec4<bool>(true, !arg_1, true, arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(1054f)), _wgslsmith_div_f32(505f, _wgslsmith_f_op_f32(f32(-1f) * -160f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-221f, -1196f) * vec2<f32>(-483f, -603f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 808f))) + _wgslsmith_f_op_vec2_f32(func_1()))), false, _wgslsmith_dot_vec4_u32(abs(~(~vec4<u32>(0u, 52848u, 4294967295u, global0.x))), firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, global0.x, global0.x, global0.x), ~vec4<u32>(1u, u_input.b, global0.x, 81628u)))));
    global0 = ~max(_wgslsmith_mod_vec3_u32(~vec3<u32>(826u, global0.x, global0.x), vec3<u32>(1u, 0u, global0.x) << (vec3<u32>(u_input.b, global0.x, 71391u) % vec3<u32>(32u))), ~abs(vec3<u32>(global0.x, 41023u, u_input.b))) & min(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global0.x, global0.x, 0u), vec3<u32>(global0.x, 4294967295u, global0.x)), countOneBits(vec3<u32>(global0.x, u_input.b, 0u)), vec3<u32>(global0.x, 33909u, u_input.b)) | _wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(4294967295u, global0.x, 4294967295u)), ~vec3<u32>(1u, 1u, 51077u)), select(vec3<u32>(_wgslsmith_clamp_u32(4294967295u, 3378u, u_input.b), global0.x ^ global0.x, 1u), ~_wgslsmith_sub_vec3_u32(vec3<u32>(global0.x, 0u, 15996u), vec3<u32>(global0.x, u_input.b, global0.x)), !select(var_0.b, vec3<bool>(var_0.c, var_0.b.x, false), var_0.b)));
    var var_1 = Struct_1(vec2<f32>(1804f, var_0.d), vec3<bool>(true, false, var_0.c), var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d - -1432f)), -func_5(vec2<f32>(-2213f, 1411f), true, ~u_input.b).e & min(vec4<i32>(-1i, _wgslsmith_sub_i32(38295i, var_0.e.x), 2687i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, var_0.e.x), var_0.e.yx)), reverseBits(-vec4<i32>(u_input.a, 18575i, -2147483647i, -14894i))));
    global0 = max(~((vec3<u32>(u_input.b, 1u, u_input.b) ^ ~vec3<u32>(19773u, global0.x, 516u)) & ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, u_input.b, global0.x), vec3<u32>(global0.x, u_input.b, u_input.b))), ~vec3<u32>(~u_input.b | ~5113u, abs(global0.x), global0.x));
    var var_2 = var_0;
    var var_3 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.x, -706f);
}

