struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
    d: vec3<bool>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec2<i32> {
    var var_0 = ~vec2<u32>(u_input.c, arg_0.a);
    var var_1 = _wgslsmith_add_u32(var_0.x, 71994u);
    let var_2 = _wgslsmith_sub_vec2_i32(~_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.d, 0i), vec3<i32>(u_input.d, -1i, 2147483647i)), 2147483647i), abs(vec2<i32>(u_input.d, u_input.a))), -abs(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, 24369i), vec2<i32>(2147483647i, u_input.d)) | vec2<i32>(1i, -62609i)));
    var_1 = _wgslsmith_dot_vec3_u32(min(~vec3<u32>(firstLeadingBit(arg_0.a), 18579u, max(u_input.b, 20770u)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, var_0.x, 116312u), ~vec3<u32>(arg_0.a, 4294967295u, var_0.x))), vec3<u32>(select(50675u & _wgslsmith_div_u32(var_0.x, u_input.b), ~19849u >> (select(u_input.c, 0u, arg_1) % 32u), _wgslsmith_sub_i32(-19032i, 0i) != abs(u_input.a)), max(firstTrailingBit(arg_0.a), min(var_0.x, ~u_input.b)), _wgslsmith_div_u32(var_0.x, arg_0.c) ^ min(~arg_0.c, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a, 16179u, 1u), vec3<u32>(1u, 4294967295u, arg_0.c)))));
    var var_3 = arg_0;
    return vec2<i32>(var_2.x, -(~firstLeadingBit(var_2.x) ^ u_input.d));
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> vec2<u32> {
    let var_0 = arg_0.d;
    var var_1 = _wgslsmith_mult_vec2_i32(vec2<i32>(abs(select(_wgslsmith_mult_i32(u_input.a, arg_0.e.x), ~(-2147483647i), true)), 0i), arg_0.e);
    var_1 = arg_0.e;
    var_1 = _wgslsmith_add_vec2_i32(arg_0.e, -firstTrailingBit(func_3(Struct_1(27986u, true, 4294967295u, var_0.d, 1393f), !var_0.d.x)));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(754f, var_0.e, arg_1, -216f) - vec4<f32>(-678f, arg_0.a.e, -679f, -885f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.e, arg_0.a.e, var_0.e, 1000f) + vec4<f32>(595f, -640f, -518f, 288f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.e, arg_0.a.e, -1034f, 595f))) - vec4<f32>(_wgslsmith_div_f32(arg_0.b.e, -2201f), arg_0.b.e, _wgslsmith_f_op_f32(-arg_0.a.e), _wgslsmith_f_op_f32(ceil(2444f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(283f, -293f, var_0.e, var_0.e) * vec4<f32>(222f, -247f, -1827f, -2325f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.e, arg_0.d.e, arg_1, -1000f)))))));
    return (vec2<u32>(~(arg_0.b.a ^ 6536u), 4294967295u) >> (vec2<u32>(_wgslsmith_add_u32(1u, 1u), var_0.a) % vec2<u32>(32u))) ^ _wgslsmith_div_vec2_u32(select(min(~vec2<u32>(4294967295u, 4294967295u), vec2<u32>(2997u, arg_0.b.a)), _wgslsmith_div_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(u_input.b, 4294967295u)) >> ((vec2<u32>(36751u, u_input.c) ^ vec2<u32>(arg_0.b.a, 0u)) % vec2<u32>(32u)), !select(vec2<bool>(true, true), arg_0.a.d.xx, true)), vec2<u32>(u_input.b, 4294967295u));
}

fn func_4(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(~(-1i), 17644i, -(~u_input.d), ~(~u_input.a)), abs(~firstTrailingBit(vec4<i32>(0i, u_input.a, 3446i, u_input.d)))) & (vec4<i32>(-1i) * -vec4<i32>(-27104i, min(1i, 13624i), u_input.d, -1i));
    let var_1 = ~vec4<i32>(var_0.x, var_0.x, -firstTrailingBit(~u_input.d), var_0.x);
    var var_2 = var_0.x;
    return Struct_1(min(func_2(Struct_2(Struct_1(arg_0.x, true, arg_0.x, vec3<bool>(false, true, false), 256f), Struct_1(u_input.b, true, u_input.c, vec3<bool>(false, true, true), 342f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-489f, 1523f, -709f)), Struct_1(4294967295u, false, u_input.b, vec3<bool>(true, true, true), 1338f), max(vec2<i32>(var_0.x, u_input.a), vec2<i32>(var_0.x, u_input.d))), 1057f).x, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(u_input.b, arg_0.x), 27892u, 12001u, ~u_input.c), vec4<u32>(13430u, ~arg_0.x, reverseBits(u_input.b), _wgslsmith_dot_vec2_u32(arg_0, arg_0)))), select(any(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false))), true, !(!all(vec3<bool>(false, false, true)))), _wgslsmith_mod_u32(34535u, countOneBits(arg_0.x)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, all(vec3<bool>(false, false, true))), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1218f + -186f), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(332f, 935f), -1339f))))));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<u32>) -> bool {
    var var_0 = vec2<i32>(u_input.a ^ _wgslsmith_dot_vec4_i32(firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.d, 1i, u_input.a), vec4<i32>(u_input.d, u_input.a, u_input.d, u_input.d))), firstLeadingBit(~vec4<i32>(-36410i, u_input.a, -13530i, u_input.a))), ~reverseBits(33339i));
    var var_1 = Struct_2(func_4(~(~arg_1) ^ func_2(Struct_2(Struct_1(0u, false, arg_0.x, vec3<bool>(false, true, false), 1000f), Struct_1(4294967295u, false, arg_0.x, vec3<bool>(false, true, false), 1135f), vec3<f32>(964f, -1776f, 296f), Struct_1(arg_1.x, false, arg_1.x, vec3<bool>(true, false, false), 675f), vec2<i32>(u_input.d, -29252i)), _wgslsmith_f_op_f32(trunc(-365f)))), func_4(~vec2<u32>(92100u, func_4(arg_0.xz).c)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(2085f)), -633f, _wgslsmith_f_op_f32(-1f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-457f, -790f, -1075f))), Struct_1(select(min(~45490u, 63414u), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.b, arg_0.x), ~arg_0.x, ~arg_1.x), all(select(vec2<bool>(false, false), vec2<bool>(true, false), false))), true, _wgslsmith_mult_u32(u_input.c, min(func_4(arg_1).a, 59055u | arg_0.x)), func_4(~arg_1).d, -903f), select(-(~select(vec2<i32>(7287i, -2147483647i), vec2<i32>(var_0.x, -1i), true)), vec2<i32>(u_input.d, 1i), true));
    var_1 = Struct_2(Struct_1(6406u >> (~(~var_1.b.c) % 32u), true, _wgslsmith_dot_vec3_u32(~(arg_0.yzx & vec3<u32>(6664u, 1u, u_input.c)), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(arg_0.wzy, arg_0.xww), arg_0.wyy ^ vec3<u32>(57110u, u_input.b, u_input.c))), vec3<bool>(select(all(vec2<bool>(var_1.d.b, var_1.a.d.x)), var_1.e.x > var_0.x, var_1.d.d.x), true, false), _wgslsmith_f_op_f32(-549f + -437f)), func_4(~vec2<u32>(_wgslsmith_mod_u32(1u, 62917u), ~u_input.b)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(917f, 1050f, 1107f)), _wgslsmith_f_op_vec3_f32(select(var_1.c, vec3<f32>(608f, 228f, _wgslsmith_f_op_f32(var_1.b.e * 1290f)), var_1.d.d)))), Struct_1(11131u, false, 1u, var_1.d.d, 865f), ~var_1.e);
    var_0 = var_1.e;
    let var_2 = _wgslsmith_mult_vec4_i32(-abs(vec4<i32>(_wgslsmith_clamp_i32(-10612i, -2147483647i, u_input.a), ~var_1.e.x, 0i, max(u_input.a, 5303i))), abs(firstTrailingBit(vec4<i32>(var_1.e.x, u_input.d, var_1.e.x, 0i) | vec4<i32>(u_input.d, u_input.d, -22633i, -27763i))) ^ -vec4<i32>(var_1.e.x, countOneBits(-38882i), -69183i, var_1.e.x));
    return var_1.d.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(~_wgslsmith_sub_u32(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 55072u, 4294967295u, u_input.b), vec4<u32>(17753u, 26690u, 109517u, u_input.b))), true, ~abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 30271u, u_input.c), vec3<u32>(0u, 35798u, u_input.c))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-932f + -683f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-110f + 261f))))), Struct_1(3915u, func_1(~min(vec4<u32>(u_input.b, 11652u, u_input.c, 14742u), vec4<u32>(u_input.b, u_input.c, u_input.b, 1u)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(1u, u_input.b))), ~u_input.b, select(vec3<bool>(true, true, any(vec3<bool>(false, true, false))), vec3<bool>(true, true, true), true), _wgslsmith_f_op_f32(select(-1358f, -1316f, !any(vec4<bool>(false, true, false, true))))), vec3<f32>(_wgslsmith_f_op_f32(-1179f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1820f))))), -1040f, -405f), Struct_1(_wgslsmith_dot_vec3_u32((vec3<u32>(50663u, u_input.b, u_input.b) | vec3<u32>(u_input.b, u_input.c, u_input.c)) << (firstTrailingBit(vec3<u32>(u_input.b, u_input.b, 51868u)) % vec3<u32>(32u)), vec3<u32>(~199u, func_2(Struct_2(Struct_1(u_input.c, true, 4294967295u, vec3<bool>(true, false, false), -1011f), Struct_1(u_input.b, true, u_input.b, vec3<bool>(true, false, false), 140f), vec3<f32>(968f, 147f, -1000f), Struct_1(u_input.c, false, u_input.b, vec3<bool>(true, false, false), 321f), vec2<i32>(5635i, u_input.a)), -499f).x, 1u)), true || (7531u < ~u_input.c), u_input.b, !select(vec3<bool>(false, true, false), func_4(vec2<u32>(u_input.b, 1u)).d, true), -1829f), ~select(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.d), vec2<i32>(u_input.d, u_input.d)), 1i), _wgslsmith_add_vec2_i32(-vec2<i32>(2147483647i, 10624i), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.d), vec2<i32>(-1i, 2147483647i), vec2<i32>(-6019i, -27107i))), true));
    let x = u_input.a;
    s_output = StorageBuffer(14885u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1289f, var_0.a.e, var_0.a.e) - var_0.c) + _wgslsmith_f_op_vec3_f32(sign(var_0.c))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1395f, 1263f, var_0.b.e))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.e, var_0.b.e, var_0.d.e))), var_0.c, _wgslsmith_div_f32(197f, var_0.d.e) == -250f))), vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.e), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -634f), _wgslsmith_f_op_f32(f32(-1f) * -164f)), -518f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.c.x, _wgslsmith_f_op_f32(-var_0.b.e)))));
}

