struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: vec2<u32>,
    c: Struct_2,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: u32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-183f * -1652f), _wgslsmith_f_op_f32(f32(-1f) * -704f), _wgslsmith_f_op_f32(-1113f + 1646f), _wgslsmith_f_op_f32(max(168f, 2324f))))), vec4<f32>(1f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1237f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-341f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(540f - -1000f))))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-167f)));
    let var_2 = !(!any(select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), true), false)));
    let var_3 = _wgslsmith_mult_vec3_u32(abs(vec3<u32>(max(72935u, arg_2), ~arg_1.a, ~67741u)), u_input.c.yyx & _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.c.x, 72648u, u_input.c.x), abs(vec3<u32>(93480u, arg_2, arg_2)))) | u_input.c.wxx;
    let var_4 = _wgslsmith_clamp_vec4_u32(~(~(~vec4<u32>(arg_1.a, arg_1.a, 61790u, arg_0))), u_input.c, vec4<u32>(~(~(~u_input.c.x)), 1u, 21910u, firstTrailingBit(_wgslsmith_div_u32(abs(1u), arg_0))));
    return !select(select(!vec4<bool>(false, var_2, true, var_2), !vec4<bool>(false, var_2, var_2, false), select(!vec4<bool>(var_2, false, false, false), select(vec4<bool>(var_2, var_2, var_2, true), vec4<bool>(var_2, var_2, var_2, var_2), vec4<bool>(var_2, var_2, var_2, var_2)), any(vec2<bool>(var_2, var_2)))), select(select(select(vec4<bool>(var_2, var_2, true, var_2), vec4<bool>(var_2, var_2, false, var_2), vec4<bool>(var_2, var_2, false, true)), !vec4<bool>(var_2, false, false, false), vec4<bool>(var_2, var_2, false, var_2)), !vec4<bool>(var_2, false, var_2, true), select(vec4<bool>(var_2, false, var_2, var_2), vec4<bool>(false, var_2, var_2, var_2), var_2)), !vec4<bool>(false, true, !var_2, any(vec3<bool>(var_2, true, false))));
}

fn func_2() -> bool {
    var var_0 = vec3<bool>(true, select(u_input.c.x >= ~1u, all(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), !(!(u_input.c.x <= 4294967295u))), true);
    var var_1 = vec4<bool>(any(!select(!vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, false, false), !vec3<bool>(false, var_0.x, true))), var_0.x, all(!vec4<bool>(37822u < u_input.c.x, var_0.x | true, true, false)), var_0.x);
    var_1 = select(select(vec4<bool>(true, true, false, all(vec3<bool>(var_0.x, var_1.x, true))), select(!vec4<bool>(false, true, var_0.x, false), !select(vec4<bool>(var_1.x, true, false, var_0.x), vec4<bool>(false, var_1.x, var_0.x, var_0.x), vec4<bool>(var_1.x, var_1.x, true, true)), func_3(_wgslsmith_add_u32(34376u, 1u), Struct_2(4294967295u, Struct_1(vec3<u32>(58468u, 0u, 108708u), 2147483647i, vec4<i32>(-1i, 0i, u_input.b.x, -1i), vec4<u32>(u_input.c.x, u_input.c.x, 0u, u_input.c.x), 2147483647i), u_input.b.x), 6376u)), func_3(~firstLeadingBit(u_input.c.x), Struct_2(u_input.c.x << (u_input.c.x % 32u), Struct_1(u_input.c.yzz, 2147483647i, vec4<i32>(-17355i, u_input.a, -63399i, -5099i), vec4<u32>(4294967295u, 4294967295u, 0u, 46298u), u_input.b.x), countOneBits(-22284i)), 0u).x), !(!vec4<bool>(true, true, any(vec2<bool>(true, true)), !var_1.x)), u_input.b.x < _wgslsmith_clamp_i32(u_input.a, -15566i, ~2147483647i));
    var_0 = !var_1.zzy;
    let var_2 = false;
    return false;
}

fn func_1(arg_0: f32) -> i32 {
    var var_0 = select(!vec3<bool>(all(vec4<bool>(false, true, false, false)) || true, false, !func_2()), vec3<bool>(true, true, true), !(!vec3<bool>(false, func_3(41416u, Struct_2(1u, Struct_1(vec3<u32>(u_input.c.x, u_input.c.x, 1u), -1i, vec4<i32>(u_input.b.x, u_input.a, u_input.a, u_input.a), u_input.c, -17468i), u_input.a), 4294967295u).x, true)));
    var_0 = !(!select(!func_3(u_input.c.x, Struct_2(36465u, Struct_1(u_input.c.yww, 1i, vec4<i32>(-2147483647i, u_input.b.x, u_input.a, u_input.a), vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, 12697u), u_input.b.x), -41650i), u_input.c.x).xxz, select(vec3<bool>(false, var_0.x, false), vec3<bool>(false, false, false), vec3<bool>(var_0.x, false, true)), true));
    var var_1 = arg_0;
    var_1 = _wgslsmith_div_f32(-524f, _wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(step(1f, -170f)))));
    var var_2 = u_input.b.xx ^ _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(-vec2<i32>(0i, u_input.a), vec2<i32>(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 1i, u_input.a), u_input.b))), abs(select(u_input.b.yx, -u_input.b.xx, !vec2<bool>(var_0.x, false))));
    return ~(-2147483647i);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -173f))), -288f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-781f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f)))))));
    var var_1 = vec4<bool>(true & any(vec3<bool>(true, true, true)), all(vec3<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true))), false, any(vec2<bool>(true, false)) && true)), all(!vec3<bool>(func_2(), true, true)), true);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-790f)), 184f)) + -1000f);
    var_0 = var_2;
    var_0 = _wgslsmith_f_op_f32(select(var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2, -214f)))), !(!var_1.x)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(0u << (~(~min(0u, u_input.c.x)) % 32u), func_4(Struct_1(vec3<u32>(u_input.c.x, _wgslsmith_mod_u32(u_input.c.x, u_input.c.x), 1u), func_1(-2144f) >> (u_input.c.x % 32u), vec4<i32>(_wgslsmith_clamp_i32(-1i, u_input.a, 18984i), 1i, _wgslsmith_div_i32(u_input.b.x, u_input.a), u_input.a), ~vec4<u32>(u_input.c.x, 14981u, 1u, u_input.c.x) & select(vec4<u32>(48030u, 0u, u_input.c.x, 1u), u_input.c, vec4<bool>(false, true, false, false)), 26101i)), reverseBits(0i) | (u_input.a & -2147483647i));
    var var_1 = vec2<bool>((_wgslsmith_dot_vec2_u32(u_input.c.xy, ~vec2<u32>(u_input.c.x, u_input.c.x)) <= 0u) && true, func_3(~u_input.c.x, Struct_2(29063u, var_0.b, abs(firstLeadingBit(0i))), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(min(u_input.c, var_0.b.d), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, 18148u, u_input.c.x, 9811u), vec4<u32>(88861u, var_0.b.d.x, u_input.c.x, var_0.b.d.x), var_0.b.d)), u_input.c.x)).x);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(144f * 1103f), _wgslsmith_f_op_f32(max(-332f, -969f)), _wgslsmith_f_op_f32(1526f + -734f)) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-832f, -561f, -402f), vec3<f32>(-1155f, -511f, -1788f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-531f)), _wgslsmith_f_op_f32(sign(138f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-414f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1545f)))))));
    var var_3 = vec4<u32>(firstLeadingBit(_wgslsmith_add_u32(~1u, u_input.c.x)), 84097u, var_0.b.a.x, var_0.b.d.x);
    var_1 = !vec2<bool>(!(!(!var_1.x)), false);
    var_3 = ~vec4<u32>(5234u, _wgslsmith_dot_vec3_u32(min(~u_input.c.zxz, select(u_input.c.zyw, vec3<u32>(1u, u_input.c.x, var_3.x), var_1.x)), u_input.c.yzy), var_3.x, ~firstLeadingBit(var_3.x));
    var_3 = _wgslsmith_add_vec4_u32(~(~var_0.b.d), ~vec4<u32>(0u, var_3.x, reverseBits(var_3.x), var_3.x) ^ vec4<u32>(1u >> (var_3.x % 32u), u_input.c.x, ~u_input.c.x << (var_0.a % 32u), ~var_3.x));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1591f - var_2.x))) - var_2.x) - var_2.x));
    var_1 = select(!(!func_3(_wgslsmith_div_u32(34743u, var_3.x), Struct_2(23284u, Struct_1(vec3<u32>(var_3.x, var_3.x, u_input.c.x), 1i, vec4<i32>(-2147483647i, u_input.a, var_0.b.e, var_0.c), var_0.b.d, -1i), u_input.a), ~4294967295u).xy), !vec2<bool>(var_1.x, var_1.x), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1000f + -634f), ~_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(countOneBits(var_0.b.c), _wgslsmith_add_vec4_i32(var_0.b.c, var_0.b.c)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, var_0.b.b, -2147483647i, 21578i), vec4<i32>(-2147483647i, 1i, var_0.c, 0i) | vec4<i32>(51879i, -1i, -151i, u_input.a))), var_0.b.c.wyx, firstLeadingBit(-_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, -2147483647i, 1i), ~var_0.b.c)));
}

