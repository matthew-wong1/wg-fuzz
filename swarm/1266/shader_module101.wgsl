struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec4<i32>,
    d: vec2<f32>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: vec3<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec3<f32> {
    global0 = abs(-vec4<i32>(-_wgslsmith_mult_i32(13181i, -1i), 48570i, 16746i, -_wgslsmith_dot_vec4_i32(vec4<i32>(1i, global0.x, 0i, global0.x), vec4<i32>(global0.x, 32892i, global0.x, global0.x))));
    var var_0 = Struct_2(~vec3<u32>(countOneBits(1u), ~51002u, min(u_input.b.x, u_input.b.x)), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1442f, -1000f, 468f))) - vec3<f32>(1000f, 1000f, 787f)) + vec3<f32>(_wgslsmith_f_op_f32(-672f * 2437f), _wgslsmith_f_op_f32(floor(-529f)), -225f)), _wgslsmith_dot_vec4_i32(~vec4<i32>(global0.x, 1i, 0i, 2147483647i), select(vec4<i32>(-2376i, global0.x, global0.x, global0.x), countOneBits(vec4<i32>(global0.x, global0.x, global0.x, global0.x)), vec4<bool>(true, true, true, true))), ~select(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 31097u, u_input.a, u_input.a), vec4<u32>(0u, u_input.a, u_input.b.x, u_input.b.x)), ~vec4<u32>(1u, u_input.b.x, 27011u, 69501u), true)), vec4<i32>(-2147483647i, _wgslsmith_add_i32((global0.x >> (u_input.b.x % 32u)) ^ -33485i, _wgslsmith_dot_vec3_i32(-vec3<i32>(global0.x, -1i, global0.x), global0.yxw)), -global0.x, -39888i), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1673f, _wgslsmith_f_op_f32(f32(-1f) * -667f)))), vec4<bool>(any(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), false))), !any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false))), 4294967295u != ~(4294967295u ^ u_input.b.x), 924i <= (i32(-1i) * -global0.x)));
    let var_1 = var_0.c.x;
    var var_2 = abs(_wgslsmith_clamp_u32(925u, abs(4294967295u), max(~_wgslsmith_sub_u32(u_input.b.x, var_0.b.c.x), 31997u)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(var_0.b.a.x, 1455f, false)))), _wgslsmith_f_op_f32(f32(-1f) * -762f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1248f))))));
}

fn func_2(arg_0: vec2<u32>) -> i32 {
    var var_0 = _wgslsmith_clamp_vec2_i32(global0.zy, vec2<i32>(global0.x, ~(global0.x ^ global0.x)), -max(vec2<i32>(global0.x, global0.x), ~global0.zx)) & reverseBits(global0.wz);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-2522f - -479f), 328f, _wgslsmith_f_op_f32(trunc(965f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-277f, 1526f, 1141f)))))), var_0.x, _wgslsmith_clamp_vec4_u32(select(~vec4<u32>(u_input.b.x, arg_0.x, 1u, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(33185u, 4294967295u, 20988u, arg_0.x) ^ vec4<u32>(0u, u_input.b.x, 0u, 4294967295u), select(vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<u32>(47178u, u_input.a, arg_0.x, arg_0.x), true)), vec4<bool>(true, select(false, false, false), all(vec2<bool>(true, false)), any(vec4<bool>(true, true, false, false)))), ~((vec4<u32>(0u, arg_0.x, 0u, u_input.a) ^ vec4<u32>(26825u, 17042u, 69160u, u_input.a)) & (vec4<u32>(1u, 30936u, 116808u, 23004u) & vec4<u32>(u_input.b.x, 0u, u_input.b.x, 23881u))), ~_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b.x, 1u, arg_0.x, u_input.a), vec4<u32>(u_input.b.x, 18846u, u_input.b.x, 39795u))));
    let var_2 = max(var_0.x, var_0.x);
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec3_f32(func_3()).x));
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_1.a)))), var_1.b, vec4<u32>(abs(arg_0.x >> (~arg_0.x % 32u)), ~0u, ~u_input.b.x, arg_0.x));
    return -2743i;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: bool) -> i32 {
    global0 = min(~vec4<i32>(global0.x, func_2(u_input.b), -17337i, arg_0.b), ~countOneBits(vec4<i32>(global0.x, _wgslsmith_mult_i32(arg_0.b, arg_0.b), i32(-1i) * -10025i, _wgslsmith_mod_i32(-7137i, -9635i))));
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_div_f32(arg_0.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2598f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-160f)) - _wgslsmith_f_op_f32(arg_0.a.x + -600f)) + -1346f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -842f))), countOneBits(-77587i), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(u_input.a ^ 1u, 37169u), _wgslsmith_clamp_u32(u_input.a, 4294967295u >> (arg_0.c.x % 32u), 1u), _wgslsmith_sub_u32(arg_0.c.x, 1u >> (arg_0.c.x % 32u)), _wgslsmith_dot_vec2_u32(arg_0.c.xz & arg_0.c.zz, _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, 0u), vec2<u32>(1u, 0u), vec2<u32>(13624u, 38300u)))), _wgslsmith_div_vec4_u32(vec4<u32>(arg_0.c.x, firstTrailingBit(1u), reverseBits(arg_0.c.x), ~10427u), ~arg_0.c ^ vec4<u32>(1u, arg_0.c.x, arg_0.c.x, 63447u))));
    global0 = vec4<i32>(_wgslsmith_dot_vec2_i32(-global0.yz, vec2<i32>(_wgslsmith_dot_vec2_i32(global0.yz, ~global0.zz), -46595i)), arg_0.b, 1i, global0.x);
    global0 = max(_wgslsmith_clamp_vec4_i32(~_wgslsmith_mod_vec4_i32(-vec4<i32>(2147483647i, 36174i, 2147483647i, var_0.b), select(vec4<i32>(0i, var_0.b, global0.x, -17321i), vec4<i32>(-1i, 28482i, arg_0.b, 0i), vec4<bool>(arg_1.x, arg_2, arg_2, arg_1.x))), -(vec4<i32>(var_0.b, arg_0.b, -23858i, arg_0.b) ^ vec4<i32>(arg_0.b, 0i, 0i, arg_0.b)), firstLeadingBit(min(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, global0.x, 24476i, arg_0.b), vec4<i32>(global0.x, -1i, 0i, arg_0.b)), vec4<i32>(var_0.b, -1i, -2147483647i, var_0.b) | vec4<i32>(2147483647i, -53721i, global0.x, 0i)))), vec4<i32>(-8538i, arg_0.b << (_wgslsmith_add_u32(arg_0.c.x, min(var_0.c.x, arg_0.c.x)) % 32u), abs(~9515i) << (_wgslsmith_dot_vec3_u32(min(vec3<u32>(var_0.c.x, 0u, arg_0.c.x), vec3<u32>(1u, var_0.c.x, var_0.c.x)), min(arg_0.c.yxw, vec3<u32>(1u, arg_0.c.x, u_input.a))) % 32u), 0i));
    let var_1 = Struct_4(select(-_wgslsmith_clamp_vec4_i32(-vec4<i32>(-2147483647i, 15447i, global0.x, -2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(2557i, global0.x, global0.x, var_0.b), vec4<i32>(var_0.b, arg_0.b, 1i, var_0.b)), vec4<i32>(arg_0.b, arg_0.b, arg_0.b, arg_0.b)), vec4<i32>(_wgslsmith_add_i32(-1i, 2147483647i) | arg_0.b, 8982i << (_wgslsmith_mult_u32(var_0.c.x, 50523u) % 32u), global0.x ^ max(global0.x, global0.x), -1i), true), Struct_2(arg_0.c.wxz, Struct_1(_wgslsmith_f_op_vec3_f32(sign(arg_0.a)), -2147483647i, arg_0.c), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.b, -8268i, select(global0.x, global0.x, true), global0.x), vec4<i32>(var_0.b, ~(-2147483647i), var_0.b, ~2147483647i)), var_0.a.xz, vec4<bool>(true, any(select(arg_1.yz, arg_1.xx, arg_1.xy)), !(!arg_1.x), !arg_2)));
    return _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(max(global0.yz, vec2<i32>(var_0.b, arg_0.b)), vec2<i32>(-1i, global0.x)), i32(-1i) * -2468i), firstTrailingBit(min(~47553i, 1i)), 1i), ~(~reverseBits(abs(vec3<i32>(arg_0.b, global0.x, -10235i)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<i32>(global0.x, func_1(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(786f, -1022f, 1016f)), countOneBits(-1i), firstTrailingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, 1u)) & abs(vec4<u32>(u_input.a, 13777u, 0u, 4294967295u))), !vec3<bool>(all(vec3<bool>(false, true, true)), true, all(vec3<bool>(true, true, false))), true), -(~(-71518i >> (~u_input.a % 32u))), firstLeadingBit(0i & global0.x));
    global0 = _wgslsmith_sub_vec4_i32(-vec4<i32>(-1i, select(1i & global0.x, -36997i, true), _wgslsmith_clamp_i32(global0.x << (26503u % 32u), 2147483647i, global0.x), global0.x), select(-(~_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 53094i, 1i, 0i), vec4<i32>(16518i, global0.x, 14817i, -2367i))), -(-vec4<i32>(36911i, 2147483647i, global0.x, 0i) | ~vec4<i32>(-24836i, 0i, global0.x, 2147483647i)), vec4<bool>(all(vec3<bool>(false, true, false)), false, true, false)));
    var var_0 = vec3<i32>(-2147483647i, -(_wgslsmith_add_i32(_wgslsmith_mod_i32(-1i, global0.x), -2147483647i) & global0.x), _wgslsmith_dot_vec4_i32(max(-vec4<i32>(47528i, 2147483647i, -70212i, global0.x), -vec4<i32>(1826i, global0.x, global0.x, -2147483647i)) | abs(min(vec4<i32>(global0.x, global0.x, 2147483647i, 0i), vec4<i32>(global0.x, -2147483647i, global0.x, global0.x))), firstLeadingBit(countOneBits(vec4<i32>(1i, 2147483647i, -10939i, global0.x)))));
    var var_1 = Struct_3(_wgslsmith_mod_u32(~u_input.a, u_input.a) <= 110947u, global0.wyx, vec3<bool>(true, any(vec3<bool>(true, true, true)) && false, (true || all(vec3<bool>(false, true, false))) && !(21710u < u_input.a)));
    var var_2 = min(-51618i, -_wgslsmith_dot_vec4_i32(-(vec4<i32>(var_1.b.x, -5215i, global0.x, global0.x) | vec4<i32>(1i, var_1.b.x, var_0.x, var_0.x)), -(vec4<i32>(1i, -1i, var_1.b.x, var_0.x) & vec4<i32>(-51952i, global0.x, global0.x, var_1.b.x))));
    let var_3 = firstLeadingBit(u_input.b.x);
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-707f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-550f))))))), -456f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1161f - -375f) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -570f)))), _wgslsmith_f_op_f32(step(1267f, -133f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-893f, var_4.x), _wgslsmith_f_op_vec3_f32(func_3()).x, _wgslsmith_f_op_f32(-var_4.x), 608f)) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.x, -245f, -1023f, -501f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.x, 656f, var_4.x, var_4.x))))))), u_input.b.x, var_1.b.x);
}

