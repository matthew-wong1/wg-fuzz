struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: vec3<i32>,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32) -> vec3<bool> {
    global0 = array<Struct_2, 25>();
    let var_0 = vec3<u32>(~1u, 0u, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(49482u, 1u), ~_wgslsmith_mod_u32(1u, reverseBits(55115u)), 52320u));
    global0 = array<Struct_2, 25>();
    global0 = array<Struct_2, 25>();
    global0 = array<Struct_2, 25>();
    return select(select(select(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false), select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true), select(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true), select(vec3<bool>(false, true, false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true)), vec3<bool>(81571i >= u_input.a, false, true)), vec3<bool>(true, all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false))), !any(vec3<bool>(true, true, false)))), vec3<bool>(!all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true))), !select(true, true, 662f <= arg_0), (-u_input.a < ~u_input.a) | any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true)))), _wgslsmith_add_u32(_wgslsmith_div_u32(max(5589u, 0u), 4294967295u), var_0.x) != abs(~_wgslsmith_div_u32(4294967295u, var_0.x)));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> vec2<f32> {
    global0 = array<Struct_2, 25>();
    var var_0 = all(!arg_0.b);
    global0 = array<Struct_2, 25>();
    global0 = array<Struct_2, 25>();
    var var_1 = arg_0.b;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(2770f, -1470f) - vec2<f32>(-408f, -544f)))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(891f, 2039f))) - vec2<f32>(1000f, _wgslsmith_f_op_f32(step(-201f, -1011f))))));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: u32) -> Struct_1 {
    let var_0 = !vec3<bool>(true, true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    global0 = array<Struct_2, 25>();
    let var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) + _wgslsmith_f_op_f32(abs(1018f))), -985f) - _wgslsmith_f_op_vec2_f32(func_4(Struct_1(countOneBits(var_1.b.yxw), func_3(-1034f), -arg_1.b.wzw, !var_0.x), 42099u, 1f))));
    var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-167f, var_2.x)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, -404f) + vec2<f32>(-1478f, var_2.x)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, 1655f) * vec2<f32>(-331f, 1333f)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, var_2.x) * vec2<f32>(var_2.x, var_2.x)), _wgslsmith_div_vec2_f32(vec2<f32>(var_2.x, var_2.x), vec2<f32>(var_2.x, -435f))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, 2068f) + vec2<f32>(var_2.x, var_2.x))))))));
    return Struct_1(reverseBits(vec3<i32>(_wgslsmith_div_i32(arg_1.a, select(arg_1.a, 0i, true)), ~(~(-1i)), (-2147483647i & u_input.a) ^ (var_1.a >> (arg_0 % 32u)))), var_0, countOneBits(abs(~vec3<i32>(u_input.a, arg_1.a, var_1.b.x)) & var_1.b.yyx), var_0.x);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>) -> vec4<f32> {
    global0 = array<Struct_2, 25>();
    var var_0 = vec2<bool>(!(!func_2(reverseBits(65218u), Struct_2(u_input.a, vec4<i32>(23059i, -1i, -2147483647i, 14869i)), arg_1.x).b.x), !arg_0.b.x);
    var var_1 = Struct_2(-2147483647i, ~_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 2147483647i, 0i, 16730i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, arg_0.a.x, u_input.a, u_input.a), vec4<i32>(41055i, 1i, arg_0.c.x, 2147483647i)) & vec4<i32>(2147483647i, 58445i, arg_0.c.x, -2147483647i)));
    var_0 = select(select(arg_0.b.zx, vec2<bool>(~arg_1.x < 0u, var_0.x), select(!(!arg_0.d), !var_0.x, true)), !vec2<bool>(false, arg_0.a.x == -2147483647i), arg_0.b.zz);
    global0 = array<Struct_2, 25>();
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-808f + _wgslsmith_div_f32(-644f, 1293f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -908f) + -310f)), -444f, _wgslsmith_f_op_f32(round(280f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(303f)))))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(288f, -115f, 962f, 836f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-590f, -1987f, 1429f, 1404f), vec4<f32>(708f, 1000f, 1821f, 667f))), true))))));
}

fn func_1() -> vec4<u32> {
    global0 = array<Struct_2, 25>();
    global0 = array<Struct_2, 25>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-837f, -488f, -1000f) + vec3<f32>(-473f, -349f, -1086f)) + vec3<f32>(-741f, 283f, -750f)) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-176f, -976f, -780f) * vec3<f32>(1714f, 1000f, 346f)))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) + vec4<f32>(var_0.x, -325f, 1147f, 1289f))))) + vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, var_0.x, _wgslsmith_f_op_f32(-345f - -1000f))) * _wgslsmith_f_op_vec4_f32(func_5(func_2(1u, Struct_2(firstTrailingBit(u_input.a), ~vec4<i32>(u_input.a, u_input.a, -1i, -1i)), 105955u), ~firstLeadingBit(vec2<u32>(1u, 1u)))));
    var var_2 = vec4<f32>(-393f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, -698f, false))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) + _wgslsmith_f_op_f32(-var_1.x)))), true)), var_0.x, -1052f);
    return select(~vec4<u32>(4294967295u, ~_wgslsmith_add_u32(0u, 57921u), 1u, _wgslsmith_add_u32(~1u, _wgslsmith_mult_u32(0u, 38517u))), vec4<u32>(31553u, ~57909u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 21429u), vec2<u32>(0u, 1u)), _wgslsmith_add_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(6655u, 0u, 1803u, 4294967295u), vec4<u32>(25475u, 4294967295u, 79036u, 4294967295u))), ~(~4294967295u)) | abs(abs(vec4<u32>(1u, 1u, 1u, 1u))), vec4<bool>(true, any(vec2<bool>(true, false)), true, !any(func_3(-1625f))));
}

fn func_6(arg_0: vec4<u32>, arg_1: bool, arg_2: vec2<bool>, arg_3: i32) -> i32 {
    let var_0 = _wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(arg_0.x, _wgslsmith_mult_u32(34023u, arg_0.x)), ~arg_0.x), _wgslsmith_add_u32(arg_0.x, arg_0.x >> (~arg_0.x % 32u))) >= ~arg_0.x;
    let var_1 = vec3<i32>(min(arg_3, arg_3), u_input.a, _wgslsmith_dot_vec3_i32(reverseBits(-vec3<i32>(1i, u_input.a, 18450i) | vec3<i32>(u_input.a, u_input.a, u_input.a)), reverseBits(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(arg_3, arg_3, -2147483647i), vec3<i32>(arg_3, arg_3, arg_3)), ~vec3<i32>(arg_3, -2147483647i, -37589i)))));
    global0 = array<Struct_2, 25>();
    global0 = array<Struct_2, 25>();
    var var_2 = arg_0.x;
    return 1i >> ((1u ^ ~(~arg_0.x)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_sub_i32(abs(u_input.a), 27431i) | _wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.a, u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 47097i, u_input.a, 2147483647i), -vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), 12031i), vec4<i32>(-1i, u_input.a, 36839i, _wgslsmith_div_i32(u_input.a, func_6(func_1(), u_input.a == u_input.a, select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), _wgslsmith_add_i32(u_input.a, 0i)))));
    global0 = array<Struct_2, 25>();
    var_0 = Struct_2(~((max(-4849i, -10746i) | select(u_input.a, 27284i, true)) & -u_input.a), var_0.b);
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~12295u), 1u), 25u)];
    global0 = array<Struct_2, 25>();
    let var_2 = global0[_wgslsmith_index_u32(~(~1u) >> (1u % 32u), 25u)];
    var var_3 = vec3<bool>(true, select(true, 1i < _wgslsmith_dot_vec4_i32(-var_2.b, ~var_2.b), all(select(vec2<bool>(true, true), func_3(938f).yx, false))), all(vec4<bool>(true, false, true, true)));
    var_3 = !(!(!func_3(-683f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-441f, _wgslsmith_f_op_f32(-753f * 636f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-309f + -249f) * -663f), _wgslsmith_f_op_f32(f32(-1f) * -241f))));
}

