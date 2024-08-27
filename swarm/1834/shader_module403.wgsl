struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 23>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: u32) -> vec4<bool> {
    global0 = array<vec2<u32>, 23>();
    global0 = array<vec2<u32>, 23>();
    let var_0 = firstTrailingBit(~arg_0.c);
    global0 = array<vec2<u32>, 23>();
    let var_1 = Struct_1(arg_1.wx, vec4<bool>(!arg_0.b.x, (var_0.x == 13789u) & true, any(!vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(807f)))) >= 1000f), firstLeadingBit(vec4<u32>(abs(10518u), 1u, ~u_input.e.x, 45356u)) << (vec4<u32>(var_0.x, 42037u, ~var_0.x << (abs(var_0.x) % 32u), 18658u) % vec4<u32>(32u)), _wgslsmith_dot_vec3_i32(arg_1.xyy & -arg_1.zzz, arg_1.xxx), u_input.c);
    return var_1.b;
}

fn func_2(arg_0: vec3<f32>, arg_1: i32) -> Struct_2 {
    var var_0 = abs(_wgslsmith_dot_vec4_i32(~vec4<i32>(~arg_1, -1i, _wgslsmith_mod_i32(u_input.a, arg_1), abs(u_input.a)), vec4<i32>(_wgslsmith_mult_i32(arg_1, -7397i), -1i, ~1i, arg_1) & _wgslsmith_div_vec4_i32(select(vec4<i32>(-9207i, -8406i, u_input.b.x, 2147483647i), vec4<i32>(-25129i, 0i, 1i, arg_1), true), -vec4<i32>(-51350i, 8792i, 2147483647i, arg_1))));
    var var_1 = false;
    var_1 = false;
    let var_2 = Struct_1(abs(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, arg_1 | 6948i), _wgslsmith_mult_vec2_i32(abs(u_input.b), ~vec2<i32>(1i, -2147483647i)))), func_3(Struct_1(vec2<i32>(~2147483647i, abs(u_input.c)), vec4<bool>(true, all(vec3<bool>(false, false, true)), true, select(false, false, false)), ~(~vec4<u32>(u_input.d, u_input.d, u_input.e.x, u_input.d)), u_input.c, 2147483647i), abs(vec4<i32>(~arg_1, select(arg_1, u_input.c, false), -u_input.b.x, u_input.c)), 0u), ~select(~(~vec4<u32>(u_input.e.x, 5043u, u_input.e.x, u_input.e.x)), vec4<u32>(~u_input.e.x, _wgslsmith_clamp_u32(4294967295u, u_input.e.x, u_input.e.x), _wgslsmith_clamp_u32(18017u, u_input.e.x, u_input.e.x), _wgslsmith_sub_u32(u_input.d, u_input.e.x)), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, true, true), true)), _wgslsmith_dot_vec3_i32(~(min(vec3<i32>(-1i, arg_1, 22074i), vec3<i32>(u_input.c, 2147483647i, -1i)) ^ vec3<i32>(-10752i, 1i, u_input.b.x)), max(_wgslsmith_div_vec3_i32(abs(vec3<i32>(u_input.c, arg_1, arg_1)), reverseBits(vec3<i32>(arg_1, 7197i, arg_1))), ~(-vec3<i32>(u_input.a, u_input.a, -19157i)))), arg_1);
    var var_3 = var_2;
    return Struct_2(func_3(Struct_1(_wgslsmith_mod_vec2_i32(var_2.a, vec2<i32>(-1i, -1i)), !var_3.b, var_2.c >> (var_2.c % vec4<u32>(32u)), ~_wgslsmith_sub_i32(2147483647i, 1i), abs(_wgslsmith_sub_i32(0i, var_2.d))), ~abs(vec4<i32>(var_2.e, u_input.b.x, 0i, var_2.d)) >> (vec4<u32>(firstLeadingBit(4294967295u), ~0u, 71207u, 1u) % vec4<u32>(32u)), var_3.c.x), Struct_1(vec2<i32>(-firstLeadingBit(0i), -51474i), !(!vec4<bool>(false, var_3.b.x, false, false)), select(vec4<u32>(4294967295u, var_3.c.x, 37640u, 73502u & u_input.e.x), vec4<u32>(~4294967295u, var_3.c.x & var_3.c.x, 1u, min(16205u, 28347u)), !(!var_2.b)), u_input.c | _wgslsmith_clamp_i32(2147483647i, -73089i, var_3.e ^ arg_1), ~(~(-8070i))), ~(~var_2.c.x), var_2);
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(913f, 979f), vec2<f32>(-1133f, 338f))) + vec2<f32>(-1221f, -1071f)))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(199f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(218f * -251f))), true)));
}

fn func_5(arg_0: vec2<f32>) -> u32 {
    global0 = array<vec2<u32>, 23>();
    var var_0 = _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.d, 1u ^ u_input.d) >> (global0[_wgslsmith_index_u32(204u, 23u)] % vec2<u32>(32u))), max(_wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(1u, u_input.d) >> (u_input.e % vec2<u32>(32u))), countOneBits(global0[_wgslsmith_index_u32(4294967295u, 23u)])), ~(~firstLeadingBit(vec2<u32>(35563u, u_input.d)))));
    let var_1 = func_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-112f))), _wgslsmith_f_op_f32(-arg_0.x), arg_0.x), u_input.b.x);
    var var_2 = 1f;
    var_0 = ~_wgslsmith_dot_vec3_u32(abs(var_1.d.c.zyx), ~select(vec3<u32>(4294967295u, var_1.c, 1u), ~vec3<u32>(54301u, 1u, u_input.e.x), !var_1.d.b.zww));
    return select(~firstTrailingBit(u_input.d), _wgslsmith_div_u32(abs(41184u), select(~(~u_input.e.x), var_1.c, true)), false);
}

fn func_1(arg_0: bool, arg_1: vec4<f32>) -> u32 {
    let var_0 = Struct_2(vec4<bool>(arg_0, arg_0 & false, arg_0, any(vec2<bool>(any(vec4<bool>(false, arg_0, true, false)), arg_1.x > arg_1.x))), Struct_1(max(-vec2<i32>(u_input.c, 19706i), -u_input.b) >> (u_input.e % vec2<u32>(32u)), vec4<bool>(true, !arg_0, arg_0, any(vec4<bool>(true, true, arg_0, arg_0))), firstLeadingBit(max(vec4<u32>(4294967295u, 62225u, u_input.d, u_input.d), vec4<u32>(47276u, u_input.d, u_input.d, 1u))), u_input.b.x << (4294967295u % 32u), -53892i), func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(any(vec4<bool>(arg_0, false, true, false)), func_2(vec3<f32>(-559f, 1000f, 1078f), u_input.c), func_2(arg_1.xxz, u_input.c).b)))), func_2(arg_1.xyz, u_input.b.x).b);
    global0 = array<vec2<u32>, 23>();
    global0 = array<vec2<u32>, 23>();
    let var_1 = -239f;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(870f + var_1), arg_1.x);
    return var_0.c;
}

fn func_6(arg_0: u32, arg_1: bool) -> Struct_1 {
    var var_0 = arg_1;
    global0 = array<vec2<u32>, 23>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(159f, -327f, 467f, 1672f) - vec4<f32>(-266f, 1033f, -1090f, -695f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1246f, 1484f, -851f, -1767f))))) * vec4<f32>(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(sign(-2237f))), 241f, _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1236f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1210f, -417f, 486f, 144f)) + vec4<f32>(_wgslsmith_f_op_f32(select(-2554f, 366f, true)), _wgslsmith_f_op_f32(min(1000f, 1264f)), -1660f, _wgslsmith_f_op_f32(1014f - -322f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-786f, _wgslsmith_f_op_f32(485f - 235f), _wgslsmith_f_op_f32(min(-574f, -1301f)), _wgslsmith_f_op_f32(-534f * 1644f)))));
    var_0 = min(~_wgslsmith_mod_i32(_wgslsmith_div_i32(0i, -1i), u_input.c ^ 2147483647i), 24663i & _wgslsmith_mult_i32(i32(-1i) * -47965i, u_input.c)) == _wgslsmith_mult_i32(~1i, (-u_input.b.x | -1653i) & -u_input.b.x);
    var var_2 = var_1;
    return Struct_1(vec2<i32>(u_input.a, i32(-1i) * -(~0i)), !(!(!(!vec4<bool>(arg_1, arg_1, arg_1, true)))), firstTrailingBit(_wgslsmith_add_vec4_u32(abs(~vec4<u32>(u_input.d, u_input.d, arg_0, 4294967295u)), ~reverseBits(vec4<u32>(u_input.d, arg_0, arg_0, 1u)))), u_input.c, -1i & u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 23>();
    global0 = array<vec2<u32>, 23>();
    var var_0 = func_6(_wgslsmith_mod_u32(42035u, min(func_1(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2142f, 393f, -667f, -490f))), u_input.d)), (!select(false, false, false) | !any(vec3<bool>(false, true, true))) & true);
    var var_1 = func_6(~func_1(true, vec4<f32>(1f, 1f, 1f, 1f)), ~u_input.e.x < _wgslsmith_div_u32(~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 22658u, var_0.c.x), var_0.c.xzx) >> (func_6(var_0.c.x, true).c.x % 32u)));
    global0 = array<vec2<u32>, 23>();
    let var_2 = var_1.b.wyy;
    var var_3 = Struct_2(var_1.b, func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1319f, -1146f, 727f))), var_1.e).d, var_1.c.x, Struct_1(min(u_input.b, var_0.a), !var_0.b, firstTrailingBit(~(vec4<u32>(0u, 28327u, var_0.c.x, 54360u) ^ var_1.c)), -111i, func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1846f, -159f, 1000f)), ~u_input.b.x).d.d));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e);
}

