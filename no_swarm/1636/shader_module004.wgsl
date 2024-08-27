struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec2<bool>,
    e: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: vec3<i32>) -> vec2<bool> {
    let var_0 = Struct_2(u_input.e.yx, vec4<f32>(1019f, -417f, arg_0, -648f), Struct_1(vec3<bool>(true, true, !select(false, true, false)), vec4<f32>(-312f, -2690f, _wgslsmith_f_op_f32(abs(1062f)), 2082f), vec2<i32>(-1i) * -vec2<i32>(arg_1.x, 4253i), !select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), true), all(vec2<bool>(true, true))), max(_wgslsmith_clamp_u32(u_input.e.x, _wgslsmith_dot_vec2_u32(u_input.e.zx, u_input.d), ~u_input.e.x), firstLeadingBit(reverseBits(u_input.e.x)))));
    var var_1 = u_input.e.xy;
    var var_2 = var_0.c.a.x;
    var_1 = min(~(~vec2<u32>(var_0.c.e, var_0.a.x) ^ ~select(vec2<u32>(var_1.x, var_0.a.x), vec2<u32>(var_0.a.x, 92505u), true)), ~_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.e.xy, vec2<u32>(var_0.c.e, var_1.x), var_0.a) << (abs(u_input.d) % vec2<u32>(32u)), ~(~var_0.a)));
    var_2 = !(var_0.c.d.x || var_0.c.d.x);
    return vec2<bool>(true, any(var_0.c.d));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec4<f32>) -> vec4<f32> {
    var var_0 = arg_2.x;
    var var_1 = (!all(arg_1.c.a) && func_3(_wgslsmith_f_op_f32(min(arg_1.c.b.x, _wgslsmith_f_op_f32(select(arg_2.x, 1845f, arg_1.c.a.x)))), _wgslsmith_sub_vec3_i32(u_input.b.xyx | vec3<i32>(arg_1.c.c.x, -2147483647i, -28082i), firstLeadingBit(vec3<i32>(u_input.a, 19832i, 2147483647i)))).x) && (arg_1.c.c.x <= _wgslsmith_sub_i32(3913i, 1i));
    let var_2 = false;
    var var_3 = arg_1;
    var var_4 = arg_1.c.c;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(var_3.b.x)), arg_2.x, _wgslsmith_f_op_f32(ceil(391f)), _wgslsmith_div_f32(var_3.c.b.x, arg_1.b.x)))));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(min(arg_2.c.b, arg_2.c.b));
    var var_1 = arg_2.b.xwx;
    let var_2 = 26993i;
    var_0 = arg_2.c.b;
    var_0 = _wgslsmith_f_op_vec4_f32(func_4(43274u, Struct_2(vec2<u32>(~_wgslsmith_dot_vec3_u32(arg_0.zxw, arg_0.ywx), 1u), arg_2.c.b, Struct_1(vec3<bool>(true, true, true), vec4<f32>(_wgslsmith_f_op_f32(sign(var_1.x)), var_1.x, _wgslsmith_f_op_f32(arg_1.b.x * 1118f), -1785f), arg_2.c.c, func_3(-327f, firstLeadingBit(vec3<i32>(1i, arg_2.c.c.x, -2147483647i))), reverseBits(_wgslsmith_mod_u32(1u, 8803u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2.c.b - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1634f, -1594f, var_1.x, 651f) * vec4<f32>(324f, -1702f, 468f, arg_1.b.x)) + _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.b.x, var_0.x, -382f, 500f), vec4<f32>(arg_2.b.x, -137f, var_0.x, 1619f)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, 194f, arg_1.b.x) * vec4<f32>(arg_1.b.x, 1000f, -355f, arg_2.b.x))), vec4<f32>(_wgslsmith_f_op_f32(-1238f - 354f), _wgslsmith_f_op_f32(-var_0.x), arg_1.b.x, -548f), vec4<bool>(any(arg_1.a.yz), arg_2.c.a.x, false, true))))));
    return arg_2;
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: u32) -> vec3<bool> {
    let var_0 = arg_1.c.c.x;
    let var_1 = abs(var_0);
    let var_2 = func_2(vec4<u32>(arg_2, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(21586u, 20126u), arg_1.a), u_input.d.x << (0u % 32u)) >> (~(~3843u) % 32u), arg_2 << (arg_2 % 32u), countOneBits(_wgslsmith_mult_u32(arg_0, arg_1.c.e))), Struct_1(!vec3<bool>(all(arg_1.c.d), arg_1.b.x <= -446f, true), vec4<f32>(-821f, 500f, _wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1570f)), ~select(-vec2<i32>(0i, -2147483647i), select(u_input.c.xy, u_input.b.zy, vec2<bool>(false, arg_1.c.a.x)), vec2<bool>(arg_1.c.a.x, arg_1.c.a.x)), vec2<bool>(any(!vec3<bool>(arg_1.c.d.x, false, false)), select(u_input.c.x, 2147483647i, true) <= (15460i | var_1)), abs(~arg_2)), arg_1);
    let var_3 = vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.b.yzy | _wgslsmith_add_vec3_i32(min(u_input.c.wyz, vec3<i32>(u_input.a, -53655i, var_1)), u_input.b.zzz), vec3<i32>(-arg_1.c.c.x, ~12708i, ~_wgslsmith_mult_i32(u_input.b.x, var_2.c.c.x))), _wgslsmith_mod_i32(_wgslsmith_div_i32(11212i, func_2(vec4<u32>(4294967295u, arg_2, u_input.d.x, 0u), arg_1.c, func_2(vec4<u32>(23164u, 4294967295u, u_input.d.x, 4294967295u), arg_1.c, Struct_2(vec2<u32>(0u, arg_0), arg_1.c.b, Struct_1(arg_1.c.a, arg_1.b, vec2<i32>(0i, -27553i), var_2.c.a.xy, 33047u)))).c.c.x), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, var_1), u_input.c.yx) & min(vec2<i32>(0i, var_0), u_input.c.xw), -(arg_1.c.c ^ vec2<i32>(var_2.c.c.x, 50446i)))), 0i, firstTrailingBit(countOneBits(-(i32(-1i) * -32494i))));
    var var_4 = !(!arg_1.c.a.x);
    return select(arg_1.c.a, arg_1.c.a, (max(-4996i, 1077i) ^ -firstTrailingBit(23975i)) <= arg_1.c.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_clamp_vec2_u32(~(~u_input.d), abs(_wgslsmith_add_vec2_u32(u_input.d << (vec2<u32>(97969u, u_input.e.x) % vec2<u32>(32u)), u_input.e.yy)), u_input.e.xz), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2191f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-576f, 398f)) - 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1828f) * _wgslsmith_f_op_f32(trunc(1859f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-337f * 2233f))) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-560f - 1000f), _wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(round(-469f)), 716f)))), Struct_1(select(vec3<bool>(false, u_input.b.x != 3185i, true), select(func_1(4294967295u, Struct_2(u_input.e.xx, vec4<f32>(1439f, 711f, -1981f, 992f), Struct_1(vec3<bool>(true, true, true), vec4<f32>(-760f, -1877f, -166f, 533f), vec2<i32>(u_input.b.x, 1i), vec2<bool>(true, true), u_input.d.x)), 0u), vec3<bool>(false, false, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false)), false), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -144f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -366f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(739f * -1886f) - 349f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2484f)))), reverseBits(u_input.b.wy ^ vec2<i32>(58368i, -2147483647i)), vec2<bool>(select(u_input.c.x, 1i, true) <= abs(u_input.a), true), _wgslsmith_add_u32(~1u, 1u)));
    var var_1 = ~(countOneBits(vec2<u32>(1u, 0u) << ((u_input.d & vec2<u32>(u_input.e.x, 12773u)) % vec2<u32>(32u))) ^ _wgslsmith_mod_vec2_u32(u_input.e.zx, firstLeadingBit(~var_0.a)));
    let var_2 = max(_wgslsmith_mod_u32(var_0.a.x, _wgslsmith_sub_u32(~_wgslsmith_add_u32(63345u, u_input.d.x), 25382u)), var_0.c.e);
    var_1 = firstTrailingBit(~(~min(~var_0.a, _wgslsmith_div_vec2_u32(vec2<u32>(var_0.c.e, 20986u), vec2<u32>(1u, 31000u)))));
    let var_3 = var_0.c;
    var_1 = abs(var_0.a);
    var var_4 = var_0.c.a.xy;
    var_4 = !(!var_0.c.a.xx);
    var_1 = vec2<u32>(var_0.c.e, 47122u);
    let x = u_input.a;
    s_output = StorageBuffer(52182u);
}

