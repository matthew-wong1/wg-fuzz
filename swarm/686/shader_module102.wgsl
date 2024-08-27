struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: f32) -> vec3<u32> {
    let var_0 = Struct_3(Struct_2(~28750i, Struct_1(arg_0.d.a, -(arg_0.d.b >> (vec4<u32>(0u, arg_0.d.c, u_input.c, u_input.c) % vec4<u32>(32u))), 4294967295u, ~(~arg_0.b.d)), arg_0.c, Struct_1(_wgslsmith_div_vec4_f32(arg_0.b.a, vec4<f32>(-255f, arg_0.d.a.x, arg_2, arg_2)), vec4<i32>(~arg_0.b.b.x, u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, -9854i), -33027i), _wgslsmith_mod_u32(_wgslsmith_mod_u32(36205u, 3521u), ~arg_0.d.c), arg_0.b.d & _wgslsmith_div_vec3_u32(arg_0.b.d, arg_0.d.d))));
    var var_1 = Struct_4(~arg_0.b.d.zx, arg_0.b.d.x);
    let var_2 = Struct_5(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(arg_0.b.a.x + _wgslsmith_f_op_f32(abs(var_0.a.b.a.x))), _wgslsmith_f_op_f32(-296f - 1000f)), var_0.a.b.a.wy, vec2<bool>(true, var_0.a.c.x))), Struct_4(_wgslsmith_mod_vec2_u32(max(var_1.a, vec2<u32>(0u, var_0.a.b.d.x)), vec2<u32>(_wgslsmith_div_u32(var_1.a.x, arg_0.b.c), firstTrailingBit(0u))), countOneBits(93839u)));
    var_1 = var_2.b;
    let var_3 = var_0;
    return vec3<u32>(35273u, _wgslsmith_mult_u32(countOneBits(0u & _wgslsmith_dot_vec3_u32(var_0.a.b.d, vec3<u32>(1u, var_0.a.d.d.x, 26160u))), 67414u), var_0.a.d.d.x);
}

fn func_2() -> vec2<u32> {
    var var_0 = u_input.a.wz;
    let var_1 = Struct_2(14079i, Struct_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1590f, _wgslsmith_f_op_f32(765f * 2105f), _wgslsmith_f_op_f32(select(-584f, -1212f, false)), _wgslsmith_f_op_f32(sign(-334f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1446f, -1004f, -660f, 984f)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(518f, 633f, 1091f, -129f)))))), abs(vec4<i32>(13677i, u_input.a.x, var_0.x, -26971i)) << (reverseBits(abs(vec4<u32>(1u, 1u, u_input.b, u_input.b))) % vec4<u32>(32u)), ~1473u, vec3<u32>(~u_input.c, 20278u, _wgslsmith_mod_u32(4294967295u, u_input.b)) ^ func_3(Struct_2(0i, Struct_1(vec4<f32>(848f, -746f, 1291f, 967f), vec4<i32>(u_input.a.x, -2050i, var_0.x, 5521i), u_input.c, vec3<u32>(u_input.b, u_input.b, u_input.c)), vec4<bool>(false, false, false, true), Struct_1(vec4<f32>(622f, -1947f, -1000f, -1713f), u_input.a, u_input.c, vec3<u32>(42875u, 0u, u_input.c))), -vec4<i32>(0i, 0i, u_input.a.x, -7870i), 974f)), vec4<bool>(select(u_input.a.x <= abs(-2147483647i), true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true)))), select(true, any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false))), !all(vec2<bool>(true, true))), !(!any(vec3<bool>(false, true, false))), all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-149f, 1327f, 1364f, 521f), vec4<f32>(-624f, 650f, -325f, -2248f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-144f, 425f, -849f, -1247f)), true))), u_input.a, u_input.b, reverseBits(vec3<u32>(reverseBits(u_input.c), ~u_input.b, 13027u))));
    let var_2 = Struct_3(Struct_2(-u_input.a.x | -2147483647i, var_1.b, !select(!vec4<bool>(var_1.c.x, false, true, false), select(vec4<bool>(var_1.c.x, true, true, var_1.c.x), vec4<bool>(var_1.c.x, true, var_1.c.x, false), false), !vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, var_1.c.x)), var_1.b));
    var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(0i, u_input.a.x), -2147483647i), 1i), _wgslsmith_sub_vec2_i32(var_1.d.b.zx, -vec2<i32>(var_1.d.b.x << (var_2.a.b.d.x % 32u), select(var_2.a.a, u_input.a.x, false))));
    var_0 = -var_1.d.b.xy;
    return ~(~countOneBits(_wgslsmith_clamp_vec2_u32(var_1.d.d.xz, var_2.a.d.d.yy, vec2<u32>(var_1.b.d.x, 34381u))) << (var_2.a.b.d.xx % vec2<u32>(32u)));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_5, arg_2: f32, arg_3: u32) -> bool {
    let var_0 = Struct_4(vec2<u32>(~arg_3, arg_3), abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, arg_1.b.b, 4294967295u, 8424u), ~vec4<u32>(u_input.b, 53217u, arg_1.b.a.x, 0u))) & arg_3);
    var var_1 = Struct_2(_wgslsmith_dot_vec4_i32(-(vec4<i32>(u_input.a.x, 15824i, u_input.a.x, u_input.a.x) & firstTrailingBit(vec4<i32>(1505i, u_input.a.x, 3071i, -1i))), ~(-u_input.a) & -u_input.a), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2218f, 2012f, arg_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -509f))), u_input.a, _wgslsmith_dot_vec2_u32(arg_0 ^ countOneBits(vec2<u32>(arg_0.x, arg_3)), vec2<u32>(abs(u_input.b), 1u)), vec3<u32>(~func_2().x, ~var_0.b, u_input.c ^ (arg_3 << (2545u % 32u)))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), true)), !(u_input.c == arg_3), _wgslsmith_f_op_f32(min(1284f, arg_2)) > _wgslsmith_f_op_f32(step(arg_1.a.x, arg_1.a.x))), true), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.a.x, -692f, 1800f, arg_1.a.x), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(2020f, -1947f, -407f, -698f)))))), abs(~u_input.a), ~var_0.b, select(_wgslsmith_div_vec3_u32(select(vec3<u32>(42227u, var_0.a.x, 1u), vec3<u32>(81053u, var_0.b, var_0.a.x), vec3<bool>(false, false, true)), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.b, 14755u, 4294967295u), vec3<u32>(4294967295u, u_input.b, 4294967295u), vec3<u32>(arg_3, 0u, arg_1.b.b))), firstLeadingBit(vec3<u32>(1u, arg_1.b.a.x, arg_3)) >> ((vec3<u32>(4294967295u, var_0.a.x, var_0.a.x) & vec3<u32>(53259u, 0u, arg_1.b.b)) % vec3<u32>(32u)), !select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false))));
    var var_2 = Struct_3(Struct_2((i32(-1i) * -3648i) >> (arg_0.x % 32u), var_1.d, var_1.c, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1842f, arg_1.a.x, arg_2, arg_2) + vec4<f32>(1822f, 195f, arg_1.a.x, arg_1.a.x)), -countOneBits(vec4<i32>(0i, -1i, -30120i, u_input.a.x)), 37229u, vec3<u32>(var_0.b, arg_0.x, 4294967295u) << (vec3<u32>(var_0.b, 50685u, u_input.c) % vec3<u32>(32u)))));
    let var_3 = vec2<bool>(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-468f * var_1.b.a.x) * 214f)) > _wgslsmith_f_op_f32(1686f - arg_2));
    let var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.a.x, _wgslsmith_f_op_f32(-var_2.a.b.a.x), arg_2, -232f), _wgslsmith_f_op_vec4_f32(-var_2.a.d.a))), -u_input.a, min(~var_1.d.d.x, _wgslsmith_mod_u32(~abs(u_input.b), _wgslsmith_clamp_u32(4294967295u, var_2.a.b.c, 54473u) ^ var_2.a.d.d.x)), var_1.b.d);
    return var_1.c.x;
}

fn func_1(arg_0: Struct_4) -> bool {
    let var_0 = ~(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.a.x, u_input.c, arg_0.a.x), vec3<u32>(29411u, 0u, arg_0.b) | vec3<u32>(103889u, u_input.c, arg_0.a.x))));
    let var_1 = _wgslsmith_add_vec2_i32(u_input.a.xz, vec2<i32>(66661i, u_input.a.x)) & u_input.a.xw;
    let var_2 = func_4(_wgslsmith_mult_vec2_u32(abs(~_wgslsmith_mod_vec2_u32(var_0.xx, arg_0.a)), func_2()), Struct_5(vec2<f32>(1f, 995f), Struct_4(~(vec2<u32>(u_input.c, 0u) | vec2<u32>(26396u, arg_0.b)), select(var_0.x, arg_0.a.x & u_input.c, select(true, true, true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1272f, _wgslsmith_f_op_f32(f32(-1f) * -753f))) * 1f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-196f, 372f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(550f, 131f)), _wgslsmith_f_op_f32(-746f * 1000f), u_input.a.x <= u_input.a.x)))), ~(~_wgslsmith_mod_u32(42690u, var_0.x | var_0.x)));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1435f, 1152f, 2706f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(253f, 235f, 538f, 149f) - vec4<f32>(635f, -1426f, -1570f, -1000f))))))), vec4<i32>(~var_1.x, reverseBits(u_input.a.x), u_input.a.x, -1i), 0u, vec3<u32>(_wgslsmith_div_u32(1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(6483u, 0u, u_input.c, var_0.x), vec4<u32>(var_0.x, 1u, var_0.x, 4294967295u))), select(abs(_wgslsmith_add_u32(arg_0.a.x, arg_0.a.x)), 8545u, !(!var_2)), ~30264u));
    let var_4 = var_3.c;
    return select(1u, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(var_0.x, 0u, arg_0.b, 4294967295u)) & ~vec4<u32>(var_0.x, arg_0.a.x, u_input.b, var_0.x), vec4<u32>(firstTrailingBit(arg_0.b), 34979u, 0u, _wgslsmith_add_u32(u_input.c, var_3.d.x))), !((u_input.a.x >> (1736u % 32u)) != ~var_1.x)) < 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -728f;
    var var_1 = func_1(Struct_4(~vec2<u32>(_wgslsmith_mod_u32(4294967295u, 21616u), _wgslsmith_mod_u32(30920u, u_input.b)), ~_wgslsmith_mod_u32(0u, u_input.c) | ~u_input.b));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-496f, 1232f, var_0, 1254f), vec4<f32>(var_0, var_0, 1249f, var_0))) + _wgslsmith_div_vec4_f32(vec4<f32>(var_0, -569f, var_0, -768f), vec4<f32>(var_0, 115f, 494f, -1123f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, var_0))))));
    let var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, 1i, -(~var_3.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -373f) * var_0), _wgslsmith_f_op_f32(-745f + _wgslsmith_f_op_f32(f32(-1f) * -459f)), 142f, -2274f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_f_op_f32(max(var_0, var_2.x))))));
}

