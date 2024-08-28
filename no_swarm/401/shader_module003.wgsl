struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: vec3<bool>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<bool>,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>) -> vec2<bool> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(1182f, 589f)), _wgslsmith_f_op_f32(477f + 1496f))) + 816f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-634f - -1041f)))), 2639f);
    let var_1 = Struct_4(reverseBits(vec2<u32>(u_input.e, u_input.d.x | 1u)), arg_0.a.x);
    var var_2 = var_1;
    var_2 = var_1;
    var_2 = var_1;
    return vec2<bool>(_wgslsmith_f_op_f32(522f - _wgslsmith_f_op_f32(-var_0)) == var_0, _wgslsmith_div_i32(-3047i, u_input.c.x) <= -59897i);
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_2, arg_3: bool) -> vec2<bool> {
    return !(!vec2<bool>(true, select(arg_1 || false, true, arg_2.e.a.x)));
}

fn func_2(arg_0: Struct_4, arg_1: i32, arg_2: f32, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = vec4<i32>(u_input.a.x, u_input.a.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 2147483647i, min(u_input.a.x, arg_1), _wgslsmith_add_i32(u_input.c.x, arg_1)), -u_input.c), u_input.a.x);
    let var_1 = Struct_1(func_4(86521u, arg_2 != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1812f * arg_2)), Struct_2(abs(select(vec4<u32>(arg_0.a.x, u_input.d.x, 1u, 1u), u_input.d, vec4<bool>(false, true, arg_0.b, arg_0.b))), -firstLeadingBit(u_input.c), !(!vec4<bool>(arg_0.b, false, true, arg_0.b)), vec4<bool>(!arg_0.b, arg_0.b, arg_0.b, false), Struct_1(func_3(Struct_1(vec2<bool>(true, arg_0.b), arg_3.yz, vec3<bool>(arg_0.b, arg_0.b, arg_0.b), vec4<i32>(arg_1, -51555i, arg_1, 1i)), vec4<i32>(1i, 1i, u_input.c.x, var_0.x)), var_0.zy, select(vec3<bool>(arg_0.b, true, arg_0.b), vec3<bool>(false, arg_0.b, arg_0.b), vec3<bool>(true, arg_0.b, arg_0.b)), u_input.c)), arg_0.b), vec2<i32>(arg_3.x, -(i32(-1i) * -u_input.a.x)), vec3<bool>(any(!(!vec3<bool>(false, true, arg_0.b))), true, arg_0.b), u_input.c);
    var var_2 = arg_0;
    var var_3 = var_1;
    let var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1667f, 417f, -1171f) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(990f, 160f, _wgslsmith_f_op_f32(-arg_2)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, -681f, arg_2) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2, arg_2, 1634f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1895f, arg_2, -1000f), vec3<f32>(arg_2, -1605f, -608f))))))));
    return Struct_1(!select(vec2<bool>(true, var_2.b), var_1.a, !(!var_3.a)), var_1.b >> (~(~(vec2<u32>(0u, u_input.b) & arg_0.a)) % vec2<u32>(32u)), !var_1.c, _wgslsmith_mult_vec4_i32(u_input.c, ~_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_3.x, var_3.d.x, var_1.b.x, -1i), vec4<i32>(8582i, arg_3.x, u_input.a.x, var_3.d.x), vec4<i32>(u_input.c.x, -2147483647i, -17176i, arg_1)), ~vec4<i32>(-12039i, 40823i, u_input.c.x, var_1.b.x))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_5, arg_3: vec4<u32>) -> vec4<f32> {
    let var_0 = vec2<bool>(true, !(any(vec3<bool>(arg_1.b, true, arg_0.c.x)) && true));
    let var_1 = vec2<u32>(~(_wgslsmith_clamp_u32(18012u ^ u_input.e, 12105u, arg_1.a.x) >> (select(u_input.e, arg_1.a.x, var_0.x) % 32u)), ~reverseBits(~(~5973u)));
    var var_2 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(arg_2.c * _wgslsmith_f_op_f32(-arg_2.c)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1000f, arg_2.c, var_0.x)), _wgslsmith_f_op_f32(select(arg_2.c, arg_2.c, arg_1.b)))))), arg_2.c, arg_2.c)));
    let var_3 = vec2<u32>(~(~u_input.e), ~(~(~(~66559u))));
    var_2 = vec4<f32>(var_2.x, 1169f, _wgslsmith_div_f32(arg_2.c, _wgslsmith_f_op_f32(sign(1303f))), 1383f);
    return vec4<f32>(-359f, _wgslsmith_f_op_f32(-arg_2.c), _wgslsmith_f_op_f32(f32(-1f) * -1351f), -624f);
}

fn func_1() -> bool {
    let var_0 = Struct_3(false, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_div_f32(522f, 289f), -837f, _wgslsmith_f_op_f32(trunc(-965f)), _wgslsmith_f_op_f32(trunc(-361f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(func_5(func_2(Struct_4(u_input.d.zz, false), u_input.c.x, 928f, u_input.a), Struct_4(u_input.d.wx, false), Struct_5(Struct_1(vec2<bool>(false, true), u_input.a.xy, vec3<bool>(true, false, false), u_input.c), u_input.a.x, 1865f), u_input.d)))), -(countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(-40114i, 2147483647i, u_input.c.x), vec3<i32>(u_input.c.x, u_input.a.x, 2147483647i))) << ((vec3<u32>(0u, 1u, 97905u) | ~vec3<u32>(u_input.b, u_input.b, 4294967295u)) % vec3<u32>(32u))), max(~abs(vec3<u32>(u_input.d.x, u_input.d.x, 0u)), u_input.d.xyz));
    var var_1 = Struct_3(!var_0.a, vec4<f32>(_wgslsmith_f_op_f32(1901f * -1147f), var_0.b.x, var_0.b.x, var_0.b.x), func_2(Struct_4(~var_0.d.xx, func_4(countOneBits(4294967295u), all(vec4<bool>(false, false, var_0.a, var_0.a)), Struct_2(vec4<u32>(u_input.e, 41756u, u_input.d.x, 0u), vec4<i32>(u_input.c.x, 19213i, u_input.a.x, u_input.c.x), vec4<bool>(var_0.a, var_0.a, false, var_0.a), vec4<bool>(var_0.a, true, var_0.a, var_0.a), Struct_1(vec2<bool>(false, var_0.a), u_input.a.yx, vec3<bool>(var_0.a, false, var_0.a), vec4<i32>(u_input.a.x, u_input.c.x, 3990i, 38457i))), var_0.a).x), var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -753f))), u_input.c.xzw).d.zwz, abs(countOneBits(vec3<u32>(4294967295u, 6490u, 0u)) & max(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.b), vec3<u32>(1u, var_0.d.x, u_input.e)), vec3<u32>(u_input.b, 26177u, u_input.e))));
    let var_2 = func_2(Struct_4(vec2<u32>(_wgslsmith_div_u32(24419u, firstLeadingBit(12781u)), ~(~var_0.d.x)), !var_1.a), ~(-var_1.c.x), _wgslsmith_f_op_f32(var_1.b.x + var_0.b.x), vec3<i32>(min(var_1.c.x, _wgslsmith_mult_i32(11402i, ~25863i)), ~(~21691i), -54096i)).c;
    var var_3 = !var_1.a;
    var_3 = any(var_2);
    return var_1.d.x < _wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.d.yz, vec2<u32>(var_0.d.x, 0u)), u_input.d.x), var_0.d.x), u_input.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(select(~_wgslsmith_add_vec4_u32(u_input.d, ~vec4<u32>(u_input.b, 18638u, 4294967295u, u_input.d.x)), u_input.d, func_1() | true), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-u_input.c.x, min(-1i, 2147483647i), 49169i, select(1i, -55884i, false)), _wgslsmith_mult_vec4_i32(-u_input.c, u_input.c)), u_input.c), vec4<bool>(!(6831i < min(-2147483647i, u_input.c.x)), !func_2(Struct_4(vec2<u32>(u_input.b, u_input.b), true), i32(-1i) * -2147483647i, -1524f, vec3<i32>(u_input.a.x, 1i, u_input.c.x)).a.x, any(select(func_4(u_input.e, true, Struct_2(u_input.d, u_input.c, vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), Struct_1(vec2<bool>(false, true), u_input.c.xz, vec3<bool>(false, true, true), vec4<i32>(u_input.c.x, -2147483647i, -2147483647i, 0i))), false), vec2<bool>(true, true), true)), any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)))), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, func_2(Struct_4(u_input.d.yy, false), u_input.a.x, -1098f, u_input.a).c.x)), vec4<bool>(false, true, false, !func_4(u_input.d.x, true, Struct_2(u_input.d, u_input.c, vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), Struct_1(vec2<bool>(false, false), u_input.a.zz, vec3<bool>(false, false, false), u_input.c)), true).x), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), false), vec4<bool>(false, true, true, false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), false)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), true))), func_2(Struct_4(u_input.d.ww, (u_input.b ^ 36617u) <= _wgslsmith_clamp_u32(u_input.e, 1u, u_input.e)), 1i, -1256f, u_input.a >> (min(_wgslsmith_mult_vec3_u32(u_input.d.yxz, vec3<u32>(68239u, 38580u, u_input.e)), countOneBits(vec3<u32>(u_input.d.x, 27583u, 38823u))) % vec3<u32>(32u))));
    let var_1 = _wgslsmith_f_op_f32(sign(1116f));
    var var_2 = _wgslsmith_div_vec2_i32(-var_0.e.b, abs(~reverseBits(u_input.a.xz)));
    let var_3 = 1u;
    let var_4 = Struct_4(abs(firstTrailingBit(_wgslsmith_clamp_vec2_u32(countOneBits(u_input.d.wx), u_input.d.xx | vec2<u32>(48221u, u_input.d.x), _wgslsmith_mod_vec2_u32(u_input.d.wy, u_input.d.zx)))), var_0.c.x);
    var_0 = Struct_2(max(countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(var_4.a.x, var_3, var_0.a.x, var_3), var_0.a)), vec4<u32>(var_0.a.x, var_0.a.x, ~var_0.a.x, _wgslsmith_dot_vec2_u32(~u_input.d.xx, vec2<u32>(0u, var_3)))), reverseBits(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.c.x, var_0.e.d.x), var_0.b.yxz), 2147483647i >> (var_4.a.x % 32u), _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(var_2.x, var_0.b.x, 2147483647i)), var_2.x) << (var_0.a % vec4<u32>(32u))), !var_0.c, !(!var_0.d), Struct_1(!var_0.e.a, var_0.b.yw, !vec3<bool>(true, 0i != var_0.e.d.x, true), vec4<i32>(-2147483647i, -1i, -2147483647i, ~abs(3320i))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

