struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec3<u32>, arg_3: vec3<i32>) -> vec3<i32> {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_div_vec4_i32(select(~abs(vec4<i32>(18327i, u_input.a.x, u_input.a.x, u_input.a.x) ^ vec4<i32>(arg_3.x, arg_3.x, arg_3.x, u_input.a.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(~(-31668i), -77490i, 3389i, abs(2147483647i)), ~vec4<i32>(u_input.a.x, 1i, u_input.a.x, arg_3.x), vec4<i32>(-arg_3.x, -1i, arg_3.x, -2147483647i)), select(vec4<bool>(false, false, true, var_0.c.x), select(vec4<bool>(arg_0.c.x, false, arg_0.c.x, false), !vec4<bool>(arg_0.c.x, var_0.c.x, true, false), select(vec4<bool>(false, var_0.c.x, var_0.c.x, arg_0.c.x), vec4<bool>(true, var_0.c.x, var_0.c.x, var_0.c.x), vec4<bool>(arg_0.c.x, false, false, true))), !(!vec4<bool>(true, var_0.c.x, true, arg_0.c.x)))), vec4<i32>(u_input.a.x, ~_wgslsmith_add_i32(abs(-8523i), arg_3.x ^ -2147483647i), _wgslsmith_add_i32(13681i, arg_3.x), -26089i));
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-770f, 492f, var_0.a.x) - var_0.a)))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(arg_0.a)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, arg_0.b, -772f) + var_0.a))))), _wgslsmith_f_op_f32(step(arg_0.a.x, _wgslsmith_f_op_f32(-862f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x - arg_0.a.x))))), vec2<bool>(all(vec2<bool>(var_0.c.x & var_0.c.x, arg_0.c.x)), var_0.c.x));
    let var_2 = -firstLeadingBit(~firstTrailingBit(u_input.a << (arg_2.zy % vec2<u32>(32u))));
    var var_3 = vec2<i32>(62316i, 2147483647i);
    return _wgslsmith_sub_vec3_i32(var_1.wwz, reverseBits(vec3<i32>(-_wgslsmith_mod_i32(2147483647i, var_3.x), -2147483647i, -abs(u_input.a.x))));
}

fn func_4(arg_0: vec3<i32>) -> i32 {
    return ~(-max(~_wgslsmith_dot_vec2_i32(arg_0.zy, vec2<i32>(arg_0.x, -6876i)), _wgslsmith_mult_i32(19570i, u_input.a.x)));
}

fn func_2(arg_0: Struct_2) -> vec3<f32> {
    var var_0 = vec3<i32>(u_input.a.x, u_input.a.x, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, 1i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, -1i)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, 0i, -47402i), vec3<i32>(u_input.a.x, 11710i, u_input.a.x)) << (vec3<u32>(847u, 1u, 18450u) % vec3<u32>(32u))), vec3<i32>(~(-19231i), firstTrailingBit(17660i), ~(-2147483647i))));
    let var_1 = ~var_0.x;
    var_0 = -(vec3<i32>(~(var_0.x >> (0u % 32u)), u_input.a.x, func_4(func_3(arg_0, 3334u, vec3<u32>(17316u, 99727u, 0u), vec3<i32>(-24880i, 2147483647i, var_0.x)))) | _wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, 1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, var_0.x, 7287i), max(vec3<i32>(u_input.a.x, var_1, var_1), vec3<i32>(29772i, var_0.x, var_0.x)), reverseBits(vec3<i32>(u_input.a.x, -33576i, u_input.a.x)))));
    var_0 = min(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, -1i, var_1), -_wgslsmith_add_vec3_i32(vec3<i32>(13276i, var_1, u_input.a.x), _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, var_1, 2147483647i), vec3<i32>(10184i, 0i, -32531i))), countOneBits(vec3<i32>(-1i) * -vec3<i32>(var_0.x, -1486i, u_input.a.x))), -_wgslsmith_clamp_vec3_i32(~func_3(Struct_2(arg_0.a, 270f, arg_0.c), 43127u, vec3<u32>(16163u, 1u, 58706u), vec3<i32>(0i, var_1, 42751i)), -vec3<i32>(1i, 1i, 1i), -(~vec3<i32>(var_1, 39602i, var_0.x))));
    var_0 = firstLeadingBit(_wgslsmith_sub_vec3_i32(min(vec3<i32>(var_0.x, abs(1i), -51931i), ~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, var_0.x, 1i), vec3<i32>(u_input.a.x, 1i, -1i))), _wgslsmith_add_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(-91027i, 12337i, -18627i), vec3<i32>(var_1, 11539i, var_0.x)), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_0.x, var_0.x), vec3<i32>(u_input.a.x, -72037i, -39253i)), -14759i, -24944i))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.a * vec3<f32>(-1005f, 1225f, _wgslsmith_f_op_f32(f32(-1f) * -731f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a))));
}

fn func_1(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_3) -> Struct_2 {
    var var_0 = arg_2.a.x;
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(Struct_2(arg_2.b, -1058f, vec2<bool>(arg_1, arg_1)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b.x, arg_2.b.x, 642f))) * arg_2.b)), _wgslsmith_f_op_f32(1f + arg_2.b.x), select(arg_0, select(vec2<bool>(true, arg_1), vec2<bool>(-1000f < arg_2.b.x, true), vec2<bool>(all(vec3<bool>(false, arg_0.x, true)), arg_0.x)), arg_0.x));
    var var_2 = Struct_1(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(u_input.a.x, _wgslsmith_mod_i32(5869i, -54283i), min(u_input.a.x, u_input.a.x))), vec3<i32>(_wgslsmith_mult_i32(~u_input.a.x, -2147483647i), _wgslsmith_mult_i32(arg_2.c.x, min(22598i, 1i)), 0i), ~min(select(arg_2.c, vec3<i32>(2147483647i, -49758i, -6008i), true), arg_2.c)), arg_2.b);
    return Struct_2(vec3<f32>(-1404f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) + _wgslsmith_f_op_f32(-1000f * -957f))), var_1.a.x), _wgslsmith_f_op_f32(step(875f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_2(Struct_2(arg_2.b, var_1.b, vec2<bool>(var_1.c.x, arg_0.x)))).x * _wgslsmith_f_op_f32(-2325f * -364f)))))), !arg_0);
}

fn func_5(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: Struct_3) -> f32 {
    var var_0 = arg_3;
    let var_1 = vec3<f32>(-1336f, 219f, arg_2.b);
    var var_2 = Struct_3(abs(~vec3<u32>(~arg_3.a.x, 18128u & arg_3.a.x, abs(arg_0))), arg_2.a, arg_1);
    var var_3 = -2147483647i;
    var_2 = arg_3;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(424f, _wgslsmith_f_op_f32(-var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1786f - 493f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(~0u, ~vec3<i32>(67601i, u_input.a.x, u_input.a.x), func_1(vec2<bool>(true, true), all(vec3<bool>(true, true, true)), Struct_3(vec3<u32>(20226u, 41463u, 28412u), vec3<f32>(508f, -839f, -1739f), vec3<i32>(57418i, 0i, u_input.a.x))), Struct_3(vec3<u32>(0u, 4294967295u, 36615u), _wgslsmith_f_op_vec3_f32(vec3<f32>(-435f, 522f, -1782f) - vec3<f32>(1000f, 100f, 1068f)), abs(vec3<i32>(-27116i, -1i, u_input.a.x))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2087f, 2281f, true)) + _wgslsmith_f_op_f32(f32(-1f) * -1078f)) * _wgslsmith_f_op_f32(f32(-1f) * -2300f))), -206f);
    var var_1 = Struct_1(_wgslsmith_add_vec3_i32(-(~vec3<i32>(37514i, 47980i, -21722i)), ~vec3<i32>(~(-2147483647i), u_input.a.x, u_input.a.x << (75741u % 32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_0))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-var_1.b.x)), var_0.x, _wgslsmith_f_op_f32(round(var_1.b.x))))) - vec3<f32>(1000f, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-322f - var_1.b.x) + -707f))));
    var_2 = _wgslsmith_f_op_vec3_f32(sign(var_1.b));
    let var_3 = Struct_3(max(min(vec3<u32>(_wgslsmith_sub_u32(20951u, 20416u), ~0u, ~0u), max(~vec3<u32>(43507u, 72795u, 5873u), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 0u, 36949u), vec3<u32>(0u, 8641u, 27817u)))), ~abs(~vec3<u32>(34843u, 1u, 0u))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1000f, var_0.x))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.b.x, var_0.x, var_0.x), vec3<f32>(571f, var_1.b.x, var_2.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_1.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.x, var_2.x, 1521f) + vec3<f32>(var_2.x, -791f, var_2.x))))))), firstLeadingBit(_wgslsmith_div_vec3_i32(var_1.a, var_1.a)));
    let var_4 = !vec2<bool>(956f < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -471f))), true);
    var_2 = _wgslsmith_f_op_vec3_f32(abs(var_0));
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0 * var_3.b), var_1.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(u_input.a.x, firstTrailingBit(0i), select(1i, var_1.a.x, var_4.x)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.x, u_input.a.x, 1i, 14886i), vec4<i32>(var_1.a.x, u_input.a.x, var_1.a.x, 26995i)), 1i) >> (66884u % 32u), vec2<i32>(var_3.c.x, -1i), var_0.xx, ~(reverseBits(~var_3.a.x) & _wgslsmith_add_u32(_wgslsmith_div_u32(25896u, 41318u), 1u)));
}

