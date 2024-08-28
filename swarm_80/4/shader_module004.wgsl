struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: bool,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
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

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(ceil(-2525f));
    let var_1 = ~_wgslsmith_sub_vec4_i32((~vec4<i32>(u_input.b, -16058i, -8009i, -7959i) ^ -vec4<i32>(u_input.b, -1i, 13539i, u_input.b)) & vec4<i32>(~u_input.b, u_input.b, u_input.b, _wgslsmith_mod_i32(27854i, u_input.b)), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-1i, 1i), u_input.b, firstTrailingBit(37688i), u_input.b >> (1u % 32u)), _wgslsmith_mult_vec4_i32(-vec4<i32>(-46238i, u_input.b, 714i, u_input.b), _wgslsmith_sub_vec4_i32(vec4<i32>(-20280i, u_input.b, -1i, u_input.b), vec4<i32>(2147483647i, u_input.b, u_input.b, u_input.b)))));
    var var_2 = Struct_5(u_input.c);
    var var_3 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1035f, -198f, 332f) - vec3<f32>(1168f, 658f, 2828f)))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(-359f, 613f, -347f), vec3<f32>(996f, -117f, -716f))))))));
    var var_4 = Struct_2(var_1.yzw, vec2<i32>(u_input.b, ~(~u_input.b)), true, vec2<i32>(_wgslsmith_clamp_i32(-119837i, min(-8726i, u_input.b), u_input.b) | _wgslsmith_add_i32(1i << (1u % 32u), countOneBits(1i)), u_input.b));
    return var_4.b.x;
}

fn func_2() -> bool {
    var var_0 = 1u;
    var_0 = ~u_input.c;
    let var_1 = true;
    let var_2 = Struct_4(select(u_input.b, _wgslsmith_add_i32(_wgslsmith_add_i32(u_input.b, -1i), func_3()) & u_input.b, var_1));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1174f), -289f)) + _wgslsmith_f_op_f32(step(1020f, 598f))), 200f);
    return any(select(vec3<bool>(!any(vec2<bool>(var_1, true)), -373f > var_3.x, _wgslsmith_f_op_f32(exp2(var_3.x)) > var_3.x), vec3<bool>(all(vec2<bool>(true, true)), !(778f >= var_3.x), true), true));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: vec2<bool>) -> vec4<bool> {
    var var_0 = !(!any(!(!vec4<bool>(arg_0, arg_3.x, arg_0, true))));
    var_0 = select(all(vec2<bool>(all(select(vec4<bool>(arg_0, arg_3.x, arg_3.x, arg_0), vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(arg_0, arg_0, arg_3.x, false))), -9245i != _wgslsmith_mult_i32(arg_1.c, 77i))), arg_0 && true, arg_0);
    let var_1 = vec4<bool>(true, !arg_3.x, arg_3.x, any(vec2<bool>(select(arg_3.x | false, func_2(), !arg_3.x), true)));
    var var_2 = Struct_2(arg_1.b.xxy, abs(~vec2<i32>(arg_2, -19446i) & -_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, 0i), arg_1.b.yw, vec2<i32>(-1i, 1i))), arg_3.x, vec2<i32>(~(_wgslsmith_mult_i32(u_input.b, 19678i) | 0i), _wgslsmith_mult_i32(~2147483647i, -_wgslsmith_dot_vec2_i32(arg_1.b.zw, arg_1.b.xz))));
    let var_3 = vec4<u32>(u_input.c, ~max(51679u, ~1u), u_input.c, ~_wgslsmith_add_u32(_wgslsmith_div_u32(u_input.c, u_input.c), countOneBits(_wgslsmith_div_u32(u_input.a.x, 4294967295u))));
    return select(select(select(select(!var_1, vec4<bool>(var_2.c, var_1.x, arg_0, false), all(var_1)), select(vec4<bool>(true, false, false, false), var_1, vec4<bool>(true, arg_0, true, var_1.x)), select(select(var_1, var_1, var_1), var_1, !var_2.c)), var_1, !(!var_2.c)), var_1, select(!vec4<bool>(!var_1.x, arg_0, true, true), var_1, select(select(select(var_1, vec4<bool>(true, true, false, false), var_1.x), var_1, arg_0), var_1, var_1)));
}

fn func_1(arg_0: Struct_5, arg_1: Struct_1, arg_2: Struct_4) -> vec2<i32> {
    let var_0 = !func_4(~_wgslsmith_mod_i32(-20105i, -1i) != ~arg_1.c, Struct_1(_wgslsmith_add_i32(300i, 54242i), arg_1.b ^ select(arg_1.b, arg_1.b, false), ~arg_1.b.x), -_wgslsmith_dot_vec2_i32(arg_1.b.wz, min(vec2<i32>(2147483647i, -1i), vec2<i32>(arg_1.c, 1i))), vec2<bool>(true, func_2()));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(981f)));
    let var_2 = _wgslsmith_clamp_u32(~(~76697u >> (_wgslsmith_mult_u32(0u, arg_0.a) % 32u)) >> (firstTrailingBit(_wgslsmith_sub_u32(reverseBits(37104u), 50034u)) % 32u), ~u_input.a.x, _wgslsmith_mod_u32(1u, firstTrailingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.d, 52355u), u_input.a))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, 317f)) + 445f) * 1426f)));
    let var_3 = firstLeadingBit(vec3<u32>(u_input.c, 1134u, reverseBits(_wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a, u_input.d, 47927u), vec3<u32>(4294967295u, 1u, 4294967295u))))));
    return arg_1.b.zz;
}

fn func_5(arg_0: i32, arg_1: vec2<i32>) -> Struct_3 {
    var var_0 = select(vec3<u32>(max(4294967295u, abs(u_input.d)), 46056u, firstTrailingBit(_wgslsmith_sub_u32(~u_input.a.x, _wgslsmith_add_u32(1u, 0u)))), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.d, u_input.a.x), select(~vec3<u32>(74383u, u_input.a.x, 21248u), vec3<u32>(u_input.d, 0u, 32447u) | vec3<u32>(0u, 1u, u_input.d), -2147483647i > arg_1.x) >> (vec3<u32>(~3630u, _wgslsmith_dot_vec2_u32(vec2<u32>(39489u, 1344u), u_input.a), 53022u) % vec3<u32>(32u))), !all(vec4<bool>(true, true, true, true)));
    var_0 = ~(~abs(vec3<u32>(68764u, 1u, 4294967295u))) >> (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 1u, select(u_input.c, 4294967295u >> (u_input.c % 32u), true)), _wgslsmith_mod_vec3_u32(vec3<u32>(37228u, 47781u, var_0.x) >> (~vec3<u32>(u_input.d, u_input.c, 21734u) % vec3<u32>(32u)), reverseBits(~vec3<u32>(u_input.c, 4294967295u, 4294967295u)))) % vec3<u32>(32u));
    var var_1 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-839f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(438f, -1141f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -853f) - _wgslsmith_f_op_f32(f32(-1f) * -557f))), -1000f), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(133f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -447f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1774f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-572f, _wgslsmith_f_op_f32(floor(934f)), _wgslsmith_f_op_f32(sign(-125f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1276f, -441f, 627f)) * vec3<f32>(-404f, 953f, -676f))))));
    var_0 = ~_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(55858u, 29011u, u_input.d), vec3<u32>(u_input.c, 19523u, var_0.x)), ~vec3<u32>(23255u, u_input.a.x, 1u)) >> ((vec3<u32>(var_0.x, u_input.d, 4294967295u) | vec3<u32>(0u, 1u, var_0.x)) % vec3<u32>(32u)), vec3<u32>(var_0.x >> ((65982u ^ var_0.x) % 32u), u_input.a.x, ~(~var_0.x)));
    var_0 = vec3<u32>(u_input.a.x, _wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(u_input.a, var_0.yz), var_0.x) << ((_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.c, 31573u), u_input.a.x) >> (u_input.c % 32u)) % 32u), _wgslsmith_mult_u32(_wgslsmith_mult_u32(~var_0.x, 17683u), 1u));
    return Struct_3(select(_wgslsmith_mult_vec4_u32(vec4<u32>(52175u, ~1u, 1u, var_0.x), vec4<u32>(1u, 4294967295u, u_input.d, 0u)), ((vec4<u32>(var_0.x, 22073u, 91971u, 4319u) << (vec4<u32>(4294967295u, u_input.c, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) | ~vec4<u32>(1u, 1u, u_input.d, 35106u)) | min(select(vec4<u32>(26555u, 1u, 1u, 38272u), vec4<u32>(var_0.x, var_0.x, 21821u, var_0.x), vec4<bool>(true, true, false, false)), ~vec4<u32>(1u, 0u, 1u, var_0.x)), true), Struct_1(_wgslsmith_mult_i32(func_1(Struct_5(1u), Struct_1(arg_0, vec4<i32>(-24573i, u_input.b, 32841i, -1i), -2147483647i), Struct_4(-1i)).x, -30700i), _wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(19203i, 1i, u_input.b, 0i)), abs(vec4<i32>(u_input.b, 1351i, -2147483647i, arg_0))), 44464i), Struct_1(arg_0, countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, u_input.b, u_input.b, 25602i) << (vec4<u32>(1u, var_0.x, u_input.c, var_0.x) % vec4<u32>(32u)), vec4<i32>(u_input.b, 33587i, 2147483647i, arg_0))), arg_1.x), ~1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_mult_i32(u_input.b, _wgslsmith_sub_i32(-1i, min(2147483647i, u_input.b)) >> (u_input.c % 32u)), _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.b, -46088i), func_1(Struct_5(u_input.c), Struct_1(2147483647i, vec4<i32>(0i, 2147483647i, -38087i, u_input.b), u_input.b), Struct_4(u_input.b))), ~_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, 56228i), vec2<i32>(-10021i, u_input.b)), -_wgslsmith_add_vec2_i32(vec2<i32>(1i, u_input.b), vec2<i32>(2147483647i, 1i))) | ~vec2<i32>(firstLeadingBit(2147483647i), u_input.b));
    var var_1 = var_0.a.zxy;
    let var_2 = min(var_0.a.x | 43136u, _wgslsmith_mult_u32(_wgslsmith_div_u32(var_0.d & var_1.x, u_input.a.x), ~var_0.a.x));
    var var_3 = func_5((-(~u_input.b) >> (~min(1u, var_0.a.x) % 32u)) << (_wgslsmith_mult_u32(4294967295u, 0u & ~var_0.a.x) % 32u), _wgslsmith_add_vec2_i32(vec2<i32>(firstLeadingBit(firstLeadingBit(-1i)), u_input.b), -vec2<i32>(abs(-29119i), ~(-8870i))));
    var var_4 = Struct_2(var_0.c.b.yxy, vec2<i32>(-(~(~2147483647i)), -_wgslsmith_mod_i32(var_3.c.b.x >> (var_0.d % 32u), _wgslsmith_mod_i32(-6103i, -1i))), true, _wgslsmith_mult_vec2_i32(func_1(Struct_5(var_0.a.x), Struct_1(-2147483647i, _wgslsmith_add_vec4_i32(vec4<i32>(-1i, var_3.b.b.x, var_0.c.a, u_input.b), vec4<i32>(44312i, var_3.b.b.x, 0i, var_3.b.c)), 1i), Struct_4(-2604i)), vec2<i32>(u_input.b | var_3.b.c, 1i & var_0.b.c)));
    var var_5 = select(!func_4(var_4.c, var_3.c, 2147483647i, !(!vec2<bool>(var_4.c, var_4.c))).zzy, !select(!select(vec3<bool>(var_4.c, true, false), vec3<bool>(false, false, true), vec3<bool>(var_4.c, true, var_4.c)), !select(vec3<bool>(true, false, var_4.c), vec3<bool>(var_4.c, var_4.c, var_4.c), vec3<bool>(true, var_4.c, true)), true), true);
    let var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(312f, -1256f, true)))));
    var var_7 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(~var_7.d & 1u, -808f, var_0.a.zzy | _wgslsmith_mod_vec3_u32(min(firstTrailingBit(vec3<u32>(var_0.a.x, var_3.a.x, var_3.d)), ~var_3.a.xyx), var_7.a.xyy), ~firstLeadingBit(abs(~var_1.x)), ~(-_wgslsmith_mult_i32(_wgslsmith_add_i32(var_0.c.c, -11495i), func_5(var_3.b.a, vec2<i32>(u_input.b, 16340i)).c.c)));
}

