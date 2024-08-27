struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6> = array<u32, 6>(79384u, 4294967295u, 1u, 1u, 38077u, 7946u);

var<private> global1: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec4<f32>(1084f, -181f, -814f, -373f), vec3<i32>(11024i, -6888i, -1i), 4294967295u, false), Struct_1(vec4<f32>(-496f, 996f, 865f, -380f), vec3<i32>(2147483647i, 0i, -9173i), 17101u, false), Struct_1(vec4<f32>(-1669f, 885f, -291f, 314f), vec3<i32>(2147483647i, 41655i, 37783i), 0u, true), Struct_1(vec4<f32>(1000f, -384f, -107f, 431f), vec3<i32>(1i, -66060i, -13232i), 1u, true), Struct_1(vec4<f32>(-142f, -471f, 846f, 924f), vec3<i32>(24668i, 1i, -37304i), 4294967295u, false), Struct_1(vec4<f32>(952f, 716f, 2172f, -726f), vec3<i32>(i32(-2147483648), -8092i, -1i), 31023u, true), Struct_1(vec4<f32>(1673f, -1337f, -726f, -314f), vec3<i32>(-11448i, -31604i, -32599i), 0u, true), Struct_1(vec4<f32>(1005f, 1063f, -983f, -735f), vec3<i32>(-18182i, -1i, -68850i), 27595u, false), Struct_1(vec4<f32>(-106f, -486f, 356f, -1660f), vec3<i32>(2147483647i, 0i, -1i), 4798u, true), Struct_1(vec4<f32>(165f, -1494f, -107f, 796f), vec3<i32>(0i, 37729i, 2147483647i), 22065u, false), Struct_1(vec4<f32>(1179f, -530f, -790f, 510f), vec3<i32>(0i, 2147483647i, -1i), 31071u, true), Struct_1(vec4<f32>(1000f, 1827f, 482f, -726f), vec3<i32>(0i, -6910i, i32(-2147483648)), 1u, false), Struct_1(vec4<f32>(-1189f, -1117f, 736f, 323f), vec3<i32>(-21772i, -64470i, i32(-2147483648)), 76744u, false), Struct_1(vec4<f32>(-1143f, 1355f, 1000f, -2051f), vec3<i32>(1662i, -16924i, i32(-2147483648)), 1u, true), Struct_1(vec4<f32>(-1000f, 1433f, -272f, -1546f), vec3<i32>(1i, 3068i, 2147483647i), 4294967295u, false), Struct_1(vec4<f32>(-236f, -659f, 312f, -433f), vec3<i32>(6288i, 1i, 1i), 4294967295u, true), Struct_1(vec4<f32>(795f, -1234f, -762f, -260f), vec3<i32>(59615i, 22310i, 40133i), 1u, false), Struct_1(vec4<f32>(1131f, -1422f, 1134f, -145f), vec3<i32>(2147483647i, 0i, i32(-2147483648)), 4294967295u, false), Struct_1(vec4<f32>(231f, 158f, 214f, -513f), vec3<i32>(6737i, 2147483647i, 11496i), 1u, false), Struct_1(vec4<f32>(587f, 702f, -213f, 442f), vec3<i32>(i32(-2147483648), -22769i, 0i), 1u, false), Struct_1(vec4<f32>(1523f, -453f, 296f, -668f), vec3<i32>(0i, -12364i, 40192i), 22041u, false), Struct_1(vec4<f32>(313f, 1741f, -1116f, -2237f), vec3<i32>(2069i, 31070i, i32(-2147483648)), 14529u, false), Struct_1(vec4<f32>(331f, 1638f, -1104f, -563f), vec3<i32>(0i, 9104i, -1i), 0u, true), Struct_1(vec4<f32>(-426f, 820f, -2768f, 437f), vec3<i32>(-18790i, -1i, 23073i), 14270u, false), Struct_1(vec4<f32>(-731f, -922f, -675f, -1481f), vec3<i32>(-63607i, 57751i, i32(-2147483648)), 14869u, false));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> i32 {
    global0 = array<u32, 6>();
    global1 = array<Struct_1, 25>();
    let var_0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1766f, -906f, -672f, 113f)) * vec4<f32>(-1726f, 646f, 229f, -1151f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-337f, -440f, -658f, 568f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(910f, -186f, 672f, 963f))))), -(abs(-vec3<i32>(-2147483647i, -2147483647i, -2147483647i)) << ((countOneBits(vec3<u32>(1u, 0u, 16947u)) | (vec3<u32>(1u, 4294967295u, global0[_wgslsmith_index_u32(4294967295u, 6u)]) >> (vec3<u32>(1844u, 79353u, 4294967295u) % vec3<u32>(32u)))) % vec3<u32>(32u))), 4294967295u, false);
    var var_1 = vec4<i32>(~(firstTrailingBit(~u_input.a) & u_input.a), ~((_wgslsmith_mult_i32(u_input.d, var_0.b.x) >> ((global0[_wgslsmith_index_u32(var_0.c, 6u)] << (global0[_wgslsmith_index_u32(15547u, 6u)] % 32u)) % 32u)) & _wgslsmith_sub_i32(66303i, 4891i)), _wgslsmith_clamp_i32(u_input.d, -var_0.b.x, 1i), _wgslsmith_clamp_i32(1i, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(var_0.b, _wgslsmith_sub_vec3_i32(vec3<i32>(-4983i, -1i, 24025i), var_0.b)), ~u_input.d), max(~countOneBits(31937i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 21091i, -2147483647i, u_input.d), vec4<i32>(1i, -1i, u_input.d, u_input.d)))));
    let var_2 = vec2<i32>(-465i, -21524i) << ((select(reverseBits(~vec2<u32>(4294967295u, u_input.c)), min(vec2<u32>(13342u, 67286u), vec2<u32>(u_input.c, global0[_wgslsmith_index_u32(var_0.c, 6u)])), select(false, var_0.d, var_0.d)) >> (vec2<u32>(min(39023u, _wgslsmith_sub_u32(var_0.c, global0[_wgslsmith_index_u32(var_0.c, 6u)])), countOneBits(global0[_wgslsmith_index_u32(min(u_input.c, 44353u), 6u)])) % vec2<u32>(32u))) % vec2<u32>(32u));
    return -53998i;
}

fn func_2(arg_0: vec3<bool>) -> i32 {
    global1 = array<Struct_1, 25>();
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(u_input.c, 6u)], u_input.c), 25u)];
    var var_1 = ~(67236i >> (reverseBits(u_input.c >> (7419u % 32u)) % 32u));
    global1 = array<Struct_1, 25>();
    var var_2 = global0[_wgslsmith_index_u32(u_input.c, 6u)];
    return func_3();
}

fn func_1(arg_0: f32, arg_1: f32) -> vec4<u32> {
    var var_0 = func_2(!(!select(vec3<bool>(false, true, false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true), false)));
    var var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(2278f * arg_1)) + _wgslsmith_f_op_f32(arg_0 * 2901f)), _wgslsmith_f_op_f32(1558f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(682f, arg_0)))), arg_1, _wgslsmith_f_op_f32(-arg_0)), vec3<i32>(_wgslsmith_add_i32(max(u_input.d, u_input.d), -1i >> (1u % 32u)), 37219i << (0u % 32u), u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 6u)], 30483u), ~vec2<u32>(1u, global0[_wgslsmith_index_u32(29325u, 6u)])), !(any(select(vec2<bool>(true, false), vec2<bool>(false, false), false)) & any(vec2<bool>(true, true))));
    var var_2 = vec2<bool>(true, !(5507u != u_input.c));
    var var_3 = any(!vec3<bool>(!all(vec3<bool>(var_1.d, var_2.x, false)), any(select(vec4<bool>(false, false, var_2.x, var_2.x), vec4<bool>(true, true, var_2.x, var_2.x), var_1.d)), var_2.x));
    var var_4 = var_1.b.zx;
    return ~(~(~(~vec4<u32>(u_input.c, var_1.c, global0[_wgslsmith_index_u32(48456u, 6u)], var_1.c))));
}

fn func_4(arg_0: bool, arg_1: vec4<u32>, arg_2: u32, arg_3: f32) -> Struct_1 {
    global1 = array<Struct_1, 25>();
    var var_0 = arg_0;
    global1 = array<Struct_1, 25>();
    global0 = array<u32, 6>();
    var var_1 = global1[_wgslsmith_index_u32(arg_1.x, 25u)];
    return global1[_wgslsmith_index_u32(866u, 25u)];
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: Struct_1, arg_3: bool) -> f32 {
    let var_0 = vec4<bool>(false, true, arg_3, u_input.c != u_input.c);
    var var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.x - 119f))), arg_2.a.x, _wgslsmith_f_op_f32(-1709f * func_4(false, select(vec4<u32>(13689u, arg_2.c, u_input.c, 12378u), vec4<u32>(1u, arg_2.c, arg_2.c, 0u), var_0), 1u, _wgslsmith_f_op_f32(arg_2.a.x * 1165f)).a.x), _wgslsmith_f_op_f32(ceil(arg_2.a.x))), -((arg_2.b >> (_wgslsmith_sub_vec3_u32(vec3<u32>(arg_2.c, 8631u, 28390u), vec3<u32>(u_input.c, u_input.c, 1u)) % vec3<u32>(32u))) | ~(-vec3<i32>(arg_0, arg_0, arg_2.b.x))), arg_1, 50760u <= arg_1);
    let var_2 = func_4(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 141f) - arg_2.a.x) == _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(var_1.a.x + -674f))), _wgslsmith_mod_vec4_u32(select(_wgslsmith_sub_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 6u)], u_input.c, 102747u, var_1.c), vec4<u32>(global0[_wgslsmith_index_u32(var_1.c, 6u)], var_1.c, arg_1, 27669u)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 0u, 51485u, 7542u), vec4<u32>(global0[_wgslsmith_index_u32(0u, 6u)], var_1.c, 49414u, var_1.c)), true) ^ _wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(global0[_wgslsmith_index_u32(15477u, 6u)], 4294967295u, arg_2.c, u_input.c)), ~vec4<u32>(51934u, var_1.c, 33398u, 1u)), vec4<u32>(~var_1.c, arg_2.c, 95633u, 4294967295u | (var_1.c ^ 30169u))), 1u, 996f);
    global0 = array<u32, 6>();
    global0 = array<u32, 6>();
    return _wgslsmith_f_op_f32(f32(-1f) * -101f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, _wgslsmith_sub_i32(0i, u_input.b), select(-1i, u_input.a << (60545u % 32u), any(vec2<bool>(false, false))), countOneBits(-6089i)), vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a, u_input.d, -18428i, u_input.d), vec4<i32>(u_input.a, u_input.b, u_input.d, -5555i)), 13405i, 1i, ~(-12288i & u_input.d)));
    var var_1 = global1[_wgslsmith_index_u32(~u_input.c, 25u)];
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.a - var_1.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.a) - _wgslsmith_f_op_vec4_f32(exp2(var_1.a)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, 260f), var_1.a))))));
    let var_3 = _wgslsmith_f_op_f32(func_5(~var_1.b.x, 4294967295u, func_4(true, min(firstLeadingBit(func_1(var_1.a.x, var_1.a.x)), ~reverseBits(vec4<u32>(2359u, 54675u, global0[_wgslsmith_index_u32(u_input.c, 6u)], global0[_wgslsmith_index_u32(98994u, 6u)]))), 48663u, var_2.x), ~(~(~4294967295u)) >= _wgslsmith_dot_vec3_u32(~(~vec3<u32>(var_1.c, 0u, 58200u)), vec3<u32>(u_input.c & global0[_wgslsmith_index_u32(u_input.c, 6u)], 1u & global0[_wgslsmith_index_u32(u_input.c, 6u)], abs(u_input.c)))));
    var var_4 = func_4(all(!select(vec3<bool>(true, var_1.d, var_1.d), vec3<bool>(true, true, var_1.d), vec3<bool>(var_1.d, var_1.d, var_1.d))), ~max(_wgslsmith_mod_vec4_u32(func_1(1378f, 447f), vec4<u32>(u_input.c, u_input.c, 1u, global0[_wgslsmith_index_u32(var_1.c, 6u)])), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 78755u, var_1.c, u_input.c), vec4<u32>(u_input.c, 57162u, 12943u, 1u)), vec4<u32>(0u, global0[_wgslsmith_index_u32(0u, 6u)], 30592u, 4294967295u), min(vec4<u32>(var_1.c, 0u, var_1.c, var_1.c), vec4<u32>(0u, global0[_wgslsmith_index_u32(0u, 6u)], 18867u, global0[_wgslsmith_index_u32(4294967295u, 6u)])))), u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1304f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1236f - var_3)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-803f - 2413f) - _wgslsmith_f_op_f32(-var_1.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3, var_1.a.x) * _wgslsmith_f_op_f32(-650f * var_4.a.x)))));
}

